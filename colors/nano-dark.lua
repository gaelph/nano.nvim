-- colors/colorscheme.lua
-- local TERM = os.getenv "TERM"
-- if TERM ~= nil and TERM ~= "xterm-kitty" and vim.startswith(TERM, "xterm") then
-- 	vim.o.termguicolors = false
-- else
vim.o.termguicolors = true
-- end

vim.highlight.priorities.semantic_tokens = 99
vim.highlight.priorities.treesitter = 120

local colors = {
	-- content here will not be touched
	-- PATCH_OPEN
	Normal = { fg = "#ECEFF4", bg = "#2B303B" },
	ModeMsg = { link = "Normal" },
	NotifyDEBUGBody = { link = "Normal" },
	NotifyERRORBody = { link = "Normal" },
	NotifyINFOBody = { link = "Normal" },
	NotifyTRACEBody = { link = "Normal" },
	NotifyWARNBody = { link = "Normal" },
	OrgAgendaScheduled = { link = "Normal" },
	OrgTSHeadlineLevel2 = { link = "Normal" },
	OrgTSHeadlineLevel3 = { link = "Normal" },
	OrgTSHeadlineLevel4 = { link = "Normal" },
	OrgTSHeadlineLevel5 = { link = "Normal" },
	OrgTSHeadlineLevel6 = { link = "Normal" },
	OrgTSHeadlineLevel7 = { link = "Normal" },
	OrgTSHeadlineLevel8 = { link = "Normal" },
	Question = { link = "Normal" },
	SignColumn = { link = "Normal" },
	TabLineSel = { link = "Normal" },
	netrwClassify = { link = "Normal" },
	qfFileName = { link = "Normal" },
	Bold = { fg = "#FFFFFF", bold = true },
	OrgTSHeadlineLevel1 = { link = "Bold" },
	Tag = { link = "Bold" },
	Title = { link = "Bold" },
	["@tag"] = { link = "Bold" },
	["@text.note"] = { link = "Bold" },
	["@text.todo"] = { link = "Bold" },
	Conceal = {},
	ConflictMarkerBegin = { bg = "#455254" },
	ConflictMarkerCommonAncestorsHunk = { bg = "#504950" },
	ConflictMarkerEnd = { bg = "#3D495C" },
	ConflictMarkerOurs = { bg = "#455254" },
	ConflictMarkerTheirs = { bg = "#3D495C" },
	Critical = { fg = "#2B303B", bg = "#BE6069" },
	Error = { link = "Critical" },
	CriticalI = { fg = "#BE6069" },
	DapUIStop = { link = "CriticalI" },
	DapUIStopNC = { link = "CriticalI" },
	DapUIWatchesEmpty = { link = "CriticalI" },
	DapUIWatchesError = { link = "CriticalI" },
	DiagnosticError = { link = "CriticalI" },
	DiagnosticSignError = { link = "CriticalI" },
	DiagnosticVirtualTextError = { link = "CriticalI" },
	ErrorMsg = { link = "CriticalI" },
	GitSignsDelete = { link = "CriticalI" },
	NeogitNotificationError = { link = "CriticalI" },
	NotifyERRORBorder = { link = "CriticalI" },
	NotifyERRORIcon = { link = "CriticalI" },
	NotifyERRORTitle = { link = "CriticalI" },
	netrwExe = { link = "CriticalI" },
	Cursor = { fg = "#2B303B", bg = "#ECEFF4" },
	iCursor = { link = "Cursor" },
	CursorLine = { bg = "#2F3541", sp = "none" },
	CursorLineNr = { fg = "#59657D", bg = "#2F3541" },
	DapUIBreakpointsCurrentLine = { fg = "#9FBB86", bold = true },
	DapUIFloatBorder = { fg = "#2F3541", bg = "#2F3541" },
	DapUIBreakpointsLine = { link = "DapUILineNumber" },
	DapUIFrameName = { link = "DapUINormal" },
	DapUIStepBack = { link = "DapUINormal" },
	DapUIStepBackNC = { link = "DapUINormal" },
	DapUIStepInto = { link = "DapUINormal" },
	DapUIStepIntoNC = { link = "DapUINormal" },
	DapUIStepOut = { link = "DapUINormal" },
	DapUIStepOutNC = { link = "DapUINormal" },
	DapUIStepOver = { link = "DapUINormal" },
	DapUIStepOverNC = { link = "DapUINormal" },
	DapUIValue = { link = "DapUINormal" },
	DapUIRestartNC = {},
	DapUIVariable = { fg = "#ECEFF4", bold = true },
	Default = { fg = "#ECEFF4" },
	Boolean = { link = "Default" },
	DapUINormal = { link = "Default" },
	DapUINormalNC = { link = "Default" },
	Delimiter = { link = "Default" },
	DiagnosticFloatingError = { link = "Default" },
	DiagnosticFloatingHint = { link = "Default" },
	DiagnosticFloatingInfo = { link = "Default" },
	DiagnosticFloatingWarn = { link = "Default" },
	Identifier = { link = "Default" },
	NonText = { link = "Default" },
	Operator = { link = "Default" },
	Special = { link = "Default" },
	Statement = { link = "Default" },
	fugitiveHash = { link = "Default" },
	["@property"] = { link = "Default" },
	["@tag.attribute"] = { link = "Default" },
	DefaultI = { fg = "#2B303B", bg = "#ECEFF4" },
	Macro = { link = "Define" },
	DiagnosticUnderlineError = { fg = "none", sp = "#BE6069", undercurl = true },
	DiagnosticUnderlineHint = { fg = "none", sp = "#BE6069", undercurl = true },
	DiagnosticUnderlineInfo = { fg = "none", sp = "#BE6069", undercurl = true },
	DiagnosticUnderlineWarn = { fg = "none", sp = "#BE6069", undercurl = true },
	DiffAdd = { fg = "#DBE2E6", bg = "#434E51" },
	DiffChange = { fg = "#D1D9E6", bg = "#3E4C60" },
	DiffDelete = { fg = "#D3D0DC", bg = "#504653" },
	DiffText = { bg = "#4D5D75" },
	Faded = { fg = "#59657D" },
	Comment = { link = "Faded" },
	DapUIDecoration = { link = "Faded" },
	DapUILineNumber = { link = "Faded" },
	DapUIStoppedThread = { link = "Faded" },
	DapUIUnavailable = { link = "Faded" },
	DapUIUnavailableNC = { link = "Faded" },
	LineNr = { link = "Faded" },
	NotifyDEBUGBorder = { link = "Faded" },
	NotifyDEBUGIcon = { link = "Faded" },
	NotifyDEBUGTitle = { link = "Faded" },
	NotifyTRACEBorder = { link = "Faded" },
	NotifyTRACEIcon = { link = "Faded" },
	NotifyTRACETitle = { link = "Faded" },
	SpecialComment = { link = "Faded" },
	SpecialKey = { link = "Faded" },
	TabLine = { link = "Faded" },
	netrwTreeBar = { link = "Faded" },
	["@comment.documentation.javascript"] = { link = "Faded" },
	["@comment.documentation.lua"] = { link = "Faded" },
	["@tag.delimiter"] = { link = "Faded" },
	FadedI = { fg = "#2B303B", bg = "#59657D" },
	PmenuSel = { link = "FadedI" },
	Float = { fg = "#BE6069" },
	FloatBorder = { fg = "#2F3541", bg = "#2F3541" },
	FoldColumn = { fg = "#59657D", bg = "#2B303B" },
	Folded = { fg = "#59657D" },
	Function = { bold = true },
	GitSignsAddNr = { fg = "#707E99", bg = "#434E51" },
	GitSignsChangeDeleteNr = { fg = "#707E99", bg = "#4A464E" },
	GitSignsChangeNr = { fg = "#707E99", bg = "#3B4659" },
	GitSignsCurrentLineBlame = { fg = "#4C566B" },
	GitSignsDeleteNr = { fg = "#707E99", bg = "#433F4B" },
	Highlight = { bg = "#394151" },
	LspReferenceRead = { link = "Highlight" },
	LspReferenceText = { link = "Highlight" },
	LspReferenceWrite = { link = "Highlight" },
	QuickFixLine = { link = "Highlight" },
	TelescopeMultiSelection = { link = "Highlight" },
	TelescopeSelection = { link = "Highlight" },
	Visual = { link = "Highlight" },
	VisualNOS = { link = "Highlight" },
	IndentBlanklineIndentContext = { fg = "#394151" },
	Italic = { fg = "#59657D" },
	NavicText = { fg = "#ECEFF4", bg = "#394151" },
	NavicIcons = { link = "NavicText" },
	NavicSeparator = { link = "NavicText" },
	NeogitDiffAdd = { link = "DiffAdd" },
	NeogitDiffAddHighlight = { link = "DiffAdd" },
	NeogitDiffDelete = { link = "DiffDelete" },
	NeogitDiffDeleteHighlight = { link = "DiffDelete" },
	None = { fg = "#ECEFF4" },
	EndOfBuffer = { link = "None" },
	IndentBlanklineIndent = { link = "None" },
	TabLineFill = { link = "None" },
	VertSplit = { link = "None" },
	Number = { fg = "#BE6069" },
	Pmenu = { bg = "#2F3541" },
	Popout = { fg = "#D18771" },
	Character = { link = "Popout" },
	DapUIModifiedValue = { link = "Popout" },
	DiagnosticSignWarn = { link = "Popout" },
	DiagnosticVirtualTextWarn = { link = "Popout" },
	DiagnosticWarn = { link = "Popout" },
	GitSignsChangeDelete = { link = "Popout" },
	NeogitNotificationWarning = { link = "Popout" },
	NotifyWARNBorder = { link = "Popout" },
	NotifyWARNIcon = { link = "Popout" },
	NotifyWARNTitle = { link = "Popout" },
	OrgAgendaDeadline = { link = "Popout" },
	PreProc = { link = "Popout" },
	SpecialChar = { link = "Popout" },
	fugitiveCount = { link = "Popout" },
	netrwSymlink = { link = "Popout" },
	PopoutI = { fg = "#2B303B", bg = "#D18771" },
	IncSearch = { link = "PopoutI" },
	OrgAgendaScheduledPast = { link = "PopoutI" },
	Search = { link = "PopoutI" },
	WarningMsg = { link = "PopoutI" },
	PreCondit = { link = "PreProc" },
	Salient = { fg = "#81A1C1" },
	Conditional = { link = "Salient" },
	DapUIBreakpointsPath = { link = "Salient" },
	DapUIScope = { link = "Salient" },
	DapUISource = { link = "Salient" },
	DapUIType = { link = "Salient" },
	DapUIWatchesValue = { link = "Salient" },
	DapUIWinSelect = { link = "Salient" },
	Define = { link = "Salient" },
	DiagnosticHint = { link = "Salient" },
	DiagnosticInfo = { link = "Salient" },
	DiagnosticSignHint = { link = "Salient" },
	DiagnosticSignInfo = { link = "Salient" },
	DiagnosticVirtualTextInfo = { link = "Salient" },
	DiagnosticsVirtualTextHint = { link = "Salient" },
	Directory = { link = "Salient" },
	Exception = { link = "Salient" },
	GitSignsChange = { link = "Salient" },
	Include = { link = "Salient" },
	Keyword = { link = "Salient" },
	Label = { link = "Salient" },
	MoreMsg = { link = "Salient" },
	NeogitNotificationInfo = { link = "Salient" },
	NotifyINFOBorder = { link = "Salient" },
	NotifyINFOIcon = { link = "Salient" },
	NotifyINFOTitle = { link = "Salient" },
	Repeat = { link = "Salient" },
	Structure = { link = "Salient" },
	TelescopeMatching = { link = "Salient" },
	TelescopePromptPrefix = { link = "Salient" },
	TelescopeSelectionCaret = { link = "Salient" },
	Type = { link = "Salient" },
	Typedef = { link = "Salient" },
	fugitiveInstruction = { link = "Salient" },
	fugitiveModifier = { link = "Salient" },
	fugitiveStagedModifier = { link = "Salient" },
	fugitiveUnstagedModifier = { link = "Salient" },
	fugitiveUntrackedModifier = { link = "Salient" },
	["@keyword.jsdoc"] = { link = "Salient" },
	["@lsp.mod.documentation.lua"] = { link = "Salient" },
	["@lsp.type.type.lua"] = { link = "Salient" },
	["@lsp.typemod.keyword.documentation.lua"] = { link = "Salient" },
	SalientI = { fg = "#2B303B", bg = "#81A1C1" },
	PmenuThumb = { link = "SalientI" },
	WildMenu = { link = "SalientI" },
	SpellBad = { sp = "#BE6069", undercurl = true },
	SpellCap = { sp = "#D18771", undercurl = true },
	SpellLocal = { sp = "#ECEFF4", undercurl = true },
	SpellRare = { sp = "#ECEFF4", undercurl = true },
	StatusComponentBase = { fg = "#ECEFF4", bg = "#394151" },
	StatusComponentDefault = { link = "StatusComponentBase" },
	StatusComponentVimInactive = { link = "StatusComponentBase" },
	StatusComponentSuccess = { fg = "#9FBB86", bg = "#394151" },
	StatusComponentFilename = { fg = "#FFFFFF", bg = "#394151" },
	StatusComponentInactive = { fg = "#59657D", bg = "#394151" },
	StatusComponentPosition = { fg = "#2B303B", bg = "#59657D" },
	StatusComponentVimInsert = { fg = "#ECEFF4", bg = "#D18771" },
	StatusComponentVimCommand = { link = "StatusComponentVimInsert" },
	StatusComponentVimReplace = { link = "StatusComponentVimInsert" },
	StatusComponentVimNormal = { fg = "#ECEFF4", bg = "#59657D" },
	StatusComponentVimEnter = { link = "StatusComponentVimNormal" },
	StatusComponentVimMore = { link = "StatusComponentVimNormal" },
	StatusComponentVimShell = { link = "StatusComponentVimNormal" },
	StatusComponentVimTerm = { link = "StatusComponentVimNormal" },
	StatusComponentVimOp = { fg = "#ECEFF4", bg = "#59657D" },
	StatusComponentVimVReplace = { link = "StatusComponentVimReplace" },
	StatusComponentVimVisual = { bg = "#9FBB86" },
	StatusComponentVimBlock = { link = "StatusComponentVimVisual" },
	StatusComponentVimLines = { link = "StatusComponentVimVisual" },
	StatusComponentVimSelect = { link = "StatusComponentVimVisual" },
	String = { fg = "#BE6069" },
	Strong = { fg = "#FFFFFF", bold = true },
	Constant = { link = "Strong" },
	MatchParen = { link = "Strong" },
	StorageClass = { link = "Strong" },
	Todo = { link = "Strong" },
	fugitiveStop = { link = "Strong" },
	fugitiveSymbolicRef = { link = "Strong" },
	StrongI = { fg = "#2B303B", bg = "#FFFFFF" },
	Subtle = { bg = "#2F3541" },
	ColorColumn = { link = "Subtle" },
	CursorColumn = { link = "Subtle" },
	DapUINormalFloat = { link = "Subtle" },
	NormalFloat = { link = "Subtle" },
	PmenuSbar = { link = "Subtle" },
	SubtleI = { fg = "#394151" },
	Success = { fg = "#9FBB86" },
	DapUIBreakpointsInfo = { link = "Success" },
	DapUIPlayPause = { link = "Success" },
	DapUIPlayPauseNC = { link = "Success" },
	DapUIRestart = { link = "Success" },
	DapUIThread = { link = "Success" },
	GitSignsAdd = { link = "Success" },
	SuccessI = { fg = "#2B303B", bg = "#9FBB86" },
	TelescopeBorder = { fg = "#2F3541", bg = "#2F3541" },
	TelescopePreviewBorder = { link = "TelescopeBorder" },
	TelescopePromptBorder = { link = "TelescopeBorder" },
	TelescopeResultsBorder = { link = "TelescopeBorder" },
	TelescopeNormal = { fg = "#ECEFF4", bg = "#2F3541" },
	TelescopePrompt = { link = "TelescopeNormal" },
	Undercurl = { undercurl = true },
	Underline = { underline = true },
	fugitiveHeader = {},
	fugitiveHelpHeader = { link = "fugitiveHeader" },
	fugitiveHeading = { fg = "#81A1C1", bold = true },
	fugitiveStagedHeading = { link = "fugitiveHeading" },
	fugitiveUnstagedHeading = { link = "fugitiveHeading" },
	fugitiveUntrackedHeading = { link = "fugitiveHeading" },
	netrwMarkFile = {},
	["@attribute"] = { fg = "#59657D", nocombine = true },
	["@attribute.builtin.swift"] = { link = "Salient" },
	["@function"] = { fg = "#ECEFF4", bold = true, nocombine = true },
	["@text.danger"] = {
		fg = "#2B303B",
		bg = "#BE6069",
		bold = true,
		nocombine = true,
	},
	["@text.mark"] = { fg = "#FFFFFF", italic = true },
	["@text.warning"] = { fg = "#D18771", bold = true },
	-- PATCH_CLOSE
	-- content here will not be touched
	["@lsp.type.comment"] = { link = "Comment" },
	-- help
	["helpHyperTextEntry"] = { link = "Salient" },
	["helpHyperTextJump"] = { link = "Salient" },
	["helpHeader"] = { link = "Strong" },
	["helpURL"] = { link = "Salient" },
	["helpSectionDelim"] = { link = "Faded" },
	["helpCommand"] = { link = "Strong" },
	["helpExample"] = { fg = "#ECEFF4", bg = "NONE", italic = true },
	--
	["@string.yaml"] = { link = "Default" },
	["@property.yaml"] = { link = "Salient" },
	["@string.json"] = { link = "Default" },
	["@property.json"] = { link = "Salient" },
	--
	["@markup.heading"] = { link = "strong" },
	["@markup.link"] = { fg = "#81A1C1", underline = true },
	["@punctuation.special"] = { link = "Comment" },
	["@markup.quote"] = { italic = true },
}

if not vim.g.termguicolors then
	if vim.o.background == "light" then
		colors.Normal.ctermfg = "Black"
		colors.Normal.ctermbg = "None"
		colors.Cursor.ctermfg = "Black"
		colors.Default.ctermfg = "Black"
		colors.DefaultI.ctermbg = "Black"
		colors.DefaultI.ctermfg = "White"
		colors.Highlight.ctermbg = 7
		colors.Subtle.ctermbg = 15
		colors.SubtleI.ctermfg = 15
		colors.Faded.ctermfg = 8
		colors.FadedI.ctermbg = 8
	else
		colors.Normal.ctermfg = "White"
		colors.Normal.ctermbg = "None"
		colors.Cursor.ctermfg = "White"
		colors.Default.ctermfg = "White"
		colors.DefaultI.ctermbg = "White"
		colors.DefaultI.ctermfg = "Black"
		colors.Highlight.ctermbg = 8
		colors.Subtle.ctermbg = 0
		colors.SubtleI.ctermfg = 0
		colors.Faded.ctermfg = 8
		colors.FadedI.ctermbg = 8
	end
	colors.Salient.ctermfg = "Magenta"
	colors.SalientI.ctermfg = 0
	colors.SalientI.ctermbg = "Magenta"
	colors.Popout.ctermfg = "Yellow"
	colors.PopoutI.ctermfg = "Black"
	colors.PopoutI.ctermbg = "Yellow"
	colors.Critical.ctermbg = "Red"
	colors.Critical.ctermfg = "Black"
	colors.CriticalI.ctermfg = "Red"
	colors.Success.ctermfg = "Green"
	colors.SuccessI.ctermfg = "Black"
	colors.SuccessI.ctermbg = "Green"
	colors.ColorColumn.link = "Subtle"
	colors.CursorLine.link = "Subtle"
	colors.CursorLineNr.ctermfg = colors.Faded.ctermfg
	colors.CursorLineNr.ctermbg = colors.Subtle.ctermbg
	colors.Pmenu.ctermbg = colors.Subtle.ctermbg
	colors.PmenuSbar.link = "Subtle"
	colors.PmenuSel.link = "FadedI"
	colors.PmenuThumb.link = "SalientI"
	colors.SpecialKey.link = "Faded"
	colors.NormalFloat.link = "Subtle"
	colors.FloatBorder.ctermfg = "Black"
	colors.FloatBorder.ctermbg = "Black"
	colors.CursorColumn.link = "Subtle"
	colors.SignColumn.link = "Normal"
	colors.Float.ctermfg = colors.CriticalI.ctermfg
	colors.Number.ctermfg = colors.CriticalI.ctermfg
	colors.String.ctermfg = colors.CriticalI.ctermfg
	colors.Conceal.link = "Normal"
	colors.DiffAdd.ctermbg = colors.Success.ctermfg
	colors.DiffChange.ctermbg = colors.Salient.ctermfg
	colors.DiffDelete.ctermbg = colors.Popout.ctermfg
	colors.StatusLine = {}
	colors.StatusLine.ctermfg = colors.Normal.ctermfg
	colors.StatusLine.ctermbg = colors.FadedI.ctermbg
	colors.StatusLineNC = {}
	colors.StatusLineNC.ctermbg = colors.FadedI.ctermbg
	colors.StatusLineNC.ctermfg = colors.Subtle.ctermfg

	colors.StatusComponentBase.ctermfg = colors.Normal.ctermfg
	colors.StatusComponentBase.ctermbg = colors.Highlight.ctermbg
	colors.StatusComponentDefault.link = "StatusComponentBase"
	colors.StatusComponentFilename.link = "StatusComponentBase"
	colors.StatusComponentInactive.ctermbg = colors.Highlight.ctermbg
	colors.StatusComponentInactive.ctermfg = colors.Faded.ctermfg
	colors.StatusComponentPosition.ctermbg = colors.FadedI.ctermbg
	colors.StatusComponentPosition.ctermfg = 15

	colors.NavicText.ctermbg = colors.Highlight.ctermbg
	colors.NavicText.ctermfg = 15

	colors.StatusComponentVimInactive.link = "StatusComponentBase"
	colors.StatusComponentVimNormal.ctermfg = colors.Normal.ctermfg
	colors.StatusComponentVimNormal.ctermbg = colors.FadedI.ctermbg
	colors.StatusComponentVimOp.ctermbg = colors.FadedI.ctermbg
	colors.StatusComponentVimInsert.ctermbg = colors.PopoutI.ctermbg
	colors.StatusComponentVimVisual.ctermbg = colors.Success.ctermfg
	colors.StatusComponentVimLines.link = "StatusComponentVimVisual"
	colors.StatusComponentVimBlock.link = "StatusComponentVimVisual"
	colors.StatusComponentVimReplace.link = "StatusComponentVimInsert"
	colors.StatusComponentVimVReplace.link = "StatusComponentVimInsert"
	colors.StatusComponentVimCommand.link = "StatusComponentVimInsert"
	colors.StatusComponentVimEnter.link = "StatusComponentVimNormal"
	colors.StatusComponentVimMore.link = "StatusComponentVimNormal"
	colors.StatusComponentVimSelect.link = "StatusComponentVimVisual"
	colors.StatusComponentVimShell.link = "StatusComponentVimNormal"
	colors.StatusComponentVimTerm.link = "StatusComponentVimNormal"

	colors.IndentBlanklineIndentContext.ctermfg = colors.Subtle.ctermbg

	colors.TelescopeNormal.ctermbg = colors.Subtle.ctermbg
	colors.TelescopeBorder.ctermbg = colors.Subtle.ctermbg
	colors.TelescopeBorder.ctermfg = colors.Subtle.ctermbg
end

-- colorschemes generally want to do this
vim.cmd "highlight clear"
vim.cmd "set t_Co=256"
if os.getenv "TERM" == "xterm-kitty" then
	vim.cmd "let &t_ut=''"
end
-- vim.o.background = "dark"
vim.cmd "let g:colors_name='nano_dark'"

-- clear @lsp highlights
for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
	vim.api.nvim_set_hl(0, group, {})
end

-- apply highlight groups
for group, attrs in pairs(colors) do
	vim.api.nvim_set_hl(0, group, attrs)
end

vim.api.nvim_create_autocmd("FileType", {
	group = ag,
	pattern = "qf",
	callback = function()
		vim.api.nvim_set_option_value("winhighlight", "Normal:Subtle", {
			scope = "local",
			win = 0,
		})
		vim.cmd [[resize 10]]
		vim.cmd [[wincmd J]]
	end,
})

-- some fixes for unwanted colors in the StatusLine
-- and underline in diff on cursorline
vim.cmd [[
		hi! StatusLine cterm=NONE gui=NONE
		hi! StatusLineNC cterm=NONE gui=NONE
		hi! link StatusLine None
    hi CursorLine ctermfg=2b303b
]]

-- require "nano.terminal" "dark"
