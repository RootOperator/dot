set encoding=UTF-8
set number
set showbreak=+++
set hlsearch
set smartcase
set incsearch
filetype indent on
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4

set undolevels=1000
set backspace=indent,eol,start

syntax on
let mapleader = '\'


call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'docunext/closetag.vim'
Plug 'townk/vim-autoclose'
Plug 'preservim/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'ryanoasis/vim-devicons' " needs a nerd font to work example 3270 Condensed
call plug#end()

map <C-n> :NERDTreeToggle<CR>
map <C-t> :vert term<CR>
map ZW :w<CR>
map ZX :noh<CR>
map ZT :tab term<CR>

set background=dark
color Atelier_SulphurpoolDark

autocmd FileType python map <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd InsertEnter,InsertLeave * set cul! "sets cursorline when entering Insert mode
autocmd vimenter * NERDTree | wincmd l "automatically open NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "close vim if NERDTree is the only open window

"molokai
"gruvbox dark
"afterglow
"Atelier_EstuaryDark
"Atelier_SavannaDark
"Atelier_SulphurpoolDark
"PaperColor dark
