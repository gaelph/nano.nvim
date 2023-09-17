-- treesitter highlights
local lush = require "lush"

return function(variant)
	local base = require "nano.base"(variant)

	return lush(function()
		return {
			TSTag { base.Bold },
			TSTagDelimiter { base.Faded },
			--
			TSNote { base.Todo },
			--
			TSWarning { base.PopoutI },
			TSDanger { base.Critical },
		}
	end)
end
