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

map <C-n> :NERDTreeToggle<CR> # toggle nerd tree with control n

set background=dark
color Atelier_SulphurpoolDark

autocmd vimenter * NERDTree | wincmd l
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"codedark
"molokai
"colorsbox-material
"gruvbox dark
"madeofcode
"afterglow
"Atelier_SulphurpoolDark
"adventurous dark
"PaperColor dark
