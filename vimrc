set encoding=utf-8
set exrc
set laststatus=2
set nocompatible
set nowrap
set ignorecase smartcase
set incsearch
set nohlsearch
set t_Co=256
set number
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent smartindent
set nobackup
set noswapfile
set noerrorbells
set spelllang=en_us
set hidden " Puts buffer in the background without writing
set lazyredraw " Don't update display during macros
set ttyfast " Send more characters at once
set history=999
set undolevels=999
set autoread
set title
set scrolloff=8
set sidescrolloff=7
set guicursor=
set relativenumber
set wildmenu
set wildchar=<TAB>
set wildmode=full
set wildignore+=*.DS_STORE,*.db,node_modules/**,*.jpg,*.png,*.gif
set diffopt=filler
set diffopt+=iwhite
set listchars=trail:·,nbsp:⚋
set fillchars=fold:-
set updatetime=100 " Keeps gitgutter speedy
set background=dark

" LEADER
let mapleader=" "

syntax enable
command E Ex " Disambiguates E

" FIND AND REPLACE
function! VisualFindAndReplace()
    :OverCommandLine%s/
endfunction
function! VisualFindAndReplaceWithSelection() range
    :'<,'>OverCommandLine s/
endfunction
nnoremap <leader>fr :call VisualFindAndReplace()<CR>
xnoremap <leader>fr :call VisualFindAndReplaceWithSelection()<CR>

"BUFFER MANAGEMENT
nnoremap <silent><leader>x :bd<CR> " Delete current buffer
nnoremap <silent><leader>X :bd!<CR> " Delete current buffer
nnoremap <silent><leader>n :bn!<CR> " Next buffer
nnoremap <silent><leader>N :bN!<CR> " Previous buffer
nnoremap <silent><leader>tn :enew<CR> " Make a new empty buffer
nnoremap <silent><Tab> :b#<CR> " Tab between buffers

" SPLIT NAVIGATION
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" NEWLINE GENERATION
nmap <C-o> O<Esc>
nmap <CR> o<Esc>

nnoremap <leader>. @: " Repeat last ex command

" YANK/PUT FROM/TO CLIPBOARD
vnoremap <leader>y "*y

map<leader>p "*P
inoremap<c-p> <ESC>"*Pi

" MAKE Y BEHAVE LIKE ALL THE OTHER CAPITAL LETTERS
nnoremap Y y$

" SPELLCHECK TOGGLE IS <F4>
:map <F4> :setlocal spell! spelllang=en_us<CR>

" MOVING TEXT AROUND
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-k> <esc>:m .-2<CR>==
inoremap <C-j> <esc>:m .+1<CR>==
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==
nnoremap ]e I<CR><ESC>==

" DELETE ALL MARKS
nnoremap <C-\> :delmarks!<CR>

" NERDTREE
nnoremap <leader>iv :Ex<CR>
nnoremap <leader>is <C-w><C-v>:Ex<CR>

" TERMINAL
nnoremap <leader>T :Terminal<CR>
let g:netrw_banner = 0

