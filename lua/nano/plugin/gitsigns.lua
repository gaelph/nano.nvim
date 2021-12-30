-- gitsigns highlights
local lush = require "lush"
local base = require "nano.base"

local M = {}

M = lush(function()
	return {
		GitSignsAdd { base.Success },
		GitSignsAddNr {
			fg = base.Faded.fg.li(17),
			bg = GitSignsAdd.fg.mix(base.Normal.bg, 80),
		},
		GitSignsDelete { base.CriticalI },
		GitSignsDeleteNr {
			fg = GitSignsAddNr.fg,
			bg = GitSignsDelete.fg.mix(base.Normal.bg, 80),
		},
		GitSignsChange { base.Salient },
		GitSignsChangeNr {
			fg = GitSignsAddNr.fg,
			bg = GitSignsChange.fg.mix(base.Normal.bg, 80),
		},
		GitSignsChangeDelete { base.Popout },
		GitSignsChangeDeleteNr {
			fg = GitSignsAddNr.fg,
			bg = GitSignsChangeDelete.fg.mix(base.Normal.bg, 80),
		},
		GitSignsCurrentLineBlame {
			base.Subtle,
			fg = base.Faded.fg.mix(base.Subtle.bg, 30),
		},
	}
end)

return M
