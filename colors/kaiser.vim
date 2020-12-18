" -----------------------------------------------------------------------------
" Kaiser Theme
" @description: Based on Gruvbox color pallet for Vim
" @author: Ronaldo Santiago <setzerwolf@gmail.com>
" -----------------------------------------------------------------------------

scriptencoding utf8


" Initialisation
" -----------------------------------------------------------------------------

if v:version > 580
  highlight clear
  if exists('syntax_on')
    syntax reset
  endif
endif

let g:colors_name = 'kaiser'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif


" Palette
" -----------------------------------------------------------------------------

let s:background    = g:kaiser#palette.background
let s:foreground    = g:kaiser#palette.foreground
let s:selection     = g:kaiser#palette.selection
let s:comments      = g:kaiser#palette.comments

let s:boundary      = g:kaiser#palette.boundary
let s:boundarysoft  = g:kaiser#palette.boundarysoft
let s:boundarylight = g:kaiser#palette.boundarylight

let s:primary       = g:kaiser#palette.primary
let s:secondary     = g:kaiser#palette.secondary

let s:info          = g:kaiser#palette.info
let s:warning       = g:kaiser#palette.warning
let s:danger        = g:kaiser#palette.danger

let s:gradient3     = g:kaiser#palette.gradient3
let s:visual        = g:kaiser#palette.visual
let s:red           = g:kaiser#palette.red

let s:none          = ['NONE', 'NONE']


if has('nvim')
  for s:i in range(16)
    let g:terminal_color_{s:i} = g:kaiser#palette['color_' . s:i]
  endfor
endif

if has('terminal')
  let g:terminal_ansi_colors = []
  for s:i in range(16)
    call add(g:terminal_ansi_colors, g:kaiser#palette['color_' . s:i])
  endfor
endif


" User Configuration 
" -----------------------------------------------------------------------------

if !exists('g:kaiser_bold')
  let g:kaiser_bold = 1
endif

if !exists('g:kaiser_italic')
  let g:kaiser_italic = 1
endif

if !exists('g:kaiser_underline')
  let g:kaiser_underline = 1
endif

if !exists('g:kaiser_undercurl') && g:kaiser_underline != 0
  let g:kaiser_undercurl = 1
endif

if !exists('g:kaiser_inverse')
  let g:kaiser_inverse = 1
endif

if !exists('g:kaiser_colorterm')
  let g:kaiser_colorterm = 1
endif


" Script Helpers
" -----------------------------------------------------------------------------

let s:attrs = {
\ 'bold': g:kaiser_bold == 1 ? 'bold' : 0,
\ 'italic': g:kaiser_italic == 1 ? 'italic' : 0,
\ 'underline': g:kaiser_underline == 1 ? 'underline' : 0,
\ 'undercurl': g:kaiser_undercurl == 1 ? 'undercurl' : 0,
\ 'inverse': g:kaiser_inverse == 1 ? 'inverse' : 0,
\}

function! s:h(scope, fg, ...) " bg, attr_list, special
  let l:fg = copy(a:fg)
  let l:bg = get(a:, 1, ['NONE', 'NONE'])

  let l:attr_list = filter(get(a:, 2, ['NONE']), 'type(v:val) == 1')
  let l:attrs = len(l:attr_list) > 0 ? join(l:attr_list, ',') : 'NONE'

  " Falls back to coloring foreground group on terminals because
  " nearly all do not support undercurl
  let l:special = get(a:, 3, ['NONE', 'NONE'])
  if l:special[0] !=# 'NONE' && l:fg[0] ==# 'NONE' && !has('gui_running')
    let l:fg[0] = l:special[0]
    let l:fg[1] = l:special[1]
  endif

  let l:hl_string = [
  \ 'highlight', a:scope,
  \ 'guifg=' . l:fg[0], 'ctermfg=' . l:fg[1],
  \ 'guibg=' . l:bg[0], 'ctermbg=' . l:bg[1],
  \ 'gui=' . l:attrs, 'cterm=' . l:attrs,
  \ 'guisp=' . l:special[0],
  \]

  execute join(l:hl_string, ' ')
endfunction


" Kaiser Hightlight Groups
" -----------------------------------------------------------------------------

call s:h('KaiserBackground', s:none, s:background)
call s:h('KaiserBgBoundary', s:background, s:boundary)
call s:h('KaiserFgBoundaryLight', s:boundarylight)
call s:h('KaiserBoundarySignDanger', s:danger, s:boundary)
call s:h('KaiserBoundarySignWarning', s:warning, s:boundary)
call s:h('KaiserBoundarySignInfo', s:info, s:boundary)

call s:h('KaiserForeground', s:foreground)
call s:h('KaiserForegroundItalic', s:foreground, s:none, [s:attrs.italic])
call s:h('KaiserForegroundBold', s:foreground, s:none, [s:attrs.bold])
call s:h('KaiserForegroundUnderline', s:foreground, s:none, [s:attrs.underline])

call s:h('KaiserComments', s:comments, s:none, [s:attrs.italic])
call s:h('KaiserCommentsBold', s:comments, s:none, [s:attrs.bold])

call s:h('KaiserSelection', s:none, s:selection)
call s:h('KaiserFgSelection', s:selection)

call s:h('KaiserBgPrimary', s:none, s:primary)
call s:h('KaiserPrimary', s:primary)
call s:h('KaiserPrimaryBold', s:primary, s:none, [s:attrs.bold])
call s:h('KaiserPrimaryItalic', s:primary, s:none, [s:attrs.italic])

call s:h('KaiserSecondary', s:secondary)
call s:h('KaiserSecondaryBold', s:secondary, s:none, [s:attrs.bold])
call s:h('KaiserSecondaryItalic', s:secondary, s:none, [s:attrs.italic])

call s:h('KaiserInfo', s:info)
call s:h('KaiserInfoBold', s:info, s:none, [s:attrs.bold])
call s:h('KaiserInfoItalic', s:info, s:none, [s:attrs.italic])
call s:h('KaiserInfoInverse', s:info, s:background, [s:attrs.inverse, s:attrs.italic])

call s:h('KaiserWarning', s:warning)
call s:h('KaiserWarningBold', s:warning, s:none, [s:attrs.bold])
call s:h('KaiserWarningItalic', s:warning, s:none, [s:attrs.italic])
call s:h('KaiserWarningInverse', s:warning, s:background, [s:attrs.inverse, s:attrs.italic])

call s:h('KaiserBgDanger', s:none, s:danger)
call s:h('KaiserDanger', s:danger)
call s:h('KaiserDangerBold', s:danger, s:none, [s:attrs.bold])
call s:h('KaiserDangerItalic', s:danger, s:none, [s:attrs.italic])
call s:h('KaiserDangerInverse', s:danger, s:background, [s:attrs.inverse, s:attrs.italic])

call s:h('KaiserError', s:red, s:none, [], s:danger)

call s:h('KaiserErrorLine', s:none, s:none, [s:attrs.undercurl], s:danger)
call s:h('KaiserWarnLine', s:none, s:none, [s:attrs.undercurl], s:warning)
call s:h('KaiserInfoLine', s:none, s:none, [s:attrs.undercurl], s:primary)

call s:h('KaiserSearch', s:background, s:secondary)
call s:h('KaiserIncSearch', s:background, s:danger)
call s:h('KaiserVisual', s:none, s:visual)

" User Interface
" -----------------------------------------------------------------------------

set background=dark


call s:h('Normal', s:foreground, g:kaiser_colorterm || has('gui_running') ? s:background : s:none )

hi! link ColorColumn  KaiserBgBoundary
hi! link Conceal      KaiserPrimary
call s:h('CursorColumn', s:none, s:boundary)
call s:h('CursorLine', s:none, s:boundary)
hi! link CursorLineNr KaiserSecondary
hi! link Directory    KaiserPrimary
hi! link DiffAdd      KaiserInfoInverse
hi! link DiffAdded    KaiserInfo
hi! link DiffChange   KaiserWarningInverse
hi! link DiffChanged  KaiserWarning
hi! link DiffDelete   KaiserDangerInverse
hi! link DiffRemoved  KaiserDanger
call s:h('DiffText', s:background, s:warning, [s:attrs.inverse, s:attrs.italic])
hi! link ErrorMsg     KaiserBgDanger
call s:h('Folded', s:comments, s:boundary, [s:attrs.italic])
call s:h('FoldColumn', s:boundarysoft, s:boundarysoft)
hi! link IncSearch    KaiserIncSearch
hi! link LineNr       KaiserFgSelection
hi! link MatchParen   KaiserSecondaryBold
hi! link ModeMsg      KaiserSecondaryBold
hi! link MoreMsg      KaiserInfoBold
call s:h('NonText', s:boundarysoft)
call s:h('Pmenu', s:foreground, s:boundarysoft)
call s:h('PmenuSbar', s:none, s:boundary)
call s:h('PmenuSel', s:boundary, s:primary, [s:attrs.bold])
call s:h('PmenuThumb', s:none, s:primary)
hi! link Question     KaiserDangerBold
hi! link Search       KaiserSearch
hi! link SignColumn   KaiserBgBoundary
hi! link SpecialKey   KaiserSecondary
call s:h('StatusLine', s:none, s:boundary, [s:attrs.bold])
call s:h('StatusLineNC', s:comments, s:boundarysoft, [s:attrs.bold])
hi! link TabLine      KaiserBoundary
hi! link TabLineFill  KaiserBoundary
hi! link TabLineSel   KaiserPrimary
hi! link Title        KaiserPrimary
hi! link VertSplit    KaiserBgBoundary
hi! link Visual       KaiserVisual
hi! link VisualNOS    KaiserVisual
hi! link WarningMsg   KaiserWarningBold
call s:h('WildMenu', s:primary, s:boundarysoft,[s:attrs.bold])

" TODO

" Cursor	the character under the cursor 
" CursorIM	like Cursor, but used when in IME mode |CursorIM| 
" SpellBad	Word that is not recognized by the spellchecker. |spell| This will be combined with the highlighting used otherwise.
" SpellCap	Word that should start with a capital. |spell| This will be combined with the highlighting used otherwise.
" SpellLocal	Word that is recognized by the spellchecker as one that is used in another region. |spell| This will be combined with the highlighting used otherwise.  
" SpellRare	Word that is recognized by the spellchecker as one that is hardly ever used. |spell| This will be combined with the highlighting used otherwise.  
"

" Syntax
" -----------------------------------------------------------------------------

hi! link Comment        KaiserComments                  " anything that needs extra attention; mostly the keywords TODO FIXME and XXX
hi! link Todo           KaiserWarningInverse

hi! link Constant       KaiserPrimary	                " any constant
hi! link String         KaiserInfoBold
hi! link Character      KaiserDangerItalic              " a character constant: 'c', '\n'
hi! link Number	        KaiserDanger            	" a number constant: 234, 0xff
hi! link Boolean	KaiserDanger                    " a boolean constant: TRUE, false
hi! link Float	        KaiserDanger            	" a floating point constant: 2.3e10
"
hi! link Identifier	KaiserInfoItalic                " any variable name
hi! link Function       KaiserSecondary                 " function name (also: methods for classes)
hi! link Statement      KaiserPrimaryItalic             " any statement	

hi! link Conditional    KaiserPrimaryItalic             " if, then, else, endif, switch, etc.
hi! link Repeat         KaiserPrimaryItalic             " for, do, while, etc.
hi! link Label          KaiserPrimary                   " case, default, etc.
hi! link Operator       KaiserPrimary                  	" sizeof', '+', '*', etc.
hi! link Keyword        KaiserDanger                    " any other keyword
hi! link Exception      KaiserPrimary                   " try, catch, throw
"
hi! link PreProc        KaiserPrimary	                " generic Preprocessor
hi! link Include        KaiserPrimaryItalic	        " preprocessor #include
hi! link Define		KaiserPrimary                   " preprocessor #define
hi! link Macro		KaiserPrimary                   " same as Define
hi! link PreCondit	KaiserPrimary                   " preprocessor #if, #else, #endif, etc.

hi! link Type	        KaiserSecondary                 " int, long, char, etc.
hi! link StorageClass	KaiserPrimaryItalic             " static, register, volatile, etc.
hi! link Structure	KaiserInfoBold                  " struct, union, enum, etc.
hi! link Typedef	KaiserSecondary                 " A typedef

hi! link Special	KaiserWarningBold               " any special symbol
hi! link SpecialChar	KaiserWarningBold               " special character in a constant
hi! link Tag            KaiserWarningBold             	" you can use CTRL-] on this
hi! link Delimiter	KaiserPrimary                   " character that needs attention
hi! link SpecialComment	KaiserCommentsBold              " special things inside a comment
" Debug		debugging statements

hi! link Underlined     KaiserForegroundUnderline	" text that stands out, HTML links
"
" *Ignore		left blank, hidden  |hl-Ignore|
hi! link Error         KaiserErrorLine		        " any erroneous construct
