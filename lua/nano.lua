---@diagnostic disable: undefined-global
local lush = require "lush"
local base = require "nano.base"

require "nano.terminal"

-- BaseSpec {{{
local theme = lush.merge {
	base,
	lush(function()
		return {
			-- +-- Editor --+
			ColorColumn { base.Subtle },
			CursorLine { base.Subtle },
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
			},
			SpellCap {
				base.Undercurl,
				guisp = base.Popout.fg,
			},
			SpellLocal {
				base.Undercurl,
				guisp = base.Normal.fg,
			},
			SpellRare {
				base.Undercurl,
				guisp = base.Normal.fg,
			},
			Visual { base.Highlight },
			VisualNOS { base.Highlight },

			-- +-- Float --+
			NormalFloat { base.Subtle },
			FloatBorder { base.Subtle, fg = base.Faded.bg },

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
			Title { base.Faded },
			VertSplit { base.None },

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
			Function { base.Strong },
			Identifier { base.Default },
			Include { base.Salient },
			Keyword { base.Salient },
			Label { base.Salient },
			Number { base.Popout },
			Operator { base.Default },
			PreProc { base.Popout },
			Repeat { base.Salient },
			Special { base.Default },
			SpecialChar { base.Popout },
			SpecialComment { base.Faded },
			Statement { base.Default },
			StorageClass { base.Strong },
			String { base.Popout },
			Structure { base.Salient },
			Tag { base.Popout },
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
		}
	end),
	require "nano.plugin.telescope",
	require "nano.plugin.notify",
	require "nano.plugin.conflict-marker",
	require "nano.plugin.gitsigns",
	require "nano.plugin.lsp",
	require "nano.plugin.neogit",
	require "nano.plugin.indent-blankline",
	require "nano.plugin.treesitter",
	require "nano.plugin.netrw",
}
-- }}}

return theme

-- -- vi:nowrap
