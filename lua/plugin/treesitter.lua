-- treesitter highlights
local lush = require "lush"
local base = require "base"

local M = {}

M = lush(function()
	return {
		TSTag { base.Bold },
		TSTagDelimiter { base.Faded },
		--
		TSNote { base.Todo },
		--
		TSWarning { base.PopoutI },
		TSDanger { base.Critical },
	}
end)

return M
