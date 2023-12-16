-- treesitter highlights
local lush = require "lush"

return function(variant)
	local base = require "nano.base"(variant)

	return lush(function(injected_functions)
		local sym = injected_functions.sym
		return {
			sym "@attribute" { base.Faded, gui = "nocombine" },
			sym "@property" { base.Default },
			sym "@tag" { base.Bold },
			sym "@tag.delimiter" { base.Faded },
			sym "@tag.attribute" { base.Default },
			sym "@function" { base.Default, gui = "nocombine,bold" },
			--
			sym "@text.todo" { base.Bold },
			sym "@text.note" { base.Bold },
			sym "@text.mark" { base.Bold, gui = "italic" },
			sym "@text.warning" { base.Popout, gui = "bold" },
			sym "@text.danger" { base.Critical, gui = "bold,nocombine" },
			--
			sym "@comment.documentation" { base.Salient },
		}
	end)
end
