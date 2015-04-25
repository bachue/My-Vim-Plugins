set nocp
filetype off
set nu
set autoindent
set ts=4
set sts=4
set sw=4
set et
set smarttab
set lbr
set fo+=mB
set sm
set cin
set ai
set hidden
set incsearch
set linebreak
set showbreak=>>
set smartindent
set wildmenu
set wildmode=list:longest,full
set switchbuf=usetab,newtab
set encoding=utf-8
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.so,*~
set expandtab
set shell=/bin/sh
set autoread
set encoding=utf-8
set ambiwidth=double

hi CursorLine cterm=underline ctermbg=none
set cursorline!

set undodir=~/.vim/.undodir
set undofile

set directory=~/.vim/.swapdir

set backup
set backupdir=~/.vim/.backupdir

filetype on
filetype plugin on
filetype indent on

set completeopt=longest,menu,preview
syntax enable
syntax on

set t_Co=256
set laststatus=2
