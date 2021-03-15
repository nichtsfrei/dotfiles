" Minimalist - A Material Color Scheme Darker
" Forked from
" Author:       Diki Ananta <diki1aap@gmail.com>
" Repository:   https://github.com/dikiaap/minimalist
" Version:      1.6
" License:      MIT

set background=dark
if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
set t_Co=256
let g:colors_name = "minimalist"

"""""""""""""""""""""""
" General
"""""""""""""""""""""""
hi ColorColumn      ctermfg=NONE    ctermbg=233     cterm=NONE
hi Cursor           ctermfg=234     ctermbg=255     cterm=NONE
hi CursorColumn     ctermfg=NONE    ctermbg=233     cterm=NONE
hi CursorLine       ctermfg=NONE    ctermbg=233     cterm=NONE
hi CursorLineNr     ctermfg=59      ctermbg=233     cterm=NONE
hi DiffAdd          ctermfg=255     ctermbg=64      cterm=bold
hi DiffChange       ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi DiffDelete       ctermfg=167     ctermbg=NONE    cterm=NONE
hi DiffText         ctermfg=255     ctermbg=24      cterm=bold
hi Directory        ctermfg=179     ctermbg=NONE    cterm=NONE
hi ErrorMsg         ctermfg=255     ctermbg=167     cterm=NONE
hi FoldColumn       ctermfg=117     ctermbg=NONE    cterm=NONE
hi Folded           ctermfg=242     ctermbg=NONE    cterm=NONE
hi IncSearch        ctermfg=234     ctermbg=75      cterm=NONE
hi LineNr           ctermfg=59      ctermbg=NONE    cterm=NONE
hi MatchParen       ctermfg=NONE    ctermbg=NONE    cterm=underline
hi MoreMsg          ctermfg=150     ctermbg=NONE    cterm=NONE
hi NonText          ctermfg=234     ctermbg=NONE    cterm=NONE
hi Normal           ctermfg=255     ctermbg=NONE    cterm=NONE
hi Pmenu            ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi PmenuSel         ctermfg=NONE    ctermbg=59      cterm=NONE
hi Question         ctermfg=150     ctermbg=NONE    cterm=NONE
hi Search           ctermfg=NONE    ctermbg=NONE    cterm=underline
hi SignColumn       ctermfg=NONE    ctermbg=NONE cterm=NONE
hi StatusLine       ctermfg=255     ctermbg=NONE    cterm=bold
hi StatusLineNC     ctermfg=255     ctermbg=NONE    cterm=NONE
hi Title            ctermfg=255     ctermbg=NONE    cterm=NONE
hi Underlined       ctermfg=NONE    ctermbg=NONE    cterm=NONE
hi VertSplit        ctermfg=239     ctermbg=NONE    cterm=NONE
hi Visual           ctermfg=NONE    ctermbg=236     cterm=NONE
hi WarningMsg       ctermfg=255     ctermbg=167     cterm=NONE
hi WildMenu         ctermfg=234     ctermbg=215     cterm=NONE
hi NERDTreeUp       ctermfg=167     ctermbg=NONE    cterm=NONE
hi NERDTreeDir      ctermfg=251     ctermbg=NONE    cterm=bold
hi NERDTreeDirSlash ctermfg=251     ctermbg=NONE    cterm=NONE
hi NERDTreeFile     ctermfg=241     ctermbg=NONE    cterm=NONE
hi NERDTreeCWD      ctermfg=167     ctermbg=NONE    cterm=NONE
hi NERDTreeOpenable ctermfg=167     ctermbg=NONE    cterm=NONE
hi NERDTreeClosable ctermfg=167     ctermbg=NONE    cterm=NONE
"""""""""""""""""""""""
" Syntax Highlighting
"""""""""""""""""""""""
hi Boolean          ctermfg=173     ctermbg=NONE    cterm=NONE
hi Character        ctermfg=140     ctermbg=NONE    cterm=NONE
hi Comment          ctermfg=253     ctermbg=NONE    cterm=NONE
hi Conditional      ctermfg=140     ctermbg=NONE    cterm=NONE
hi Constant         ctermfg=140     ctermbg=NONE    cterm=NONE
hi Define           ctermfg=140     ctermbg=NONE    cterm=NONE
hi Error            ctermfg=255     ctermbg=167     cterm=NONE
hi Float            ctermfg=140     ctermbg=NONE    cterm=NONE
hi Function         ctermfg=74      ctermbg=NONE    cterm=NONE
hi Identifier       ctermfg=255     ctermbg=NONE    cterm=NONE
hi Keyword          ctermfg=140     ctermbg=NONE    cterm=NONE
hi Label            ctermfg=186     ctermbg=NONE    cterm=NONE
hi Number           ctermfg=173     ctermbg=NONE    cterm=NONE
hi Operator         ctermfg=117     ctermbg=NONE    cterm=NONE
hi PreCondit        ctermfg=140     ctermbg=NONE    cterm=NONE
hi PreProc          ctermfg=140     ctermbg=NONE    cterm=NONE
hi Repeat           ctermfg=140     ctermbg=NONE    cterm=NONE
hi Special          ctermfg=117     ctermbg=NONE    cterm=NONE
hi SpecialComment   ctermfg=242     ctermbg=NONE    cterm=NONE
hi SpecialKey       ctermfg=59      ctermbg=237     cterm=NONE
hi SpellBad         ctermfg=255     ctermbg=167     cterm=NONE
hi SpellCap         ctermfg=255     ctermbg=74      cterm=NONE
hi SpellRare        ctermfg=255     ctermbg=140     cterm=NONE
hi SpellLocal       ctermfg=255     ctermbg=14      cterm=NONE
hi Statement        ctermfg=167     ctermbg=NONE    cterm=NONE
hi StorageClass     ctermfg=215     ctermbg=NONE    cterm=NONE
hi String           ctermfg=150     ctermbg=NONE    cterm=NONE
hi Structure        ctermfg=215     ctermbg=NONE    cterm=NONE
hi Tag              ctermfg=140     ctermbg=NONE    cterm=NONE
hi Todo             ctermfg=74      ctermbg=234     cterm=inverse
hi Type             ctermfg=140     ctermbg=NONE    cterm=NONE

"""""""""""""""""""""""
" Supports
"""""""""""""""""""""""
hi cInclude             ctermfg=140     ctermbg=NONE    cterm=NONE
hi cOperator            ctermfg=74      ctermbg=NONE    cterm=NONE
hi cppStatement         ctermfg=74      ctermbg=NONE    cterm=NONE
hi cssAttr              ctermfg=173     ctermbg=NONE    cterm=NONE
hi cssAttrComma         ctermfg=231     ctermbg=NONE    cterm=NONE
hi cssBoxProp           ctermfg=152     ctermbg=NONE    cterm=NONE
hi cssBraces            ctermfg=117     ctermbg=NONE    cterm=NONE
hi cssClassName         ctermfg=215     ctermbg=NONE    cterm=NONE
hi cssColor             ctermfg=117     ctermbg=NONE    cterm=NONE
hi cssCommonAttr        ctermfg=74      ctermbg=NONE    cterm=NONE
hi cssFontAttr          ctermfg=150     ctermbg=NONE    cterm=NONE
hi cssFunctionName      ctermfg=75      ctermbg=NONE    cterm=NONE
hi cssNoise             ctermfg=117     ctermbg=NONE    cterm=NONE
hi cssProp              ctermfg=152     ctermbg=NONE    cterm=NONE
hi cssPseudoClass       ctermfg=140     ctermbg=NONE    cterm=NONE
hi cssPseudoClassId     ctermfg=140     ctermbg=NONE    cterm=NONE
hi cssTagName           ctermfg=167     ctermbg=NONE    cterm=NONE
hi cssUIAttr            ctermfg=173     ctermbg=NONE    cterm=NONE
hi cssUnitDecorators    ctermfg=173     ctermbg=NONE    cterm=NONE
hi cssURL               ctermfg=255     ctermbg=NONE    cterm=NONE
hi cssValueLength       ctermfg=173     ctermbg=NONE    cterm=NONE
hi cssValueNumber       ctermfg=173     ctermbg=NONE    cterm=NONE
hi cssVendor            ctermfg=140     ctermbg=NONE    cterm=NONE
hi htmlArg              ctermfg=215     ctermbg=NONE    cterm=NONE
hi htmlEndTag           ctermfg=74      ctermbg=NONE    cterm=NONE
hi htmlScriptTag        ctermfg=74      ctermbg=NONE    cterm=NONE
hi htmlSpecialChar      ctermfg=215     ctermbg=NONE    cterm=NONE
hi htmlSpecialTagName   ctermfg=167     ctermbg=NONE    cterm=NONE
hi htmlTag              ctermfg=74      ctermbg=NONE    cterm=NONE
hi htmlTagName          ctermfg=167     ctermbg=NONE    cterm=NONE
hi javaScriptBoolean    ctermfg=173     ctermbg=NONE    cterm=NONE
hi javaScriptBraces     ctermfg=74      ctermbg=NONE    cterm=NONE
hi javaScriptConditional ctermfg=140    ctermbg=NONE    cterm=NONE
hi javaScriptException  ctermfg=140     ctermbg=NONE    cterm=NONE
hi javaScriptFunction   ctermfg=140     ctermbg=NONE    cterm=NONE
hi javaScriptGlobal     ctermfg=255     ctermbg=NONE    cterm=NONE
hi javaScriptIdentifier ctermfg=140     ctermbg=NONE    cterm=NONE
hi javaScriptLabel      ctermfg=140     ctermbg=NONE    cterm=NONE
hi javaScriptMessage    ctermfg=255     ctermbg=NONE    cterm=NONE
hi javaScriptNull       ctermfg=173     ctermbg=NONE    cterm=NONE
hi javaScriptNumber     ctermfg=173     ctermbg=NONE    cterm=NONE
hi javaScriptOperator   ctermfg=117     ctermbg=NONE    cterm=NONE
hi javaScriptParens     ctermfg=117     ctermbg=NONE    cterm=NONE
hi javaScriptRegexpString ctermfg=117   ctermbg=NONE    cterm=NONE
hi javaScriptRepeat     ctermfg=140     ctermbg=NONE    cterm=NONE
hi javaScriptSpecial    ctermfg=117     ctermbg=NONE    cterm=NONE
hi javaScriptStatement  ctermfg=140     ctermbg=NONE    cterm=NONE
hi markdownCode         ctermfg=140     ctermbg=NONE    cterm=NONE
hi markdownCodeBlock    ctermfg=140     ctermbg=NONE    cterm=NONE
hi markdownCodeDelimiter ctermfg=247    ctermbg=NONE    cterm=NONE
hi markdownError        ctermfg=167     ctermbg=NONE    cterm=NONE
hi markdownHeadingDelimiter ctermfg=150 ctermbg=NONE    cterm=NONE
hi markdownUrl          ctermfg=173     ctermbg=NONE    cterm=NONE
hi phpBoolean           ctermfg=173     ctermbg=NONE    cterm=NONE
hi phpClass             ctermfg=215     ctermbg=NONE    cterm=NONE
hi phpClassDelimiter    ctermfg=117     ctermbg=NONE    cterm=NONE
hi phpClassExtends      ctermfg=150     ctermbg=NONE    cterm=NONE
hi phpClassImplements   ctermfg=150     ctermbg=NONE    cterm=NONE
hi phpCommentStar       ctermfg=240     ctermbg=NONE    cterm=NONE
hi phpCommentTitle      ctermfg=240     ctermbg=NONE    cterm=NONE
hi phpDocComment        ctermfg=240     ctermbg=NONE    cterm=NONE
hi phpDocIdentifier     ctermfg=240     ctermbg=NONE    cterm=NONE
hi phpDocParam          ctermfg=240     ctermbg=NONE    cterm=NONE
hi phpDocTags           ctermfg=242     ctermbg=NONE    cterm=NONE
hi phpFunction          ctermfg=74      ctermbg=NONE    cterm=NONE
hi phpFunctions         ctermfg=74      ctermbg=NONE    cterm=NONE
hi phpIdentifier        ctermfg=255     ctermbg=NONE    cterm=NONE
hi phpInclude           ctermfg=140     ctermbg=NONE    cterm=NONE
hi phpKeyword           ctermfg=140     ctermbg=NONE    cterm=NONE
hi phpMethod            ctermfg=74      ctermbg=NONE    cterm=NONE
hi phpNumber            ctermfg=173     ctermbg=NONE    cterm=NONE
hi phpOperator          ctermfg=117     ctermbg=NONE    cterm=NONE
hi phpParent            ctermfg=117     ctermbg=NONE    cterm=NONE
hi phpMemberSelector    ctermfg=117     ctermbg=NONE    cterm=NONE
hi phpMethodsVar        ctermfg=255     ctermbg=NONE    cterm=NONE
hi phpStaticClasses     ctermfg=215     ctermbg=NONE    cterm=NONE
hi phpStringDouble      ctermfg=150     ctermbg=NONE    cterm=NONE
hi phpStringDelimiter   ctermfg=117     ctermbg=NONE    cterm=NONE
hi phpStringSingle      ctermfg=150     ctermbg=NONE    cterm=NONE
hi phpSuperglobals      ctermfg=255     ctermbg=NONE    cterm=NONE
hi phpType              ctermfg=140     ctermbg=NONE    cterm=NONE
hi phpUseClass          ctermfg=215     ctermbg=NONE    cterm=NONE
hi phpVarSelector       ctermfg=117     ctermbg=NONE    cterm=NONE
hi pythonConditional    ctermfg=140     ctermbg=NONE    cterm=NONE
hi pythonDecorator      ctermfg=140     ctermbg=NONE    cterm=NONE
hi pythonException      ctermfg=140     ctermbg=NONE    cterm=NONE
hi pythonFunction       ctermfg=74      ctermbg=NONE    cterm=NONE
hi pythonInclude        ctermfg=140     ctermbg=NONE    cterm=NONE
hi pythonNumber         ctermfg=173     ctermbg=NONE    cterm=NONE
hi pythonOperator       ctermfg=140     ctermbg=NONE    cterm=NONE
hi pythonRepeat         ctermfg=140     ctermbg=NONE    cterm=NONE
hi pythonStatement      ctermfg=140     ctermbg=NONE    cterm=NONE
hi pythonTodo           ctermfg=74      ctermbg=NONE    cterm=NONE
hi rubyBlockParameter   ctermfg=173     ctermbg=NONE    cterm=NONE
hi rubyClass            ctermfg=140     ctermbg=NONE    cterm=NONE
hi rubyClassVariable    ctermfg=117     ctermbg=NONE    cterm=NONE
hi rubyConstant         ctermfg=215     ctermbg=NONE    cterm=NONE
hi rubyControl          ctermfg=117     ctermbg=NONE    cterm=NONE
hi rubyException        ctermfg=74      ctermbg=NONE    cterm=NONE
hi rubyFunction         ctermfg=74      ctermbg=NONE    cterm=NONE
hi rubyInclude          ctermfg=74      ctermbg=NONE    cterm=NONE
hi rubyInstanceVariable ctermfg=117     ctermbg=NONE    cterm=NONE
hi rubyInterpolationDelimiter ctermfg=117 ctermbg=NONE  cterm=NONE
hi rubyOperator         ctermfg=140     ctermbg=NONE    cterm=NONE
hi rubyPseudoVariable   ctermfg=173     ctermbg=NONE    cterm=NONE
hi rubyRegexp           ctermfg=117     ctermbg=NONE    cterm=NONE
hi rubyRegexpDelimiter  ctermfg=117     ctermbg=NONE    cterm=NONE
hi rubyStringDelimiter  ctermfg=117     ctermbg=NONE    cterm=NONE
hi rubySymbol           ctermfg=150     ctermbg=NONE    cterm=NONE
hi sassClass            ctermfg=215     ctermbg=NONE    cterm=NONE
hi sassClassChar        ctermfg=215     ctermbg=NONE    cterm=NONE
hi sassFunction         ctermfg=255     ctermbg=NONE    cterm=NONE
hi sassInclude          ctermfg=74      ctermbg=NONE    cterm=NONE
hi sassVariable         ctermfg=173     ctermbg=NONE    cterm=NONE
hi shFunction           ctermfg=74      ctermbg=NONE    cterm=NONE
hi shOperator           ctermfg=117     ctermbg=NONE    cterm=NONE
hi shStatement          ctermfg=74      ctermbg=NONE    cterm=NONE
hi shTestOpr            ctermfg=117     ctermbg=NONE    cterm=NONE
hi shVariable           ctermfg=255     ctermbg=NONE    cterm=NONE
hi xmlAttrib            ctermfg=167     ctermbg=NONE    cterm=NONE
hi xmlCdataStart        ctermfg=117     ctermbg=NONE    cterm=NONE
hi xmlCdataCdata        ctermfg=117     ctermbg=NONE    cterm=NONE
hi xmlEndTag            ctermfg=167     ctermbg=NONE    cterm=NONE
hi xmlEntity            ctermfg=173     ctermbg=NONE    cterm=NONE
hi xmlEntityPunct       ctermfg=117     ctermbg=NONE    cterm=NONE
hi xmlEqual             ctermfg=117     ctermbg=NONE    cterm=NONE
hi xmlProcessingDelim   ctermfg=117     ctermbg=NONE    cterm=NONE
hi xmlTag               ctermfg=117     ctermbg=NONE    cterm=NONE
hi xmlTagName           ctermfg=167     ctermbg=NONE    cterm=NONE
