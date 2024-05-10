local faces = require "nano.better.palette"(vim.o.background).faces

return {
	StatusComponentBase = {
		fg = faces.normal.fg,
		ctermfg = faces.normal.ctermfg,
		bg = faces.highlight.bg,
		ctermbg = faces.highlight.ctermbg,
	},
	StatusComponentDefault = { link = "StatusComponentBase" },
	StatusComponentFilename = {
		fg = faces.normal.fg,
		ctermfg = faces.normal.ctermfg,
		bg = faces.highlight.bg,
		ctermbg = faces.highlight.ctermbg,
	},
	StatusComponentInactive = {
		fg = faces.faded.fg,
		ctermfg = faces.faded.ctermfg,
		bg = faces.highlight.bg,
		ctermbg = faces.highlight.ctermbg,
	},
	StatusComponentPosition = {
		fg = "White",
		bg = faces.faded.fg,
		ctermfg = "White",
		ctermbg = faces.faded.ctermfg,
	},
	StatusComponentVimBlock = { link = "StatusComponentVimVisual" },
	StatusComponentVimCommand = { link = "StatusComponentVimInsert" },
	StatusComponentVimEnter = { link = "StatusComponentVimNormal" },
	StatusComponentVimInactive = { link = "StatusComponentBase" },
	StatusComponentVimInsert = {
		fg = faces.normal.fg,
		ctermfg = faces.normal.ctermfg,
		bg = faces.popout.fg,
		ctermbg = faces.popout.ctermfg,
	},
	StatusComponentVimLines = { link = "StatusComponentVimVisual" },
	StatusComponentVimMore = { link = "StatusComponentVimNormal" },
	StatusComponentVimNormal = {
		fg = faces.normal.fg,
		ctermfg = faces.normal.ctermfg,
		bg = faces.faded.fg,
		ctermbg = faces.faded.ctermfg,
	},
	StatusComponentVimOp = {
		fg = faces.normal.fg,
		ctermfg = faces.normal.ctermfg,
		bg = faces.faded.fg,
		ctermbg = faces.faded.ctermfg,
	},
	StatusComponentVimReplace = { link = "StatusComponentVimInsert" },
	StatusComponentVimSelect = { link = "StatusComponentVimVisual" },
	StatusComponentSuccess = {
		fg = faces.success.fg,
		ctermfg = faces.success.ctermfg,
		bg = faces.highlight.bg,
		ctermbg = faces.highlight.ctermbg,
	},
	StatusComponentVimShell = { link = "StatusComponentVimNormal" },
	StatusComponentVimTerm = { link = "StatusComponentVimNormal" },
	StatusComponentVimVReplace = { link = "StatusComponentVimReplace" },
	StatusComponentVimVisual = {
		bg = faces.success.fg,
		ctermbg = faces.success.ctermfg,
	},
}
