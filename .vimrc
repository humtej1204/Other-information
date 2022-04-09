packadd! dracula
syntax enable
" To can set this color therme we have to follow the following steps in
" https://github.com/artanikin/vim-synthwave84
set termguicolors
colorscheme synthwave84
set background=dark

" Set tab size
set shiftwidth=8

" Autoidentation to type of files
autocmd Filetype c setlocal noexpandtab tabstop=8 shiftwidth=8 softtabstop=8
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType html setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType javascript setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2

filetype indent on
filetype plugin on

"Show linenumbers
set number
set ruler

"Show in what line you are
set cursorline
set cursorcolumn

" Don't save backup files
set nobackup

" Search C language
set incsearch
set showmatch
set hlsearch

" Set propper tabs
setlocal noexpandtab shiftwidth=8 softtabstop=8 tabstop=8
set autoindent cindent smartindent showmatch

" Command line completion
set wildmenu
set wildmode=list:longest,full

" Dictionary
" set spell
" set spelllang=en

" Copy and paste in system variable
set ff=unix

" Always display the status line
set laststatus=2
