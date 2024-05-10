if vim.o.background == "light" then
	return {
		DiffAdd = { fg = "#43605E", bg = "#E6EAE6" },
		DiffChange = { fg = "#3D4261", bg = "#DAD6E0" },
		DiffDelete = { fg = "#5D5246", bg = "#E7DCD5" },
		DiffText = { bg = "#DDD9E2" },
	}
end

return {
	DiffAdd = { fg = "#DBE2E6", bg = "#434E51" },
	DiffChange = { fg = "#D1D9E6", bg = "#3E4C60" },
	DiffDelete = { fg = "#D3D0DC", bg = "#504653" },
	DiffText = { bg = "#4D5D75" },
}
