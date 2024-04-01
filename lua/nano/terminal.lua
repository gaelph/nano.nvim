local v = vim.g -- this must be done, because lush is executed in a bare environment

local dark = require "nano.colors.dark"
local light = require "nano.colors.light"

return function(variant)
	print("Setting terminal colors: " .. variant)
	local palette = variant == "light" and light or dark
	-- Neovim Terminal Colors --
	v.terminal_color_0 = palette.color_0
	v.terminal_color_1 = palette.color_1
	v.terminal_color_2 = palette.color_2
	v.terminal_color_3 = palette.color_3
	v.terminal_color_4 = palette.color_4
	v.terminal_color_5 = palette.color_5
	v.terminal_color_6 = palette.color_6
	v.terminal_color_7 = palette.color_7
	v.terminal_color_8 = palette.color_8
	v.terminal_color_9 = palette.color_9
	v.terminal_color_10 = palette.color_10
	v.terminal_color_11 = palette.color_11
	v.terminal_color_12 = palette.color_12
	v.terminal_color_13 = palette.color_13
	v.terminal_color_14 = palette.color_14
	v.terminal_color_15 = palette.color_15
end
