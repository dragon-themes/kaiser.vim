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
