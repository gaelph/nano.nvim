return function(variant)
	local faces = require "nano.better.palette"(variant).faces

	return {
		["@attribute"] = {
			fg = faces.faded.fg,
			ctermfg = faces.faded.ctermfg,
			nocombine = true,
		},
		["@attribute.builtin.swift"] = { link = "Salient" },
		["@comment.documentation.javascript"] = { link = "Faded" },
		["@comment.documentation.lua"] = { link = "Faded" },
		["@function"] = {
			fg = faces.normal.fg,
			ctermfg = faces.normal.ctermfg,
			bold = true,
			nocombine = true,
		},
		["@keyword.jsdoc"] = { link = "Salient" },
		["@lsp.mod.documentation.lua"] = { link = "Salient" },
		["@lsp.type.comment"] = { link = "Comment" },
		["@lsp.type.type.lua"] = { link = "Salient" },
		["@lsp.typemod.keyword.documentation.lua"] = { link = "Salient" },
		["@property"] = { link = "Default" },
		["@property.json"] = { link = "Salient" },
		["@property.yaml"] = { link = "Salient" },
		["@string.json"] = { link = "Default" },
		["@string.yaml"] = { link = "Default" },
		["@tag"] = { link = "Bold" },
		["@tag.attribute"] = { link = "Default" },
		["@tag.delimiter"] = { link = "Faded" },
		["@text.danger"] = { link = "CriticalI" },
		["@text.mark"] = { fg = faces.normal.fg, italic = true },
		["@text.note"] = { link = "Bold" },
		["@text.todo"] = { link = "Bold" },
		["@text.warning"] = {
			fg = faces.popout.fg,
			ctermfg = faces.popout.ctermfg,
			bold = true,
		},
		["@markup.heading"] = { link = "strong" },
		["@markup.link"] = { fg = faces.salient.fg, underline = true },
		["@punctuation.special"] = { link = "Comment" },
		["@markup.quote"] = { italic = true },
	}
end
