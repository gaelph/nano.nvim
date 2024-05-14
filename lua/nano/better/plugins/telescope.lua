return function(variant)
	local faces = require "nano.better.palette"(variant).faces

	return {
		TelescopeBorder = {
			fg = faces.subtle.bg,
			ctermfg = faces.subtle.ctermbg,
			bg = faces.subtle.bg,
			ctermbg = faces.subtle.ctermbg,
		},
		TelescopeMatching = { link = "Salient" },
		TelescopeMultiSelection = { link = "Highlight" },
		TelescopeNormal = {
			fg = faces.normal.fg,
			ctermfg = faces.normal.ctermfg,
			bg = faces.subtle.bg,
			ctermbg = faces.subtle.ctermbg,
		},
		TelescopePreviewBorder = { link = "TelescopeBorder" },
		TelescopePrompt = { link = "TelescopeNormal" },
		TelescopePromptBorder = { link = "TelescopeBorder" },
		TelescopePromptPrefix = { link = "Salient" },
		TelescopeResultsBorder = { link = "TelescopeBorder" },
		TelescopeSelection = { link = "Highlight" },
		TelescopeSelectionCaret = { link = "Salient" },
		--
		TelescopeQueryFilter = { link = "Faded" },
	}
end
