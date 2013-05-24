colorscheme koehler

if has("unix") && !has("gui_macvim")
    set guifont=DejaVu\ Sans\ Mono\ 11
    set guifontwide=WenQuanYi\ Micro\ Hei\ 13
endif

if has("mac") || has("gui_macvim")
    set guifont=Monaco:h14
endif

if has("gui_macvim")
	set showtabline=2
	set columns=80
	set lines=40
	map <D-F1> :set lines=1000 columns=1000 <CR>
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

set guitablabel=%{ShortGuiTabLabel()} 
function! ShortGuiTabLabel() 
	let label = '' 
	let bufnrlist = tabpagebuflist(v:lnum) 

	for bufnr in bufnrlist 
		if getbufvar(bufnr, "&modified") 
			let label = '+' 
			break 
		endif 
	endfor 

	let bufId = bufnrlist[tabpagewinnr(v:lnum) - 1] 
	let fn = bufname(bufId) 
	let lastSlash = strridx(fn, '\') 

	if lastSlash < 0 
		let lastSlash = strridx(fn, '/') 
	endif 
	return label . strpart(fn, lastSlash+1, strlen(fn)) 
endfunction 
