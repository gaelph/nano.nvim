local lush = require "lush"
local hsl = lush.hsl

local clrs = {
	nord0 = "#2b303b", --Background
	nord1 = "#2f3541", --Darker Gray
	nord2 = "#394151", --Dark Gray
	nord3 = "#4D576A", --Gray
	nord3_bright = "#616F89", -- Bright gray
	nord4 = "#D8DEE9", -- Light gray
	nord5 = "#E5E9F0", -- Dim white
	nord6 = "#ECEFF4", -- White
	nord7 = "#8FBCBB", --
	nord8 = "#87BFCF", -- Skyblue
	nord9 = "#81A1C1", --
	nord10 = "#5D81AC", -- Blue
	nord11 = "#BE6069", -- Red
	nord12 = "#D18771", --  Orange
	nord13 = "#EBCA89", --  Yellow
	nord14 = "#A4BF8D", --  Green
	nord15 = "#B48EAD", -- Purple
}

local M = {
	fg = clrs.nord6,
	bg = clrs.nord0,
	highlight = clrs.nord2,
	critical = clrs.nord11,
	salient = clrs.nord9,
	strong = "#ffffff",
	popout = clrs.nord12,
	subtle = clrs.nord1,
	faded = clrs.nord3_bright,
	success = clrs.nord14,
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
	cterm = {
		fg = 231, -- white
		bg = 235,
		subtle = 237,
		critical = 167,
		salient = 110,
		strong = 231,
		popout = 173,
		highlight = 238,
		faded = 241,
	},
}

return M
