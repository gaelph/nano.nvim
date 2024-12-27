return function(variant)
	local faces = require "nano.better.palette"(variant).faces

	return {
		NavicIconsFile = { link = "NavicIcons" },
		NavicIconsModule = { link = "NavicIcons" },
		NavicIconsNamespace = { link = "NavicIcons" },
		NavicIconsPackage = { link = "NavicIcons" },
		NavicIconsClass = { link = "NavicIcons" },
		NavicIconsMethod = { link = "NavicIcons" },
		NavicIconsProperty = { link = "NavicIcons" },
		NavicIconsField = { link = "NavicIcons" },
		NavicIconsConstructor = { link = "NavicIcons" },
		NavicIconsEnum = { link = "NavicIcons" },
		NavicIconsInterface = { link = "NavicIcons" },
		NavicIconsFunction = { link = "NavicIcons" },
		NavicIconsVariable = { link = "NavicIcons" },
		NavicIconsConstant = { link = "NavicIcons" },
		NavicIconsString = { link = "NavicIcons" },
		NavicIconsNumber = { link = "NavicIcons" },
		NavicIconsBoolean = { link = "NavicIcons" },
		NavicIconsArray = { link = "NavicIcons" },
		NavicIconsObject = { link = "NavicIcons" },
		NavicIconsKey = { link = "NavicIcons" },
		NavicIconsNull = { link = "NavicIcons" },
		NavicIconsEnumMember = { link = "NavicIcons" },
		NavicIconsStruct = { link = "NavicIcons" },
		NavicIconsEvent = { link = "NavicIcons" },
		NavicIconsOperator = { link = "NavicIcons" },
		NavicIconsTypeParameter = { link = "NavicIcons" },

		NavicIcons = { italic = true, bg = faces.subtle.bg },
		NavicSeparator = { italic = true, bg = faces.subtle.bg },
		NavicText = { italic = true, bg = faces.subtle.bg },
	}
end
