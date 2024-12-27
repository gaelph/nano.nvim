local Utils = {}

function Utils.auto_term_gui_colors()
	local TERM = os.getenv "TERM"
	local TERM_PROGRAM = os.getenv "TERM_PROGRAM"
	local COLORTERM = os.getenv "COLORTERM"
	if
		COLORTERM ~= "truecolor"
		and TERM ~= nil
		and TERM ~= "xterm-kitty"
		and vim.startswith(TERM, "xterm")
		and TERM_PROGRAM ~= "WezTerm"
		and TERM_PROGRAM ~= "ghostty"
	then
		vim.o.termguicolors = false
	else
		vim.o.termguicolors = true
	end
end

Utils.ns = vim.api.nvim_create_namespace "nano-ns"
Utils.autogroup = vim.api.nvim_create_augroup("nano-ag", { clear = true })

return Utils
