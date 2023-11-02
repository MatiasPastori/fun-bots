---@class FunBotUIClient
---@overload fun():FunBotUIClient
FunBotUIClient = class 'FunBotUIClient'

require('UIViews')
require('UISettings')

Language = require('__shared/Language')

function FunBotUIClient:__init()
	self._views = UIViews()
	self.m_InCommScreen = false
	self.m_WaitForKeyLeft = false

	if Config.DisableUserInterface ~= true then
		NetEvents:Subscribe('UI_Toggle', self, self._onUIToggle)
		Events:Subscribe('UI_Toggle', self, self._onUIToggle)
		NetEvents:Subscribe('BotEditor', self, self._onBotEditorEvent)
		Events:Subscribe('BotEditor', self, self._onBotEditorEvent)
		NetEvents:Subscribe('UI_Show_Toolbar', self, self._onUIShowToolbar)
		NetEvents:Subscribe('UI_Settings', self, self._onUISettings)
		NetEvents:Subscribe('UI_CommoRose', self, self._onUICommoRose)
		Events:Subscribe('UI_Settings', self, self._onUISettings)
		Events:Subscribe('UI_Save_Settings', self, self._onUISaveSettings)
		NetEvents:Subscribe('UI_Change_Language', self, self._onUIChangeLanguage)
		Events:Subscribe('UI_Change_Language', self, self._onUIChangeLanguage)


		self._views:setLanguage(Config.Language)
	end
end

-- Events.
function FunBotUIClient:_onUIToggle()
	if Config.DisableUserInterface == true then
		return
	end

	if Debug.Client.UI then
		print('UIClient: UI_Toggle')
	end

	self._views:execute('BotEditor.Hide()')
	-- NetEvents:Send('PathMenu:Hide')
	self._views:disable()

	-- if self._views:isVisible() then
	-- self._views:close()
	-- else
	-- self._views:open()
	-- self._views:focus()
	-- end
end

function FunBotUIClient:_onUICommoRose(p_Data)
	if p_Data == "false" then
		self._views:execute('BotEditor.setCommoRose(false)')
		self._views:blur()
		self.m_InCommScreen = false
		self.m_WaitForKeyLeft = true
		return
	end

	self._views:execute('BotEditor.setCommoRose(\'' .. json.encode(p_Data) .. '\')')
	self._views:focusMouse()
	self.m_InCommScreen = true
end

function FunBotUIClient:_onSetOperationControls(p_Data)
	self._views:execute('BotEditor.setOperationControls(\'' .. json.encode(p_Data) .. '\')')
end

function FunBotUIClient:_onUISettings(p_Data)
	if Config.DisableUserInterface == true then
		return
	end

	if p_Data == false then
		if Debug.Client.UI then
			print('UIClient: close UI_Settings')
		end

		self._views:hide('settings')
		-- self._views:blur()
		return
	end

	if Debug.Client.UI then
		print('UIClient: UI_Settings (' .. json.encode(p_Data) .. ')')
	end

	local settings = UISettings()

	-- Samples.
	-- add(<category>, <types>, <name>, <title>, <value>, <default>, <description>)
	-- addList(<category>, <name>, <title>, <list>, <value>, <default>, <description>)

	for _, l_Item in pairs(SettingsDefinition.Elements) do
		local s_TypeString = ""

		if l_Item.Type == Type.Enum then
			-- Create table out of Enum.
			local s_EnumTable = {}
			local s_Default = ""
			local s_Value = ""

			for l_Key, l_Value in pairs(l_Item.Reference) do
				if l_Key ~= "Count" then
					table.insert(s_EnumTable, l_Key)
				end

				if l_Value == p_Data[l_Item.Name] then
					s_Value = l_Key
				end

				if l_Value == l_Item.Default then
					s_Default = l_Key
				end
			end

			settings:addList(l_Item.Category, l_Item.Name, Language:I18N(l_Item.Text), s_EnumTable, s_Value, s_Default,
				Language:I18N(l_Item.Description))
		elseif l_Item.Type == Type.List then
			settings:addList(l_Item.Category, l_Item.Name, Language:I18N(l_Item.Text), l_Item.Reference, p_Data[l_Item.Name],
				l_Item.Default, Language:I18N(l_Item.Description))
		elseif l_Item.Type == Type.DynamicList then
			settings:addList(l_Item.Category, l_Item.Name, Language:I18N(l_Item.Text), _G[l_Item.Reference], p_Data[l_Item.Name],
				l_Item.Default, Language:I18N(l_Item.Description))
		elseif l_Item.Type == Type.Integer then
			s_TypeString = "Integer"
			settings:add(l_Item.Category, s_TypeString, l_Item.Name, Language:I18N(l_Item.Text), p_Data[l_Item.Name],
				l_Item.Default, Language:I18N(l_Item.Description))
		elseif l_Item.Type == Type.Float then
			s_TypeString = "Float"
			settings:add(l_Item.Category, s_TypeString, l_Item.Name, Language:I18N(l_Item.Text), p_Data[l_Item.Name],
				l_Item.Default, Language:I18N(l_Item.Description))
		elseif l_Item.Type == Type.Boolean then
			s_TypeString = "Boolean"
			settings:add(l_Item.Category, s_TypeString, l_Item.Name, Language:I18N(l_Item.Text), p_Data[l_Item.Name],
				l_Item.Default, Language:I18N(l_Item.Description))
		end
	end

	self._views:execute('BotEditor.openSettings(\'' .. settings:getJSON() .. '\')')
	self._views:show('settings')
	self._views:focus()
end

function FunBotUIClient:_onUIChangeLanguage(p_Language)
	if Config.DisableUserInterface == true then
		return
	end

	Language:loadLanguage(p_Language)
	self._views:setLanguage(p_Language)
end

function FunBotUIClient:_onUISaveSettings(p_Data)
	if Config.DisableUserInterface == true then
		return
	end

	if Debug.Client.UI then
		print('UIClient: UI_Save_Settings (' .. p_Data .. ')')
	end

	NetEvents:Send('UI_Request_Save_Settings', p_Data)
end

function FunBotUIClient:_onBotEditorEvent(p_Data)
	if Config.DisableUserInterface == true then
		return
	end

	if Debug.Client.UI then
		print('UIClient: BotEditor (' .. p_Data .. ')')
	end

	-- Redirect to Server.
	NetEvents:Send('BotEditor', p_Data)
end

function FunBotUIClient:_onUIShowToolbar(p_Data)
	if Config.DisableUserInterface == true then
		return
	end

	if Debug.Client.UI then
		print('UIClient: UI_Show_Toolbar (' .. tostring(p_Data) .. ')')
	end

	if (p_Data == 'true') then
		self._views:show('toolbar')
		self._views:focus()
	else
		self._views:hide('toolbar')
		self._views:blur()
	end
end

---VEXT Client Client:UpdateInput Event
---@param p_DeltaTime number
function FunBotUIClient:OnClientUpdateInput(p_DeltaTime)
	if Config.DisableUserInterface == true then
		return
	end

	if InputManager:WentKeyDown(InputDeviceKeys.IDK_F12) then
		if Debug.Client.UI then
			print('Client send: UI_Request_Open')
		end

		-- This request can be used for UI-Toggle.
		NetEvents:Send('UI_Request_Open')

		return
	elseif InputManager:WentKeyDown(Registry.COMMON.BOT_COMMAND_KEY) and
		not self.m_InCommScreen and not self.m_WaitForKeyLeft then
		NetEvents:Send('UI_Request_CommoRose_Show')
	elseif InputManager:WentKeyUp(Registry.COMMON.BOT_COMMAND_KEY) and
		(self.m_InCommScreen or self.m_WaitForKeyLeft) then
		if self.m_InCommScreen then
			self:_onUICommoRose("false") -- To-do: Remove Permission-Check?
		end

		self.m_WaitForKeyLeft = false
	end
end

function FunBotUIClient:OnExtensionLoaded()
	self._views:OnExtensionLoaded()
end

---VEXT Shared Extension:Unloading Event
function FunBotUIClient:OnExtensionUnloading()
	self._views:OnExtensionUnloading()
end

if g_FunBotUIClient == nil then
	---@type FunBotUIClient
	g_FunBotUIClient = FunBotUIClient()
end

return g_FunBotUIClient
