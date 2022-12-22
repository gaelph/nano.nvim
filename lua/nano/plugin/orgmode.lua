-- orgmode highlights
local lush = require "lush"
local base = require "nano.base"

local M = {}

M = lush(function()
	return {
		OrgTSHeadlineLevel1 { base.Bold },
		OrgTSHeadlineLevel2 { base.Normal },
		OrgTSHeadlineLevel3 { base.Normal },
		OrgTSHeadlineLevel4 { base.Normal },
		OrgTSHeadlineLevel5 { base.Normal },
		OrgTSHeadlineLevel6 { base.Normal },
		OrgTSHeadlineLevel7 { base.Normal },
		OrgTSHeadlineLevel8 { base.Normal },

		OrgAgendaScheduled { base.Normal },
		OrgAgendaDeadline { base.Popout },
		OrgAgendaScheduledPast { base.PopoutI },
	}
end)

return M
