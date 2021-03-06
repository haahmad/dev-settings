set nocompatible
syntax on
set ls=2
set ignorecase
set nu
set ruler
set hlsearch
set incsearch
set expandtab
set tabstop=4
set autoindent
set copyindent
set shiftwidth=4
set background=dark
set ff=unix
set wrap!
set nofoldenable
set pastetoggle=<F12>

"Automatically delete trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" Turns off swapfiles and backups
set nobackup
set nowb
set noswapfile

" Imports .bash_profile in :sh command
set shell=/bin/bash\ -l

"""""""""""""""""""
"pair autocomplete
"""""""""""""""""""
inoremap < <><Left>
inoremap <<CR> <<CR>><Esc>O
inoremap << <
inoremap <> <>

""""""""""""""""""""""""""""""""""
"For Mac OSX Terminal.app: Handles mouse scrolling: need to install SIMBL and MouseTerm for this to work
""""""""""""""""""""""""""""""""""
if has("mouse")
    set mouse=a
endif

""""""""""""""""""""""""""""""""""
"pathogen.vim
" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
""""""""""""""""""""""""""""""""""

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()""

""""""""""""""""""""""""""""""""""
"NERDtree plugin
""""""""""""""""""""""""""""""""""
"autocmd vimenter * NERDTree
nnoremap <S-N> :NERDTreeToggle<CR>
let g:NERDTreeWinSize = 20

