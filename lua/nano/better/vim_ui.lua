return function(variant)
	local faces = require "nano.better.palette"(variant).faces

	return {
		MsgArea = { link = "Normal" },
		Conceal = {},
		EndOfBuffer = { link = "None" },
		NonText = { link = "Faded" },
		--
		Cursor = {
			fg = faces.normal.bg,
			ctermfg = faces.normal.ctermbg,
			bg = faces.normal.fg,
			faces.normal.ctermfg,
		},
		iCursor = { link = "Cursor" },
		--
		ColorColumn = { link = "Subtle" },
		CursorColumn = { link = "Subtle" },
		CursorLine = {
			bg = faces.subtle.bg,
			-- ctermbg = faces.subtle.ctermbg,
			ctermbg = 15,
			sp = "NONE",
		},
		CursorLineNr = {
			fg = faces.faded.fg,
			bg = faces.subtle.bg,
			ctermfg = faces.faded.ctermfg,
			ctermbg = faces.subtle.ctermbg,
		},
		CursorLineFold = {
			bg = faces.subtle.bg,
			ctermbg = faces.subtle.ctermbg,
		},
		CursorLineSign = {
			link = "CursorLineFold",
		},
		--
		Error = { undercurl = true, sp = faces.critical.bg },
		ErrorMsg = { link = "CriticalI" },
		ModeMsg = { link = "Normal" },
		MoreMsg = { link = "Salient" },
		WarningMsg = { link = "PopoutI" },
		--
		FloatBorder = {
			fg = faces.subtle.bg,
			bg = faces.subtle.bg,
			ctermfg = faces.subtle.ctermbg,
			ctermbg = faces.subtle.ctermbg,
		},
		NormalFloat = { link = "Subtle" },
		--
		WinBar = { fg = faces.normal.fg, bg = faces.subtle.bg },
		WinBarNC = { fg = faces.faded.fg, bg = faces.subtle.bg },
		--
		FoldColumn = {
			fg = faces.faded.fg,
			bg = faces.normal.bg,
			ctermfg = faces.faded.ctermbg,
			ctermbg = faces.normal.ctermbg,
		},
		Folded = { fg = faces.faded.fg, ctermfg = faces.faded.ctermfg },
		--
		IncSearch = { link = "PopoutI" },
		Search = { link = "PopoutI" },
		CurSearch = { link = "Critical" },
		--
		LineNr = { link = "Faded" },
		SignColumn = { link = "Normal" },
		--
		MatchParen = { link = "Strong" },
		--
		--
		Pmenu = { bg = faces.subtle.bg, ctermbg = faces.subtle.ctermbg },
		PmenuSbar = { link = "Subtle" },
		PmenuSel = { link = "FadedI" },
		PmenuThumb = { link = "SalientI" },
		WildMenu = { link = "SalientI" },
		--
		TabLine = { link = "Faded" },
		TabLineFill = { link = "None" },
		TabLineSel = { link = "Normal" },
		--
		SpellBad = { sp = faces.critical.bg, undercurl = true },
		SpellCap = { sp = faces.popout.fg, undercurl = true },
		SpellLocal = { sp = faces.normal.fg, undercurl = true },
		SpellRare = { sp = faces.normal.fg, undercurl = true },
		--
		VertSplit = { link = "SubtleI" },
		WinSeparator = { link = "SubtleI" },
		--
		Visual = { link = "Highlight" },
		VisualNOS = { link = "Highlight" },
		--
		netrwClassify = { link = "Normal" },
		netrwExe = { link = "CriticalI" },
		netrwMarkFile = {},
		netrwSymlink = { link = "Popout" },
		netrwTreeBar = { link = "Faded" },
		--
		qfFileName = { link = "Normal" },
		QuickFixLine = { link = "Highlight" },
	}
end
