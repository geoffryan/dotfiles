"Install vim-plug automagically
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"vim-plug options
call plug#begin('~/.vim/plugged')
let g:ale_enabled = 1
let g:ale_set_quickfix = 1
let g:ale_lint_delay = 2000
let g:ale_linters = {'c': [], 'cpp': [],}
Plug 'w0rp/ale'
Plug 'DingDean/wgsl.vim'
Plug 'rust-lang/rust.vim'
Plug 'tikhomirov/vim-glsl'
call plug#end()

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
set re=0
filetype on
filetype plugin indent on 

"Look for files recursively
set path+=**
"File options have nice menu
set wildmenu

if has('mouse')
	set mouse=a
endif

" Return to last edit position when opening files
autocmd BufReadPost *
	\ if line("'\"") > 0 && line("'\"") <= line("$") |
	\	exe "normal! g`\"" |
	\ endif
