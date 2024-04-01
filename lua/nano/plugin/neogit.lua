-- neogit highlights
local lush = require "lush"

return function(variant)
	local base = require "nano.base"(variant)

	return lush(function()
		return {
			NeogitNotificationInfo { base.Salient },
			NeogitNotificationWarning { base.Popout },
			NeogitNotificationError { base.CriticalI },
			NeogitDiffAdd {
				bg = base.Success.fg.mix(base.Normal.bg, 80),
				fg = base.Success.fg.mix(base.Normal.fg, 80),
			},
			NeogitDiffDelete {
				bg = base.Critical.bg.mix(base.Normal.bg, 73),
				fg = base.Critical.bg.mix(base.Normal.fg, 73),
			},
		}
	end)
end
