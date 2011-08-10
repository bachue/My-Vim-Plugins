set nocp
set nu
set autoindent
set ts=4
set sts=4
set sw=4
set whichwrap=b,s,<,>,[,],h,l

filetype on
filetype plugin on
filetype indent on

set completeopt=longest,menu
set syntax=enable
set syntax=on

colorscheme evening
source $VIMRUNTIME/ftplugin/man.vim

autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_object = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_objectspace = 1
let g:SuperTabRetainCompletionType = 2
let g:SuperTabDefaultCompletionType = "<C-X><C-O>" 
