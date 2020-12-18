if kaiser#should_abort('html')
    finish
endif

hi! link htmlTag         KaiserFgBoundaryLight
hi! link htmlEndTag      KaiserFgBoundaryLight
hi! link htmlArg         KaiserForegroundItalic
hi! link htmlTitle       KaiserForeground
hi! link htmlH1          KaiserForeground
hi! link htmlSpecialChar KaiserWarning
