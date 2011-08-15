set nocp
set nu
set autoindent
set ts=4
set sts=4
set sw=4
set whichwrap=b,s,<,>,[,],h,l
set hlsearch
set hidden

filetype on
filetype plugin on
filetype indent on

set completeopt=longest,menu
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

set t_Co=256
colorscheme wargrey

let g:AutoComplPop_Behavior = { 
\ 'c': [ {'command' : "\<C-x>\<C-o>",
\ 'pattern' : ".",
\ 'repeat' : 0}
\ ] 
\}

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

nnoremap <silent> <F5> :NERDTree<CR>

let Grep_Path = '/bin/grep'
let Fgrep_Path = '/bin/fgrep' 
let Egrep_Path = '/bin/egrep' 
let Agrep_Path = '/usr/bin/agrep' 
let Grep_Find_Path = '/usr/bin/find'
let Grep_Xargs_Path = '/usr/bin/xargs'
let Grep_Default_Options = '-i'

nnoremap <silent> <F3> :Grep<CR>
nnoremap <silent> <F4> :Rgrep<CR>

let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", "<": ">"}
