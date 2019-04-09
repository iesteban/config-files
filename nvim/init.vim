""" #tabs
" - Two spaces wide
set tabstop=4
set softtabstop=4
" - Expand them all
set shiftwidth=4
" turn off mouse
set mouse=""
""" Leader #leader
let g:mapleader='\\'
"" Format Options #format-options
set formatoptions=tcrq
set textwidth=80

""" Show numbers in the left

set number
set cursorline
set ruler

" Case
set ignorecase
set smartcase

" Search
set incsearch
set showmatch
set hlsearch

" Files and backup
set nobackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set noswapfile
set nowritebackup
set autoread

"set wrap
set colorcolumn=120


"" Libraries
call plug#begin()
Plug 'sbdchd/neoformat'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-syntastic/syntastic'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
call plug#end()
:


autocmd BufWritePre *.py Neoformat
"""To have Neformat executing Prettier every time we save our file, let's do that:


augroup fmt
  autocmd!
  autocmd BufWritePre *.js,*.jsx Neoformat prettier
augroup END

let g:neoformat_enabled_python = ['autopep8']




"let g:airline_theme='luna'
":colorscheme bubblegum 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP Tags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:nnoremap <Leader>p :CtrlPBufTag<CR>
:nmap <Leader>bb :CtrlPBuffer<cr>
:nmap <Leader>bm :CtrlPMixed<cr>
:nmap <Leader>bs :CtrlPMRU<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NerdTree
" <leader> e
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:nmap <Leader>e :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fugitive
" <leader> g*
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:nmap <Leader>gd :Gvdiff<CR>
:nmap <Leader>gc :Gcommit<CR>
:nmap <Leader>gw :Gwrite<CR>
:nmap <Leader>gr :Gread<CR>
:nmap <Leader>gs :Gstatus<CR>
:nmap <Leader>gb :Gblame<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Create a buffer to copy/paste from/to different vim sessions
" Just ctrl+c to copy, ctrl+o to paste.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

vmap <C-c> :w! ~/.vimbuffer<CR>
nmap <C-c> :.w! ~/.vimbuffer<CR>
" paste from buffer
map <C-o> :r ~/.vimbuffer<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>ct :! ctags -R ./<cr>
""":set tags=./tags;
set tags=./tags,tags;


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SYNTASTIC
" <leader> sc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_python_checkers = ['pylint3']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_javascript_checkers = ['standard']

let g:syntastic_javascript_standard_exec = "../node_modules/standard/bin/cmd.js"

let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']
