-- notify highlights
local lush = require "lush"
local base = require "nano.base"

local M = {}

M = lush(function()
	return {
		NotifyERRORBorder { base.CriticalI },
		NotifyWARNBorder { base.Popout },
		NotifyINFOBorder { base.Salient },
		NotifyDEBUGBorder { base.Faded },
		NotifyTRACEBorder { base.Faded },

		NotifyERRORIcon { base.CriticalI },
		NotifyWARNIcon { base.Popout },
		NotifyINFOIcon { base.Salient },
		NotifyDEBUGIcon { base.Faded },
		NotifyTRACEIcon { base.Faded },

		NotifyERRORTitle { base.CriticalI },
		NotifyWARNTitle { base.Popout },
		NotifyINFOTitle { base.Salient },
		NotifyDEBUGTitle { base.Faded },
		NotifyTRACETitle { base.Faded },

		NotifyERRORBody { base.Normal },
		NotifyWARNBody { base.Normal },
		NotifyINFOBody { base.Normal },
		NotifyDEBUGBody { base.Normal },
		NotifyTRACEBody { base.Normal },
	}
end)

return M
