-- indent blank line highlights
local lush = require "lush"
local base = require "base"

local M = {}

M = lush(function()
	return {
		IndentBlanklineIndentContext { fg = base.Highlight.bg },
		IndentBlanklineIndent { base.None },
	}
end)

return M
