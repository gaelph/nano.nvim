return function(variant)
	local faces = require "nano.better.palette"(variant).faces

	return {
		-- BASE
		["@attribute"] = {
			fg = faces.faded.fg,
			ctermfg = faces.faded.ctermfg,
			nocombine = true,
		},
		["@function"] = {
			fg = faces.normal.fg,
			ctermfg = faces.normal.ctermfg,
			bold = true,
			nocombine = true,
		},
		["@property"] = { link = "Default" },
		["@lsp.type.comment"] = { link = "Comment" },
		-- MARK: - Languages -----------------------------------------------------
		-- CSS
		["@attribute.css"] = { link = "Normal" },
		-- JAVASCRIPT
		["@comment.documentation.javascript"] = { link = "Faded" },
		["@keyword.jsdoc"] = { link = "Salient" },
		-- LUA
		["@comment.documentation.lua"] = { link = "Faded" },
		["@lsp.mod.documentation.lua"] = { link = "Salient" },
		["@lsp.type.type.lua"] = { link = "Salient" },
		["@lsp.typemod.keyword.documentation.lua"] = { link = "Salient" },
		-- SWIFT
		["@attribute.builtin.swift"] = { link = "Salient" },
		-- MARK: - Non-Languages -------------------------------------------------
		-- JSON
		["@property.json"] = { link = "Salient" },
		["@string.json"] = { link = "Default" },
		-- YAML
		["@property.yaml"] = { link = "Salient" },
		["@string.yaml"] = { link = "Default" },
		-- XML/HTML/JSX
		["@tag"] = { link = "Bold" },
		["@tag.attribute"] = { link = "Default" },
		["@tag.delimiter"] = { link = "Faded" },
		-- comment notes
		["@text.danger"] = { link = "CriticalI" },
		["@text.mark"] = { fg = faces.normal.fg, italic = true },
		["@text.note"] = { link = "Bold" },
		["@text.todo"] = { link = "Bold" },
		["@text.warning"] = {
			fg = faces.popout.fg,
			ctermfg = faces.popout.ctermfg,
			bold = true,
		},
		-- markup (markdown, org, vimdoc)
		["@markup.heading"] = { link = "strong" },
		["@markup.link"] = { fg = faces.salient.fg, underline = true },
		["@string.special.url"] = { link = "@markup.link" },
		["@punctuation.special"] = { link = "Comment" },
		["@markup.quote"] = { italic = true },
	}
end
