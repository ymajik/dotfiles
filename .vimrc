cmap w!! w !sudo tee % >/dev/null " enable rights elevation when editing read only files
filetype indent on      " enable filetype-specific indenting
filetype indent plugin on    " required
filetype on             " enable filetype detection
filetype plugin on      " enable filetype-specific plugins
let &runtimepath.=',~/.vim/plugged/w0rp-ale'
let g:ale_sign_column_always = 1
let g:ale_statusline_format=['⨉ %d', '⚠ %d', '⬥ ok']
let g:vim_markdown_folding_disabled=1
map w!! %!sudo dd of=%
set autoindent smartindent  " auto/smart indent
set autoread            " watch for file changes
set cursorline          " highlight the current line
set formatoptions+=l
set linebreak
set nobackup            " don't create pointless backup files; Use VCS instead
set number              " show line numbers
set scrolloff=5         " show at least 5 lines above/below
set showcmd             " show selection metadata
set showmatch           " show matching brackets
set showmode            " show INSERT, VISUAL, etc. mode
set smarttab            " better backspace and tab functionality
"set t_Co=256
set ts=2 " show \t as 2 spaces and treat 2 spaces as \t when deleting, etc..
set wrap
syntax on               " enable syntax highlighting

" NERDtree
map <C-n> :NERDTreeToggle<CR>

" 
call plug#begin('~/.vim/plugged')
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
Plug 'cakebaker/scss-syntax.vim'
Plug 'cespare/vim-toml'
Plug 'chase/vim-ansible-yaml'
Plug 'cometsong/ferm.vim'
Plug 'docker/docker'
Plug 'ekalinin/dockerfile.vim'
Plug 'fatih/vim-go'
Plug 'fatih/vim-hclfmt'
Plug 'godlygeek/tabular'
Plug 'golang/lint'
Plug 'hdima/python-syntax'
Plug 'https://github.com/vim-scripts/groovy.vim.git'
Plug 'isobit/vim-caddyfile'
Plug 'othree/html5.vim'
Plug 'parkr/vim-jekyll'
Plug 'powerline/powerline'
Plug 'puppetlabs/puppet-syntax-vim'
Plug 'robbevan/vagrantfile.vim'
Plug 'robbieclarken/vim-haproxy'
Plug 'robbles/logstash.vim'
Plug 'robertbasic/vim-hugo-helper'
Plug 'rodjek/vim-puppet'
Plug 'scrooloose/nerdtree'
Plug 'stephpy/vim-yaml'
Plug 'timgreen/vim-nanoc'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-surround'
Plug 'vim-perl/vim-perl'
Plug 'vim-ruby/vim-ruby'
Plug 'w0rp/ale'
" Initialize plugin system
call plug#end()

