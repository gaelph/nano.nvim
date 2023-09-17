-- shipwright_build.lua
local colorscheme = require "nano"
local lushwright = require "shipwright.transform.lush"

local light = colorscheme "light"
run(
	light,
	lushwright.to_lua,
	{ patchwrite, "colors/nano-light.lua", "-- PATCH_OPEN", "-- PATCH_CLOSE" }
)
local dark = colorscheme "dark"
run(
	dark,
	lushwright.to_lua,
	{ patchwrite, "colors/nano-dark.lua", "-- PATCH_OPEN", "-- PATCH_CLOSE" }
)
