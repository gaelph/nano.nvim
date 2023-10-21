---@diagnostic disable: undefined-global
local lush = require "lush"

return function(variant)
	local base = require "nano.base"(variant)
	local palette = require "nano.palette"(variant)
	local spec = palette.spec

	-- BaseSpec {{{
	local theme = lush.merge {
		base,
		lush(function(injected_functions)
			local sym = injected_functions.sym
			return {
				-- +-- Editor --+
				ColorColumn { base.Subtle },
				CursorLine { base.Subtle, sp = "none" },
				CursorLineNr { bg = base.Subtle.bg, fg = base.Faded.fg },
				Error { base.Critical },
				iCursor { base.Cursor },
				LineNr { base.Faded },
				MatchParen { base.Strong },
				NonText { base.Default },
				Pmenu { bg = base.Subtle.bg },
				PmenuSbar { base.Subtle },
				PmenuSel { base.FadedI },
				PmenuThumb { base.SalientI },
				SpecialKey { base.Faded },
				SpellBad {
					base.Undercurl,
					guisp = base.Critical.bg,
					sp = base.Critical.bg,
				},
				SpellCap {
					base.Undercurl,
					guisp = base.Popout.fg,
					sp = base.Popout.fg,
				},
				SpellLocal {
					base.Undercurl,
					guisp = base.Normal.fg,
					sp = base.Normal.fg,
				},
				SpellRare {
					base.Undercurl,
					guisp = base.Normal.fg,
					sp = base.Normal.fg,
				},
				Visual { base.Highlight },
				VisualNOS { base.Highlight },

				-- +-- Float --+
				NormalFloat { base.Subtle },
				FloatBorder { base.Subtle, fg = base.Subtle.bg },

				-- +-- Gutter --+
				CursorColumn { base.Subtle },
				SignColumn { base.Normal },
				FoldColumn { SignColumn, fg = base.Faded.fg },
				Folded { fg = base.Faded.fg, bg = base.Subtle.fg },

				-- +-- Navigation --+
				Directory { base.Salient },

				-- +--- Prompt/Status ---+
				EndOfBuffer { base.None },
				ErrorMsg { base.CriticalI },
				ModeMsg { base.Normal },
				MoreMsg { base.Salient },
				Question { base.Normal },
				-- StatusLine { base.None },
				-- StatusLineNC { StatusLine },
				-- StatusLineTerm { StatusLine },
				-- StatusLineTermNC { StatusLine },
				WarningMsg { base.PopoutI },
				WildMenu { base.SalientI },

				-- +--- Search ---+
				IncSearch { base.PopoutI },
				Search { base.PopoutI },

				-- +--- Tabs ---+
				TabLine { base.Faded },
				TabLineFill { base.None },
				TabLineSel { base.Normal },

				-- +--- Window ---+
				Title { base.Bold },
				VertSplit { base.None },

				-- +---Diagnostics ---+
				DiagnosticWarn { base.Popout },
				DiagnosticError { base.CriticalI },
				DiagnosticInfo { base.Salient },
				DiagnosticHint { base.Salient },

				DiagnosticUnderlineError {
					base.Undercurl,
					fg = "none",
					guisp = base.CriticalI.fg,
					sp = base.CriticalI.fg,
				},
				DiagnosticUnderlineWarn {
					base.Undercurl,
					fg = "none",
					guisp = base.CriticalI.fg,
					sp = base.CriticalI.fg,
				},
				DiagnosticUnderlineInfo {
					base.Undercurl,
					fg = "none",
					guisp = base.CriticalI.fg,
					sp = base.CriticalI.fg,
				},
				DiagnosticUnderlineHint {
					base.Undercurl,
					fg = "none",
					guisp = base.CriticalI.fg,
					sp = base.CriticalI.fg,
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

				-- +----------------------+
				-- + Language Base Groups +
				-- +----------------------+
				Boolean { base.Default },
				Character { base.Popout },
				Comment { base.Faded },
				Conditional { base.Salient },
				Constant { base.Strong },
				Define { base.Salient },
				Delimiter { base.Default },
				Exception { base.Salient },
				Float { base.Popout },
				Function { gui = spec.bold },
				Identifier { base.Default },
				sym "@attribute" { base.Faded },
				sym "@property" { base.Default },
				Include { base.Salient },
				Keyword { base.Salient },
				Label { base.Salient },
				Number { fg = base.CriticalI.fg },
				Operator { base.Default },
				PreProc { base.Popout },
				Repeat { base.Salient },
				Special { base.Default },
				SpecialChar { base.Popout },
				SpecialComment { base.Faded },
				Statement { base.Default },
				StorageClass { base.Strong },
				String { fg = base.CriticalI.fg },
				Structure { base.Salient },
				Tag { base.Bold },
				sym "@tag.delimiter" { base.Faded },
				sym "@tag.attribute" { base.Default },
				Todo { base.Strong },
				Type { base.Salient },
				Typedef { base.Salient },
				Macro { Define },
				PreCondit { PreProc },
				Conceal { bg = Normal.bg, fg = Normal.fg },

				-- +--- Diff ---+
				DiffAdd {
					bg = base.Success.fg.mix(base.Normal.bg, 80),
				},
				DiffChange {
					bg = base.Salient.fg.mix(base.Normal.bg, 74),
				},
				DiffDelete {
					bg = base.Critical.bg.mix(base.Normal.bg, 73),
				},
				DiffText {
					bg = DiffChange.bg.li(10),
				},
				StatusLine = {
					fg = base.Normal.fg,
					bg = base.FadedI.bg,
				},
				StatusLineNC = {
					StatusLine,
					fg = base.Subtle.fg,
				},
			}
		end),
		require "nano.plugin.telescope"(variant),
		require "nano.plugin.notify"(variant),
		require "nano.plugin.conflict-marker"(variant),
		require "nano.plugin.gitsigns"(variant),
		require "nano.plugin.lsp"(variant),
		require "nano.plugin.neogit"(variant),
		require "nano.plugin.indent-blankline"(variant),
		require "nano.plugin.treesitter"(variant),
		require "nano.plugin.netrw"(variant),
		require "nano.plugin.orgmode"(variant),
		require "nano.plugin.feline"(variant).plugin,
		require "nano.plugin.navic"(variant),
		require "nano.plugin.dapui"(variant),
		require "nano.plugin.fugitive"(variant),
		-- require("nano.plugin.navic").plugin,
	}
	-- }}}

	return theme
end
-- -- vi:nowrap
