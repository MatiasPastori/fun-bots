---@class FunBotServer
---@overload fun():FunBotServer
FunBotServer = class('FunBotServer')

-- The registry should be loaded first before loading anything else.
require('__shared/Registry/Registry')
require('__shared/Registry/RegistryManager')

require('__shared/Debug')
require('__shared/Config')
require('__shared/Constants/BotColors')
require('__shared/Constants/BotNames')
require('__shared/Constants/BotKits')
require('__shared/Constants/BotWeapons')
require('__shared/Constants/GmSpecialWeapons')
require('__shared/Constants/WeaponSets')
require('__shared/Constants/WeaponTypes')
require('__shared/Constants/BotAttackModes')
require('__shared/Constants/BotMoveSpeeds')
require('__shared/Constants/SpawnModes')
require('__shared/Constants/SpawnMethods')
require('__shared/Constants/TeamSwitchModes')
require('__shared/Languages/Languages')
require('__shared/Settings/Type')
require('__shared/Settings/UpdateFlag')
require('__shared/Settings/BotEnums')
require('__shared/Settings/Range')
require('__shared/Settings/SettingsDefinition')
require('__shared/Utils/Logger')
require('UIServer')
require('UIPathMenu')
require('Model/Globals')
require('Constants/Permissions')

---@type Logger
local m_Logger = Logger("FunBotServer", Debug.Server.INFO)

require('__shared/Utilities')

---@type NodeEditor
local m_NodeEditor = require('NodeEditor')
---@type Language
local m_Language = require('__shared/Language')
---@type SettingsManager
local m_SettingsManager = require('SettingsManager')
---@type BugReport
local m_bugReport = require('Debug/BugReport')
---@type ChatCommands
local m_ChatCommands = require('Commands/Chat')
---@type Console
local m_Console = require('Commands/Console')
---@type RCONCommands
local m_RCONCommands = require('Commands/RCON')
---@type PermissionManager
PermissionManager = require('PermissionManager')


function FunBotServer:__init()
	self.m_PlayerKilledDelay = 0
	Events:Subscribe('Extension:Loaded', self, self.OnExtensionLoaded)
end

---VEXT Shared Extension:Loaded Event
function FunBotServer:OnExtensionLoaded()
	m_SettingsManager:OnExtensionLoaded()
	m_Language:loadLanguage(Config.Language)
	self:RegisterEvents()
	self:RegisterCustomEvents()
	self:OnModReloaded()
end

function FunBotServer:RegisterEvents()
	Events:Subscribe('Engine:Update', self, self.OnEngineUpdate)
	Events:Subscribe('UpdateManager:Update', self, self.OnUpdateManagerUpdate)

	Events:Subscribe('Level:Loaded', self, self.OnLevelLoaded)
	Events:Subscribe('Level:Destroy', self, self.OnLevelDestroy)
	Events:Subscribe('Player:Respawn', self, self.OnPlayerRespawn)
	Events:Subscribe('Player:Killed', self, self.OnPlayerKilled)
	Events:Subscribe('Player:Chat', self, self.OnPlayerChat)
	Events:Subscribe('Player:Left', self, self.OnPlayerLeft)
	Events:Subscribe('Player:Destroyed', self, self.OnPlayerDestroyed)
end

function FunBotServer:RegisterCustomEvents()
	NetEvents:Subscribe('Client:RequestSettings', self, self.OnRequestClientSettings)
	NetEvents:Subscribe('ConsoleCommands:SetConfig', self, self.OnConsoleCommandSetConfig)
	NetEvents:Subscribe('ConsoleCommands:SaveAll', self, self.OnConsoleCommandSaveAll)
	NetEvents:Subscribe('ConsoleCommands:Restore', self, self.OnConsoleCommandRestore)
	NetEvents:Subscribe("SpawnPointHelper:TeleportTo", self, self.OnTeleportTo)
	m_NodeEditor:RegisterCustomEvents()
end

-- =============================================
-- Events.
-- =============================================


---VEXT Shared Engine:Update Event
---@param p_DeltaTime number
---@param p_SimulationDeltaTime number
function FunBotServer:OnEngineUpdate(p_DeltaTime, p_SimulationDeltaTime)
	m_NodeEditor:OnEngineUpdate(p_DeltaTime, p_SimulationDeltaTime)
end

---VEXT Shared UpdateManager:Update Event
---@param p_DeltaTime number
---@param p_UpdatePass UpdatePass|integer
function FunBotServer:OnUpdateManagerUpdate(p_DeltaTime, p_UpdatePass)
	m_NodeEditor:OnUpdateManagerUpdate(p_DeltaTime, p_UpdatePass)
end

-- =============================================
-- Level Events.
-- =============================================

---VEXT Server Level:Loaded Event
---@param p_LevelName string
---@param p_GameMode string
---@param p_Round integer
---@param p_RoundsPerMap integer
function FunBotServer:OnLevelLoaded(p_LevelName, p_GameMode, p_Round, p_RoundsPerMap)
	Globals.GameMode = p_GameMode
	local s_CustomGameMode = ServerUtils:GetCustomGameModeName()

	-- Only use name of Level.
	p_LevelName = p_LevelName:gsub(".+/.+/", "")
	m_Logger:Write('OnLevelLoaded: ' .. p_LevelName .. ' ' .. p_GameMode)

	m_NodeEditor:OnLevelLoaded(p_LevelName, p_GameMode, s_CustomGameMode)
end

---VEXT Shared Level:Destroy Event
function FunBotServer:OnLevelDestroy()
	m_NodeEditor:OnLevelDestroy()
	local s_OldMemory = math.floor(collectgarbage("count") / 1024)
	collectgarbage('collect')
	m_Logger:Write("*Collecting Garbage on Level Destroy: " ..
		math.floor(collectgarbage("count") / 1024) .. " MB | Old Memory: " .. s_OldMemory .. " MB")
end

-- =============================================
-- Player Events.
-- =============================================
---VEXT Server Player:Respawn Event
---@param p_Player Player
function FunBotServer:OnPlayerRespawn(p_Player)
	m_NodeEditor:OnPlayerRespawn(p_Player)
end

---VEXT Server Player:Killed Event
---@param p_Player Player
---@param p_Inflictor Player|nil
---@param p_Position Vec3
---@param p_Weapon string
---@param p_IsRoadKill boolean
---@param p_IsHeadShot boolean
---@param p_WasVictimInReviveState boolean
---@param p_Info DamageGiverInfo
function FunBotServer:OnPlayerKilled(p_Player, p_Inflictor, p_Position, p_Weapon, p_IsRoadKill, p_IsHeadShot, p_WasVictimInReviveState, p_Info)
	m_NodeEditor:OnPlayerKilled(p_Player)
end

---VEXT Server Player:Chat Event
---@param p_Player Player
---@param p_RecipientMask integer
---@param p_Message string
function FunBotServer:OnPlayerChat(p_Player, p_RecipientMask, p_Message)
	local s_MessageParts = string.lower(p_Message):split(' ')
	m_ChatCommands:Execute(s_MessageParts, p_Player)
end

---VEXT Server Player:Left Event
---@param p_Player Player
function FunBotServer:OnPlayerLeft(p_Player)
	m_NodeEditor:OnPlayerLeft(p_Player)
end

---VEXT Server Player:Destroyed Event
---@param p_Player Player
function FunBotServer:OnPlayerDestroyed(p_Player)
	m_NodeEditor:OnPlayerDestroyed(p_Player)
end

function FunBotServer:OnRequestClientSettings(p_Player)
	NetEvents:SendToLocal('WriteClientSettings', p_Player, Config)
	m_Console:RegisterConsoleCommands(p_Player)
end

function FunBotServer:OnConsoleCommandSetConfig(p_Player, p_Name, p_Value)
	m_Console:OnConsoleCommandSetConfig(p_Player, p_Name, p_Value)
end

function FunBotServer:OnConsoleCommandSaveAll(p_Player, p_Args)
	m_Console:OnConsoleCommandSaveAll(p_Player, p_Args)
end

function FunBotServer:OnConsoleCommandRestore(p_Player, p_Args)
	m_Console:OnConsoleCommandRestore(p_Player, p_Args)
end

function FunBotServer:OnTeleportTo(p_Player, p_Transform)
	if p_Player == nil or p_Player.soldier == nil then
		return
	end

	p_Player.soldier:SetTransform(p_Transform)
end

-- =============================================
-- Register Callbacks.
-- =============================================

function FunBotServer:OnModReloaded()
	local s_FullLevelPath = SharedUtils:GetLevelName()

	if s_FullLevelPath == nil then
		return
	end

	local s_FullLevelPathTable = s_FullLevelPath:split('/')
	local s_Level = s_FullLevelPathTable[#s_FullLevelPathTable]
	local s_GameMode = SharedUtils:GetCurrentGameMode()
	m_Logger:Write(s_Level .. '_' .. s_GameMode .. ' reloaded')

	if s_Level ~= nil and s_GameMode ~= nil then
		self:OnLevelLoaded(s_Level, s_GameMode, TicketManager:GetCurrentRound(), TicketManager:GetRoundCount())
	end
end

if g_FunBotServer == nil then
	---@type FunBotServer
	g_FunBotServer = FunBotServer()
end

return g_FunBotServer
