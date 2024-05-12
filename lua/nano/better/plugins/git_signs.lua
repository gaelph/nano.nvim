return function(variant)
	if variant == "light" then
		return {
			GitSignsAdd = { link = "Success" },
			GitSignsAddNr = { fg = "#BECACF", bg = "#E6EAE6" },
			GitSignsChange = { link = "Salient" },
			GitSignsChangeDelete = { link = "Popout" },
			GitSignsChangeDeleteNr = { fg = "#BECACF", bg = "#F7F4F3" },
			GitSignsChangeNr = { fg = "#BECACF", bg = "#E2E0E6" },
			GitSignsCurrentLineBlame = { fg = "#C9D0D4" },
			GitSignsDelete = { link = "CriticalI" },
			GitSignsDeleteNr = { fg = "#BECACF", bg = "#EBE5E0" },
		}
	end

	return {
		GitSignsAdd = { link = "Success" },
		GitSignsAddNr = { fg = "#707E99", bg = "#434E51" },
		GitSignsChange = { link = "Salient" },
		GitSignsChangeDeleteNr = { fg = "#707E99", bg = "#4A464E" },
		GitSignsChangeDelete = { link = "Popout" },
		GitSignsChangeNr = { fg = "#707E99", bg = "#3B4659" },
		GitSignsCurrentLineBlame = { fg = "#4C566B" },
		GitSignsDelete = { link = "CriticalI" },
		GitSignsDeleteNr = { fg = "#707E99", bg = "#433F4B" },
	}
end
