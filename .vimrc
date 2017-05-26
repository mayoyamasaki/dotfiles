"----------------------------------------------------------
" Basic
"----------------------------------------------------------
set tabstop=4
set expandtab "tab replace space
set clipboard=unnamed,autoselect
set hidden
set backupdir=$HOME/.vim/.vimbackup
set directory=$HOME/.vim/.vimswap
set encoding=utf8
set fileencoding=utf8
set vb t_vb= "nobeap
set novisualbell
set backspace=start,eol,indent
set whichwrap=b,s,h,l,<,>,[,],~
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%,eol:↲
let mapleader=","


"----------------------------------------------------------
" Display
"----------------------------------------------------------
set title
syntax on
colorscheme zenburn
set number
set showmatch
set showcmd


"----------------------------------------------------------
" Search
"----------------------------------------------------------
set ignorecase
set smartcase
set wrapscan
set hlsearch
" clear search highlight
nnoremap <Esc><Esc> :nohlsearch<CR>
nnoremap <C-j><C-j> :nohlsearch<CR>
cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'


"----------------------------------------------------------
" Key-map
"----------------------------------------------------------
nnoremap <C-j> <Esc>
inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>
noremap ; :
noremap : ;
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-n> gt
nnoremap <C-p> gT
" for rust
inoremap <C-f> <C-x><C-o>
"----------------------------------------------------------
" Language
"----------------------------------------------------------

" # Rust
" ## Requirements
" ```
" $ cargo install rustfmt
" $ cargo install racer
" $ rustup component add rust-src
" ```
" ## Refs
" - [rustfmt](https://github.com/rust-lang-nursery/rustfmt)
" - [racer](https://github.com/phildawes/racer)
let g:rustfmt_autosave = 1
let g:racer_cmd = '$HOME/.cargo/bin/racer'
let g:racer_experimental_completer = 1

"----------------------------------------------------------
" Vundle
"----------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " required

Plugin 'Shougo/neocomplete.vim'
Plugin 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'

Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'

call vundle#end()            " required
filetype plugin indent on    " required

" NERDTree
let NERDTreeIgnore = ['\.pyc$']

"----------------------------------------------------------
" Note
"----------------------------------------------------------
" PluginInstall - Install vundle plugins
