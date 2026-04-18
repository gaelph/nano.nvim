return function(_variant)
	return {
		ConflictMarkerBegin = { link = "DiffChange" },
		ConflictMarkerCommonAncestorsHunk = { link = "DiffAdd" },
		ConflictMarkerEnd = { link = "DiffAdd" },
		ConflictMarkerOurs = { link = "DiffText" },
		ConflictMarkerTheirs = { link = "DiffAdd" },
	}
end
