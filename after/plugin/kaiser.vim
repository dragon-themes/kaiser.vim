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


