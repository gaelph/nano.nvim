local lush = require "lush"
local hsl = lush.hsl

-- (setq frame-background-mode    'light)
-- (setq nano-color-foreground "#37474F") ;; Blue Grey / L800
-- (setq nano-color-background "#FFFFFF") ;; White
-- (setq nano-color-highlight  "#FAFAFA") ;; Very Light Grey
-- (setq nano-color-critical   "#FF6F00") ;; Amber / L900
-- (setq nano-color-salient    "#673AB7") ;; Deep Purple / L500
-- (setq nano-color-strong     "#000000") ;; Black
-- (setq nano-color-popout     "#FFAB91") ;; Deep Orange / L200
-- (setq nano-color-subtle     "#ECEFF1") ;; Blue Grey / L50
-- (setq nano-color-faded      "#B0BEC5") ;; Blue Grey / L200
-- )

local M = {
	fg = hsl(200, 18, 26),
	bg = hsl(0, 0, 100),
	highlight = hsl(0, 0, 98),
	critical = hsl(25, 100, 50),
	salient = hsl(262, 52, 47),
	strong = hsl(0, 0, 0),
	popout = hsl(14, 100, 78),
	subtle = hsl(204, 15, 94),
	faded = hsl(200, 15, 73),
	success = hsl "#A5D6A7",
	color_0 = hsl "#36464e",
	color_1 = hsl "#ff6f00",
	color_2 = hsl "#a5d6a7",
	color_3 = hsl "#ffab91",
	color_4 = hsl "#673ab7",
	color_5 = hsl "#673ab7",
	color_6 = hsl "#b0bec5",
	color_7 = hsl "#eceff1",
	color_8 = hsl "#36464e",
	color_9 = hsl "#ff6f00",
	color_10 = hsl "#a5d6a7",
	color_11 = hsl "#ffab91",
	color_12 = hsl "#673ab7",
	color_13 = hsl "#673ab7",
	color_14 = hsl "#b0bec5",
	color_15 = hsl "#eceff1",
}

return M
