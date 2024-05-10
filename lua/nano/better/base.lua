local faces = require "nano.better.palette"(vim.o.background).faces

local LightBase = {
	Normal = faces.normal,

	Bold = faces.strong,
	Italic = faces.faded,
	Underline = { underline = true },
	Undercurl = { undercurl = true },

	None = faces.default,
	Highlight = faces.highlight,

	Default = faces.default,
	DefaultI = faces.default_i,

	Subtle = faces.subtle,
	SubtleI = faces.subtle_i,
	Faded = faces.faded,
	FadedI = faces.faded_i,
	Strong = faces.strong,
	StrongI = faces.strong_i,
	Popout = faces.popout,
	PopoutI = faces.popout_i,
	Salient = faces.salient,
	SalientI = faces.salient_i,
	Critical = faces.critical,
	CriticalI = faces.critical_i,
	Success = faces.success,
	SuccessI = faces.success_i,

	Cursor = faces.cursor,
}

local DarkBase = {
	Normal = faces.normal,

	Bold = faces.strong,
	Italic = faces.faded,
	Underline = { underline = true },
	Undercurl = { undercurl = true },

	None = faces.default,
	Highlight = faces.highlight,

	Default = faces.default,
	DefaultI = faces.default_i,

	Subtle = faces.subtle,
	SubtleI = faces.subtle_i,
	Faded = faces.faded,
	FadedI = faces.faded_i,
	Strong = faces.strong,
	StrongI = faces.strong_i,
	Popout = faces.popout,
	PopoutI = faces.popout_i,
	Salient = faces.salient,
	SalientI = faces.salient_i,
	Critical = faces.critical,
	CriticalI = faces.critical_i,
	Success = faces.success,
	SuccessI = faces.success_i,

	Cursor = faces.cursor,
}

return vim.o.background == "light" and LightBase or DarkBase
