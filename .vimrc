"This must be first, because it change other options as a side effect
set nocompatible
"Pathogen
execute pathogen#infect()

" Mouse and backspace
set mouse=a " on OSX press ALT and click
set bs=2    " make backspace behave like normal again

" Rebind <Leader> key
let mapleader = ","

" Sudo autorization

" easier moving between tabs
nnoremap <Leader>n <esc>:tabprevious<CR>

" map sort function to a key
vnoremap <Leader>s :sort<CR>

" easier moving of code blocks
vnoremap < <gv 
vnoremap > >gv 

" Show whitespace
" MUST be inserted BEFORE the coloscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/


" Color scheme
"mkdir -p ~/.vim/colors && cd ~/.vim/colors wget -O wombat256mod.vim
"http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
color wombat256mod

" Enable syntax highlighting
" You need to reload this file for the change to apply
filetype on
filetype plugin on 
filetype plugin indent on
syntax on

" Showing line numbers and length
set number " show line numbers
set tw=79  " width of document
set formatoptions+=t
"set nowrap " don't automatically wrap on load
"set fo-=t  " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

" easir formatting of paragraphs
vmap Q gq
nmap Q gqap

" Useful settings
set history=700
set undolevels=700

" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Disable backup swap files
set nobackup
set nowritebackup
set noswapfile

" Open Nerd Tree
map <C-n> :NERDTreeToggle<CR>

au BufNewFile,BufRead *.cu set ft=cuda.c
nmap <F1> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <F1> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
nmap <F2> :.w !pbcopy<CR><CR>
vmap <F2> :w !pbcopy<CR><CR>
nnoremap <F8> :!/opt/local/bin/ctags -R --python-kinds=-i *.py<CR>
nnoremap <F4> :TlistToggle<CR>
