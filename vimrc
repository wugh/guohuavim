runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Disable vi-compatibility
set nocompatible   

" maps
let mapleader="," 
map <Leader>? :Helptags<CR>

" Vim Encoding setting
" set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencodings=ucs-bom,utf-8,gb2312,cp936,gb18030,big5,euc-jp,euc-kr
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

autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=80
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=80
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=4 shiftwidth=4 softtabstop=4 et
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=80
autocmd FileType mkd setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=80

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

" cursor blinking
"set gcr=a:block-blinkon0 

" SnipMate trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
imap <C-c> <Plug>snipMateNextOrTrigger

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
