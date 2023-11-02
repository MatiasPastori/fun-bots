--[[
	@property: SettingsDefinition
]]
---@class SettingsDefinition
SettingsDefinition = {
	--[[
		@property: Categorys
	]]
	Categorys = {
		GENERAL = "General",
		DIFFICULTY = "Difficulty",
		SPAWN = "Spawn",
		SPAWNLIMITS = "Spawnlimits",
		BEHAVIOUR = "Behaviour",
		VEHICLE = "Vehicle",
		WEAPONS = "Weapons",
		TRACE = "Trace",
		ADVANCED = "Advanced",
		EXPERT = "Expert",
		OTHER = "Other"
	},
	--[[
		@property: Elements
	]]
	Elements = {
		-- Traces.
		{
			Name = "DebugTracePaths",
			Text = "Debug Trace Paths",
			---@type Type|integer
			Type = Type.Boolean,
			Value = Config.DebugTracePaths,
			Description = "Shows the trace line and search area from Commo Rose selection",
			Default = false,
			UpdateFlag = UpdateFlag.None,
			Category = "TRACE"
		},
		{
			Name = "WaypointRange",
			Text = "Waypoint Range",
			---@type Type|integer
			Type = Type.Integer,
			Value = Config.WaypointRange,
			Description = "Set how far away waypoints are visible (meters)",
			Reference = Range(1.00, 1000.00, 1.0),
			Default = 50,
			UpdateFlag = UpdateFlag.None,
			Category = "TRACE"
		},
		{
			Name = "DrawWaypointLines",
			Text = "Draw Waypoint Lines",
			---@type Type|integer
			Type = Type.Boolean,
			Value = Config.DrawWaypointLines,
			Description = "Draw waypoint connection lines",
			Default = true,
			UpdateFlag = UpdateFlag.None,
			Category = "TRACE"
		},
		{
			Name = "LineRange",
			Text = "Line Range",
			---@type Type|integer
			Type = Type.Integer,
			Value = Config.LineRange,
			Description = "Set how far away waypoint lines are visible (meters)",
			Reference = Range(1.00, 1000.00, 1.0),
			Default = 25,
			UpdateFlag = UpdateFlag.None,
			Category = "TRACE"
		},
		{
			Name = "DrawWaypointIDs",
			Text = "Draw Waypoint IDs",
			---@type Type|integer
			Type = Type.Boolean,
			Value = Config.DrawWaypointIDs,
			Description = "Draw the IDs of the waypoints",
			Default = true,
			UpdateFlag = UpdateFlag.None,
			Category = "TRACE"
		},
		{
			Name = "TextRange",
			Text = "Text Range",
			---@type Type|integer
			Type = Type.Integer,
			Value = Config.TextRange,
			Description = "Set how far away waypoint text is visible (meters)",
			Reference = Range(1.00, 1000.00, 1.0),
			Default = 7,
			UpdateFlag = UpdateFlag.None,
			Category = "TRACE"
		},
		{
			Name = "DrawSpawnPoints",
			Text = "Draw Spawn Points",
			---@type Type|integer
			Type = Type.Boolean,
			Value = Config.DrawSpawnPoints,
			Description = "Draw the Points where players can spawn",
			Default = false,
			UpdateFlag = UpdateFlag.None,
			Category = "TRACE"
		},
		{
			Name = "SpawnPointRange",
			Text = "Range of Spawn Points",
			---@type Type|integer
			Type = Type.Integer,
			Value = Config.SpawnPointRange,
			Description = "Set how far away spawn points are visible (meters)",
			Reference = Range(1.00, 1000.00, 1.0),
			Default = 100,
			UpdateFlag = UpdateFlag.None,
			Category = "TRACE"
		},
		{
			Name = "TraceDelta",
			Text = "Trace Delta Points",
			---@type Type|integer
			Type = Type.Float,
			Value = Config.TraceDelta,
			Description = "Update interval of trace",
			Reference = Range(0.10, 10.00, 0.1),
			Default = 0.3,
			UpdateFlag = UpdateFlag.None,
			Category = "TRACE"
		},
		{
			Name = "NodesPerCycle",
			Text = "Nodes that are drawn per cycle",
			---@type Type|integer
			Type = Type.Integer,
			Value = Config.NodesPerCycle,
			Description = "Set how many nodes get drawn per cycle. Affects performance",
			Reference = Range(1.00, 10000.00, 1.0),
			Default = 400,
			UpdateFlag = UpdateFlag.None,
			Category = "TRACE"
		},
		-- Other Stuff.
		{
			Name = "DisableUserInterface",
			Text = "Disable UI",
			---@type Type|integer
			Type = Type.Boolean,
			Value = Config.DisableUserInterface,
			Description = "If true, the complete UI will be disabled (not available in the UI)",
			Default = false,
			UpdateFlag = UpdateFlag.None,
			Category = "OTHER"
		},
		{
			Name = "DisableChatCommands",
			Text = "Disable chat-commands",
			---@type Type|integer
			Type = Type.Boolean,
			Value = Config.DisableChatCommands,
			Description = "If true, no chat commands can be used",
			Default = false,
			UpdateFlag = UpdateFlag.None,
			Category = "OTHER"
		},
		{
			Name = "DisableRCONCommands",
			Text = "Disable RCON-commands",
			---@type Type|integer
			Type = Type.Boolean,
			Value = Config.DisableRCONCommands,
			Description = "If true, no RCON commands can be used",
			Default = false,
			UpdateFlag = UpdateFlag.None,
			Category = "OTHER"
		},
		{
			Name = "IgnorePermissions",
			Text = "Ignore Permissions",
			---@type Type|integer
			Type = Type.Boolean,
			Value = Config.IgnorePermissions,
			Description = "If true, all permissions are ignored --> everyone can do everything",
			Default = false,
			UpdateFlag = UpdateFlag.None,
			Category = "OTHER"
		},
		{
			Name = "Language",
			Text = "Language",
			---@type Type|integer
			Type = Type.List,
			Value = Config.Language,
			Description = "de_DE as sample (default is English, when language file does not exist)",
			Default = nil,
			Reference = Languages,
			UpdateFlag = UpdateFlag.Language,
			Category = "OTHER"
		}
	}
}
