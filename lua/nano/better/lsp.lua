return function(variant)
	local faces = require "nano.better.palette"(variant).faces
	return {
		LspReferenceRead = { link = "Highlight" },
		LspReferenceText = { link = "Highlight" },
		LspReferenceWrite = { link = "Highlight" },
		LspInlayHint = {
			fg = faces.faded.fg,
			bg = faces.subtle.bg,
			ctermfg = faces.faded.ctermfg,
			ctermbg = faces.subtle.ctermbg,
		},
	}
end
