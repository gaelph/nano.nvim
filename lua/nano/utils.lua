local Utils = {}

function Utils.auto_term_gui_colors()
	local TERM = os.getenv "TERM"
	if TERM ~= nil and TERM ~= "xterm-kitty" and vim.startswith(TERM, "xterm") then
		vim.o.termguicolors = false
	else
		vim.o.termguicolors = true
	end
end

Utils.ns = vim.api.nvim_create_namespace "nano-ns"
Utils.autogroup = vim.api.nvim_create_augroup("nano-ag", { clear = true })

return Utils
