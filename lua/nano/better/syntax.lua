---@module "nano.types"
---@param variant Variant
---@return table<string, Highlight>
return function(variant)
	local faces = require "nano.better.palette"(variant).faces

	return {
		Boolean = { link = "Default" },
		Character = { link = "Popout" },
		Comment = { link = "Faded" },
		Conditional = { link = "Salient" },
		Constant = { link = "Strong" },
		Define = { link = "Salient" },
		Delimiter = { link = "Default" },
		Directory = { link = "Salient" },
		Exception = { link = "Salient" },
		Float = { fg = faces.critical.bg, ctermfg = faces.critical.ctermbg },
		Function = { bold = true },
		Identifier = { link = "Default" },
		Include = { link = "Salient" },
		Keyword = { link = "Salient" },
		Label = { link = "Salient" },
		Macro = { link = "Define" },
		Number = { fg = faces.critical.bg, ctermfg = faces.critical.ctermbg },
		Operator = { link = "Default" },
		PreCondit = { link = "PreProc" },
		PreProc = { link = "Popout" },
		Question = { link = "Normal" },
		Repeat = { link = "Salient" },
		Special = { link = "Default" },
		SpecialChar = { link = "Popout" },
		SpecialComment = { link = "Faded" },
		SpecialKey = { link = "Faded" },
		Statement = { link = "Default" },
		StorageClass = { link = "Strong" },
		String = { fg = faces.critical.bg, ctermfg = faces.critical.ctermbg },
		Structure = { link = "Salient" },
		Tag = { link = "Bold" },
		Title = { link = "Bold" },
		Todo = { link = "Strong" },
		Type = { link = "Salient" },
		Typedef = { link = "Salient" },
	}
end
