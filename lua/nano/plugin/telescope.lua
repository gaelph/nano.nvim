-- telescope highlights
local lush = require "lush"

return function(variant)
	local base = require "nano.base"(variant)

	return lush(function()
		return {
			-- telescope.nvim
			TelescopeSelection { base.Highlight },
			TelescopeSelectionCaret { base.Salient },
			TelescopeMultiSelection { base.Highlight },
			TelescopeNormal { base.Normal, bg = base.Subtle.bg },
			TelescopeBorder { TelescopeNormal, fg = TelescopeNormal.bg },
			TelescopePromptBorder { TelescopeBorder },
			TelescopeResultsBorder { TelescopeBorder },
			TelescopePreviewBorder { TelescopeBorder },
			TelescopeMatching { base.Salient },
			TelescopePromptPrefix { base.Salient },
			TelescopePrompt { TelescopeNormal },
		}
	end)
end
