return function(variant)
	local faces = require "nano.better.palette"(variant).faces
	return {
		["helpHyperTextEntry"] = { link = "Salient" },
		["helpHyperTextJump"] = { link = "Salient" },
		["helpHeader"] = { link = "Strong" },
		["helpURL"] = { link = "Salient" },
		["helpSectionDelim"] = { link = "Faded" },
		["helpCommand"] = { link = "Strong" },
		["helpExample"] = { fg = faces.normal.fg, bg = "NONE", italic = true },
	}
end
