return function(variant)
	local faces = require "nano.better.palette"(variant).faces
	return {
		NavicIcons = { link = "NavicText" },
		NavicSeparator = { link = "NavicText" },
		NavicText = {
			fg = faces.normal.fg,
			ctermfg = faces.normal.ctermfg,
			bg = faces.highlight.fg,
			ctermbg = faces.highlight.ctermfg,
		},
	}
end
