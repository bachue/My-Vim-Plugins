set nocp
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
source ~/.vim/vundle.vim
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
"no use for a ruby/rails developer
"set cindent
"set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s)}
set wildmenu
set wildmode=list:longest,full
set switchbuf=usetab,newtab
set encoding=utf-8
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.so,*~
set expandtab
set shell=/bin/sh
set autoread

hi CursorLine cterm=underline ctermbg=darkgrey guibg=darkgrey
set cursorline!

set tags=./tags
set tags+=./TAGS
set tags+=~/.vim/cpptags
set tags+=~/.vim/systags

set undodir=~/.vim/.undodir
set undofile

set directory=~/.vim/.swapdir

set backup
set backupdir=~/.vim/.backupdir

map j gj
map k gk
map <Down> gj
map <Up> gk

map <C-J> <C-W>j
imap <C-J> <Esc><C-J>
cmap <C-J> <Esc><C-J>
map <C-K> <C-W>k
imap <C-K> <Esc><C-K>
cmap <C-K> <Esc><C-K>
map <C-H> <C-W>h
imap <C-H> <Esc><C-H>
cmap <C-H> <Esc><C-H>
map <C-L> <C-W>l
imap <C-L> <Esc><C-L>
cmap <C-L> <Esc><C-L>

map <C-Down> <C-W>j
imap <C-Down> <Esc><C-Down>
cmap <C-Down> <Esc><C-Down>
map <C-Up> <C-W>k
imap <C-Up> <Esc><C-Up>
cmap <C-Up> <Esc><C-Up>
map <C-Left> <C-W>h
imap <C-Left> <Esc><C-Left>
cmap <C-Left> <Esc><C-Left>
map <C-Right> <C-W>l
imap <C-Right> <Esc><C-Right>
cmap <C-Right> <Esc><C-Right>

map <F7> /<C-R><C-W><CR>
imap <F7> <Esc><F7>
cmap <F7> <Esc><F7>
map <F8> :%s/<C-R><C-W>/
imap <F8> <Esc><F8>
cmap <F8> <Esc><F8>

map <C-W><C-W> :clo<CR>
imap <C-W><C-W> <Esc><C-W><C-W>
cmap <C-W><C-W> <Esc><C-W><C-W>

" ALT-[1-9] is switch to specified tab
for i in [1, 2, 3, 4, 5, 6, 7, 8, 9]
	execute 'map <M-' . i . '> ' . i . 'gt'
	execute 'imap <M-' . i . '> <Esc>' . i . 'gt'
	execute 'cmap <M-' . i . '> <Esc>' . i . 'gt'
	execute 'map <D-' . i . '> ' . i . 'gt'
	execute 'imap <D-' . i . '> <Esc>' . i . 'gt'
	execute 'cmap <D-' . i . '> <Esc>' . i . 'gt'
endfor

filetype on
filetype plugin on
filetype indent on

autocmd BufEnter * silent! lcd %:p:h

set dictionary=/usr/share/dict/cracklib-small

set completeopt=longest,menu,preview
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
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby,lisp setlocal iskeyword+=?,!
autocmd FileType lisp setlocal iskeyword+=',=
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_object = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_objectspace = 1
autocmd FileType ruby,cucumber,javascript set ts=2 sw=2 sts=2

let g:bufExplorerShowTabBuffer=1

function! s:BufEnterRails()
	if exists('b:rails_root')
		let g:rails_root_dir = b:rails_root
	endif
endfunction

autocmd User BufEnterRails call s:BufEnterRails()

set t_Co=256
colorscheme wargrey

let Grep_Path = 'grep'
let Fgrep_Path = 'fgrep'
let Egrep_Path = 'egrep'
let Agrep_Path = 'agrep'
let Grep_Find_Path = 'find'
let Grep_Xargs_Path = 'xargs'
let Grep_Default_Options = '-i'

if has("mac")
	let Grep_Xargs_Path = 'gxargs'
endif

map <F1> :BufExplorer<CR>
imap <F1> <Esc><F1>
cmap <F1> <Esc><F1>

" map <F2> ggVG
" imap <F2> <Esc><F2>
" cmap <F2> <Esc><F2>

map <F3> :NERDTreeToggle<CR>
imap <F3> <Esc><F3>
cmap <F3> <Esc><F3>

map <F4> :Rgrep<CR>
imap <F4> <Esc><F4>
cmap <F4> <Esc><F4>

map <F5> :TlistToggle<CR>
imap <F5> <Esc><F5>
cmap <F5> <Esc><F5>

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabContextTextOmniPrecedence = ['&omnifunc', '&completefunc']
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabContextDiscoverDiscovery = ["&completefunc:<c-x><c-u>", "&omnifunc:<c-x><c-o>"]

let g:ragtag_global_maps = 1

set laststatus=2
let g:Powerline_symbols = 'unicode'

let Tlist_Use_Right_Window = 1
let Tlist_Use_SingleClick = 1
autocmd BufWritePost * :TlistUpdate

autocmd BufEnter * :Alias q qall
autocmd BufEnter * :Alias n tabnew
autocmd BufEnter * :Alias wq wqall
autocmd BufEnter * :Alias W w
autocmd BufEnter * :Alias diff diffsplit
autocmd BufEnter *.rb :call CmdAlias('ruby', '!ruby %')
autocmd BufEnter *.rb :call CmdAlias('rspec', '!rspec % --format doc --no-color')
autocmd BufEnter *.feature :call CmdAlias('cu', '!cucumber %')

au BufNewFile,BufRead,BufEnter *.c,*.h,*.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

"now it's no use for a ruby/rails developer
"map <F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]"

" When editing a file, always jump to the last known cursor position.
"     " Don't do it when the position is invalid or when inside an event
"     handler
"         " (happens when dropping a file on gvim).
autocmd BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line('$') |
			\   execute 'normal g`"' |
			\ endif |"'"

if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
			  \ | wincmd p | diffthis
endif

autocmd FileType *
		\ let b:AutoClosePairs = AutoClose#DefaultPairsModified("", "<")
autocmd FileType xml,html,eruby
        \ let b:AutoClosePairs = AutoClose#DefaultPairsModified("<>", "")
autocmd FileType lisp
        \ let b:AutoClosePairs = AutoClose#DefaultPairsModified("", "'")
autocmd FileType c,cpp set cindent
autocmd FileType xml,html,eruby,css,javascript
		\ let g:user_zen_expandabbr_key = '<c-q>'
autocmd FileType xml,html,eruby,css,javascript
		\ let g:use_zen_complete_tag = 1
autocmd FileType ruby,eruby setlocal iskeyword+=@,$
autocmd FileType xml,html,css,eruby setlocal iskeyword+=-
autocmd BufWritePre * :%s/\s\+$//e

let g:gitgutter_enabled = 1
let g:gitgutter_highlights = 1

let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>'],
  \ }

let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$\|.rvm$'
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

let g:ctrlp_map = '<F2>'
let g:ctrlp_cmd = 'CtrlPMixed'
