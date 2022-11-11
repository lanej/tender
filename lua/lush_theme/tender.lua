--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--
-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial
--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--
-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`
local lush = require("lush")
local hsl = lush.hsl

local colors = require("tender.colors")

local map = {
  ["annotation"] = "TSAnnotation",

  ["attribute"] = "TSAttribute",

  ["boolean"] = "TSBoolean",

  ["character"] = "TSCharacter",
  ["character.special"] = "TSCharacterSpecial",

  ["comment"] = "TSComment",

  ["conditional"] = "TSConditional",

  ["constant"] = "TSConstant",
  ["constant.builtin"] = "TSConstBuiltin",
  ["constant.macro"] = "TSConstMacro",

  ["constructor"] = "TSConstructor",

  ["debug"] = "TSDebug",
  ["define"] = "TSDefine",

  ["error"] = "TSError",
  ["exception"] = "TSException",

  ["field"] = "TSField",

  ["float"] = "TSFloat",

  ["function"] = "TSFunction",
  ["function.call"] = "TSFunctionCall",
  ["function.builtin"] = "TSFuncBuiltin",
  ["function.macro"] = "TSFuncMacro",

  ["include"] = "TSInclude",

  ["keyword"] = "TSKeyword",
  ["keyword.function"] = "TSKeywordFunction",
  ["keyword.operator"] = "TSKeywordOperator",
  ["keyword.return"] = "TSKeywordReturn",

  ["label"] = "TSLabel",

  ["method"] = "TSMethod",
  ["method.call"] = "TSMethodCall",

  ["namespace"] = "TSNamespace",

  ["none"] = "TSNone",
  ["number"] = "TSNumber",

  ["operator"] = "TSOperator",

  ["parameter"] = "TSParameter",
  ["parameter.reference"] = "TSParameterReference",

  ["preproc"] = "TSPreProc",

  ["property"] = "TSProperty",

  ["punctuation.delimiter"] = "TSPunctDelimiter",
  ["punctuation.bracket"] = "TSPunctBracket",
  ["punctuation.special"] = "TSPunctSpecial",

  ["repeat"] = "TSRepeat",

  ["storageclass"] = "TSStorageClass",

  ["string"] = "TSString",
  ["string.regex"] = "TSStringRegex",
  ["string.escape"] = "TSStringEscape",
  ["string.special"] = "TSStringSpecial",

  ["symbol"] = "TSSymbol",

  ["tag"] = "TSTag",
  ["tag.attribute"] = "TSTagAttribute",
  ["tag.delimiter"] = "TSTagDelimiter",

  ["text"] = "TSText",
  ["text.strong"] = "TSStrong",
  ["text.emphasis"] = "TSEmphasis",
  ["text.underline"] = "TSUnderline",
  ["text.strike"] = "TSStrike",
  ["text.title"] = "TSTitle",
  ["text.literal"] = "TSLiteral",
  ["text.uri"] = "TSURI",
  ["text.math"] = "TSMath",
  ["text.reference"] = "TSTextReference",
  ["text.environment"] = "TSEnvironment",
  ["text.environment.name"] = "TSEnvironmentName",

  ["text.note"] = "TSNote",
  ["text.warning"] = "TSWarning",
  ["text.danger"] = "TSDanger",

  ["todo"] = "TSTodo",

  ["type"] = "TSType",
  ["type.builtin"] = "TSTypeBuiltin",
  ["type.qualifier"] = "TSTypeQualifier",
  ["type.definition"] = "TSTypeDefinition",

  ["variable"] = "TSVariable",
  ["variable.builtin"] = "TSVariableBuiltin",
}

for capture, hlgroup in pairs(map) do
  vim.api.nvim_set_hl(0, "@" .. capture, { link = hlgroup, default = true })
end

local defaults = {
  TSNone = { default = true },
  TSPunctDelimiter = { link = "Delimiter", default = true },
  TSPunctBracket = { link = "Delimiter", default = true },
  TSPunctSpecial = { link = "Delimiter", default = true },

  TSConstant = { link = "Constant", default = true },
  TSConstBuiltin = { link = "Special", default = true },
  TSConstMacro = { link = "Define", default = true },
  TSString = { link = "String", default = true },
  TSStringRegex = { link = "String", default = true },
  TSStringEscape = { link = "SpecialChar", default = true },
  TSStringSpecial = { link = "SpecialChar", default = true },
  TSCharacter = { link = "Character", default = true },
  TSCharacterSpecial = { link = "SpecialChar", default = true },
  TSNumber = { link = "Number", default = true },
  TSBoolean = { link = "Boolean", default = true },
  TSFloat = { link = "Float", default = true },

  TSFunction = { link = "Function", default = true },
  TSFunctionCall = { link = "TSFunction", default = true },
  TSFuncBuiltin = { link = "Special", default = true },
  TSFuncMacro = { link = "Macro", default = true },
  TSParameter = { link = "Identifier", default = true },
  TSParameterReference = { link = "TSParameter", default = true },
  TSMethod = { link = "Function", default = true },
  TSMethodCall = { link = "TSMethod", default = true },
  TSField = { link = "Identifier", default = true },
  TSProperty = { link = "Identifier", default = true },
  TSConstructor = { link = "Special", default = true },
  TSAnnotation = { link = "PreProc", default = true },
  TSAttribute = { link = "PreProc", default = true },
  TSNamespace = { link = "Include", default = true },
  TSSymbol = { link = "Identifier", default = true },

  TSConditional = { link = "Conditional", default = true },
  TSRepeat = { link = "Repeat", default = true },
  TSLabel = { link = "Label", default = true },
  TSOperator = { link = "Operator", default = true },
  TSKeyword = { link = "Keyword", default = true },
  TSKeywordFunction = { link = "Keyword", default = true },
  TSKeywordOperator = { link = "TSOperator", default = true },
  TSKeywordReturn = { link = "TSKeyword", default = true },
  TSException = { link = "Exception", default = true },
  TSDebug = { link = "Debug", default = true },
  TSDefine = { link = "Define", default = true },
  TSPreProc = { link = "PreProc", default = true },
  TSStorageClass = { link = "StorageClass", default = true },

  TSTodo = { link = "Todo", default = true },

  TSType = { link = "Type", default = true },
  TSTypeBuiltin = { link = "Type", default = true },
  TSTypeQualifier = { link = "Type", default = true },
  TSTypeDefinition = { link = "Typedef", default = true },

  TSInclude = { link = "Include", default = true },

  TSVariableBuiltin = { link = "Special", default = true },

  TSText = { link = "TSNone", default = true },
  TSStrong = { bold = true, default = true },
  TSEmphasis = { italic = true, default = true },
  TSUnderline = { underline = true },
  TSStrike = { strikethrough = true },

  TSMath = { link = "Special", default = true },
  TSTextReference = { link = "Constant", default = true },
  TSEnvironment = { link = "Macro", default = true },
  TSEnvironmentName = { link = "Type", default = true },
  TSTitle = { link = "Title", default = true },
  TSLiteral = { link = "String", default = true },
  TSURI = { link = "Underlined", default = true },

  TSComment = { link = "Comment", default = true },
  TSNote = { link = "SpecialComment", default = true },
  TSWarning = { link = "Todo", default = true },
  TSDanger = { link = "WarningMsg", default = true },

  TSTag = { link = "Label", default = true },
  TSTagDelimiter = { link = "Delimiter", default = true },
  TSTagAttribute = { link = "TSProperty", default = true },
}

for group, val in pairs(defaults) do
  vim.api.nvim_set_hl(0, group, val)
end

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected)
  local sym = injected.sym
  return {
    Boolean {
      fg = hsl("#ff8787"),
    },
    ColorColumn {
      bg = hsl("#323232"),
    },
    Comment {
      fg = hsl("#666666"),
    },
    Conditional {
      fg = hsl("#d0c65c"),
    },
    Constant {
      fg = colors.orange,
    },
    CursorColumn {
      bg = hsl("#323232"),
    },
    Directory {
      fg = hsl("#afd7ff"),
    },
    Exception {
      fg = hsl("#f43753"),
    },
    ErrorMsg {
      fg = Exception.fg.lighten(20),
    },
    Error {
      Exception,
    },
    Float {
      fg = hsl("#5faf5f"),
    },
    FoldColumn {
      fg = hsl("#666666"),
      bg = hsl("#1d1d1d"),
    },
    Folded {
      fg = hsl("#666666"),
      bg = hsl("#1d1d1d"),
    },
    Identifier {
      fg = hsl("#afd7ff"),
    },
    Keyword {
      fg = hsl("#c9d05c"),
    },
    NonText {
      fg = hsl("#444444"),
    },
    Normal {
      fg = hsl("#eeeeee"),
      bg = hsl("#262626"),
    },
    Number {
      fg = hsl("#5fafd7"),
    },
    Operator {
      fg = hsl("#999999"),
    },
    PreProc {
      fg = hsl("#c9d05c"),
    },
    Question {
      fg = hsl("#c9d05c"),
    },
    SpecialComment {
      fg = hsl("#8a8a8a"),
    },
    Special {
      fg = hsl("#5fd7ff"),
    },
    SpecialKey {
      fg = hsl("#444444"),
    },
    SpellCap {
      fg = hsl("#ffc24b"),
    },
    SpellLocal {
      fg = hsl("#d3b987"),
    },
    SpellRare {
      fg = hsl("#5fd7ff"),
    },
    Statement {
      fg = hsl("#afd7ff"),
    },
    StatusLine {
      fg = Normal.fg,
      bg = colors.bg,
    },
    StatusLineNC {
      fg = hsl("#444444"),
      bg = hsl("#444444"),
    },
    String {
      fg = hsl("#d3b987"),
    },
    TSLiteral {
      fg = String.fg.darken(20),
    },
    Title {
      fg = hsl("#afd7ff"),
    },
    TSField {
      fg = Title.fg.darken(10),
    },
    TSFunction {
      fg = hsl("#00afff").lighten(10),
    },
    TSFuncMacro {
      fg = hsl("#00afff").darken(10),
    },
    TSNote {
      fg = hsl("#ffd700"),
    },
    TSParameter {
      fg = hsl("#ffc24b"),
    },
    TSPunctBracket {
      fg = hsl("#999999"),
    },
    TSSymbol {
      fg = hsl("#ffaf5f"),
    },
    TSWarning {
      fg = hsl("#ffaf5f"),
    },
    Type {
      fg = hsl("#5fd7ff"),
    },
    Underlined {
      gui = "underline",
    },
    Variable {
      fg = hsl("#eeeeee"),
      bg = hsl("#282828"),
    },
    VertSplit {
      fg = colors.shadow,
      bg = colors.shadow,
    },
    WarningMsg {
      fg = hsl("#f43753"),
    },
    WildMenu {
      fg = hsl("#282828"),
      bg = hsl("#c9d05c"),
    },
    SignColumn {
      fg = hsl("#eeeeee"),
      bg = hsl("#282828"),
    },
    DiffAdd {
      fg = hsl("#87d700").lighten(20),
    },
    DiffChange {
      fg = hsl("#ff8700"),
    },
    DiffDelete {
      fg = hsl("#f43753"),
    },
    GitSignsAdd {
      fg = DiffAdd.fg.lighten(20),
    },
    GitSignsChange {
      fg = DiffChange.fg.lighten(20),
    },
    GitSignsDelete {
      fg = DiffDelete.fg.lighten(20),
    },
    diffAdded {
      GitSignsAdd,
    },
    diffRemoved {
      GitSignsDelete,
    },
    diffChanged {
      GitSignsChange,
    },
    gitCommitSelectedType {
      fg = DiffAdd.fg.darken(30),
    },
    gitCommitSelectedFile {
      fg = DiffAdd.fg.lighten(20),
    },
    gitcommitFirstLine {
      Normal,
    },
    gitcommitOverflow {
      fg = Comment.fg.lighten(30),
    },
    gitcommitDiscardedType {
      DiffDelete,
    },
    gitcommitDiscardedFile {
      fg = DiffDelete.fg.lighten(20),
    },
    gitcommitSummary {
      Normal,
    },
    -- GitSignsAddLn {},
    -- GitSignsAddNr {},
    -- GitSignsChangeLn {},
    -- GitSignsChangeNr {},
    -- GitSignsDeleteLn {},
    -- GitSignsDeleteNr {},
    fugitiveUnstagedModifier {
      gitcommitDiscardedType,
    },
    fugitiveStagedModifier {
      gitCommitSelectedType,
    },
    HopNextKey {
      fg = TSFunction.fg,
      gui = "underline",
    },
    HopNextKey1 {
      fg = HopNextKey.fg.darken(10),
      bg = HopNextKey.bg,
      gui = HopNextKey.gui,
    },
    HopNextKey2 {
      fg = HopNextKey1.fg.darken(10),
      bg = HopNextKey1.bg,
      gui = HopNextKey1.gui,
    },
    HopUnmatched {
      fg = Comment.fg.lighten(20),
    },
    HopCursor {},
    fugitiveSection {
      Normal,
    },
    fugitiveHash {
      fg = Normal.fg.darken(20),
      bg = colors.bg,
    },
    CursorLine {
      bg = hsl("#323232"),
    },
    CursorLineNr {
      fg = hsl("#5fd7ff"),
      bg = "NONE",
    },
    LineNr {
      fg = hsl("#6c6c6c"),
      bg = "NONE",
    },
    Pmenu {
      fg = colors.normal.darken(10),
      bg = colors.bg.lighten(10),
    },
    PmenuSel {
      fg = colors.fg,
      bg = Pmenu.bg.lighten(20),
      gui = "bold",
    },
    Visual {
      bg = hsl("#4e4e4e"),
    },
    VisualNOS {
      bg = hsl("#4e4e4e"),
    },
    MatchParen {
      fg = colors.highlighted,
      bg = TSPunctBracket.fg.darken(20),
    },
    IncSearch {
      bg = Visual.bg,
      gui = "underline,bold",
    },
    Search {
      bg = Visual.bg,
      gui = IncSearch.gui,
    },
    IndentBlanklineContextChar {
      fg = CursorLineNr.fg.lighten(40),
    },
    IndentBlanklineChar {
      fg = Comment.fg.darken(20),
    },
    IndentBlanklineSpaceChar {
      Comment,
    },
    LspDiagnosticsDefaultError {
      fg = Error.fg,
      gui = "bold",
    }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning {
      fg = TSWarning.fg,
      gui = "bold",
    }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultInformation {
      fg = Normal.fg,
      gui = "bold",
    }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultHint {
      fg = colors.teal,
      gui = "bold",
    }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    DiagnosticError {
      LspDiagnosticsDefaultError,
    }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    DiagnosticWarn {
      LspDiagnosticsDefaultWarning,
    }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    DiagnosticInfo {
      LspDiagnosticsDefaultInformation,
    }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    DiagnosticHint {
      fg = colors.teal,
    }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    DiagnosticUnderlineError {
      DiagnosticError,
    }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn {
      DiagnosticWarn,
    }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo {
      DiagnosticInfo,
    }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint {
      DiagnosticHint,
    }, -- Used to underline "Hint" diagnostics
    ALEError {
      DiagnosticError,
    },
    ALEWarning {
      DiagnosticWarn,
    },
    ALEErrorSign {
      DiagnosticError,
    },
    ALEWarningSign {
      DiagnosticWarn,
    },

    -- Comment      { }, -- any comment
    -- ColorColumn  { }, -- used for the columns set with 'colorcolumn'
    -- Conceal      { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    -- Cursor       { }, -- character under the cursor
    -- lCursor      { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM     { }, -- like Cursor, but used when in IME mode |CursorIM|
    -- CursorColumn { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    -- CursorLine   { }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    -- Directory    { }, -- directory names (and other special names in listings)
    -- DiffAdd      { }, -- diff mode: Added line |diff.txt|
    -- DiffChange   { }, -- diff mode: Changed line |diff.txt|
    -- DiffDelete   { }, -- diff mode: Deleted line |diff.txt|
    -- DiffText     { }, -- diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer  { }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor   { }, -- cursor in a focused terminal
    -- TermCursorNC { }, -- cursor in an unfocused terminal
    -- ErrorMsg     { }, -- error messages on the command line
    -- VertSplit    { }, -- the column separating vertically split windows
    -- Folded       { }, -- line used for closed folds
    -- FoldColumn   { }, -- 'foldcolumn'
    -- SignColumn   { }, -- column where |signs| are displayed
    -- IncSearch    { }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    -- Substitute   { }, -- |:substitute| replacement text highlighting
    -- LineNr       { }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    -- CursorLineNr { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- MatchParen   { }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    -- ModeMsg      { }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea      { }, -- Area for messages and cmdline
    -- MsgSeparator { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    -- MoreMsg      { }, -- |more-prompt|
    -- NonText      { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    -- Normal { }, -- normal text
    -- NormalFloat  { }, -- Normal text in floating windows.
    -- NormalNC     { }, -- normal text in non-current windows
    -- Pmenu        { }, -- Popup menu: normal item.
    -- PmenuSel     { }, -- Popup menu: selected item.
    -- PmenuSbar    { }, -- Popup menu: scrollbar.
    -- PmenuThumb   { }, -- Popup menu: Thumb of the scrollbar.
    -- Question     { }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    -- Search       { }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    -- SpecialKey   { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad     { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellBad {
      gui = "bold",
    },
    -- SpellCap     { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal   { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare    { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    -- StatusLine {}, -- status line of current window
    -- StatusLineNC { }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine {
      fg = Normal.fg,
      bg = colors.bg,
    }, -- tab pages line, not active tab page label
    TabLineFill {
      bg = colors.bg.darken(20),
    }, -- tab pages line, where there are no labels
    -- TabLineSel   { }, -- tab pages line, active tab page label
    -- Title        { }, -- titles for output from ":set all", ":autocmd" etc.
    -- Visual       { }, -- Visual mode selection
    -- VisualNOS    { }, -- Visual mode selection when vim is "Not Owning the Selection".
    -- WarningMsg   { }, -- warning messages
    Whitespace {
      fg = Exception.fg.darken(20),
    }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- WildMenu     { }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    -- Constant       { }, -- (preferred) any constant
    -- String         { }, --   a string constant: "this is a string"
    Character {
      fg = String.fg.darken(40),
    }, --  a character constant: 'c', '\n'
    TSKeyword {
      fg = Keyword.fg.darken(10),
    },
    TSKeywordFunction {
      fg = Keyword.fg.darken(20),
    },
    TSKeywordReturn {
      fg = Boolean.fg,
    },
    TSVariableBuiltin {
      fg = Boolean.fg.lighten(20),
    },
    TSParameterReference { fg = TSParameter.fg.darken(20) },
    -- Number         { }, --   a number constant: 234, 0xff
    -- Boolean        { }, --  a boolean constant: TRUE, false
    -- Float          { }, --    a floating point constant: 2.3e10

    -- Identifier     { }, -- (preferred) any variable name
    -- Function       { }, -- function name (also: methods for classes)

    -- Statement      { }, -- (preferred) any statement
    -- Conditional    { }, --  if, then, else, endif, switch, etc.
    -- Repeat         { }, --   for, do, while, etc.
    -- Label          { }, --    case, default, etc.
    -- Operator       { }, -- "sizeof", "+", "*", etc.
    -- Keyword        { }, --  any other keyword
    -- Exception      { }, --  try, catch, throw

    -- PreProc        { }, -- (preferred) generic Preprocessor
    -- Include        { }, --  preprocessor #include
    -- Define         { }, --   preprocessor #define
    -- Macro          { }, --    same as Define
    -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

    -- Type           { }, -- (preferred) int, long, char, etc.
    -- StorageClass   { }, -- static, register, volatile, etc.
    -- Structure      { }, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef

    -- Special        { }, -- (preferred) any special symbol
    -- SpecialChar    { }, --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    -- Delimiter      { }, --  character that needs attention
    -- SpecialComment { }, -- special things inside a comment
    -- Debug          { }, --    debugging statements

    -- Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
    -- Bold       { gui = "bold" },
    -- Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

    -- Error          { }, -- (preferred) any erroneous construct

    -- Todo {  }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    -- LspReferenceText                     { }, -- used for highlighting "text" references
    -- LspReferenceRead                     { }, -- used for highlighting "read" references
    -- LspReferenceWrite                    { }, -- used for highlighting "write" references

    -- LspDiagnosticsVirtualTextError {}, -- Used for "Error" diagnostic virtual text
    -- LspDiagnosticsVirtualTextWarning {}, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation {}, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint {}, -- Used for "Hint" diagnostic virtual text

    -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
    -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    -- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
    -- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
    -- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

    -- LspCodeLens                          { }, -- Used to color the virtual text of the codelens

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { };    -- (unstable) TODO: docs
    -- TSBoolean            { };    -- For booleans.
    -- TSCharacter          { };    -- For characters.
    -- TSComment            { };    -- For comment blocks.
    -- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSConditional        { };    -- For keywords related to conditionnals.
    -- TSConstant           { };    -- For constants
    -- TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { };    -- For syntax/parser errors.
    -- TSException          { };    -- For exception related keywords.
    -- TSField              { };    -- For fields.
    -- TSFloat              { };    -- For floats.
    -- TSFunction           { };    -- For function (calls and definitions).
    -- TSFuncBuiltin        { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod             { };    -- For method calls and definitions.
    -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
    -- TSNone               { };    -- TODO: docs
    -- TSNumber             { };    -- For all numbers
    -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
    -- TSProperty           { };    -- Same as `TSField`.
    -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
    -- TSPunctBracket       { };    -- For brackets and parens.
    -- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat             { };    -- For keywords related to loops.
    -- TSString             { };    -- For strings.
    -- TSStringRegex        { };    -- For regexes.
    -- TSStringEscape       { };    -- For escape characters within a string.
    -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
    -- TSType               { };    -- For types.
    -- TSTypeBuiltin        { };    -- For builtin types.
    -- TSVariable { }, -- Any variable name that does not have another highlight.

    -- TSTag                { };    -- Tags like html tag names.
    -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
    -- TSText               { };    -- For strings considered text in a markup language.
    -- TSEmphasis           { };    -- For text to be represented with emphasis.
    -- TSUnderline          { };    -- For text to be represented with an underline.
    -- TSStrike             { };    -- For strikethrough text.
    -- TSTitle              { };    -- Text that is part of a title.
    -- TSLiteral            { };    -- Literal text.
    -- TSURI                { };    -- Any URI like a link or email.

  }
end)

-- return our parsed theme for extension or use else where.
return theme

-- vi:nowrap
