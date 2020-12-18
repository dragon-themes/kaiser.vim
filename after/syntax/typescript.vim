if kaiser#should_abort('typescript')
    finish
endif

" TSX
" -----------------------------------------------------------------------------

" highlight def link tsxTag htmlTag
" highlight def link tsxTagName Function
" highlight def link tsxIntrinsicTagName htmlTagName
" highlight def link tsxString String
" highlight def link tsxNameSpace Function
" highlight def link tsxCommentInvalid Error
" highlight def link tsxBlockComment Comment
" highlight def link tsxLineComment Comment
" highlight def link tsxAttrib Type
" highlight def link tsxEscJs tsxEscapeJs
" highlight def link tsxCloseTag htmlTag
" highlight def link tsxCloseString Identifier
"
" " HerringtonDarkHome/yats.vim
" " -----------------------------------------------------------------------------
hi! link typescriptImport                KaiserPrimaryItalic
hi! link typescriptFuncKeyword                KaiserPrimaryItalic
hi! link typescriptVariable                KaiserPrimaryItalic
hi! link typescriptExport                KaiserPrimaryItalic

hi! link typescriptUnaryOp                                  KaiserPrimary
hi! link typescriptBinaryOp                                  KaiserPrimary
hi! link typescriptTernaryOp                                  KaiserPrimary
hi! link typescriptSymbols                                  KaiserPrimary
hi! link typescriptOperator                                  KaiserPrimary
hi! link typescriptParens                                  KaiserFgBoundaryLight
hi! link typescriptFuncComma                                  KaiserFgBoundaryLight
hi! link typescriptEndColons                                  KaiserFgBoundaryLight
hi! link typescriptObjectColon                                  KaiserFgBoundaryLight


hi! link typescriptFuncArg                                  KaiserWarningItalic
hi! link typescriptSymbols                                  KaiserPrimary
hi! link typescriptSymbols                                  KaiserPrimary

  " HiLink typescriptAsyncFuncKeyword     Keyword
  " HiLink typescriptObjectAsyncKeyword   Keyword
  " HiLink typescriptAsyncFor             Keyword
  " HiLink typescriptFuncKeyword          Keyword
  " HiLink typescriptAsyncFunc            Keyword
  " HiLink typescriptArrowFunc            Type
  " HiLink typescriptFuncName             Function
  " HiLink typescriptFuncArg              PreProc
  " HiLink typescriptArrowFuncArg         PreProc
  " HiLink typescriptFuncComma            Operator

