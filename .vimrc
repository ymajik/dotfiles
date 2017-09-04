" 
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
Plug 'chase/vim-ansible-yaml'
Plug 'cometsong/ferm.vim'
Plug 'ekalinin/dockerfile.vim'
Plug 'godlygeek/tabular'
Plug 'powerline/powerline'
Plug 'puppetlabs/puppet-syntax-vim'
Plug 'rodjek/vim-puppet'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'stephpy/vim-yaml'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-surround'
" Initialize plugin system
call plug#end()

filetype plugin indent on    " required

syntax on               " enable syntax highlighting
set background=dark
cmap w!! w !sudo tee % >/dev/null " enable rights elevation when editing read only files
set cursorline          " highlight the current line
" set background=dark   " darker color scheme
" set ruler             " show line number in bar
set nobackup            " don't create pointless backup files; Use VCS instead
set autoread            " watch for file changes
set number              " show line numbers
set showcmd             " show selection metadata
set showmode            " show INSERT, VISUAL, etc. mode
set showmatch           " show matching brackets
set autoindent smartindent  " auto/smart indent
set smarttab            " better backspace and tab functionality
set scrolloff=5         " show at least 5 lines above/below
filetype on             " enable filetype detection
filetype indent on      " enable filetype-specific indenting
filetype plugin on      " enable filetype-specific plugins

syntax enable

" powerline
" let g:Powerline_symbols = 'fancy'

" NERDtree
map <C-n> :NERDTreeToggle<CR>

" statusline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
