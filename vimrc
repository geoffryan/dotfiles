set nocompatible
set title
set hidden
set backspace=indent,eol,start

set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set linebreak
set wrap
set ww=<,>,[,[,h,l

"set listchars=tab:â–¸\ ,eol:Â
"set list

set history=100
set ruler
set showcmd
set incsearch
set hlsearch

syntax on
filetype on
filetype plugin indent on 

if has('mouse')
	set mouse=a
endif

autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") | 
    \   exe "normal! g`\"" |
    \ endif

