set nocompatible   " Disable vi-compatibility
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

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

" color scheme for gui
if has("gui_running")
  colorscheme molokai
else
  silent  colorscheme myvivid  " silent ignore warning
endif

" settings for vim latex preview
let g:livepreview_previewer = 'mupdf'

