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
set cindent
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s)}
set wildmenu
set wildmode=list:longest,full
set switchbuf=usetab,newtab

set tags=./tags
set tags+=~/.vim/cpptags
set tags+=~/.vim/systags

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
noremap <C-Up> <C-W>k
noremap <C-Left> <C-W>h
noremap <C-Right> <C-W>l

nnoremap <F7> /<C-R><C-W><CR>
nnoremap <F8> :%s/<C-R><C-W>/

nmap gi :GitCommit<CR>
nmap gd :GitDiff<CR>
nmap gs :GitStatus<CR>
nmap gp :GitPush<CR>

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

nnoremap <silent> <F2> ggVG=
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
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby setlocal iskeyword+=:,?,!
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_object = 1
autocmd FileType ruby,eruby let g:rubycomplete_include_objectspace = 1
autocmd FileType ruby,cucumber set ts=2 sw=2 sts=2 expandtab

function! s:BufEnterRails()
	if exists('b:rails_root')
		let g:rails_root_dir = b:rails_root
	endif
endfunction

autocmd User BufEnterRails call s:BufEnterRails()

set t_Co=256
colorscheme wargrey

nnoremap <silent> <F3> :NERDTreeToggle<CR>

let Grep_Path = '/bin/grep'
let Fgrep_Path = '/bin/fgrep' 
let Egrep_Path = '/bin/egrep' 
let Agrep_Path = '/usr/bin/agrep' 
let Grep_Find_Path = '/usr/bin/find'
let Grep_Xargs_Path = '/usr/bin/xargs'
let Grep_Default_Options = '-i'

nnoremap <silent> <F4> :Rgrep<CR>

map <F1> :BufExplorer<CR>
imap <F1> <Esc><F1>

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

autocmd BufEnter * :Alias q qall
autocmd BufEnter * :Alias wq wqall
autocmd BufEnter * :Alias W w
autocmd BufEnter * :Alias diff diffsplit
autocmd BufEnter *.rb :call CmdAlias('ruby', '!ruby %')
autocmd BufEnter *.rb :call CmdAlias('rspec', '!rspec % --format doc --no-color')
autocmd BufEnter *.feature :call CmdAlias('cu', '!cucumber %')

au BufNewFile,BufRead,BufEnter *.c,*.h,*.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

map <F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]"

" ,t ,b is activate Command-T
function! s:ProjectRoot()
  if exists('b:rails_root')
    return b:rails_root
  elseif exists('b:bundler_root')
    return b:bundler_root
  elseif exists('b:rake_root')
    return b:rake_root
  elseif exists('b:git_dir')
    return fnamemodify(b:git_dir, ':p:h:h')
  endif
endfunction

nmap ,t :execute 'CommandT ' . fnameescape(<SID>ProjectRoot())<CR>
nmap ,b :CommandTBuffer<CR>
