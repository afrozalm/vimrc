if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
endif

call plug#begin()
Plug 'Wombat'
Plug 'tomasr/molokai'
Plug 'nanotech/jellybeans.vim' 
Plug 'scrooloose/nerdcommenter'
Plug 'KabbAmine/zeavim.vim'
Plug 'bling/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'auto-pairs-gentle'
Plug 'altercation/vim-colors-solarized'
Plug 'terryma/vim-multiple-cursors'
Plug 'AutoComplPop'
Plug 'autoswap.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'davidhalter/jedi-vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

syntax enable
"colorscheme jellybeans  
set background=light
colorscheme solarized
let g:airline_powerline_fonts = 1
let g:airline_theme='cool'

set t_Co=256

set number
set relativenumber

filetype plugin indent on
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set backspace=indent,eol,start
set wildmenu
set showmatch
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

if has('gui_running')
    set guifont=Meslo\ LG\ M\ DZ\ for\ Powerline\ 10
endif
set incsearch
set autoindent
set ignorecase
set laststatus=2
set scrolloff=10
set nohlsearch
nmap // <leader>ci
nmap '' <leader>ig
nmap ] G
nmap [ gg
