-- lsp/diagnostics highlights
local lush = require "lush"
local base = require "base"

local M = {}

M = lush(function()
	return {
		DiagnosticWarn { base.Popout },
		DiagnosticError { base.CriticalI },
		DiagnosticInfo { base.Salient },
		DiagnosticHint { base.Salient },

		DiagnosticUnderlineError {
			base.Undercurl,
			fg = "none",
			guisp = base.CriticalI.fg,
		},
		DiagnosticUnderlineWarn {
			base.Undercurl,
			fg = "none",
			guisp = base.CriticalI.fg,
		},
		DiagnosticUnderlineInfo {
			base.Undercurl,
			fg = "none",
			guisp = base.CriticalI.fg,
		},
		DiagnosticUnderlineHint {
			base.Undercurl,
			fg = "none",
			guisp = base.CriticalI.fg,
		},

		DiagnosticFloatingError { base.Default },
		DiagnosticFloatingWarn { base.Default },
		DiagnosticFloatingInfo { base.Default },
		DiagnosticFloatingHint { base.Default },

		-- built in neovim lsp diagnostics
		DiagnosticSignError { base.CriticalI },
		DiagnosticSignWarn { base.Popout },
		DiagnosticSignInfo { base.Salient },
		DiagnosticSignHint { base.Salient },

		DiagnosticVirtualTextWarn { base.Popout },
		DiagnosticVirtualTextError { base.CriticalI },
		DiagnosticVirtualTextInfo { base.Salient },
		DiagnosticsVirtualTextHint { base.Salient },

		LspReferenceRead { base.Highlight },
		LspReferenceText { base.Highlight },
		LspReferenceWrite { base.Highlight },
	}
end)

return M
