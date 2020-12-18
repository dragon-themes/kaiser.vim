if kaiser#should_abort('javascript')
    finish
endif

" JSX
" -----------------------------------------------------------------------------

hi! link jsxAttrib                              KaiserWarningItalic
hi! link jsxTagName                             KaiserPrimary
hi! link jsxComponentName                       KaiserSecondary
hi! link jsxCloseString                         KaiserFgBoundaryLight
hi! link jsxBraces                              KaiserFgBoundaryLight
hi! link jsxEqual                               KaiserPrimary

" pangloss/vim-javascript
" -----------------------------------------------------------------------------

" Default Override
hi! link jsFuncArgs                             KaiserWarningItalic
hi! link jsObjectKey                            KaiserWarningItalic
" hi! link jsObjectProp                         Normal
hi! link Noise                                  KaiserFgBoundaryLight

" Syntax

" hi! link jsEnvComment                         PreProc
" hi! link jsParensRepeat                       jsParens
" hi! link jsParensSwitch                       jsParens
" hi! link jsParensCatch                        jsParens
" hi! link jsCommentTodo                        Todo
" hi! link jsString                             String
" hi! link jsObjectKeyString                    String
" hi! link jsTemplateString                     String
" hi! link jsObjectStringKey                    String
" hi! link jsClassStringKey                     String
" hi! link jsTaggedTemplate                     StorageClass
" hi! link jsTernaryIfOperator                  Operator
" hi! link jsRegexpString                       String
" hi! link jsRegexpBoundary                     SpecialChar
" hi! link jsRegexpQuantifier                   SpecialChar
" hi! link jsRegexpOr                           Conditional
" hi! link jsRegexpMod                          SpecialChar
" hi! link jsRegexpBackRef                      SpecialChar
" hi! link jsRegexpGroup                        jsRegexpString
" hi! link jsRegexpCharClass                    Character
" hi! link jsCharacter                          Character
" hi! link jsPrototype                          Special
" hi! link jsConditional                        Conditional
" hi! link jsBranch                             Conditional
" hi! link jsLabel                              Label
" hi! link jsReturn                             Statement
" hi! link jsRepeat                             Repeat
" hi! link jsDo                                 Repeat
" hi! link jsStatement                          Statement
" hi! link jsException                          Exception
" hi! link jsTry                                Exception
" hi! link jsFinally                            Exception
" hi! link jsCatch                              Exception
" hi! link jsAsyncKeyword                       Keyword
" hi! link jsForAwait                           Keyword
" hi! link jsArrowFunction                      Type
hi! link jsFunction                             KaiserPrimaryItalic
" hi! link jsGenerator                          jsFunction
" hi! link jsArrowFuncArgs                      jsFuncArgs
" hi! link jsFuncName                           Function
" hi! link jsFuncCall                           Function
" hi! link jsClassFuncName                      jsFuncName
" hi! link jsObjectFuncName                     Function
" hi! link jsArguments                          Special
" hi! link jsError                              Error
" hi! link jsParensError                        Error
hi! link jsOperatorKeyword                      KaiserPrimaryItalic
" hi! link jsOperator                           Operator
" hi! link jsOf                                 Operator
" hi! link jsStorageClass                       StorageClass
hi! link jsClassKeyword                         KaiserPrimaryItalic
hi! link jsExtendsKeyword                       KaiserPrimaryItalic
hi! link jsThis                                 KaiserDanger
" hi! link jsSuper                              Constant
" hi! link jsNan                                Number
hi! link jsNull                                 Number
hi! link jsUndefined                            Number
" hi! link jsNumber                             Number
" hi! link jsFloat                              Float
" hi! link jsBooleanTrue                        Boolean
" hi! link jsBooleanFalse                       Boolean
" hi! link jsObjectColon                        jsNoise
" hi! link jsNoise                              Noise
" hi! link jsDot                                Noise
" hi! link jsBrackets                           Noise
" hi! link jsParens                             Noise
" hi! link jsBraces                             Noise
" hi! link jsFuncBraces                         Noise
" hi! link jsFuncParens                         Noise
" hi! link jsClassBraces                        Noise
" hi! link jsClassNoise                         Noise
" hi! link jsIfElseBraces                       Noise
" hi! link jsTryCatchBraces                     Noise
" hi! link jsModuleBraces                       Noise
" hi! link jsObjectBraces                       Noise
" hi! link jsObjectSeparator                    Noise
" hi! link jsFinallyBraces                      Noise
" hi! link jsRepeatBraces                       Noise
" hi! link jsSwitchBraces                       Noise
" hi! link jsSpecial                            Special
hi! link jsTemplateBraces                       KaiserDangerBold
hi! link jsGlobalObjects                        KaiserDanger
hi! link jsGlobalNodeObjects                    KaiserPrimaryItalic
" hi! link jsExceptions                         Constant
" hi! link jsBuiltins                           Constant
" hi! link jsImport                             Include
" hi! link jsExport                             Include
" hi! link jsExportDefault                      StorageClass
" hi! link jsExportDefaultGroup                 jsExportDefault
" hi! link jsModuleAs                           Include
" hi! link jsModuleComma                        jsNoise
" hi! link jsModuleAsterisk                     Noise
" hi! link jsFrom                               Include
" hi! link jsDecorator                          Special
" hi! link jsDecoratorFunction                  Function
" hi! link jsParensDecorator                    jsParens
" hi! link jsFuncArgOperator                    jsFuncArgs
" hi! link jsClassProperty                      jsObjectKey
" hi! link jsObjectShorthandProp                jsObjectKey
" hi! link jsSpreadOperator                     Operator
" hi! link jsRestOperator                       Operator
" hi! link jsRestExpression                     jsFuncArgs
" hi! link jsSwitchColon                        Noise
" hi! link jsClassMethodType                    Type
" hi! link jsObjectMethodType                   Type
" hi! link jsClassDefinition                    jsFuncName
" hi! link jsBlockLabel                         Identifier
" hi! link jsBlockLabelKey                      jsBlockLabel
"
hi! link jsDestructuringBlock                   KaiserWarningItalic
" hi! link jsDestructuringBraces                Noise
" hi! link jsDestructuringProperty              jsFuncArgs
" hi! link jsDestructuringAssignment            jsObjectKey
" hi! link jsDestructuringNoise                 Noise
" hi! link jsDestructuringPropertyValue         Normal
" hi! link jsDestructuringValue        
" hi! link jsDestructuringValueAssignment   
" hi! link jsDestructuringPropertyComputed


" hi! link jsCommentFunction                    jsComment
" hi! link jsCommentClass                       jsComment
" hi! link jsCommentIfElse                      jsComment
" hi! link jsCommentRepeat                      jsComment
"
" hi! link jsDomErrNo                           Constant
" hi! link jsDomNodeConsts                      Constant
" hi! link jsDomElemAttrs                       Label
" hi! link jsDomElemFuncs                       PreProc
"
" hi! link jsHtmlEvents                         Special
" hi! link jsHtmlElemAttrs                      Label
" hi! link jsHtmlElemFuncs                      PreProc
"
" hi! link jsCssStyles                          Label
