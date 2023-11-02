---@class PathLoader
---@overload fun():PathLoader
PathLoader = class('PathLoader')

---@type NodeCollection
local m_NodeCollection = require('NodeCollection')
---@type Logger
local m_Logger = Logger('PathLoader', Debug.Server.PATH_LOADER)

function PathLoader:__init()
end

-- COMMON EVENTS.

function PathLoader:OnLevelLoaded(p_LevelName, p_GameMode, p_CustomGameMode)
	self:Log('Level Load: %s %s', p_LevelName, p_GameMode)

	local s_GameModeToLoad = p_GameMode

	-- check if the mapfile is available. If not, check if a valid alternative is available
	if p_CustomGameMode and m_NodeCollection:IsMapAvailable(p_LevelName, p_CustomGameMode) then
		s_GameModeToLoad = p_CustomGameMode
	elseif not m_NodeCollection:IsMapAvailable(p_LevelName, s_GameModeToLoad) then
		-- Try Convert map names if needed.
		if Globals.IsTdm or Globals.IsGm or Globals.IsScavenger then
			s_GameModeToLoad = 'TeamDeathMatch0' -- Paths are compatible.
		end

		if p_LevelName == 'MP_Subway' and p_GameMode == 'ConquestSmall0' then
			s_GameModeToLoad = 'ConquestLarge0' -- Paths are the same.
		end

		if p_LevelName == 'XP4_Rubble' and p_GameMode == 'ConquestAssaultLarge0' then
			s_GameModeToLoad = 'ConquestAssaultSmall0'
		end
	end

	m_NodeCollection:Load(p_LevelName, s_GameModeToLoad)

	local s_Counter = 0
	local s_Waypoints = m_NodeCollection:Get()

	for i = 1, #s_Waypoints do
		local s_Waypoint = s_Waypoints[i]

		if type(s_Waypoint.Next) == 'string' then
			s_Counter = s_Counter + 1
		end

		if type(s_Waypoint.Previous) == 'string' then
			s_Counter = s_Counter + 1
		end
	end

	self:Log('Load -> Stale Nodes: %d', s_Counter)
end

---VEXT Shared Level:Destroy Event
function PathLoader:OnLevelDestroy()
	m_NodeCollection:Clear()
end

function PathLoader:Log(...)
	local s_MessageString = Language:I18N(...)
	m_Logger:Write(s_MessageString)
end

if g_PathLoader == nil then
	---@type PathLoader
	g_PathLoader = PathLoader()
end

return g_PathLoader
