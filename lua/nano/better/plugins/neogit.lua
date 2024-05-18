return function(variant)
	local faces = require "nano.better.palette"(variant).faces

	return {
		NeogitChangeDeleted = {
			fg = faces.critical.bg,
			ctermfg = faces.critical.ctermfg,
			bold = true,
			italic = true,
		},
		NeogitChangeAdded = {
			fg = faces.salient.fg,
			ctermfg = faces.salient.ctermfg,
			bold = true,
			italic = true,
		},
		--
		NeogitCursorLine = {
			bg = faces.subtle.fg,
			ctermbg = faces.subtle.ctermfg,
		},
		DiffviewCursorLine = {
			bg = faces.subtle.fg,
			ctermbg = faces.subtle.ctermfg,
		},
		--
		NeogitDiffContext = { bg = faces.subtle.bg, ctermbg = faces.subtle.ctermbg },
		NeogitDiffContextHighlight = { link = "NeogitDiffContext" },
		NeogitDiffAdd = { link = "DiffAdd" },
		NeogitDiffAddCursor = { link = "DiffAdd" },
		NeogitDiffAddHighlight = { link = "DiffAdd" },
		NeogitDiffDelete = { link = "DiffDelete" },
		NeogitDiffDeleteCursor = { link = "DiffAdd" },
		NeogitDiffDeleteHighlight = { link = "DiffDelete" },
		--
		NeogitGraphAuthor = { link = "Comment" },
		--
		NeogitCommandCodeNormal = { link = "Comment" },
		NeogitCommandCodeError = { link = "CriticalI" },
		--
		NeogitNotificationError = { link = "CriticalI" },
		NeogitNotificationInfo = { link = "Salient" },
		NeogitNotificationWarning = { link = "Popout" },
	}
end
