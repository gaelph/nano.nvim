-- neogit highlights
local lush = require "lush"

return function(variant)
	local base = require "nano.base"(variant)

	return lush(function()
		return {
			NeogitNotificationInfo { base.Salient },
			NeogitNotificationWarning { base.Popout },
			NeogitNotificationError { base.CriticalI },
		}
	end)
end
