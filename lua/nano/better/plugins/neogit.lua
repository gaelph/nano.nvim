local faces = require "nano.better.palette"(vim.o.background).faces

return {
	NeogitChangeDeleted = {
		fg = faces.critical.bg,
		ctermfg = faces.critical.ctermfg,
		bold = true,
		italic = true,
	},
	NeogitDiffAdd = {},
	NeogitDiffAddHighlight = { link = "DiffAdd" },
	NeogitDiffDelete = {},
	NeogitDiffDeleteHighlight = { link = "DiffDelete" },
	NeogitNotificationError = { link = "CriticalI" },
	NeogitNotificationInfo = { link = "Salient" },
	NeogitNotificationWarning = { link = "Popout" },
}
