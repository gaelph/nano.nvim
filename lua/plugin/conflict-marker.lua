-- conflict marker highlights
local lush = require "lush"
local base = require "base"

local M = {}

M = lush(function()
	return {
		ConflictMarkerBegin { bg = base.Success.fg.mix(base.Normal.bg, 76) },
		ConflictMarkerOurs { bg = base.Success.fg.mix(base.Normal.bg, 76) },
		ConflictMarkerTheirs { bg = base.Salient.fg.mix(base.Normal.bg, 76) },
		ConflictMarkerEnd { bg = base.Salient.fg.mix(base.Normal.bg, 76) },
		ConflictMarkerCommonAncestorsHunk {
			bg = base.Popout.fg.mix(base.Normal.bg, 76),
		},
	}
end)

return M
