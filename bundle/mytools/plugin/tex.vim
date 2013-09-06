" Set colorscheme, enable conceal (except for
" subscripts/superscripts), and match conceal
" highlight to colorscheme
set cole=2
let g:tex_conceal= 'adgm'
hi Conceal guibg=White guifg=DarkMagenta

" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set sw=2
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:
