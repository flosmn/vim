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
Bundle 'rking/ag.vim'

filetype plugin indent on

" ================ GUI Options  ==========
set guioptions-=m
set guioptions-=T

" ================ Solarized  ==========
let g:solarized_italic = 0
let g:solarized_termcolors = 256
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

" ================ The Silver Searcher ======================
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --smart-case\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>--smart-case<SPACE>

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

" ================ Custom functions ========================
command! -nargs=0 -bar Qargs execute 'args ' . QuickfixFilenames()
function! QuickfixFilenames()
  " Building a hash ensures we get each buffer only once
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(values(buffer_numbers))
endfunction

" ================ Mappings ========================
nmap <C-g> <C-]>

nmap <S-Enter> O<ESC>
nmap <CR> o<ESC>
nmap <C-S> :w<CR>

map <F3> :set background=dark <CR>
map <F4> :set background=light <CR>
set background=dark

set t_Co=256
