set nocompatible

" ================ Vundle  ==========
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'


filetype plugin indent on

" ================ GUI Options  ==========
set guioptions-=m
set guioptions-=T

" ================ Solarized  ==========
let g:solarized_italic = 0
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
set wildmenu
set wildmode=longest:full,full

" ================ CtrlP Settings =================
let g:ctrlp_custom_ignore = {
  \ 'dir':  'debug$\|release$\|build$\|\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|obj|zip|swap|manifest|pyc)$',
  \ }

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" ================ Syntastic Settings =================
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++ -Wall -Wconversion'
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
set expandtab

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

