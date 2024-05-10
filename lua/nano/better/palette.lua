local dark = require "nano.colors.dark"
local light = require "nano.colors.light"

return function(variant)
	local M = {}

	M.colors = dark

	if variant == "light" then
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
			bg = 0,
			fg = 15,
			ctermbg = M.colors.cterm.bg,
			ctermfg = M.colors.cterm.bg,
		},
		normal = {
			bg = M.colors.bg,
			fg = M.colors.fg,
			ctermbg = "NONE",
			ctermfg = M.colors.cterm.fg,
		},
		cursor = {
			bg = M.colors.fg,
			fg = M.colors.bg,
			ctermbg = M.colors.cterm.fg,
			ctermfg = M.colors.cterm.bg,
		},
		mouse = {
			bg = M.colors.bg,
			fg = M.colors.fg,
			ctermbg = M.colors.cterm.bg,
			ctermfg = M.colors.cterm.fg,
		},
		highlight = {
			bg = M.colors.highlight,
			ctermbg = M.colors.cterm.highlight,
		},
		subtle = {
			bg = M.colors.subtle,
			ctermbg = M.colors.cterm.subtle,
		},
		subtle_i = {
			fg = M.colors.highlight,
			ctermfg = M.colors.cterm.highlight,
		},
		faded = {
			fg = M.colors.faded,
			ctermfg = M.colors.cterm.faded,
		},
		faded_i = {
			bg = M.colors.faded,
			fg = M.colors.bg,
			ctermbg = M.colors.cterm.faded,
			ctermfg = M.colors.cterm.bg,
		},
		default = {
			fg = M.colors.fg,
			ctermfg = M.colors.cterm.fg,
			ctermbg = "NONE",
		},
		default_i = {
			fg = M.colors.bg,
			bg = M.colors.fg,
			ctermfg = M.colors.cterm.bg,
			ctermbg = M.colors.cterm.fg,
		},
		salient = {
			fg = M.colors.salient,
			ctermfg = M.colors.cterm.salient,
		},
		salient_i = {
			fg = M.colors.bg,
			bg = M.colors.salient,
			ctermfg = M.colors.cterm.bg,
			ctermbg = M.colors.cterm.salient,
		},
		strong = {
			fg = M.colors.strong,
			ctermfg = M.colors.cterm.strong,
			bold = true,
			cterm = {
				bold = false,
			},
			-- guisp = spec.bold,
		},
		strong_i = {
			fg = M.colors.bg,
			bg = M.colors.strong,
			bold = false,
			sp = "NONE",
			ctermfg = M.colors.cterm.bg,
			ctermbg = M.colors.cterm.strong,
		},
		popout = {
			fg = M.colors.popout,
			ctermfg = M.colors.cterm.popout,
		},
		popout_i = {
			fg = M.colors.bg,
			bg = M.colors.popout,
			ctermfg = M.colors.cterm.bg,
			ctermbg = M.colors.cterm.popout,
		},
		critical = {
			fg = M.colors.bg,
			bg = M.colors.critical,
			ctermfg = M.colors.cterm.bg,
			ctermbg = M.colors.cterm.critical,
		},
		critical_i = {
			fg = M.colors.critical,
			ctermfg = M.colors.cterm.critical,
		},
		success = {
			fg = M.colors.success,
			ctermfg = M.colors.cterm.success,
		},
		success_i = {
			bg = M.colors.success,
			fg = M.colors.bg,
			ctermbg = M.colors.cterm.success,
			ctermfg = M.colors.cterm.bg,
		},
	}

	return M
end
