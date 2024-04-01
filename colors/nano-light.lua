-- colors/colorscheme.lua
-- local TERM = os.getenv "TERM"
-- if TERM ~= nil and TERM ~= "xterm-kitty" and vim.startswith(TERM, "xterm") then
-- 	vim.o.termguicolors = false
-- else
vim.o.termguicolors = true
-- end

vim.highlight.priorities.semantic_tokens = 99
vim.highlight.priorities.treesitter = 120

local ns = vim.api.nvim_create_namespace "nano-ns"
local ag = vim.api.nvim_create_augroup("nano-ag", { clear = true })

local colors = {
	-- content here will not be touched
	-- PATCH_OPEN
	Normal = { fg = "#36464E", bg = "#FFFFFF" },
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
	Bold = { fg = "#000000", bold = true },
	OrgTSHeadlineLevel1 = { link = "Bold" },
	Tag = { link = "Bold" },
	Title = { link = "Bold" },
	["@tag"] = { link = "Bold" },
	["@text.note"] = { link = "Bold" },
	["@text.todo"] = { link = "Bold" },
	Conceal = {},
	ConflictMarkerBegin = { bg = "#E3E8E3" },
	ConflictMarkerCommonAncestorsHunk = { bg = "#F5F1EF" },
	ConflictMarkerEnd = { bg = "#DDDAE2" },
	ConflictMarkerOurs = { bg = "#E3E8E3" },
	ConflictMarkerTheirs = { bg = "#DDDAE2" },
	Critical = { fg = "#FFFFFF", bg = "#FF6A00" },
	Error = { link = "Critical" },
	CriticalI = { fg = "#FF6A00" },
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
	Cursor = { fg = "#FFFFFF", bg = "#36464E" },
	iCursor = { link = "Cursor" },
	CursorLine = { bg = "#FAFAFA", sp = "none" },
	CursorLineNr = { fg = "#B0BEC4", bg = "#FAFAFA" },
	DapUIBreakpointsCurrentLine = { fg = "#68BB6C", bold = true },
	DapUIFloatBorder = { fg = "#FAFAFA", bg = "#FAFAFA" },
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
	DapUIVariable = { fg = "#36464E", bold = true },
	Default = { fg = "#36464E" },
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
	DefaultI = { fg = "#FFFFFF", bg = "#36464E" },
	Macro = { link = "Define" },
	DiagnosticUnderlineError = { fg = "none", sp = "#FF6A00", undercurl = true },
	DiagnosticUnderlineHint = { fg = "none", sp = "#FF6A00", undercurl = true },
	DiagnosticUnderlineInfo = { fg = "none", sp = "#FF6A00", undercurl = true },
	DiagnosticUnderlineWarn = { fg = "none", sp = "#FF6A00", undercurl = true },
	DiffAdd = { fg = "#43605E", bg = "#E6EAE6" },
	DiffChange = { fg = "#3D4261", bg = "#DAD6E0" },
	DiffDelete = { fg = "#5D5246", bg = "#E7DCD5" },
	DiffText = { bg = "#DDD9E2" },
	Faded = { fg = "#B0BEC4" },
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
	FadedI = { fg = "#FFFFFF", bg = "#B0BEC4" },
	PmenuSel = { link = "FadedI" },
	Float = { fg = "#FF6A00" },
	FloatBorder = { fg = "#FAFAFA", bg = "#FAFAFA" },
	FoldColumn = { fg = "#B0BEC4", bg = "#FFFFFF" },
	Folded = { fg = "#B0BEC4" },
	Function = { bold = true },
	GitSignsAddNr = { fg = "#BECACF", bg = "#E6EAE6" },
	GitSignsChangeDeleteNr = { fg = "#BECACF", bg = "#F7F4F3" },
	GitSignsChangeNr = { fg = "#BECACF", bg = "#E2E0E6" },
	GitSignsCurrentLineBlame = { fg = "#C9D0D4" },
	GitSignsDeleteNr = { fg = "#BECACF", bg = "#EBE5E0" },
	Highlight = { bg = "#EDF0F2" },
	LspReferenceRead = { link = "Highlight" },
	LspReferenceText = { link = "Highlight" },
	LspReferenceWrite = { link = "Highlight" },
	QuickFixLine = { link = "Highlight" },
	TelescopeMultiSelection = { link = "Highlight" },
	TelescopeSelection = { link = "Highlight" },
	Visual = { link = "Highlight" },
	VisualNOS = { link = "Highlight" },
	IndentBlanklineIndentContext = { fg = "#EDF0F2" },
	Italic = { fg = "#B0BEC4" },
	NavicText = { fg = "#36464E", bg = "#EDF0F2" },
	NavicIcons = { link = "NavicText" },
	NavicSeparator = { link = "NavicText" },
	NeogitDiffAdd = { link = "DiffAdd" },
	NeogitDiffAddHighlight = { link = "DiffAdd" },
	NeogitDiffDelete = { link = "DiffDelete" },
	NeogitDiffDeleteHighlight = { link = "DiffDelete" },
	None = { fg = "#36464E" },
	EndOfBuffer = { link = "None" },
	IndentBlanklineIndent = { link = "None" },
	TabLineFill = { link = "None" },
	VertSplit = { link = "None" },
	Number = { fg = "#FF6A00" },
	Pmenu = { bg = "#FAFAFA" },
	Popout = { fg = "#FFA98F" },
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
	PopoutI = { fg = "#FFFFFF", bg = "#FFA98F" },
	IncSearch = { link = "PopoutI" },
	OrgAgendaScheduledPast = { link = "PopoutI" },
	Search = { link = "PopoutI" },
	WarningMsg = { link = "PopoutI" },
	PreCondit = { link = "PreProc" },
	Salient = { fg = "#673AB6" },
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
	SalientI = { fg = "#FFFFFF", bg = "#673AB6" },
	PmenuThumb = { link = "SalientI" },
	WildMenu = { link = "SalientI" },
	SpellBad = { sp = "#FF6A00", undercurl = true },
	SpellCap = { sp = "#FFA98F", undercurl = true },
	SpellLocal = { sp = "#36464E", undercurl = true },
	SpellRare = { sp = "#36464E", undercurl = true },
	StatusComponentBase = { fg = "#36464E", bg = "#EDF0F2" },
	StatusComponentDefault = { link = "StatusComponentBase" },
	StatusComponentVimInactive = { link = "StatusComponentBase" },
	StatusComponentFilename = { fg = "#000000", bg = "#EDF0F2" },
	StatusComponentInactive = { fg = "#B0BEC4", bg = "#EDF0F2" },
	StatusComponentPosition = { fg = "#FFFFFF", bg = "#B0BEC4" },
	StatusComponentVimInsert = { fg = "#36464E", bg = "#FFA98F" },
	StatusComponentVimCommand = { link = "StatusComponentVimInsert" },
	StatusComponentVimReplace = { link = "StatusComponentVimInsert" },
	StatusComponentVimNormal = { fg = "#36464E", bg = "#B0BEC4" },
	StatusComponentVimEnter = { link = "StatusComponentVimNormal" },
	StatusComponentVimMore = { link = "StatusComponentVimNormal" },
	StatusComponentVimShell = { link = "StatusComponentVimNormal" },
	StatusComponentVimTerm = { link = "StatusComponentVimNormal" },
	StatusComponentVimOp = { fg = "#36464E", bg = "#B0BEC4" },
	StatusComponentVimVReplace = { link = "StatusComponentVimReplace" },
	StatusComponentVimVisual = { bg = "#68BB6C" },
	StatusComponentVimBlock = { link = "StatusComponentVimVisual" },
	StatusComponentVimLines = { link = "StatusComponentVimVisual" },
	StatusComponentVimSelect = { link = "StatusComponentVimVisual" },
	String = { fg = "#FF6A00" },
	Strong = { fg = "#000000", bold = true },
	Constant = { link = "Strong" },
	MatchParen = { link = "Strong" },
	StorageClass = { link = "Strong" },
	Todo = { link = "Strong" },
	fugitiveStop = { link = "Strong" },
	fugitiveSymbolicRef = { link = "Strong" },
	StrongI = { fg = "#FFFFFF", bg = "#000000" },
	Subtle = { bg = "#FAFAFA" },
	ColorColumn = { link = "Subtle" },
	CursorColumn = { link = "Subtle" },
	DapUINormalFloat = { link = "Subtle" },
	NormalFloat = { link = "Subtle" },
	PmenuSbar = { link = "Subtle" },
	SubtleI = { fg = "#EDF0F2" },
	Success = { fg = "#68BB6C" },
	DapUIBreakpointsInfo = { link = "Success" },
	DapUIPlayPause = { link = "Success" },
	DapUIPlayPauseNC = { link = "Success" },
	DapUIRestart = { link = "Success" },
	DapUIThread = { link = "Success" },
	GitSignsAdd = { link = "Success" },
	SuccessI = { fg = "#FFFFFF", bg = "#68BB6C" },
	TelescopeBorder = { fg = "#FAFAFA", bg = "#FAFAFA" },
	TelescopePreviewBorder = { link = "TelescopeBorder" },
	TelescopePromptBorder = { link = "TelescopeBorder" },
	TelescopeResultsBorder = { link = "TelescopeBorder" },
	TelescopeNormal = { fg = "#36464E", bg = "#FAFAFA" },
	TelescopePrompt = { link = "TelescopeNormal" },
	Undercurl = { undercurl = true },
	Underline = { underline = true },
	fugitiveHeader = {},
	fugitiveHelpHeader = { link = "fugitiveHeader" },
	fugitiveHeading = { fg = "#673AB6", bold = true },
	fugitiveStagedHeading = { link = "fugitiveHeading" },
	fugitiveUnstagedHeading = { link = "fugitiveHeading" },
	fugitiveUntrackedHeading = { link = "fugitiveHeading" },
	netrwMarkFile = {},
	["@attribute"] = { fg = "#B0BEC4", nocombine = true },
	["@function"] = { fg = "#36464E", bold = true, nocombine = true },
	["@text.danger"] = {
		fg = "#FFFFFF",
		bg = "#FF6A00",
		bold = true,
		nocombine = true,
	},
	["@text.mark"] = { fg = "#000000", italic = true },
	["@text.warning"] = { fg = "#FFA98F", bold = true },
	-- PATCH_CLOSE
	-- content here will not be touched
	["@lsp.type.comment"] = { link = "Comment" },
	-- help
	["helpHyperTextEntry"] = { link = "Salient" },
	["helpHeader"] = { link = "Strong" },
	["helpURL"] = { link = "Salient" },
	["helpSectionDelim"] = { link = "Faded" },
	["helpCommand"] = { link = "Strong" },
	["helpExample"] = { fg = "#36464E", bg = "NONE", italic = true },
}

if not vim.g.termguicolors then
	if vim.o.background == "light" then
		colors.Normal.ctermfg = "Black"
		colors.Normal.ctermbg = "None"
		colors.Cursor.ctermfg = "Black"
		colors.Default.ctermfg = "Black"
		colors.DefaultI.ctermbg = "Black"
		colors.DefaultI.ctermfg = "White"
	else
		colors.Normal.ctermfg = "White"
		colors.Normal.ctermbg = "None"
		colors.Cursor.ctermfg = "White"
		colors.Default.ctermfg = "White"
		colors.DefaultI.ctermbg = "White"
		colors.DefaultI.ctermfg = "Black"
	end
	colors.Highlight.ctermbg = 7
	colors.Subtle.ctermbg = 15
	colors.SubtleI.ctermfg = 15
	colors.Faded.ctermfg = 8
	colors.FadedI.ctermbg = 8
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
-- vim.o.background = "light"
vim.cmd "let g:colors_name='nano_light'"

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
    hi CursorLine ctermfg=Black
]]

-- require "nano.terminal" "light"
