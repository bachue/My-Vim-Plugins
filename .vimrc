set nocp
set nu
set autoindent
set ts=4
set sts=4
set sw=4
set whichwrap=b,s,<,>,[,],h,l
set hlsearch
set hidden
set incsearch
set linebreak
set showbreak=>>
set smartindent
set wildmenu
set wildmode=list:longest,full
set switchbuf=usetab,newtab

map <C-Tab> gt
imap <C-Tab> <Esc>gt
cmap <C-Tab> <Esc>gt

map <C-S-Tab> gT
imap <C-S-Tab> <Esc>gT
cmap <C-S-Tab> <Esc>gT

for i in [1, 2, 3, 4, 5, 6, 7, 8, 9]
	execute 'map <M-' . i . '> ' . i . 'gt'
	execute 'imap <M-' . i . '> <Esc>' . i . 'gt'
	execute 'cmap <M-' . i . '> <Esc>' . i . 'gt'
endfor

set undodir=~/.tmp/undodir
set undofile

set directory=~/.tmp/swapdir

set backup
set backupdir=~/.tmp/backupdir

noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-H> <C-W>h
noremap <C-L> <C-W>l

noremap <C-Down> <C-W>j
noremap <C-Right> <C-W>k
noremap <C-Left> <C-W>h
noremap <C-Right> <C-W>l

nmap ,& /<C-R><C-W><CR>
nmap ,* :%s/<C-R><C-W>/

" ALT-[1-9] is switch to specified tab
for i in [1, 2, 3, 4, 5, 6, 7, 8, 9]
	execute 'map <M-' . i . '> ' . i . 'gt'
	execute 'imap <M-' . i . '> <Esc>' . i . 'gt'
	execute 'cmap <M-' . i . '> <Esc>' . i . 'gt'
endfor

filetype on
filetype plugin on
filetype indent on

autocmd BufEnter * silent! lcd %:p:h

nnoremap <silent> <F5> :TlistToggle <CR>

"set dictionary=/usr/share/dict/words

set completeopt+=longest,menu,preview
syntax enable
syntax on

source $VIMRUNTIME/ftplugin/man.vim

setl omnifunc=nullcomplete#Complete

if has("autocmd") && exists("+omnifunc")
	autocmd Filetype *
				\ if &omnifunc == "" |
				\   setlocal omnifunc=syntaxcomplete#Complete |
				\ endif
endif

autocmd FileType * setl omnifunc=nullcomplete#Complete
autocmd FileType python setl omnifunc=pythoncomplete#Complete
autocmd FileType javascript setl omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html setl omnifunc=htmlcomplete#CompleteTags noci
autocmd FileType css setl omnifunc=csscomplete#CompleteCSS noci
autocmd FileType xml setl omnifunc=xmlcomplete#CompleteTags
autocmd FileType php setl omnifunc=phpcomplete#CompletePHP
autocmd FileType c setl omnifunc=ccomplete#Complete
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_object = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_objectspace = 1
autocmd FileType ruby,cucumber set ts=2 sw=2 expandtab

set t_Co=256
colorscheme wargrey

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplorerMoreThanOne=0

nnoremap <silent> <F3> :NERDTree<CR>

let Grep_Path = '/bin/grep'
let Fgrep_Path = '/bin/fgrep' 
let Egrep_Path = '/bin/egrep' 
let Agrep_Path = '/usr/bin/agrep' 
let Grep_Find_Path = '/usr/bin/find'
let Grep_Xargs_Path = '/usr/bin/xargs'
let Grep_Default_Options = '-i'

nnoremap <silent> <F4> :Rgrep<CR>

map <F6> :BufExplorer<CR>
imap <F6> <Esc><F6>

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextDiscoverDiscovery = ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]

let g:ragtag_global_maps = 1 
let g:acp_behaviorSnipmateLength = 1

set laststatus=2
set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]\ %=[%{GitBranch()}]

let Tlist_Use_Right_Window = 1
let Tlist_Use_SingleClick = 1
autocmd BufWritePost * :TlistUpdate

autocmd VimEnter * :Alias q qall
autocmd VimEnter * :Alias wq wqall
autocmd VimEnter * :Alias W w
