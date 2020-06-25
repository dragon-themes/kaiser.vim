" Palette: 
" -----------------------------------------------------------------------------

let g:kaiser#palette               = {}

" gradient block
let g:kaiser#palette.background    = ['#282828', 235] " 40-40-40
let g:kaiser#palette.boundary      = ['#3c3836', 237] " 60-56-47
let g:kaiser#palette.boundarysoft  = ['#504945', 239] " 80-73-69
let g:kaiser#palette.selection     = ['#7c6f64', 243] " 124-111-100
let g:kaiser#palette.gradient3     = ['#bdae93', 248] " 189-174-147 [not used]
let g:kaiser#palette.boundarylight = ['#a89984', 246] " 168-153-132
let g:kaiser#palette.foreground    = ['#ebdbb2', 223] " 235-219-178

" colorful block
let g:kaiser#palette.primary       = ['#83a598', 109] " 131-165-152
let g:kaiser#palette.secondary     = ['#fabd2f', 214] " 250-189-47

let g:kaiser#palette.warning       = ['#b8bb26', 142] " 184-187-38
let g:kaiser#palette.info          = ['#8ec07c', 108] " 142-192-124
let g:kaiser#palette.danger        = ['#fe8019', 208] " 254-128-25

let g:kaiser#palette.comments      = ['#928374', 245] " 146-131-116
let g:kaiser#palette.visual        = ['#908658', 108] " 211-134-155 [not used]
let g:kaiser#palette.red           = ['#fb4934', 167] " 251-73-52   [not used]


" ANSI
" -----------------------------------------------------------------------------

let g:kaiser#palette.color_0  = '#282828' " 
let g:kaiser#palette.color_1  = '#cc241d' " 204-36-29
let g:kaiser#palette.color_2  = '#98971a' " 152-151-26
let g:kaiser#palette.color_3  = '#d79921' " 215-153-33'
let g:kaiser#palette.color_4  = '#458588' " 69-133-136
let g:kaiser#palette.color_5  = '#b16286' " 177-98-134
let g:kaiser#palette.color_6  = '#689d6a' " 104-157-106
let g:kaiser#palette.color_7  = '#ebdbb2' " 
let g:kaiser#palette.color_8  = '#928374' " 
let g:kaiser#palette.color_9  = '#fb4934' " 
let g:kaiser#palette.color_10 = '#b8bb26' " 
let g:kaiser#palette.color_11 = '#fabd2f' " 
let g:kaiser#palette.color_12 = '#83a598' " 
let g:kaiser#palette.color_13 = '#d3869b' " 
let g:kaiser#palette.color_14 = '#8ec07c' " 
let g:kaiser#palette.color_15 = '#a89984' " 

" Helper function that takes a variadic list of filetypes as args and returns
" whether or not the execution of the ftplugin should be aborted.
func! kaiser#should_abort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'kaiser'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
