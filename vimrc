runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Disable vi-compatibility
set nocompatible   

" maps
let mapleader="," 
map <Leader>? :Helptags<CR>

" Powerline fancy
set t_Co=256
let g:Powerline_symbols = 'fancy'

" Vim Encoding setting
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set encoding=utf-8 " Necessary to show Unicode glyphs
set termencoding=utf-8

" vim common settting
set laststatus=2   " Always show the statusline
set number
set nowrap
syntax on
filetype plugin indent on

" molokai setting
let g:molokai_original = 1
let g:rehash256 = 1
" color scheme for gui
if has("gui_running")
  colorscheme molokai
  set guifont=Inconsolata\ for\ Powerline\ 11
  "set gcr=a:blinkon0
else
  silent colorscheme molokai  " silent ignore warning
  set background=dark
endif

autocmd BufNewFile,BufRead *.php set ts=4 sw=4 sts=4 tw=80

" vim latex settings
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
