-- lsp/diagnostics highlights
local lush = require "lush"

return function(variant)
	local base = require "nano.base"(variant)

	return lush(function()
		return {
			LspReferenceRead { base.Highlight },
			LspReferenceText { base.Highlight },
			LspReferenceWrite { base.Highlight },
		}
	end)
end
