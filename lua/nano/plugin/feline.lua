-- feline highlights
local lush = require "lush"
local hsl = lush.hsl

local light = require "nano.colors.light"
local dark = require "nano.colors.dark"
local base = require "nano.base"

local M = {}

M.dark = {
	fg = dark.fg.hex,
	bg = dark.highlight.hex,
	back = dark.faded.hex,
	fore = dark.subtle.hex,
	dark = dark.bg.hex,
	white = dark.strong.hex,
	skyblue = "#8fbcbb",
	cyan = "#8fbcbb",
	green = "#a4bf8d",
	oceanblue = "#5d81ac",
	magenta = "#b48ead",
	orange = "#d18771",
	red = "#be6069",
	violet = "#b48ead",
	yellow = "#ebca89",
}

M.light = {
	fg = light.fg.hex,
	bg = light.highlight.hex,
	back = light.faded.hex,
	fore = light.subtle.hex,
	dark = light.bg.hex,
	white = light.strong.hex,
	skyblue = hsl(199, 92, 56).hex,
	-- cyan = hsl(199, 92, 56).hex,
	cyan = hsl(207, 90, 61).hex,
	green = light.success.hex,
	oceanblue = hsl(207, 90, 61).hex,
	magenta = light.salient.hex,
	orange = light.popout.hex,
	red = light.critical.hex,
	violet = light.salient.hex,
	yellow = hsl(49, 98, 60).hex,
}

function M.get_theme()
	if vim.o.background == "light" then
		return M.light
	else
		return M.dark
	end
end

M.plugin = lush(function()
	return {
		StatusComponentBase { fg = base.Normal.fg, bg = base.Highlight.bg },
		StatusComponentDefault { StatusComponentBase },
		StatusComponentFilename { StatusComponentBase, fg = base.Strong.fg },
		StatusComponentInactive { StatusComponentDefault, fg = base.Faded.fg },
		StatusComponentPosition { base.FadedI, fg = base.Normal.bg },
		-- Modes
		StatusComponentVimInactive { StatusComponentBase },
		StatusComponentVimNormal { StatusComponentBase, bg = base.Faded.fg },
		StatusComponentVimOp { StatusComponentBase, bg = base.FadedI.bg },
		StatusComponentVimInsert { StatusComponentBase, bg = base.PopoutI.bg },
		StatusComponentVimVisual {
			base.StatusComponentBase,
			bg = base.Success.fg,
		},
		StatusComponentVimLines { StatusComponentVimVisual },
		StatusComponentVimBlock { StatusComponentVimVisual },
		StatusComponentVimReplace { StatusComponentVimInsert },
		StatusComponentVimVReplace { StatusComponentVimReplace },
		StatusComponentVimCommand { StatusComponentVimInsert },
		StatusComponentVimEnter { StatusComponentVimNormal },
		StatusComponentVimMore { StatusComponentVimNormal },
		StatusComponentVimSelect { StatusComponentVimVisual },
		StatusComponentVimShell { StatusComponentVimNormal },
		StatusComponentVimTerm { StatusComponentVimNormal },
	}
end)

return M
