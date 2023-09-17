-- indent blank line highlights
local lush = require "lush"

return function(variant)
	local base = require "nano.base"(variant)

	return lush(function()
		return {
			IndentBlanklineIndentContext { fg = base.Highlight.bg },
			IndentBlanklineIndent { base.None },
		}
	end)
end
