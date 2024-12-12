-- colors/colorscheme.lua
local Utils = require "nano.utils"
Utils.auto_term_gui_colors()

-- vim.highlight.priorities.semantic_tokens = 99
-- vim.highlight.priorities.treesitter = 120

local Base = require "nano.better.base"
local Syntax = require "nano.better.syntax"
local VimUI = require "nano.better.vim_ui"
local Treesitter = require "nano.better.treesitter"
local Diff = require "nano.better.diff"
local Diagnostics = require "nano.better.diagnostics"
local Lsp = require "nano.better.lsp"
local Help = require "nano.better.help"
local ConflictMarker = require "nano.better.plugins.conflict_marker"
local DapUI = require "nano.better.plugins.dap_ui"
local Fugitive = require "nano.better.plugins.fugitive"
local GitSigns = require "nano.better.plugins.git_signs"
local IndentBlankLine = require "nano.better.plugins.indent_blankline"
local Navic = require "nano.better.plugins.navic"
local Neogit = require "nano.better.plugins.neogit"
local Notify = require "nano.better.plugins.notify"
local Orgmode = require "nano.better.plugins.orgmode"
local StatusLine = require "nano.better.plugins.statusline"
local Telescope = require "nano.better.plugins.telescope"
local MultiCursor = require "nano.better.plugins.multicursor"

local colors = vim.tbl_extend(
	"keep",
	--
	Base(vim.o.background),
	Syntax(vim.o.background),
	VimUI(vim.o.background),
	Help(vim.o.background),
	Treesitter(vim.o.background),
	Diff(vim.o.background),
	Diagnostics(vim.o.background),
	Lsp(vim.o.background),
	-- Plugins
	ConflictMarker(vim.o.background),
	DapUI(vim.o.background),
	Fugitive(vim.o.background),
	GitSigns(vim.o.background),
	IndentBlankLine(vim.o.background),
	Navic(vim.o.background),
	Neogit(vim.o.background),
	Notify(vim.o.background),
	Orgmode(vim.o.background),
	StatusLine(vim.o.background),
	Telescope(vim.o.background),
	MultiCursor(vim.o.background)
)

-- colorschemes generally want to do this
vim.cmd "highlight clear"
vim.cmd "set t_Co=256"
local TERM = os.getenv "TERM"
if TERM == "xterm-kitty" or TERM == "wezterm" then
	vim.cmd "let &t_ut=''"
end
vim.cmd "let g:colors_name='nano'"

-- clear @lsp highlights
for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
	vim.api.nvim_set_hl(0, group, {})
end

-- apply highlight groups
for group, attrs in pairs(colors) do
	-- if using termguicolors,
	-- fixes underline in diffs
	if group == "CursorLine" and vim.o.termguicolors then
		attrs.ctermbg = "None"
		attrs.ctermfg = "None"
	end

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

-- some fixes for unwanted colors in the StatusLine
vim.cmd [[
		hi! StatusLine cterm=NONE gui=NONE
		hi! link StatusLineNC None
		hi! link StatusLine None
]]

local function fix_cursorline()
	if vim.o.termguicolors then
		vim.cmd "hi CursorLine ctermfg=Black ctermbg=None"
	elseif vim.o.background == "dark" then
		vim.cmd "hi CursorLine ctermfg=None ctermbg=15"
	elseif vim.o.background == "light" then
		vim.cmd "hi CursorLine ctermfg=None ctermbg=0"
	end
end

vim.api.nvim_create_autocmd("OptionSet", {
	pattern = { "termguicolors" },
	callback = function()
		fix_cursorline()
	end,
})

fix_cursorline()
