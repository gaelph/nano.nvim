local lush = require "lush"
local hsl = lush.hsl

local light = require "nano.colors.light"

local M = {}

M.dark = {
	fg = "#eceff4",
	bg = "#394151",
	back = "#616f89",
	fore = "#2b303b",
	dark = "#4d576a",
	white = "#eceff4",
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
	bg = light.subtle.hex,
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

return M
