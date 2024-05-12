return function(variant)
	local faces = require "nano.better.palette"(variant).faces

	return {
		DapUIBreakpointsCurrentLine = {
			fg = faces.success.fg,
			ctermfg = faces.success.ctermfg,
			bold = true,
		},
		DapUIBreakpointsInfo = { link = "Success" },
		DapUIBreakpointsLine = { link = "DapUILineNumber" },
		DapUIBreakpointsPath = { link = "Salient" },
		DapUIDecoration = { link = "Faded" },
		DapUIFloatBorder = {
			fg = faces.subtle.bg,
			bg = faces.subtle.bg,
			ctermfg = faces.subtle.ctermbg,
			ctermbg = faces.subtle.ctermbg,
		},
		DapUIFrameName = { link = "DapUINormal" },
		DapUILineNumber = { link = "Faded" },
		DapUIModifiedValue = { link = "Popout" },
		DapUINormal = { link = "Default" },
		DapUINormalFloat = { link = "Subtle" },
		DapUINormalNC = { link = "Default" },
		DapUIPlayPause = { link = "Success" },
		DapUIPlayPauseNC = { link = "Success" },
		DapUIRestart = { link = "Success" },
		DapUIRestartNC = {},
		DapUIScope = { link = "Salient" },
		DapUISource = { link = "Salient" },
		DapUIStepBack = { link = "DapUINormal" },
		DapUIStepBackNC = { link = "DapUINormal" },
		DapUIStepInto = { link = "DapUINormal" },
		DapUIStepIntoNC = { link = "DapUINormal" },
		DapUIStepOut = { link = "DapUINormal" },
		DapUIStepOutNC = { link = "DapUINormal" },
		DapUIStepOver = { link = "DapUINormal" },
		DapUIStepOverNC = { link = "DapUINormal" },
		DapUIStop = { link = "CriticalI" },
		DapUIStopNC = { link = "CriticalI" },
		DapUIStoppedThread = { link = "Faded" },
		DapUIThread = { link = "Success" },
		DapUIType = { link = "Salient" },
		DapUIUnavailable = { link = "Faded" },
		DapUIUnavailableNC = { link = "Faded" },
		DapUIValue = { link = "DapUINormal" },
		DapUIVariable = {
			fg = faces.normal.fg,
			ctermfg = faces.normal.ctermfg,
			bold = true,
		},
		DapUIWatchesEmpty = { link = "CriticalI" },
		DapUIWatchesError = { link = "CriticalI" },
		DapUIWatchesValue = { link = "Salient" },
		DapUIWinSelect = { link = "Salient" },
	}
end
