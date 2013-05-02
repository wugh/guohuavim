runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" maps
let mapleader="," 
map <Leader>? :Helptags<CR>

"
let g:Powerline_symbols = 'fancy'

" vim common settting
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
colorscheme vividchalk 
syntax on
filetype plugin indent on

