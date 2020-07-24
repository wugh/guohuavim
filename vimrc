set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" vimrc default
Plugin 'tpope/vim-sensible'

" vim git
Plugin 'tpope/vim-fugitive'

" surround plugin
Plugin 'tpope/vim-surround'

" snip
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Plugin 'Valloric/YouCompleteMe'

" file search
Plugin 'junegunn/fzf.vim'
"Plugin 'Shougo/unite.vim'
"Plugin 'Shougo/unite-outline'
"Plugin 'ctrlpvim/ctrlp.vim'

" colorscheme
Plugin 'morhetz/gruvbox'

" status bar
Plugin 'bling/vim-airline'

" tmux
Plugin 'christoomey/vim-tmux-navigator'

" indent_guides
Plugin 'nathanaelkane/vim-indent-guides'

" python pep8 indent
Plugin 'hynek/vim-python-pep8-indent'

" tagbar
Plugin 'majutsushi/tagbar'

" vim go
Plugin 'fatih/vim-go'

Plugin 'solarnz/thrift.vim'

" ale
Plugin 'w0rp/ale'

" ag
Plugin 'rking/ag.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" colorscheme
set background=dark    " Setting dark mode
colorscheme gruvbox

" maps
let mapleader=","

" Vim Encoding setting
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr
if has("win32")
  set langmenu=zh_CN.UTF-8
  language message zh_CN.UTF-8
endif

" GUI font setting
if has("win32")
  set guifont=Consolas:h12:cANSI
elseif has("gui_gtk2")
  set guifont=Inconsolata-dz\ for\ Powerline\ 12
  set guifontwide=Microsoft\ Yahei\ 12,WenQuanYi\ Zen\ Hei\ 12
endif

" Common setting
set t_Co=256
set history=1000
set cursorline                  " Highlight current line
set colorcolumn=79              " Color column is 79
set showmode                    " Display the current mode
set backspace=indent,eol,start  " Backspace for dummies
set linespace=0                 " No extra spaces between rows
set number                      " Line numbers on
set showmatch                   " Show matching brackets/parenthesis
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive when upper case present
set wildmenu                    " Show list instead of just completing
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,<,>,[,]       " Backspace and cursor keys wrap too
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set foldenable                  " Auto fold code
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set nowrap                      " Do not wrap line
set formatoptions+=mM           " Break line as Chinese preference
set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current
set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)

cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" Restore cursor to file position in previous editing session
function! ResCur()
    if line("'\"") <= line("$")
        silent! normal! g`"
        return 1
    endif
endfunction
augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
augroup END

" Wrapped lines goes down/up to next row, rather than next line in file.
noremap j gj
noremap k gk
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" switch panel
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" buffer
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" setting syntastic
let g:syntastic_python_checkers = ['flake8']

" tab setting
autocmd FileType python setlocal tabstop=8 shiftwidth=4 softtabstop=4 expandtab
autocmd FileType sh setlocal tabstop=8 shiftwidth=4 softtabstop=4 expandtab
autocmd FileType cpp setlocal tabstop=8 shiftwidth=4 softtabstop=4 expandtab
autocmd FileType matlab setlocal tabstop=8 shiftwidth=4 softtabstop=4 expandtab
autocmd FileType json setlocal tabstop=8 shiftwidth=2 softtabstop=2 expandtab
autocmd BufRead,BufNewFile *.html setlocal tabstop=8 shiftwidth=2 softtabstop=2 expandtab
autocmd BufRead,BufNewFile *.js setlocal tabstop=8 shiftwidth=2 softtabstop=2 expandtab
autocmd BufRead,BufNewFile *.tex setlocal tabstop=8 shiftwidth=2 softtabstop=2 expandtab

" indent guide
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

" unite file

nnoremap <leader>f :<C-u>Unite buffer file<CR>

au FileType python map <silent> <leader>b oimport pudb; pudb.set_trace()<esc>
au FileType python map <silent> <leader>B Oimport pudb; pudb.set_trace()<esc>

" tagbar
nmap <F8> :TagbarToggle<CR>

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" snip
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" ycm
nmap <leader>gd :YcmCompleter GoToDefinition <CR>
nnoremap <leader>gs :vsplit <bar> :YcmCompleter GoToDefinition <CR>
let g:ycm_auto_trigger=1
silent! py3 pass

" pylint
let b:ale_linters = {'python': ['pyls']}
let g:ale_completion_enabled = 1
set completeopt=menu,menuone,preview,noselect,noinsert

" goto file
map gf :vertical wincmd f<CR>

map <F1> 0iQ-I<Tab><Esc>j
map <F2> 0iA-I<Tab><Esc>j
map <F3> 0iQ-B<Tab><Esc>j
map <F4> 0iA-I<Tab><Esc>j
