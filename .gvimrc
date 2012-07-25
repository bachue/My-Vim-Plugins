colorscheme koehler

if has("unix") && !has("gui_macvim")
    set guifont=DejaVu\ Sans\ Mono\ 11
    set guifontwide=WenQuanYi\ Micro\ Hei\ 13
endif

if has("mac") || has("gui_macvim")
    set guifont=Bitstream\ Vera\ Sans\ Mono:h14
endif

set guioptions-=T
set guioptions-=L
set guioptions-=r
set guioptions-=b
set mouse=a

map <C-X> "+x
map <C-C> "+y
map <C-P> "+p

nnoremap <silent> <F7> :promptfind <CR>
nnoremap <silent> <F8> :promptrepl <CR>

let Tlist_Show_Menu = 1
