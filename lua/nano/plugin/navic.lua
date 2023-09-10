-- feline highlights
local lush = require "lush"
local base = require "nano.base"
local M = {}

M.plugin = lush(function()
	return {
		NavicText { fg = base.Normal.fg, bg = base.Highlight.bg },
		NavicSeparator { NavicText },
		NavicIcons { NavicText },
	}
end)

return M
