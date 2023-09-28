-- dapui highlights
local lush = require "lush"
return function(variant)
	local base = require "nano.base"(variant)
	local palette = require "nano.palette"(variant)
	local spec = palette.spec

	return lush(function()
		return {
			DapUINormal { base.Default },
			DapUINormalNC { base.Default },
			DapUIPlayPause { base.Success },
			DapUIPlayPauseNC { base.Success },
			DapUIRestart { base.Success },
			DapUIRestartNC { base.Succes },
			DapUIStop { base.CriticalI },
			DapUIStopNC { base.CriticalI },
			DapUIUnavailable { base.Faded },
			DapUIUnavailableNC { base.Faded },
			DapUIStepOver { DapUINormal },
			DapUIStepOverNC { DapUINormal },
			DapUIStepInto { DapUINormal },
			DapUIStepIntoNC { DapUINormal },
			DapUIStepBack { DapUINormal },
			DapUIStepBackNC { DapUINormal },
			DapUIStepOut { DapUINormal },
			DapUIStepOutNC { DapUINormal },

			DapUIVariable { DapUINormal, gui = spec.bold },
			DapUIScope { base.Salient },
			DapUIType { base.Salient },
			DapUIValue { DapUINormal },
			DapUIModifiedValue { base.Popout },
			DapUIDecoration { base.Faded },
			DapUIThread { base.Success },
			DapUIStoppedThread { base.Faded },
			DapUIFrameName { DapUINormal },
			DapUISource { base.Salient },
			DapUILineNumber { base.Faded },
			DapUINormalFloat { base.Subtle },
			DapUIFloatBorder { fg = base.Subtle.bg, bg = base.Subtle.bg },
			DapUIWatchesEmpty { base.CriticalI },
			DapUIWatchesValue { base.Salient },
			DapUIWatchesError { base.CriticalI },
			DapUIWinSelect { base.Salient },
			DapUIBreakpointsPath { base.Salient },
			DapUIBreakpointsInfo { base.Success },
			DapUIBreakpointsCurrentLine { base.Success, gui = spec.bold },
			DapUIBreakpointsLine { DapUILineNumber },
		}
	end)
end
