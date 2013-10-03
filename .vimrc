" VIM COnfiguration
" By Arun


" Be VIM and not VI
set nocompatible

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gb18030,cp936

" Tab and space
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Indendation and stuff
set cindent
set autoindent
set cinoptions=(sus

set ambiwidth=double

" Syntax Highlighting
syntax on
syntax enable

" Highlight current column and line
set cursorcolumn
set cursorline
au BufLeave * set nocursorline nocursorcolumn
au BufEnter * set cursorline cursorcolumn

" Font and I like Monaco
set guifont=Monaco:h16

" Backspace behaivour
set backspace=indent,eol,start

" Searching and Stuff
set is
set hlsearch
set ignorecase

" Line break and wraps
set wrap
set linebreak
let &showbreak="↪ "
set whichwrap=b,s,<,>,[,]

" I hate to see the swap files
set noswapfile
set history=400 " history length
set viminfo+=h " save history
set ssop-=blank " dont save blank window
set ssop-=options " dont save options

" Enable fold
set foldenable

" Show command list
set wildmenu

" Show number
set number

" Show ruler
set ruler

" Remaping Leader key to ,
let mapleader = ","
let maplocalleader = "\\"

" Matching characters
set showmatch " Show matching brackets
set matchpairs+=<:> " Make < and > match as well

" Color scheme
set background=dark
colorscheme desert

" To edit and source vimrc file
noremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" To unmap and remap escape key
inoremap jk <esc>
inoremap <esc> <nop>

" Autocmds
" All the autocmds which i have added over time.

" To write the file immediately if it is a notes or todo
augroup basic
    autocmd!
    autocmd BufNewFile *.todo :write
augroup END

augroup php
    autocmd!
    autocmd BufWritePre *.php :normal gg=G
    " To Comment a PHP line
    autocmd FileType php nnoremap <buffer> <localleader>c I//<esc>
augroup END

" Status Line
set statusline=%f
set statusline+=\ %m
set statusline+=\ \ %y
set statusline+=\ \ Buf:\ %n
set statusline+=%=
set statusline+=Col:\ %c 
set statusline+=\ \ Lines:\ %l        " Current line
set statusline+=/         " Separator
set statusline+=%L        " Total lines
set statusline+=\ \ %p
