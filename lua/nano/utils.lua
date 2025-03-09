---@class Utils
---@field ns number|string
---@field autogroup number|string
local Utils = {}

function Utils.auto_term_gui_colors()
	local TERM = os.getenv "TERM"
	local COLORTERM = os.getenv "COLORTERM"
	vim.o.termguicolors = COLORTERM == "truecolor"
		or TERM == "xterm-kitty"
		or TERM == "wezterm"
		or TERM == "xterm-ghostty"
end

Utils.ns = vim.api.nvim_create_namespace "nano-ns"
Utils.autogroup = vim.api.nvim_create_augroup("nano-ag", { clear = true })

return Utils
