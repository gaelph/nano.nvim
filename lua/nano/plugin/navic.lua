-- feline highlights
local lush = require "lush"

return function(variant)
	local base = require "nano.base"(variant)

	return lush(function()
		return {
			NavicText { fg = base.Normal.fg, bg = base.Highlight.bg },
			NavicSeparator { NavicText },
			NavicIcons { NavicText },
		}
	end)
end
