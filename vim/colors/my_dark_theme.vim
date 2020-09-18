" ==============================================================================
"   Name:        One Half Dark
"   Author:      Son A. Pham <sp@sonpham.me>
"   Url:         https://github.com/sonph/onehalf
"   License:     The MIT License (MIT)
"
"   A dark vim color scheme based on Atom's One. See github.com/sonph/onehalf
"   for installation instructions, a light color scheme, versions for other
"   editors/terminals, and a matching theme for vim-airline.
" ==============================================================================

set background=dark
highlight clear
syntax reset

let g:colors_name="onehalfdark"
let colors_name="onehalfdark"

let s:black       = { "gui": "#000000", "cterm": "16" }
let s:blue        = { "gui": "#61afef", "cterm": "75"  }
let s:white       = { "gui": "#ffffff", "cterm": "231" }

let s:fg          = s:white
let s:bg          = s:black
" comment
let s:comment_fg  = { "gui": "#d0d0d0", "cterm": "252" }
let s:gutter_bg   = { "gui": "#282c34", "cterm": "234" }
let s:gutter_fg   = { "gui": "#919baa", "cterm": "234" }

let s:cursor_line = { "gui": "#1c1c1c", "cterm": "232" }
let s:color_col   = { "gui": "#1c1c1c", "cterm": "232" }
let s:selection   = { "gui": "#1c1c1c", "cterm": "234" }
let s:vertsplit   = { "gui": "#1c1c1c", "cterm": "234" }


function! s:h(group, fg, bg, attr)
  if type(a:fg) == type({})
    exec "hi " . a:group . " guifg=" . a:fg.gui . " ctermfg=" . a:fg.cterm
  else
    exec "hi " . a:group . " guifg=NONE cterm=NONE"
  endif
  if type(a:bg) == type({})
    exec "hi " . a:group . " guibg=" . a:bg.gui . " ctermbg=" . a:bg.cterm
  else
    exec "hi " . a:group . " guibg=NONE ctermbg=NONE"
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  else
    exec "hi " . a:group . " gui=NONE cterm=NONE"
  endif
endfun


" User interface colors {
call s:h("CursorLine", "", s:cursor_line, "")
call s:h("LineNr", s:fg, s:bg, "")
call s:h("CursorLineNr", s:fg, "", "")
call s:h("Pmenu", s:fg, s:bg, "")
call s:h("PmenuSel", s:fg, s:blue, "")
call s:h("PmenuSbar", "", s:selection, "")
call s:h("PmenuThumb", s:fg, s:bg, "")
call s:h("PmenuThumb", "", s:fg, "")
call s:h("StatusLine", s:blue, s:cursor_line, "")
call s:h("StatusLineNC", s:comment_fg, s:cursor_line, "")
call s:h("SignColumn", s:fg, "", "")
