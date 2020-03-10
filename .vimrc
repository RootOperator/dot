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



 call plug#begin()
 Plug 'airblade/vim-gitgutter'
 Plug 'preservim/nerdtree'
 Plug 'flazz/vim-colorschemes'
 call plug#end()


 color molokai " gruvbox does not show correct colors without having set a color first

 map <C-n> :NERDTreeToggle<CR> # toggle nerd tree with ctrl n
 color gruvbox

 autocmd vimenter * NERDTree
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

 "codedark
 "molokai
 "colorsbox-material
 "gruvbox
 "madeofcode
