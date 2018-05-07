set nocompatible

" ================ Vundle  ==========
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'lervag/vimtex'

filetype plugin indent on

" ================ Solarized  ==========
syntax on
set background=dark
"set t_Co=256
"let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
colorscheme solarized

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
set mouse=a

" ================ No belling ====================
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" =============== Vim Latex Settings =============
let g:vimtex_view_method='zathura'
let g:tex_flavor = "latex"
let g:tex_comment_nospell=1

" ================ CtrlP Settings =================
let g:ctrlp_custom_ignore = {
  \ 'dir':  'debug$\|release$\|build$\|\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|obj|zip|swap|manifest|pyc)$',
  \ }

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_switch_buffer = 'et'

" ================ Syntastic Settings =================
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -Wall'
let g:syntastic_enable_signs = 0

" ================ Highlighting Spelling and Syntastic Errors ====
hi clear SpellBad
hi clear SpellCap
hi SpellBad ctermbg=red
hi SpellCap ctermbg=red

" ================ Spellcheck Exceptions ====
"syn match NoCommand '\\\w\+' contains=@NoSpell			" no commands
"syn match NoLabel '\\label{[^}]\+}' contains=@NoSpell	" no text in \label{} environment
"syn match NoComment '^%.*' contains=@NoSpell		    " no comments

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
map <F5> :source $MYVIMRC <CR>

" =============== Override Vim Settings ============
" check if there is a .vimsettings file in the
" directory where vim was opended to override settings
try 
  source .vimsettings
catch
endtry
