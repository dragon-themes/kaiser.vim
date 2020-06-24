let s:background = g:kaiser#palette.background
let s:bondary  = g:kaiser#palette.bondary
let s:gradient2  = g:kaiser#palette.gradient2
let s:selection  = g:kaiser#palette.selection

let s:foreground = g:kaiser#palette.foreground 
let s:gradient4  = g:kaiser#palette.gradient4

let s:success    = g:kaiser#palette.success
let s:primary    = g:kaiser#palette.primary
let s:warning    = g:kaiser#palette.warning
let s:danger     = g:kaiser#palette.danger
let s:secondary  = g:kaiser#palette.secondary

if exists('g:lightline')

  let s:p = {'normal':{}, 'inactive':{}, 'insert':{}, 'replace':{}, 'visual':{}, 'terminal':{}}
  let s:p.normal.left     = [ [ s:background, s:primary, 'bold' ], [ s:primary, s:gradient2 ] ]
  let s:p.normal.right    = [ [ s:background, s:gradient4 ], [ s:primary, s:gradient2 ] ]
  let s:p.normal.middle   = [ [ s:gradient4, s:bondary ] ]
  let s:p.insert.left     = [ [ s:background, s:secondary, 'bold' ], [ s:foreground, s:gradient2 ] ]
  let s:p.insert.right    = [ [ s:background, s:secondary ], [ s:foreground, s:gradient2 ] ]
  let s:p.insert.middle   = [ [ s:gradient4, s:bondary ] ]
  let s:p.visual.left     = [ [ s:background, s:danger, 'bold' ], [ s:background, s:selection ] ]
  let s:p.visual.right    = [ [ s:background, s:danger ], [ s:background, s:selection ] ]
  let s:p.visual.middle   = [ [ s:gradient4, s:bondary ] ]
  let s:p.replace.left    = [ [ s:background, s:secondary, 'bold' ], [ s:secondary, s:gradient2 ] ]
  let s:p.replace.right   = [ [ s:background, s:secondary ], [ s:secondary, s:gradient2 ] ]
  let s:p.replace.middle  = [ [ s:gradient4, s:bondary ] ]
  let s:p.inactive.right  = [ [ s:selection, s:bondary ], [ s:selection, s:bondary ] ]
  let s:p.inactive.left   = [ [ s:selection, s:bondary ], [ s:selection, s:bondary ] ]
  let s:p.inactive.middle = [ [ s:selection, s:bondary ] ]

  " TODO: Review Colors
  let s:p.terminal.left   = [ [ s:background, s:warning, 'bold' ], [ s:foreground, s:gradient2 ] ]
  let s:p.terminal.right  = [ [ s:background, s:warning ], [ s:foreground, s:gradient2 ] ]
  let s:p.terminal.middle = [ [ s:gradient4, s:bondary ] ]
  " let s:p.tabline.left    = [ [ s:gradient4, s:gradient2 ] ]
  " let s:p.tabline.tabsel  = [ [ s:background, s:gradient4 ] ]
  " let s:p.tabline.middle  = [ [ s:background, s:selection ] ]
  " let s:p.tabline.right   = [ [ s:background, s:danger ] ]
  "
  let s:p.normal.error    = [ [ s:background, s:danger ] ]
  let s:p.normal.warning  = [ [ s:background, s:warning ] ]

  let g:lightline#colorscheme#kaiser#palette = lightline#colorscheme#flatten(s:p)

endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
