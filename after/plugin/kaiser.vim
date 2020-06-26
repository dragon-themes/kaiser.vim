if kaiser#should_abort()
  finish
endif

" GitGutter
hi! link GitGutterAdd           KaiserBoundarySignInfo
hi! link GitGutterChange        KaiserBoundarySignWarning
hi! link GitGutterDelete        KaiserBoundarySignDanger
hi! link GitGutterChangeDelete  KaiserBoundarySignInfo


" Asynchronous Lint Engine: 

hi! link ALEError               KaiserErrorLine
hi! link ALEWarning             KaiserWarnLine
hi! link ALEInfo                KaiserInfoLine

hi! link ALEErrorSign           KaiserBoundarySignDanger
hi! link ALEWarningSign         KaiserBoundarySignWarning
hi! link ALEInfoSign            KaiserBoundarySignInfo

hi! link ALEVirtualTextError    KaiserDanger
hi! link ALEVirtualTextWarning  KaiserWarning
hi! link ALEVirtualTextInfo     KaiserInfo


" FZF

if exists('g:loaded_fzf') && ! exists('g:fzf_colors')
  let g:fzf_colors = {
    \ 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'KaiserDanger'],
    \ 'fg+':     ['fg', 'KaiserSecondary'],
    \ 'bg+':     ['bg', 'KaiserBoundary'],
    \ 'hl+':     ['fg', 'KaiserDanger'],
    \ 'info':    ['fg', 'KaiserInfo'],
    \ 'border':  ['fg', 'KaiserBoundary'],
    \ 'prompt':  ['fg', 'KaiserSecondary'], 
    \ 'pointer': ['fg', 'KaiserSecondary'],
    \ 'marker':  ['fg', 'KaiserDanger'],
    \ 'spinner': ['fg', 'KaiserSecondary'],
    \ 'header':  ['fg', 'KaiserBoundary'],
    \}
endif
