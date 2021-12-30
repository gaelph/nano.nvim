local lush = require "lush"
local hsl = lush.hsl

local dark = require "nano.colors.dark"
local light = require "nano.colors.light"

local M = {}

M.clrs = {
	nord0 = hsl(220, 16, 20), -- #2b303b Background
	nord1 = hsl(222, 16, 22), -- #2f3541 Darker Gray
	nord2 = hsl(220, 17, 27), -- #395141 Dark Gray
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
--
-- M.colors = {
-- 	fg = M.clrs.nord6,
-- 	bg = M.clrs.nord0,
-- 	highlight = M.clrs.nord2,
-- 	subtle = M.clrs.nord1,
-- 	faded = M.clrs.nord3_bright,
-- 	salient = M.clrs.nord9,
-- 	strong = hsl(0, 0, 100),
-- 	popout = M.clrs.nord12,
-- 	critical = M.clrs.nord11,
-- 	success = M.clrs.nord14,
-- }

M.colors = dark

if vim.o.background == "light" then
	M.colors = light
end

local spec = {
	bold = "bold",
	italic = "italic",
	underline = "underline",
	inverse = "inverse",
	undercurl = "undercurl",
}
M.spec = spec

M.faces = {
	none = {
		bg = M.colors.bg,
		fg = M.colors.bg,
	},
	normal = {
		bg = M.colors.bg,
		fg = M.colors.fg,
	},
	cursor = {
		bg = M.colors.fg,
		fg = M.colors.bg,
	},
	mouse = {
		bg = M.colors.bg,
		fg = M.colors.fg,
	},
	highlight = {
		bg = M.colors.highlight,
	},
	subtle = {
		bg = M.colors.subtle,
	},
	subtle_i = {
		fg = M.colors.highlight,
	},
	faded = {
		fg = M.colors.faded,
	},
	faded_i = {
		bg = M.colors.faded,
		fg = M.colors.bg,
	},
	default = {
		fg = M.colors.fg,
	},
	default_i = {
		fg = M.colors.bg,
		bg = M.colors.fg,
	},
	salient = {
		fg = M.colors.salient,
	},
	salient_i = {
		fg = M.colors.bg,
		bg = M.colors.salient,
	},
	strong = {
		fg = M.colors.strong,
		gui = spec.bold,
		-- guisp = spec.bold,
	},
	strong_i = {
		fg = M.colors.bg,
		bg = M.colors.strong,
		gui = "NONE",
		guisp = "NONE",
	},
	popout = {
		fg = M.colors.popout,
	},
	popout_i = {
		fg = M.colors.bg,
		bg = M.colors.popout,
	},
	critical = {
		fg = M.colors.bg,
		bg = M.colors.critical,
	},
	critical_i = {
		fg = M.colors.critical,
	},
	success = {
		fg = M.colors.success,
	},
	success_i = {
		bg = M.colors.success,
		fg = M.colors.bg,
	},
}

return M
