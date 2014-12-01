set nocompatible

" ================ Vundle  ==========
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'shougo/unite.vim'
Bundle 'shougo/vimproc.vim'

filetype plugin indent on

" ================ Set the leader key ====
nnoremap <space> <nop>
let mapleader = "\<Space>"

" ================ Unite ====
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts =
	  \ '--line-numbers --nocolor --nogroup --hidden --ignore ' .
	  \  '''.hg'' --ignore ''.svn'' --ignore ''.git'' --ignore ''.bzr'''
let g:unite_source_grep_recursive_opt = ''
nnoremap <leader>p :Unite -start-insert file_rec/async:!<cr>
nnoremap <leader>f :Unite grep:.<cr>

call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])


" ================ GUI Options  ==========
set guioptions-=m
set guioptions-=T

" ================ Solarized  ==========
syntax on
set background=dark
set t_Co=256
let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
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
set autoread "Reload files changed outside vim
set hidden
set wildmenu
set wildmode=longest:full,full

" ================ No belling ====================
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" ================ Syntastic Settings =================
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -Wall'
let g:syntastic_enable_signs = 0

" ================ Highlighting Spelling and Syntastic Errors ====
hi clear SpellBad
hi clear SpellCap
hi SpellBad ctermfg=244 ctermbg=088 guifg=#839496 guibg=#870000
hi SpellCap ctermfg=244 ctermbg=088 guifg=#839496 guibg=#870000

" ================ YCM Settings =================
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/ycm_conf/'
let g:ycm_register_as_syntastic_checker = 0
let g:ycm_add_preview_to_completeopt = 0

" ================ Search Settings =================
set incsearch
set smartcase
set ignorecase
set viminfo='100,f1 "Save up to 100 marks, enable capital marks

" ================ Turn Off Swap Files ==============
set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

"silent !mkdir ~/.vim/backups > /dev/null 2>&1
"set undodir=~/.vim/backups
"set undofile

" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4

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

" ================ Mappings ========================
nmap <C-g> <C-]>

nmap <S-Enter> O<ESC>
nmap <CR> o<ESC>
nmap <C-S> :w<CR>

map <F3> :set background=dark <CR>
map <F4> :set background=light <CR>
map <F5> :source $MYVIMRC <CR>

command! MenuOff set guioptions-=m
command! MenuOn  set guioptions+=m
