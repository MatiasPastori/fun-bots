--
-- SOON DEPRECATED - A better debugging system is currently in development by @Firjens
--
---@class Debug
Debug = {
	Globals = {
		UPDATE = true -- Debug the Updater.
	},
	Server = {
		INFO = true,     -- Global Informations.
		BOT = true,      -- Debug Bot-Handling.
		COMMAND = true,  -- Debug Chat- & RCON Commands.
		DATABASE = true, -- Debug Database-Operations.
		GAMEDIRECTOR = true, -- Debug the GameDirector.
		VEHICLES = true, -- Debug the Vehicle-Class.
		NODEEDITOR = true, -- Debug the NodeEditor.
		PATH = true,     -- Debug the PathSwitcher.
		SETTINGS = true, -- Debug the Settings-Migrator.
		TRACE = true,    -- Debug the TraceManager.
		UI = true,       -- Debug all UI things.
		PERMISSIONS = true, -- Debug all Permission things.
		MODIFICATIONS = true, -- Debug some Modifications.
		NODECOLLECTION = true, -- Debug NodeCollection.
		RCON = true      -- Debug some RCON Commands.
	},
	Client = {
		INFO = true, -- Global Informations.
		NODEEDITOR = true, -- Debug the NodeEditor.
		UI = true    -- Debug all UI things.
	},
	Shared = {
		INFO = true,   -- Global Informations.
		EBX = true,    -- Debug EBX-Utils.
		LANGUAGE = true, -- Debug Language.
		DATABASE = true, -- Debug Database-Operations.
		MODIFICATIONS = true -- Debug some Modifications.
	},
	Logger = {
		ENABLED = true,
		PRINTALL = true
	}
}
