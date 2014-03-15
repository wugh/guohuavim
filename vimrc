runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Disable vi-compatibility
set nocompatible   

" maps
let mapleader="," 
map <Leader>? :Helptags<CR>

" Powerline fancy
set rtp+=/home/tom/Projects/powerline-daemon/powerline/bindings/vim
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
"let g:Powerline_symbols = 'fancy'

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
let g:molokai_original = 1
let g:rehash256 = 1
" color scheme for gui
if has("gui_running")
  colorscheme molokai
  "set guifont=Inconsolata\ for\ Powerline\ 11
  if has("win32")
    set guifont=Consolas:h12:cANSI
  elseif has("gui_gtk2")
    set guifont=Inconsolata\ 12
  endif
  "set gcr=a:blinkon0
  set columns+=40
  set lines=50
  set colorcolumn=80
else
  silent colorscheme molokai  " silent ignore warning
  set background=dark
endif

autocmd BufNewFile,BufRead *.php set ts=4 sw=4 sts=4 tw=80

" python-mode settings
" Disable pylint checking every save
" let g:pymode_lint_write = 0

" vim latex settings
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'

" setting syntastic
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
let g:syntastic_ignore_files = ['\.py$']

" nerd tree setting
map <C-n> :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif

" splite a line
set formatoptions+=mM
