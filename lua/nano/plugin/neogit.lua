-- neogit highlights
local lush = require "lush"
local base = require "nano.base"

local M = {}

M = lush(function()
	return {
		NeogitNotificationInfo { base.Salient },
		NeogitNotificationWarning { base.Popout },
		NeogitNotificationError { base.CriticalI },
	}
end)

return M
