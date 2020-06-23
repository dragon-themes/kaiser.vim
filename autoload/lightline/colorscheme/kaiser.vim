let s:bg     = g:kaiser#palette.bg
let s:bg1    = g:kaiser#palette.bg1
let s:bg2    = g:kaiser#palette.bg2
let s:bg3    = g:kaiser#palette.bg3

let s:fg     = g:kaiser#palette.fg 
let s:fg2    = g:kaiser#palette.fg2

let s:aqua   = g:kaiser#palette.aqua
let s:cyan   = g:kaiser#palette.cyan
let s:green  = g:kaiser#palette.green
let s:orange = g:kaiser#palette.orange
let s:yellow = g:kaiser#palette.yellow

if exists('g:lightline')

  let s:p = {'normal':{}, 'inactive':{}, 'insert':{}, 'replace':{}, 'visual':{}, 'tabline':{}, 'terminal':{}}
  let s:p.normal.left     = [ [ s:bg, s:fg2, 'bold' ], [ s:fg2, s:bg2 ] ]
  let s:p.normal.right    = [ [ s:bg, s:fg2 ], [ s:fg2, s:bg2 ] ]
  let s:p.normal.middle   = [ [ s:fg2, s:bg1 ] ]
  let s:p.inactive.right  = [ [ s:bg3, s:bg1 ], [ s:bg3, s:bg1 ] ]
  let s:p.inactive.left   = [ [ s:bg3, s:bg1 ], [ s:bg3, s:bg1 ] ]
  let s:p.inactive.middle = [ [ s:bg3, s:bg1 ] ]
  let s:p.insert.left     = [ [ s:bg, s:cyan, 'bold' ], [ s:fg, s:bg2 ] ]
  let s:p.insert.right    = [ [ s:bg, s:cyan ], [ s:fg, s:bg2 ] ]
  let s:p.insert.middle   = [ [ s:fg2, s:bg1 ] ]
  let s:p.terminal.left   = [ [ s:bg, s:green, 'bold' ], [ s:fg, s:bg2 ] ]
  let s:p.terminal.right  = [ [ s:bg, s:green ], [ s:fg, s:bg2 ] ]
  let s:p.terminal.middle = [ [ s:fg2, s:bg1 ] ]
  let s:p.replace.left    = [ [ s:bg, s:aqua, 'bold' ], [ s:fg, s:bg2 ] ]
  let s:p.replace.right   = [ [ s:bg, s:aqua ], [ s:fg, s:bg2 ] ]
  let s:p.replace.middle  = [ [ s:fg2, s:bg1 ] ]
  let s:p.visual.left     = [ [ s:bg, s:orange, 'bold' ], [ s:bg, s:bg3 ] ]
  let s:p.visual.right    = [ [ s:bg, s:orange ], [ s:bg, s:bg3 ] ]
  let s:p.visual.middle   = [ [ s:fg2, s:bg1 ] ]
  let s:p.tabline.left    = [ [ s:fg2, s:bg2 ] ]
  let s:p.tabline.tabsel  = [ [ s:bg, s:fg2 ] ]
  let s:p.tabline.middle  = [ [ s:bg, s:bg3 ] ]
  let s:p.tabline.right   = [ [ s:bg, s:orange ] ]
  let s:p.normal.error    = [ [ s:bg, s:orange ] ]
  let s:p.normal.warning  = [ [ s:bg, s:yellow ] ]

  let g:lightline#colorscheme#kaiser#palette = lightline#colorscheme#flatten(s:p)

endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
