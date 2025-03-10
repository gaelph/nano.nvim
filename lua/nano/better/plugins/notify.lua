return function(variant)
	local faces = require "nano.better.palette"(variant).faces
	return {
		NotifyBackground = { bg = faces.normal.bg },
		NotifyDEBUGBody = { link = "Normal" },
		NotifyDEBUGBorder = { link = "Faded" },
		NotifyDEBUGIcon = { link = "Faded" },
		NotifyDEBUGTitle = { link = "Faded" },
		NotifyERRORBody = { link = "Normal" },
		NotifyERRORBorder = { link = "CriticalI" },
		NotifyERRORIcon = { link = "CriticalI" },
		NotifyERRORTitle = { link = "CriticalI" },
		NotifyINFOBody = { link = "Normal" },
		NotifyINFOBorder = { link = "Salient" },
		NotifyINFOIcon = { link = "Salient" },
		NotifyINFOTitle = { link = "Salient" },
		NotifyTRACEBody = { link = "Normal" },
		NotifyTRACEBorder = { link = "Faded" },
		NotifyTRACEIcon = { link = "Faded" },
		NotifyTRACETitle = { link = "Faded" },
		NotifyWARNBody = { link = "Normal" },
		NotifyWARNBorder = { link = "Popout" },
		NotifyWARNIcon = { link = "Popout" },
		NotifyWARNTitle = { link = "Popout" },
	}
end
