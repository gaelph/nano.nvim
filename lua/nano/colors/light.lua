local lush = require "lush"
local hsl = lush.hsl

local M = {
	fg = hsl(200, 18, 26),
	bg = hsl(0, 0, 100),
	subtle = hsl(0, 0, 98),
	critical = hsl(25, 100, 50),
	salient = hsl(262, 52, 47),
	strong = hsl(0, 0, 0),
	popout = hsl(14, 100, 78),
	highlight = hsl(204, 15, 94),
	faded = hsl(200, 15, 73),
	success = hsl "#66bb6a",
	color_0 = hsl "#36464e", -- Black
	color_1 = hsl "#ff6f00", -- Red
	color_2 = hsl "#a5d6a7", -- Green
	color_3 = hsl "#ffab91", -- Yellow
	color_4 = hsl "#673ab7", -- Blue
	color_5 = hsl "#673ab7", -- Magenta
	color_6 = hsl "#b0bec5", -- SkyBlue
	color_7 = hsl "#eceff1", -- White
	color_8 = hsl "#b0bec5", -- Bright Black
	color_9 = hsl "#ff6f00", -- Bright Red
	color_10 = hsl "#66bb6a", -- Bright Green
	color_11 = hsl "#ffab91", -- Bright Yellow
	color_12 = hsl "#673ab7", -- Bright Blue
	color_13 = hsl "#673ab7", -- Bright Magenta
	color_14 = hsl "#b0bec5", -- Bright SkyBlue
	color_15 = hsl "#eceff1", -- Bright White
	cterm = {
		fg = "fg",
		bg = "bg",
		subtle = 15,
		critical = "DarkRed",
		salient = "Magenta",
		strong = "Black",
		popout = "Yellow",
		highlight = "LightGray",
		faded = "DarkGray",
	},
}

return M
