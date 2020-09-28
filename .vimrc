syntax on

set nocompatible                " set as nocompatible for custom configuration
set clipboard=unnamedplus       " it's necessary to copy to/from clipboard works properly
                                " gvim is also necessary to copy/paste from/to
                                " clipboard


set noerrorbells                " remove sound effects 
set tabstop=4                   " set tab length to like 4 spaces
set softtabstop=4               " set tab to use 4 spaces 
set shiftwidth=4                " set shifting to 4 spaces
set expandtab                   " convert tab to spaces
set smartindent                 " improve automatic identation
set nu                          " show line numbers
set nowrap                      " break the line at the end of screem
set smartcase                   " enable case sensitive searching
set noswapfile                  " avoid vim to create swap files
set nobackup                    " avoid vim to create backups
set undodir=~/.vim/undodir      " set a custom directory to persist undo files
set undofile                    " set undo feature to create for each file 
set incsearch                   " enable incremental search 
set colorcolumn=120              " set column size to 80 characters


" Plugins

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'                              " color schema
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fuzzy finder
Plug 'junegunn/fzf.vim'                             " fuzzy finder vim plugin
Plug 'git@github.com:Valloric/YouCompleteMe.git'    " autocomplete
Plug 'preservim/nerdtree'                           " show files in tree scructure format
Plug 'mbbill/undotree'                              " show files versions to help undo operations
Plug 'tpope/vim-fugitive'                           " enable git options like git blame and things like that

call plug#end()


" Themes and color schemas

colorscheme gruvbox                             " set gruvbox color schema
set background=dark                             " set background to dark
highlight ColorColumn ctermbg=0 guibg=lightgrey " set highlight background color


" Define constants

let mapleader = ","                     " define map leader
let g:fzf_preview_window = 'right:60%'  " enable windows preview on fzf


" Map keys

nnoremap <leader>p      o<ESC>"+p
nnoremap <leader>P      O<ESC>"+p
nnoremap <leader>y      "+y
nnoremap <leader>Y      "+Y


" Change key maps

" nerdtree 
map <C-t> :NERDTreeToggle<CR>

" fzf
map <C-p> <Esc><Esc>:Files!<CR>
map <C-i> <Esc><Esc>:Rg!<CR>
map <C-g> <Esc><Esc>:BCommits!<CR>
map <C-b> <Esc><Esc>:Buffers<CR>
inoremap <C-p> <Esc><Esc>:BLines<CR>

" undotree
nnoremap <C-u> :UndotreeToggle<cr>

" youcompleteme
nnoremap <silent> <Leader>d :YcmCompleter GoTo<CR>
nnoremap <silent> <Leader>r :YcmCompleter GoToReferences<CR>


autocmd FileType yaml setlocal ai ts=2 sw=2 et      " identation for yaml files
