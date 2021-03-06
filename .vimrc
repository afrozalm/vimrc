call plug#begin()
Plug 'Wombat'
Plug 'tpope/vim-surround'
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
Plug 'flazz/vim-colorschemes'
Plug 'majutsushi/tagbar'
Plug 'nikvdp/ejs-syntax'

call plug#end()

syntax enable
if has('gui_running')
    colorscheme jellybeans 
else
    colorscheme jellybeans
endif
let g:airline_powerline_fonts = 1
let g:airline_theme='cool'

set t_Co=256

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
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ Bold\ Oblique\ 11
endif

set incsearch
set autoindent
set ignorecase
set laststatus=2
set scrolloff=10
set nohlsearch
nmap //         <leader>ci
nmap ]          G
nmap [          gg
nmap <S-Enter>  i<Enter><Esc><k><Esc>
nmap ''         :TagbarToggle<CR>
nmap <A-left>   :tabprevious<CR>
nmap <A-right>  :tabnext<CR>
nmap <C-t>      :tabnew 
