-- notify highlights
local lush = require "lush"

return function(variant)
	local base = require "nano.base"(variant)

	return lush(function()
		return {
			netrwClassify { base.Normal },
			netrwExe { base.CriticalI },
			netrwSymlink { base.Popout },
			netrwTreeBar { base.Faded },
			netrwMarkFile { base.Search },
		}
	end)
end
