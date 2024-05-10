-- colors/colorscheme.lua
local Utils = require "nano.utils"
Utils.auto_term_gui_colors()

vim.highlight.priorities.semantic_tokens = 99
vim.highlight.priorities.treesitter = 120

local Base = require "nano.better.base"
local Syntax = require "nano.better.syntax"
local VimUI = require "nano.better.vim_ui"
local Treesitter = require "nano.better.treesitter"
local Diff = require "nano.better.diff"
local Diagnostics = require "nano.better.diagnostics"
local Lsp = require "nano.better.lsp"
local ConflictMarker = require "nano.better.plugins.conflict_marker"
local DapUI = require "nano.better.plugins.dap_ui"
local Fugitive = require "nano.better.plugins.fugitive"
local GitSigns = require "nano.better.plugins.git_signs"
local IndentBlankLine = require "nano.better.plugins.indent_blankline"
local Navic = require "nano.better.plugins.navic"
local Notify = require "nano.better.plugins.notify"
local StatusLine = require "nano.better.plugins.statusline"
local Telescope = require "nano.better.plugins.telescope"

local colors = vim.tbl_extend(
	"keep", --
	Base, --
	Syntax, --
	VimUI, --
	Treesitter, --
	Diff, --
	Diagnostics, --
	Lsp, --
	-- Plugins
	ConflictMarker,
	DapUI,
	Fugitive,
	GitSigns,
	IndentBlankLine,
	Navic,
	Notify,
	StatusLine,
	Telescope
)

-- if not vim.g.termguicolors then
-- 	colors.ColorColumn.link = "Subtle"
-- 	colors.CursorLine.link = "Subtle"
-- 	colors.CursorLineNr.ctermfg = colors.Faded.ctermfg
-- 	colors.CursorLineNr.ctermbg = colors.Subtle.ctermbg
-- 	colors.Pmenu.ctermbg = colors.Subtle.ctermbg
-- 	colors.PmenuSbar.link = "Subtle"
-- 	colors.PmenuSel.link = "FadedI"
-- 	colors.PmenuThumb.link = "SalientI"
-- 	colors.SpecialKey.link = "Faded"
-- 	colors.NormalFloat.link = "Subtle"
-- 	colors.FloatBorder.ctermfg = "Black"
-- 	colors.FloatBorder.ctermbg = "Black"
-- 	colors.CursorColumn.link = "Subtle"
-- 	colors.SignColumn.link = "Normal"
-- 	colors.Float.ctermfg = colors.CriticalI.ctermfg
-- 	colors.Number.ctermfg = colors.CriticalI.ctermfg
-- 	colors.String.ctermfg = colors.CriticalI.ctermfg
-- 	colors.Conceal.link = "Normal"
-- 	colors.DiffAdd.ctermbg = colors.Success.ctermfg
-- 	colors.DiffChange.ctermbg = colors.Salient.ctermfg
-- 	colors.DiffDelete.ctermbg = colors.Popout.ctermfg
-- 	colors.StatusLine = {}
-- 	colors.StatusLine.ctermfg = colors.Normal.ctermfg
-- 	colors.StatusLine.ctermbg = colors.FadedI.ctermbg
-- 	colors.StatusLineNC = {}
-- 	colors.StatusLineNC.ctermbg = colors.FadedI.ctermbg
-- 	colors.StatusLineNC.ctermfg = colors.Subtle.ctermfg
--
-- 	colors.StatusComponentBase.ctermfg = colors.Normal.ctermfg
-- 	colors.StatusComponentBase.ctermbg = colors.Highlight.ctermbg
-- 	colors.StatusComponentDefault.link = "StatusComponentBase"
-- 	colors.StatusComponentFilename.link = "StatusComponentBase"
-- 	colors.StatusComponentInactive.ctermbg = colors.Highlight.ctermbg
-- 	colors.StatusComponentInactive.ctermfg = colors.Faded.ctermfg
-- 	colors.StatusComponentPosition.ctermbg = colors.FadedI.ctermbg
-- 	colors.StatusComponentPosition.ctermfg = 15
--
-- 	colors.NavicText.ctermbg = colors.Highlight.ctermbg
-- 	colors.NavicText.ctermfg = 15
--
-- 	colors.StatusComponentVimInactive.link = "StatusComponentBase"
-- 	colors.StatusComponentVimNormal.ctermfg = colors.Normal.ctermfg
-- 	colors.StatusComponentVimNormal.ctermbg = colors.FadedI.ctermbg
-- 	colors.StatusComponentVimOp.ctermbg = colors.FadedI.ctermbg
-- 	colors.StatusComponentVimInsert.ctermbg = colors.PopoutI.ctermbg
-- 	colors.StatusComponentVimVisual.ctermbg = colors.Success.ctermfg
-- 	colors.StatusComponentVimLines.link = "StatusComponentVimVisual"
-- 	colors.StatusComponentVimBlock.link = "StatusComponentVimVisual"
-- 	colors.StatusComponentVimReplace.link = "StatusComponentVimInsert"
-- 	colors.StatusComponentVimVReplace.link = "StatusComponentVimInsert"
-- 	colors.StatusComponentVimCommand.link = "StatusComponentVimInsert"
-- 	colors.StatusComponentVimEnter.link = "StatusComponentVimNormal"
-- 	colors.StatusComponentVimMore.link = "StatusComponentVimNormal"
-- 	colors.StatusComponentVimSelect.link = "StatusComponentVimVisual"
-- 	colors.StatusComponentVimShell.link = "StatusComponentVimNormal"
-- 	colors.StatusComponentVimTerm.link = "StatusComponentVimNormal"
--
-- 	colors.TelescopeNormal.ctermbg = colors.Subtle.ctermbg
-- 	colors.TelescopeBorder.ctermbg = colors.Subtle.ctermbg
-- 	colors.TelescopeBorder.ctermfg = colors.Subtle.ctermbg
-- 	colors.IblScope.link = "SubtleI"
-- 	colors.IblWhitespace.ctermfg = "None"
-- 	colors.IblIndent.ctermbg = "None"
-- end

-- colorschemes generally want to do this
vim.cmd "highlight clear"
vim.cmd "set t_Co=256"
local TERM = os.getenv "TERM"
if TERM == "xterm-kitty" or TERM == "wezterm" then
	vim.cmd "let &t_ut=''"
end
-- vim.o.background = "light"
vim.cmd "let g:colors_name='nano_better'"

-- clear @lsp highlights
for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
	vim.api.nvim_set_hl(0, group, {})
end

-- apply highlight groups
for group, attrs in pairs(colors) do
	xpcall(vim.api.nvim_set_hl, function(err)
		print(
			string.format(
				"GROUP %s has invalid attributes %s (err: %s)",
				group,
				vim.fn.json_encode(attrs),
				err
			)
		)
	end, 0, group, attrs)
end

vim.api.nvim_create_autocmd("FileType", {
	group = Utils.autogroup,
	pattern = "qf",
	callback = function()
		vim.api.nvim_set_option_value("winhighlight", "Normal:Subtle", {
			scope = "local",
			win = 0,
		})
		vim.cmd [[resize 10]]
		vim.cmd [[wincmd J]]
	end,
})

-- some fixes for unwanted colors in the StatusLine
-- and underline in diff on cursorline
vim.cmd [[
		hi! StatusLine cterm=NONE gui=NONE
		hi! StatusLineNC cterm=NONE gui=NONE
		hi! link StatusLine None
    " hi CursorLine ctermfg=Black
]]
