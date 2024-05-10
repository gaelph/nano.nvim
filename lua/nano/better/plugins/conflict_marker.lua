if vim.o.background == "light" then
	return {
		ConflictMarkerBegin = { bg = "#E3E8E3" },
		ConflictMarkerCommonAncestorsHunk = { bg = "#F5F1EF" },
		ConflictMarkerEnd = { bg = "#DDDAE2" },
		ConflictMarkerOurs = { bg = "#E3E8E3" },
		ConflictMarkerTheirs = { bg = "#DDDAE2" },
	}
end

return {
	ConflictMarkerBegin = { bg = "#455254" },
	ConflictMarkerCommonAncestorsHunk = { bg = "#504950" },
	ConflictMarkerEnd = { bg = "#3D495C" },
	ConflictMarkerOurs = { bg = "#455254" },
	ConflictMarkerTheirs = { bg = "#3D495C" },
}
