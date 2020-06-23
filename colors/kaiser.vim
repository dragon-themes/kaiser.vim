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

