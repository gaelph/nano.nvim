---@param variant Variant
---@return table<string, Highlight>
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
		["@lsp.type.function"] = { link = "Bold" },
		["@lsp.type.variable"] = { link = "Default" },
		-- MARK: - Languages -----------------------------------------------------
		["@variable"] = { link = "Default" },
		["@constant.builtin"] = { link = "@constant" },
		["@module.builtin"] = { link = "@module" },
		["@type.builtin"] = { link = "@type" },
		["@attribute.builtin"] = { link = "@attribute" },
		["@function.builtin"] = { link = "@function.builtin" },
		-- CSS
		["@attribute.css"] = { link = "Normal" },
		-- JAVASCRIPT
		["@comment.documentation.javascript"] = { link = "Faded" },
		["@keyword.jsdoc"] = { link = "Salient" },
		-- TypeScript
		["typescriptCall"] = { link = "Default" },
		["typescriptBraces"] = { link = "Default" },
		["typescriptArrowFunc"] = { link = "Default" },
		["typescriptMember"] = { link = "Default" },
		["typescriptRequestProp"] = { link = "Default" },
		["typescriptArrayMethod"] = { link = "Bold" },
		["typescriptArrayStaticMethod"] = { link = "Bold" },
		["typescriptMathStaticMethod"] = { link = "Bold" },
		["typescriptStringMethod"] = { link = "Bold" },
		["typescriptES6SetMethod"] = { link = "Bold" },
		["typescriptTypeReference"] = { link = "Salient" },
		["typescriptFuncCallArg"] = { link = "Default" },
		["typescriptObjectLabel"] = { link = "Default" },
		["typescriptStatementKeyword"] = { link = "Salient" },
		["typescriptCastKeyword"] = { link = "Salient" },
		["typescriptBoolean"] = { link = "Salient" },
		["typescriptOperator"] = { link = "Salient" },
		["typescriptNull"] = { link = "Bold" },
		["typescriptDestructureVariable"] = { link = "Default" },
		["typescriptCacheProp"] = { link = "Default" },
		["typescriptBOMHistoryProp"] = { link = "Default" },
		["typescriptBOMNavigatorProp"] = { link = "Default" },
		["typescriptBOMWindowProp"] = { link = "Default" },
		["typescriptDOMEventProp"] = { link = "Default" },
		["typescriptDOMEventTargetProp"] = { link = "Default" },
		["typescriptDOMDocProp"] = { link = "Default" },
		["typescriptDOMFormProp"] = { link = "Default" },
		["typescriptDOMLocationProp"] = { link = "Default" },
		["typescriptDOMNodeProp"] = { link = "Default" },
		["typescriptFileReaderProp"] = { link = "Default" },
		["typescriptFileWriterProp"] = { link = "Default" },
		["typescriptStorageMethod"] = { link = "Default" },
		["typescriptWindowProp"] = { link = "Default" },
		["typescriptCacheMethod"] = { link = "Bold" },
		["typescriptBOMHistoryMethod"] = { link = "Bold" },
		["typescriptBOMWindowMethod"] = { link = "Bold" },
		["typescriptBOMLocationMethod"] = { link = "Bold" },
		["typescriptDOMEventMethod"] = { link = "Bold" },
		["typescriptDOMEventTargetMethod"] = { link = "Bold" },
		["typescriptDOMDocMethod"] = { link = "Bold" },
		["typescriptDOMFormMethod"] = { link = "Bold" },
		["typescriptDOMLocationMethod"] = { link = "Bold" },
		["typescriptDOMNodeMethod"] = { link = "Bold" },
		["typescriptGlobal"] = { link = "Salient" },
		["typescriptConsoleMethod"] = { link = "Bold" },
		-- LUA
		["@comment.documentation.lua"] = { link = "Faded" },
		["@lsp.mod.documentation.lua"] = { link = "Salient" },
		["@lsp.type.type.lua"] = { link = "Salient" },
		["@lsp.typemod.keyword.documentation.lua"] = { link = "Salient" },
		-- SWIFT
		["@attribute.builtin.swift"] = { link = "Salient" },
		["@lsp.type.keyword.swift"] = { link = "Salient" },
		-- MARK: - Non-Languages -------------------------------------------------
		-- JSON
		["@property.json"] = { link = "Salient" },
		["@string.json"] = { link = "Default" },
		-- YAML
		["@property.yaml"] = { link = "Salient" },
		["@string.yaml"] = { link = "Default" },
		-- XML/HTML/JSX
		["@tag"] = { link = "Bold" },
		["htmlTagName"] = { link = "Bold" },
		["@tag.attribute"] = { link = "Default" },
		["tsxAttrib"] = { link = "Default" },
		["tsxTag"] = { link = "Faded" },
		["@tag.delimiter"] = { link = "Faded" },
		["tsxCloseString"] = { link = "Faded" },
		["@tag.builtin"] = { link = "Strong" },
		-- Python
		["@string.documentation"] = { link = "Comment" },
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
		["@comment.danger"] = { link = "CriticalI" },
		["@comment.mark"] = { fg = faces.normal.fg, italic = true },
		["@comment.note"] = { link = "Bold" },
		["@comment.todo"] = { link = "Bold" },
		["@comment.warning"] = {
			fg = faces.popout.fg,
			ctermfg = faces.popout.ctermfg,
			bold = true,
		},
		-- markup (markdown, org, vimdoc)
		["@markup.heading"] = { link = "Strong" },
		["@markup.link"] = { fg = faces.salient.fg, underline = true },
		["@string.special.url"] = { link = "@markup.link" },
		["@punctuation.special"] = { link = "Comment" },
		["@markup.quote"] = { italic = true },
		["@markup.raw.block.vimdoc"] = { link = "Comment" },
	}
end
