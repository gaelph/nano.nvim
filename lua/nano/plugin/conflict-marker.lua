-- conflict marker highlights
local lush = require "lush"
return function(variant)
	local base = require "nano.base"(variant)

	return lush(function()
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
end
