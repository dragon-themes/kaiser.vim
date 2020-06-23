" -----------------------------------------------------------------------------
" Kaiser Theme
" @description: Based on Gruvbox color pallet for Vim
" @author: Ronaldo Santiago <setzerwolf@gmail.com>
" -----------------------------------------------------------------------------

scriptencoding utf8


" Initialisation: 
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


" Palette: 
" -----------------------------------------------------------------------------

let s:fg        = g:kaiser#palette.fg
let s:fg1       = g:kaiser#palette.fg1
let s:fg2       = g:kaiser#palette.fg2

let s:bg        = g:kaiser#palette.bg
let s:bg1       = g:kaiser#palette.bg1
let s:bg2       = g:kaiser#palette.bg2
let s:bg3       = g:kaiser#palette.bg3

let s:comment   = g:kaiser#palette.gray
let s:selection = g:kaiser#palette.bg3

let s:aqua      = g:kaiser#palette.aqua
let s:cyan      = g:kaiser#palette.cyan
let s:green     = g:kaiser#palette.green
let s:orange    = g:kaiser#palette.orange
let s:purple    = g:kaiser#palette.purple
let s:red       = g:kaiser#palette.red
let s:yellow    = g:kaiser#palette.yellow

let s:none      = ['NONE', 'NONE']


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


" User Configuration:
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


" Script Helpers:
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

