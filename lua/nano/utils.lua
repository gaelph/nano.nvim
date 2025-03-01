local Utils = {}

function Utils.auto_term_gui_colors()
	local COLORTERM = os.getenv "COLORTERM"
	vim.o.termguicolors = COLORTERM == "truecolor"
end

Utils.ns = vim.api.nvim_create_namespace "nano-ns"
Utils.autogroup = vim.api.nvim_create_augroup("nano-ag", { clear = true })

return Utils
