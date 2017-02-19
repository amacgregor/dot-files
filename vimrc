""""""""""""""""""""""""""""""""""
" Allan MacGregor Vimrc configuration 
"""""""""""""""""""""""""""""""""""""
set nocompatible
syntax on
set nowrap
set encoding=utf8

"""" START Vundle Configuration 

" Disable file type for vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Vundle Plugin list
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'jakedouglas/exuberant-ctags'
Plugin 'tpope/vim-fugitive'
Plugin 'kablamo/vim-git-log'
Plugin 'gregsexton/gitv'
Plugin 'godlygeek/tabular'
Plugin 'tobyS/vmustache'
Plugin 'tobyS/pdv'
Plugin 'tomtom/tcomment_vim'
Plugin 'reedes/vim-pencil'
Plugin 'janko-m/vim-test'
Plugin 'benmills/vimux'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'phpvim/phpcd.vim'
Plugin 'Townk/vim-autoclose'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'jaxbot/github-issues.vim'
Plugin 'ervandew/supertab'
Plugin 'ryanoasis/vim-devicons'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'BufOnly.vim'


" Elixir Support 
Plugin 'elixir-lang/vim-elixir'
Plugin 'mmorearty/elixir-ctags'
Plugin 'mattreduce/vim-mix'
Plugin 'avdgaag/vim-phoenix'
Plugin 'BjRo/vim-extest'
Plugin 'frost/vim-eh-docs'
Plugin 'slashmili/alchemist.vim'
Plugin 'tpope/vim-endwise'
Plugin 'jadercorrea/elixir_generator.vim'

" Elm Support
Plugin 'lambdatoast/elm.vim'

" Theme
Plugin 'sjl/badwolf'
Plugin 'tomasr/molokai'
Plugin 'morhetz/gruvbox'
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'junegunn/limelight.vim'
Plugin 'mkarmona/colorsbox'
Plugin 'romainl/Apprentice'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'chriskempson/base16-vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'AlessandroYorba/Sierra'
Plugin 'daylerees/colour-schemes'
Plugin 'effkay/argonaut.vim'

Plugin 'LanguageTool'

"Plugin 'joonty/vim-phpqa'
"Plugin 'rafi/vim-phpspec'
"Plugin 'powerline/powerline'
"Plugin 'SirVer/ultisnips'

" OSX stupid backspace fix
set backspace=indent,eol,start

call vundle#end()            " required
filetype plugin indent on    " required

"""" END Vundle Configuration 

map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>

" Show linenumbers
set number
set ruler

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" PHP documenter script bound to Control-P
autocmd FileType php inoremap <C-p> <ESC>:call pdv#DocumentWithSnip()<CR>i
autocmd FileType php nnoremap <C-p> :call pdv#DocumentWithSnip()<CR>
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
autocmd FileType php setlocal omnifunc=phpcd#CompletePHP


" Theme...
set t_Co=256
let base16colorspace=256  " Access colors present in 256 colorspace
syntax on
colorscheme base16-default-dark
set background=dark
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 
let g:sierra_Midnight = 1

let test#strategy = "vimux"
let g:Powerline_symbols = 'fancy'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 
let g:airline_theme='hybrid'

" source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2

let g:phpqa_codesniffer_args = "--standard=PSR2"

augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'

let g:languagetool_jar  = '/opt/languagetool/languagetool-commandline.jar'

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>


" Vimux
"map <silent> <LocalLeader>rl :wa<CR> :VimuxRunLastCommand<CR>
"map <silent> <LocalLeader>vi :wa<CR> :VimuxInspectRunner<CR>
"map <silent> <LocalLeader>vk :wa<CR> :VimuxInterruptRunner<CR>
"map <silent> <LocalLeader>vx :wa<CR> :VimuxCloseRunner<CR>
"map <silent> <LocalLeader>vp :VimuxPromptCommand<CR>
"vmap <silent> <LocalLeader>vs "vy :call VimuxRunCommand(@v)<CR>
"nmap <silent> <LocalLeader>vs vip<LocalLeader>vs<CR>
"map <silent> <LocalLeader>ds :call VimuxRunCommand('clear; grep -E "^ *describe[ \(]\|^ *context[ \(]\|^ *it[ \(]" ' . bufname("%"))<CR>
"
"map <silent> <LocalLeader>rt :!ctags -R --exclude=".git\|.svn\|log\|tmp\|db\|pkg" --extra=+f --langmap=Lisp:+.clj<CR>
"
"map <silent> <LocalLeader>cj :!clj %<CR>
"
"map <silent> <LocalLeader>gd :e product_diff.diff<CR>:%!git diff<CR>:setlocal buftype=nowrite<CR>
"map <silent> <LocalLeader>pd :e product_diff.diff<CR>:%!svn diff<CR>:setlocal buftype=nowrite<CR>
"
"map <silent> <LocalLeader>nh :nohls<CR>
"
"map <silent> <LocalLeader>bd :bufdo :bd<CR>
"
"cnoremap <Tab> <C-L><C-D>
"
"nnoremap <silent> k gk
"nnoremap <silent> j gj
"nnoremap <silent> Y y$

map <silent> <LocalLeader>ws :highlight clear ExtraWhitespace<CR>

" Elixir Tagbar config
let g:tagbar_type_elixir = {
    \ 'ctagstype' : 'elixir',
    \ 'kinds' : [
        \ 'f:functions',
        \ 'functions:functions',
        \ 'c:callbacks',
        \ 'd:delegates',
        \ 'e:exceptions',
        \ 'i:implementations',
        \ 'a:macros',
        \ 'o:operators',
        \ 'm:modules',
        \ 'p:protocols',
        \ 'r:records',
        \ 't:tests'
    \ ]
    \ }


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"""""""""""""""""""""""""""""""
""" Support for fzf
"""""""""""""""""""""""""""""""

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

" Advanced customization using autoload functions
inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

" Git issues complate 
let g:github_access_token = "e6fb845bd306a3ca7f086cef82732d1d5d9ac8e0"

let g:alchemist#elixir_erlang_src = "/Users/amacgregor/Projects/Github/alchemist-source"

autocmd FileType elixir nnoremap <buffer> <leader>h :call alchemist#exdoc()<CR>
autocmd FileType elixir nnoremap <buffer> <leader>d :call alchemist#exdef()<CR>

let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
":set completeopt=longest,menuone
