highlight clear

if exists("syntax_on")
  syntax reset
endif

exec "source " . expand('<sfile>:p:h') . "/default-light.vim"

let colors_name = "dim"

" In diffs, added lines are green, changed lines are yellow, deleted lines are
" red, and changed text (within a changed line) is bright yellow and bold.
highlight DiffAdd    ctermfg=0 ctermbg=2
highlight DiffChange ctermfg=0 ctermbg=3
highlight DiffDelete ctermfg=0 ctermbg=1
highlight DiffText   ctermfg=0 ctermbg=11 cterm=bold

" Invert selected lines in visual mode
highlight Visual     ctermfg=NONE ctermbg=NONE cterm=inverse

" Dim line numbers, comments and color columns
if &background == "light"
  highlight LineNr      ctermfg=7
  highlight Comment     ctermfg=7
  highlight ColorColumn ctermfg=8 ctermbg=7 
  highlight Folded      ctermfg=8 ctermbg=7
  highlight FoldColumn  ctermfg=8 ctermbg=7
else
  highlight LineNr      ctermfg=8
  highlight Comment     ctermfg=8
  highlight ColorColumn ctermfg=7 ctermbg=8
  highlight Folded      ctermfg=7 ctermbg=8
  highlight FoldColumn  ctermfg=7 ctermbg=8
endif
