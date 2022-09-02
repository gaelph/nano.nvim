local lush = require "lush"
local hsl = lush.hsl

local clrs = {
	nord0 = hsl(220, 16, 20), -- #2b303b Background
	nord1 = hsl(222, 16, 22), -- #2f3541 Darker Gray
	nord2 = hsl(220, 17, 27), -- #394151 Dark Gray
	nord3 = hsl(220, 16, 32), -- #4D576A Gray
	nord3_bright = hsl(220, 17, 42), -- #616F89 Bright gray
	nord4 = hsl(219, 28, 88), -- #D8DEE9 Light gray
	nord5 = hsl(218, 27, 92), -- #E5E9F0 Dim white
	nord6 = hsl(218, 27, 94), -- #ECEFF4 White
	nord7 = hsl(179, 25, 65), -- #8FBCBB
	nord8 = hsl(193, 43, 67), -- #87BFCF Skyblue
	nord9 = hsl(210, 34, 63), -- #81A1C1
	nord10 = hsl(213, 32, 52), -- #5D81AC Blue
	nord11 = hsl(354, 42, 56), -- #BE6069 Red
	nord12 = hsl(14, 51, 63), -- #D18771  Orange
	nord13 = hsl(40, 71, 73), -- #EBCA89  Yellow
	nord14 = hsl(92, 28, 65), -- #A4BF8D  Green
	nord15 = hsl(311, 20, 63), -- #B48EAD Purple
}

local M = {
	fg = hsl(218, 27, 94),
	bg = hsl(220, 16, 20),
	highlight = hsl(220, 17, 27),
	critical = hsl(354, 42, 56),
	salient = hsl(210, 34, 63),
	strong = hsl(0, 0, 100),
	popout = hsl(14, 51, 63),
	subtle = hsl(222, 16, 22),
	faded = hsl(220, 17, 42),
	success = hsl(92, 28, 63),
	color_0 = clrs.nord1, -- Black
	color_1 = clrs.nord11, -- Red
	color_2 = clrs.nord14, -- Green
	color_3 = clrs.nord13, -- Yellow
	color_4 = clrs.nord9, -- Blue
	color_5 = clrs.nord15, -- Magenta
	color_6 = clrs.nord8, -- SkyBlue
	color_7 = clrs.nord5, -- White
	color_8 = clrs.nord3, -- Bright Black
	color_9 = clrs.nord11, -- Bright Red
	color_10 = clrs.nord14, -- Bright Green
	color_11 = clrs.nord13, -- Bright Yellow
	color_12 = clrs.nord9, -- Bright Blue
	color_13 = clrs.nord15, -- Bright Magenta
	color_14 = clrs.nord7, -- Bright SkyBlue
	color_15 = clrs.nord6, -- Bright White
}

return M
