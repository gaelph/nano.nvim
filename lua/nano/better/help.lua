local faces = require "nano.better.palette"(vim.o.background).faces
return {
	["helpHyperTextEntry"] = { link = "Salient" },
	["helpHyperTextJump"] = { link = "Salient" },
	["helpHeader"] = { link = "Strong" },
	["helpURL"] = { link = "Salient" },
	["helpSectionDelim"] = { link = "Faded" },
	["helpCommand"] = { link = "Strong" },
	["helpExample"] = { fg = faces.faded.fg, bg = "NONE", italic = true },
}
