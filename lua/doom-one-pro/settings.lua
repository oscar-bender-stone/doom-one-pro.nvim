local M = {}

local colors = require("doom-one-pro.colors")

M.text_colors = {
	Normal = colors.fg,
	Info = colors.teal,
	Success = colors.green,
	Warning = colors.yellow,
	Debug = colors.yellow,
	Error = colors.red,
	Special = colors.violet,
	Muted = colors.base7,
}

M.tokens = {
	ActiveWindow = { bg = colors.bg },
	InactiveWindow = { bg = colors.bg },

	Normal = { bg = colors.bg, fg = colors.fg },
	NormalFloat = { bg = colors.bg },
	NormalPopup = { bg = colors.bg_alt, fg = colors.fg },

	NormalPopover = { bg = colors.bg_alt, fg = colors.purple },
	NormalPopupPrompt = { bg = colors.bg_alt, fg = colors.base7 },
	NormalPopupSubtle = { bg = colors.bg_alt, fg = colors.base6 },

	Visual = { bg = colors.dark_blue },
	VisualBold = { bg = colors.dark_blue, bold = true },

	LineNr = { bg = colors.bg, fg = colors.grey },
	Cursor = { bg = colors.blue },
	CursorLine = { bg = colors.bg_alt },
	CursorLineNr = { bg = colors.bg_alt, fg = colors.fg },
	CursorColumn = { bg = colors.bg_alt },

	Folded = { bg = colors.bg_alt, fg = colors.base5 },
	FoldColumn = { bg = colors.bg, fg = colors.fg_alt },
	SignColumn = { bg = colors.bg },
	ColorColumn = { bg = colors.bg_alt },

	IndentGuide = { fg = colors.grey },
	IndentGuideEven = { link = "IndentGuide" },
	IndentGuideOdd = { link = "IndentGuide" },

	TermCursor = { fg = colors.fg, reverse = true },
	TermCursorNC = { fg = colors.fg_alt, reverse = true },
	TermNormal = { link = "Normal" },
	TermNormalNC = { link = "TermNormal" },

	WildMenu = { bg = colors.dark_blue, fg = colors.fg },
	Separator = { fg = colors.fg_alt },
	VertSplit = { bg = colors.bg, fg = colors.grey },

	TabLine = { bg = colors.bg_alt, fg = colors.base7, bold = true },
	TabLineSel = { bg = colors.bg, fg = colors.blue, bold = true },
	TabLineFill = { bg = colors.base1, bold = true },

	StatusLine = { bg = colors.base3, fg = colors.base8 },
	StatusLineNC = { bg = colors.bg_alt, fg = colors.base6 },
	StatusLinePart = { bg = colors.bg_alt, fg = colors.base6, bold = true },
	StatusLinePartNC = { link = "StatusLinePart" },

	Pmenu = { bg = colors.bg_alt, fg = colors.fg },
	PmenuSel = { bg = colors.blue, fg = colors.base0 },
	PmenuSelBold = { bg = colors.blue, fg = colors.base0 or colors.base8 },
	PmenuSbar = { bg = colors.bg_alt },
	PmenuThumb = { bg = colors.grey },

	Msg = { link = "TextSuccess" },
	MoreMsg = { link = "TextInfo" },
	WarningMsg = { link = "TextWarning" },
	Error = { link = "TextError" },
	ErrorMsg = { link = "TextError" },
	ModeMsg = { link = "TextSpecial" },
	Todo = { link = "TextWarningBold" },

	--- Checkhealth
	---------------
	healthError = { link = "ErrorMsg" },
	healthSuccess = { link = "Msg" },
	healthWarning = { link = "WarningMsg" },

	--- Main Syntax
	---------------
	Tag = { fg = colors.blue, bold = true },
	Link = { fg = colors.green, underline = true },
	URL = { link = "Link" },
	Underlined = { fg = colors.blue, underline = true },

	Comment = { fg = colors.base5 },
	CommentBold = { fg = colors.base5, bold = true },
	SpecialComment = { fg = colors.base7, bold = true },

	Macro = { fg = colors.violet },
	Define = { fg = colors.violet, bold = true },
	Include = { fg = colors.violet, bold = true },
	PreProc = { fg = colors.violet, bold = true },
	PreCondit = { fg = colors.violet, bold = true },

	Label = { fg = colors.blue },
	Repeat = { fg = colors.blue },
	Keyword = { fg = colors.blue },
	Operator = { fg = colors.blue },
	Delimiter = { fg = colors.blue },
	Statement = { fg = colors.magenta },
	Exception = { fg = colors.magneta },
	Conditional = { fg = colors.purple },

	Variable = { fg = colors.blue },
	VariableBuiltin = { fg = colors.magenta, bold = true },
	Constant = { fg = colors.violet, bold = true },

	Number = { fg = colors.orange },
	Float = { link = "Number" },
	Boolean = { fg = colors.orange, bold = true },
	Enum = { fg = colors.orange },

	Character = { fg = colors.violet, bold = true },
	SpecialChar = { fg = colors.violet, bold = true },
	String = { fg = colors.green },
	StringDelimiter = { link = "String" },

	Special = { fg = colors.violet },
	SpecialBold = { fg = colors.violet, bold = true },

	Field = { fg = colors.violet },
	Argument = { fg = colors.magenta },
	Attribute = { fg = colors.magenta },
	Identifier = { fg = colors.violet },
	Property = { fg = colors.blue },
	Function = { fg = colors.blue },
	FunctionBuiltin = {
		fg = colors.magenta,
		bold = true,
	},
	KeywordFunction = { fg = colors.blue, bold = true },
	Method = { fg = colors.blue }, -- or colors.cyan })

	Type = { fg = colors.yellow }, -- utils.mix(colors.blue, colors.dark_cyan, 0.5) })
	Typedef = { fg = colors.blue },
	TypeBuiltin = { fg = colors.yellow },
	Class = { fg = colors.blue },
	StorageClass = { fg = colors.blue },
	Structure = { fg = colors.blue },

	Regexp = { fg = "#dd0093" },
	RegexpSpecial = { fg = "#a40073" },
	RegexpDelimiter = { fg = "#540063", bold = true },
	RegexpKey = { fg = "#5f0041", bold = true },

	CommentURL = { link = "URL" },
	CommentLabel = { link = "CommentBold" },
	CommentSection = { link = "CommentBold" },
	Noise = { link = "Comment" },

	--- Diff
	--------
	DiffAddedGutter = { fg = colors.green, bold = true },
	DiffModifiedGutter = { fg = colors.orange, bold = true },
	DiffRemovedGutter = { fg = colors.red, bold = true },

	DiffAddedGutterLineNr = { fg = colors.grey },
	DiffModifiedGutterLineNr = { fg = colors.grey },
	DiffRemovedGutterLineNr = { fg = colors.grey },

	DiffAdd = { link = "DiffAddedGutter" },
	DiffChange = { link = "DiffModifiedGutter" },
	DiffDelete = { link = "DiffRemovedGutter" },

	--- Markdown
	------------
	markdownCode = { link = "Comment" },
	markdownCodeBlock = { link = "markdownCode" },
	markdownH1 = { bold = true },
	markdownH2 = { bold = true },
	markdownLinkText = { underline = true },

	--- LSP
	------------
	ErrorMsgUnderline = { fg = colors.red, underline = true },
	WarningMsgUnderline = { fg = colors.yellow, underline = true },
	MoreMsgUnderline = { fg = colors.blue, underline = true },
	MsgUnderline = { fg = colors.green, underline = true },

	LspHighlight = { bg = colors.bg_alt, bold = true },
	LspSignatureActiveParameter = { fg = colors.violet },
	DiagnosticFloatingError = { link = "ErrorMsg" },
	DiagnosticFloatingWarn = { link = "WarningMsg" },
	DiagnosticFloatingInfo = { link = "MoreMsg" },
	DiagnosticFloatingHint = { link = "Msg" },
	DiagnosticDefaultError = { link = "ErrorMsg" },
	DiagnosticDefaultWarn = { link = "WarningMsg" },
	DiagnosticDefaultInfo = { link = "MoreMsg" },
	DiagnosticDefaultHint = { link = "Msg" },
	DiagnosticVirtualTextError = { link = "ErrorMsg" },
	DiagnosticVirtualTextWarn = { link = "WarningMsg" },
	DiagnosticVirtualTextInfo = { link = "MoreMsg" },
	DiagnosticVirtualTextHint = { link = "Msg" },
	DiagnosticUnderlineError = { link = "ErrorMsgUnderline" },
	DiagnosticUnderlineWarn = { link = "WarningMsgUnderline" },
	DiagnosticUnderlineInfo = { link = "MoreMsgUnderline" },
	DiagnosticUnderlineHint = { link = "MsgUnderline" },
	DiagnosticSignError = { link = "ErrorMsg" },
	DiagnosticSignWarning = { link = "WarningMsg" },
	DiagnosticSignInformation = { link = "MoreMsg" },
	DiagnosticSignHint = { link = "Msg" },
	LspReferenceText = { link = "LspHighlight" },
	LspReferenceRead = { link = "LspHighlight" },
	LspReferenceWrite = { link = "LspHighlight" },
	LspInlayHint = { fg = colors.violet },

	--- Tree-Sitter
	---------------

	--- Search, Highlight, Conceal, Messages
	----------------------------------------
	Search = { bg = colors.dark_blue, fg = colors.fg },
	Substitute = { fg = colors.red, bold = true, strikethrough = true },
	IncSearch = { bg = colors.yellow, fg = colors.bg, bold = true },
	IncSearchCursor = { reverse = true },

	Conceal = { fg = colors.grey },
	SpecialKey = { fg = colors.violet, bold = true },
	NonText = { fg = colors.base4, bold = true },
	MatchParen = { fg = colors.red, bold = true },
	Whitespace = { fg = colors.grey },

	Highlight = { bg = colors.bg_alt },
	HighlightSubtle = { link = "Highlight" },

	Question = { fg = colors.green, bold = true },

	File = { fg = colors.fg },
	Directory = { fg = colors.violet, bold = true },
	Title = { fg = colors.violet, bold = true },

	Bold = { bold = true },
	Emphasis = { italic = true },

	-- WhichKey
	WhichKey = { fg = colors.blue },

	WhichKeyGroup = { fg = colors.purple },

	WhichKeyDesc = { fg = colors.purple },

	WhichKeySeparator = { link = "Separator" },

	illuminatedWord = { underline = true },

	-- Telescope
	TelescopeNormal = { fg = colors.fg },
	TelescopeBorder = { fg = colors.blue },
	TelescopePrompt = { link = "TelescopeNormal" },
	TelescopePromptBorder = { link = "TelescopeBorder" },
	TelescopePromptPrefix = { fg = colors.blue },
	TelescopeResultsBorder = { link = "TelescopeBorder" },
	TelescopePreviewBorder = { link = "TelescopeBorder" },
	TelescopeMatching = { fg = colors.violet, bold = true },
	TelescopeSelection = { link = "VisualBold" },
	TelescopeSelectionCaret = { fg = colors.blue },

	-- Snacks Explorer
	SnacksPicker = { fg = colors.fg, bg = colors.bg },
	SnacksPickerBox = { fg = colors.fg, bg = colors.bg },
	-- SnacksBackdrop = { fg = colors.fg, bg = colors.bg_alt },
	SnacksPickerBorder = { fg = colors.violet },
	SnacksPickerBoxBorder = { fg = colors.violet },
	SnacksBackdropBorder = { fg = colors.fg, bg = colors.bg },

	LazyNormal = { fg = colors.fg, bg = colors.bg },
	LazyNormalBorder = { fg = colors.blue },
	LazyBackdrop = { fg = colors.fg, bg = colors.bg },

	-- Neo Tree
	-- NeoTreeNormal = { fg = colors.fg, bg = colors.bg },
	-- NeoTreeNormalNC = { fg = colors.fg, bg = colors.bg },
	-- NeoTreeEndOfBuffer = { fg = colors.fg, bg = colors.bg },
	-- NeoTreeFolderName = { fg = colors.blue, bold = true },
	-- NeoTreeRootFolder = { fg = colors.green },
	-- NeoTreeEmptyFolderName = { fg = colors.fg_alt, bold = true },
	-- NeoTreeSymlink = { fg = colors.fg, underline = true },
	-- NeoTreeExecFile = { fg = colors.green, bold = true },
	-- NeoTreeImageFile = { fg = colors.blue },
	-- NeoTreeOpenedFile = { fg = colors.fg_alt },
	-- NeoTreeSpecialFile = { fg = colors.fg, underline = true },
	-- NeoTreeMarkdownFile = { fg = colors.fg, underline = true },
	--
	-- NeoTreeGitDirty = { link = "DiffModifiedGutter" },
	-- NeoTreeGitStaged = { link = "DiffModifiedGutter" },
	-- NeoTreeGitMerge = { link = "DiffModifiedGutter" },
	-- NeoTreeGitRenamed = { link = "DiffModifiedGutter" },
	-- NeoTreeGitNew = { link = "DiffAddedGutter" },
	-- NeoTreeGitDeleted = { link = "DiffRemovedGutter" },
	--
	-- NeoTreeIndentMarker = { link = "IndentGuide" },
	-- NeoTreeOpenedFolderName = { link = "NvimTreeFolderName" },
}

----  Treeistter tokens include periods and some reserved keywords,
----  so we need to surround them in text
M.treesitter_tokens = {
	{ "annotation", { link = "PreProc" } },
	{ "attribute", { link = "Attribute" } },
	{ "conditional", { link = "Conditional" } },
	{ "comment", { link = "Comment" } },
	{ "constructor", { link = "Structure" } },
	{ "constant", { link = "Constant" } },
	{ "constant.builtin", { link = "Constant" } },
	{ "constant.macro", { link = "Macro" } },
	{ "error", { link = "Error" } },
	{ "exception", { link = "Exception" } },
	{ "field", { link = "Field" } },
	{ "float", { link = "Float" } },
	{ "function", { link = "Function" } },
	{ "function.builtin", { link = "FunctionBuiltin" } },
	{ "function.macro", { link = "Macro" } },
	{ "include", { link = "Include" } },
	{ "keyword", { link = "Keyword" } },
	{ "keyword.function", { link = "KeywordFunction" } },
	{ "label", { link = "Label" } },
	{ "math", { link = "Special" } },
	{ "method", { link = "Method" } },
	{ "namespace", { link = "Directory" } },
	{ "number", { link = "Number" } },
	{ "boolean", { link = "Boolean" } },
	{ "operator", { link = "Operator" } },
	{ "parameter", { link = "Argument" } },
	{ "parameter.reference", { link = "Argument" } },
	{ "property", { link = "Property" } },
	{ "punctuation.delimiter", { link = "Delimiter" } },
	{ "punctuation.bracket", { link = "Delimiter" } },
	{ "punctuation.special", { link = "Delimiter" } },
	{ "repeat", { link = "Repeat" } },
	{ "string", { link = "String" } },
	{ "string.regex", { link = "StringDelimiter" } },
	{ "string.escape", { link = "StringDelimiter" } },
	{ "structure", { link = "Structure" } },
	{ "tag", { link = "Tag" } },
	{ "tag.attribute", { link = "Attribute" } },
	{ "tag.delimiter", { link = "Delimiter" } },
	{ "strong", { link = "Bold" } },
	{ "uri", { link = "URL" } },
	{ "warning", { link = "WarningMsg" } },
	{ "danger", { link = "ErrorMsg" } },
	{ "type", { link = "Type" } },
	{ "type.builtin", { link = "TypeBuiltin" } },
	{ "variable", { link = "None" } },
	{ "variable.builtin", { link = "VariableBuiltin" } },
	{ "query.linter.error", { fg = colors.fg } },
	{ "text", { link = "TextNormal" } },
	{ "text.strong", { link = "TextNormalBold" } },
	{ "text.emphasis", { link = "Emphasis" } },
	{ "text.underline", { underline = true } },
	{ "text.strike", {
		fg = colors.violet,
		strikethrough = true,
	} },
	{ "text.title", { link = "Title" } },
	{ "text.uri", { link = "URL" } },
	{ "text.note", { link = "TextInfo" } },
	{ "text.warning", { link = "TextWarning" } },
	{ "text.danger", { link = "TextError" } },
	{ "todo", { link = "Todo" } },
}

M.terminal_colors = {
	terminal_color_0 = colors.bg,
	terminal_color_1 = colors.red,
	terminal_color_2 = colors.green,
	terminal_color_3 = colors.yellow,
	terminal_color_4 = colors.blue,
	terminal_color_5 = colors.violet,
	terminal_color_6 = colors.cyan,
	terminal_color_7 = colors.fg,
	terminal_color_8 = colors.grey,
	terminal_color_9 = colors.red,
	terminal_color_10 = colors.green,
	terminal_color_11 = colors.orange,
	terminal_color_12 = colors.blue,
	terminal_color_13 = colors.violet,
	terminal_color_14 = colors.cyan,
	terminal_color_15 = colors.base8,
	terminal_color_background = colors.bg_alt,
	terminal_color_foreground = colors.fg_alt,
}

return M
