return function(variant)
	local faces = require "nano.better.palette"(variant).faces

	return {
		MultiCursor = {
			bg = faces.highlight.bg,
			ctermbg = faces.highlight.ctermbg,
			bold = true,
		},
		MultiCursorMain = {
			bg = faces.highlight.bg,
			ctermbg = faces.highlight.ctermbg,
			fg = faces.normal.fg,
			ctermfg = faces.normal.ctermfg,
			bold = true,
		},
	}
end
