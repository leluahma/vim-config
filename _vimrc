set nocompatible
filetype off

if has('win32') || has('win32unix') "windows/cygwin
    let s:separator = '_'
    set noshellslash
else
    let s:separator = '.'
endif

let s:parent = '~/' . s:separator . 'vim/'

" Vundle
let s:bundledir = s:parent . '/bundle/'
let s:vundledir = s:bundledir . '/vundle/'
let &rtp .= ',' . s:vundledir

call vundle#rc(s:bundledir)

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" github bundles
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
" Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-repeat'
 
" Bundle 'jondistad/vimclojure'
" Bundle 'edsono/vim-matchit'
Bundle 'kana/vim-surround'
" Bundle 'plasticboy/vim-markdown'
 Bundle 'markabe/bufexplorer'
" Bundle 'cakebaker/scss-syntax.vim'
" Bundle 'chrismetcalf/vim-yankring'
" Bundle 'itspriddle/vim-jquery'
Bundle 'duff/vim-scratch'
Bundle 'kien/ctrlp.vim'
Bundle 'mattn/emmet-vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'pangloss/vim-javascript'
Bundle 'Lokaltog/vim-powerline'

Bundle 'altercation/vim-colors-solarized'
" Bundle 'Zenburn'

filetype plugin indent on

set modelines=0

" Tabs & Spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smarttab
set shiftround
set nojoinspaces

set encoding=utf-8
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set cursorline
set ttyfast
set backspace=indent,eol,start
set laststatus=2

" Visual bell
set vb t_vb=

" Leader character
" let mapleader = ","

" Searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %


" Long line handling
set wrap
set ruler
set textwidth=79
set formatoptions=qrn1

" Syntax highlighting
syntax on
set synmaxcol=120

" Diff
set diffopt+=vertical,iwhite

" Backups
set backup
execute 'set backupdir=' . escape(s:parent, ' ') . '/tmp/backup/,.'
execute 'set directory=' . escape(s:parent, ' ') . '/tmp/swap/,.'

if exists('+relativenumber')
    set relativenumber
else
    set number
endif

if has('persistent_undo')
    set undofile
    execute 'set undodir=' . escape(s:parent, ' ') . '/tmp/undo/,.'
endif

" vim 7.3 specific
if v:version >= 703
    set colorcolumn=85
endif

" Color scheme (solarized)
set background=dark
colors solarized

" Windows
nnoremap <leader>w <C-w>v<C-w>l
nnoremap <leader>wm <C-w>_<C-w>|

" Movement
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap j gj
nnoremap k gk

" Folding
set foldlevelstart=0
nnoremap <Space> za
vnoremap <Space> za
"noremap <leader>ft Vatzf

nnoremap <leader>p :pu<cr>

"
" Plugins
"
" cnoremap %% <C-R>=expand('%:p:h').'/'<cr>

" CtrlP
" nnoremap <leader>f :CtrlP<cr>
" nnoremap <leader>F :CtrlPCurFile<cr>

" set wildignore+=.git\*,.svn\*
let g:ctrlp_by_filename = 1
let g:ctrlp_show_hidden = 0
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v\.(git|hg|svn|target)$',
    \ 'file': '\v\.(exe|so|dll|class|orig)$',
    \ }

