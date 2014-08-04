runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Disable vi-compatibility
set nocompatible   

" maps
let mapleader="," 
map <Leader>? :Helptags<CR>

" Vim Encoding setting
" set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr
set encoding=utf-8 " Necessary to show Unicode glyphs
set termencoding=utf-8
if has("win32")
  set langmenu=zh_CN.UTF-8
  language message zh_CN.UTF-8
endif

" vim common settting
set t_Co=256
filetype off
set laststatus=2   " Always show the statusline
set number
set nowrap
filetype plugin indent on
syntax on

" colorscheme setting
if has("gui_running")
  " color scheme for gui
  colorscheme molokai
  if has("win32")
    set guifont=Consolas:h12:cANSI
  elseif has("gui_gtk2")
    set guifont=Inconsolata-dz\ for\ Powerline\ 12
    set guifontwide=Microsoft\ Yahei\ 12,WenQuanYi\ Zen\ Hei\ 12
  endif
  "set gcr=a:blinkon0
  set columns+=40
  set lines=50
  set colorcolumn=80
else
  let g:rehash256 = 1
  "let g:molokai_original = 1
  silent colorscheme molokai  " silent ignore warning
  set background=dark
endif

autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=78
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=78
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=78
autocmd FileType mkd setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=78
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=78 expandtab

" vim latex settings
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

" setting syntastic
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']

" nerd tree setting
map <C-n> :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif

" splite a line
set formatoptions+=mM

" Powerline is replaced by airline
let g:airline_powerline_fonts = 1

" ultisnip setting
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file

" YCM
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
