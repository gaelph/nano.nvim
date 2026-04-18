---@param variant "light" | "dark"
return function(variant)
	local faces = require "nano.better.palette"(variant).faces

	return {
		MCPHubTitle = { link = "Salient" },
		MCPHubHeader = { link = "Normal" },
		-- MCPHubHeaderBtn,
		-- MCPHubHeaderBtnShortcut,
		MCPHubHeaderAccent = { bg = faces.salient.fg, fg = faces.normal.fg },
		-- MCPHubHeaderShortcut,
		-- MCPHubKeymap,
		-- MCPHubError,
		-- MCPHubErrorFill,
		-- MCPHubWarning,
		-- MCPHubInfo,
		-- MCPHubSuccess,
		-- MCPHubSuccessFill,
		-- MCPHubMuted,
		-- MCPHubNormal,
		-- MCPHubBorder,
		-- MCPHubActiveItem,
		-- MCPHubActiveItemMuted,
		-- MCPHubLink,
	}
end
