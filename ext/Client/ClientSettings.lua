---@class ClientSettings
---@overload fun():ClientSettings
ClientSettings = class('ClientSettings')

---@type Utilities
local m_Utilities = require('__shared/Utilities')
---@type Logger
local m_Logger = Logger("ClientSettings", Debug.Client.INFO)


---VEXT Shared Engine:Message Event
---@param p_Message Message
function ClientSettings:OnEngineMessage(p_Message)
	if p_Message.type == MessageType.ClientLevelFinalizedMessage then
		NetEvents:SendLocal('Client:RequestSettings')
		self.m_ReadyToUpdate = true
		m_Logger:Write("level loaded on Client")
	end

	if p_Message.type == MessageType.ClientConnectionUnloadLevelMessage or
		p_Message.type == MessageType.ClientCharacterLocalPlayerDeletedMessage then
		-- self:RegisterVars()
	end
end

function ClientSettings:OnWriteClientSettings(p_NewConfig)
	for l_Key, l_Value in pairs(p_NewConfig) do
		Config[l_Key] = l_Value
	end

	m_Logger:Write("write settings")
end

if g_ClientSettings == nil then
	---@type ClientSettings
	g_ClientSettings = ClientSettings()
end

return g_ClientSettings
