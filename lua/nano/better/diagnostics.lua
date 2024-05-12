return function(variant)
	local faces = require "nano.better.palette"(variant).faces

	return {
		DiagnosticError = { link = "CriticalI" },
		DiagnosticFloatingError = { link = "Default" },
		DiagnosticFloatingHint = { link = "Default" },
		DiagnosticFloatingInfo = { link = "Default" },
		DiagnosticFloatingWarn = { link = "Default" },
		DiagnosticHint = { link = "Salient" },
		DiagnosticInfo = { link = "Salient" },
		DiagnosticSignError = { link = "CriticalI" },
		DiagnosticSignHint = { link = "Salient" },
		DiagnosticSignInfo = { link = "Salient" },
		DiagnosticSignWarn = { link = "Popout" },
		DiagnosticUnderlineError = {
			fg = "NONE",
			sp = faces.critical.bg,
			undercurl = true,
		},
		DiagnosticUnderlineHint = {
			fg = "NONE",
			sp = faces.critical.bg,
			undercurl = true,
		},
		DiagnosticUnderlineInfo = {
			fg = "NONE",
			sp = faces.critical.bg,
			undercurl = true,
		},
		DiagnosticUnderlineWarn = {
			fg = "NONE",
			sp = faces.critical.bg,
			undercurl = true,
		},
		DiagnosticVirtualTextError = { link = "CriticalI" },
		DiagnosticVirtualTextInfo = { link = "Salient" },
		DiagnosticVirtualTextWarn = { link = "Popout" },
		DiagnosticWarn = { link = "Popout" },
		DiagnosticsVirtualTextHint = { link = "Salient" },
	}
end
