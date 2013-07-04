set nocompatible               " be iMproved

" ================ Vundle  ==========
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'

filetype plugin indent on

" ================ Solarized  ==========
set background=dark
colorscheme solarized

" ================ Powerline ==========
set laststatus=2

" ================ Set proper file encoding ==========
set encoding=utf-8
set fileencoding=utf-8

" ================ General Config ====================
syntax enable
set number "Line numbers are good
set backspace=indent,eol,start "Allow backspace in insert mode
set history=1000 "Store lots of :cmdline history
set showcmd "Show incomplete cmds down the bottom
set showmode "Show current mode down the bottom
set visualbell "No sounds
set autoread "Reload files changed outside vim
set hidden

" ================ CtrlP Settings =================
let g:ctrlp_custom_ignore = {
  \ 'dir':  'debug$\|release$\|build$\|\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|obj|zip|swap|manifest|pyc)$',
  \ }

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" ================ Search Settings =================
set incsearch "Find the next match as we type the search
set hlsearch "Highlight searches by default
set viminfo='100,f1 "Save up to 100 marks, enable capital marks

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set noexpandtab

filetype plugin on
filetype indent on

set nowrap "Don't wrap lines
set linebreak "Wrap lines at convenient points

" ================ Python ========================
au BufRead,BufNewFile *.py,wscript,*.lsd set expandtab
au BufRead,BufNewFile *.py,wscript,*.lsd set ft=python

" ================ GLSL ========================
au BufRead,BufNewFile *.vert,*.frag,*.vp,*.fp set ft=c

" ================ Scrolling ========================
set scrolloff=8 "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1
