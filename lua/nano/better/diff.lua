---@param variant Variant
---@return table<string, Highlight>
return function(variant)
	if variant == "light" then
		return {
			DiffAdd = { fg = "#245537", bg = "#dbecd4" },
			-- DiffAdd = { fg = "#43605E", bg = "#E6EAE6" },
			DiffChange = { fg = "#3D4261", bg = "#eff5f6" },
			-- DiffChange = { fg = "#3D4261", bg = "#DAD6E0" },
			DiffDelete = { fg = "#714642", bg = "#f4efef" },
			-- DiffDelete = { fg = "#5D5246", bg = "#E7DCD5" },
			DiffText = { bg = "#e4eaeb" },
			DiffStrikeThrough = { fg = "#714642", strikethrough = true },
			Added = { link = "Success" },
			Changed = { link = "Salient" },
			Removed = { link = "CriticalI" },
			diffAdded = { link = "Success" },
			diffChanged = { link = "Salient" },
			diffRemoved = { link = "CriticalI" },
		}
	end

	return {
		DiffAdd = { fg = "#DBE2E6", bg = "#434E51" },
		DiffChange = { fg = "#D1D9E6", bg = "#3E4C60" },
		DiffDelete = { fg = "#D3D0DC", bg = "#504653" },
		DiffText = { bg = "#4D5D75" },
		Added = { link = "Success" },
		Changed = { link = "Salient" },
		Removed = { link = "CriticalI" },
		diffAdded = { link = "Success" },
		diffChanged = { link = "Salient" },
		diffRemoved = { link = "CriticalI" },
	}
end
