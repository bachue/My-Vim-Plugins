colorscheme koehler

set guifont=DejaVu\ Sans\ Mono\ 11
set guifontwide=WenQuanYi\ Micro\ Hei
set guioptions-=T
set guioptions-=L
set guioptions-=r
set guioptions-=b
set mouse=a

map <C-X> "+x
map <C-C> "+y
map <C-P> "+p

nnoremap <silent> <F6> :promptfind <CR>
nnoremap <silent> <F7> :promptrepl <CR>

map <silent> <F2> :if &guioptions =~# 'm' <Bar>
        \set guioptions-=m <bar>
    \else <Bar>
        \set guioptions+=m <Bar>
    \endif<CR>
