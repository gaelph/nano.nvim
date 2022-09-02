-- notify highlights
local lush = require "lush"
local base = require "nano.base"

local M = {}

M = lush(function()
	return {
		netrwClassify { base.Normal },
		netrwExe { base.CriticalI },
		netrwSymlink { base.Popout },
		netrwTreeBar { base.Faded },
		netrwMarkFile { base.Search },
	}
end)

return M
