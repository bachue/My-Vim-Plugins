colorscheme koehler

set guifont=DejaVu\ Sans\ Mono\ 11
set guifontwide=WenQuanYi\ Micro\ Hei
set guioptions-=m
set guioptions-=T
set guioptions-=L
set guioptions-=r
set guioptions-=b
set mouse=a

map <C-X> "+x
map <C-C> "+y
map <C-P> "+p

map <silent> <F2> :if &guioptions =~# 'T' <Bar>
        \set guioptions-=T <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=T <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>
