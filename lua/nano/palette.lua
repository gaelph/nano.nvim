local dark = require "nano.colors.dark"
local light = require "nano.colors.light"

local M = {}

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
