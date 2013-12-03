set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

set ruler


" Show line numbers
set modeline
set ls=2

" Show line number
set number


" Incremental searching is sexy
set incsearch

" Highlight things that we find with the search
set hlsearch

set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching

set nobackup
set noswapfile

:set tags=./tags;


" copy to buffer
vmap <C-c> :w! ~/.vimbuffer<CR>
nmap <C-c> :.w! ~/.vimbuffer<CR>
" paste from buffer
map <C-p> :r ~/.vimbuffer<CR>


set nowrap
