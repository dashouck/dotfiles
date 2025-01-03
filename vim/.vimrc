" ---------------------------
" settings
" ---------------------------
syntax on 
set encoding=utf-8
set number
set relativenumber
set cursorline
set mouse=a
set clipboard=unnamedplus
set autoread
let mapleader=" "
filetype plugin on

" tabs and indentation
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent

" search
set ignorecase
set smartcase
set hlsearch
set incsearch

" interface
set showmatch
set showcmd
set showmode
set laststatus=2
set termguicolors
set updatetime=300
set colorcolumn=80

" backup
set noswapfile
set nobackup
set nowritebackup
set undofile

" markdown config 
autocmd FileType markdown setlocal spell spelllang=en_us
autocmd FileType markdown setlocal wrap linebreak nolist
autocmd FileType markdown setlocal tabstop=2 shiftwidth=2 expandtab autoindent
" autocmd FileType markdown setlocal conceallevel=2
autocmd FileType markdown setlocal textwidth=80
autocmd FileType markdown setlocal foldmethod=syntax
autocmd FileType markdown setlocal foldlevel=2
nnoremap <Leader>ml o[text](url)<Esc>F([i
nnoremap <Leader>mc o```<CR>```<Esc>O
nnoremap <Leader>mp :MarkdownPreview<CR>

" ---------------------------
" plugins
" ---------------------------
"let g:airline_powerline_fonts = 1
" let g:airline_theme='wombat'
let g:airline_theme='solarized'
"let g:airline_solarized_bg='dark'

" vim-plug plugins 
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install' }
Plug 'dhruvasagar/vim-table-mode'
Plug 'liuchengxu/vista.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'preservim/vim-markdown'
Plug 'sheerun/vim-polyglot' " syntax highlighting         
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'               
Plug 'altercation/vim-colors-solarized'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'preservim/nerdcommenter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

nnoremap <leader>/ <Plug>NERDCommenterToggle
vnoremap <leader>/ <Plug>NERDCommenterToggle
let g:NERDSpaceDelims = 1

" theme settings
" colorscheme gruvbox
" set background=dark
colorscheme onedark
" colorscheme solarized
"set background=dark
" colorscheme dracula

" fzf config
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>g :Rg<CR> " search content with ripgrep
nnoremap <silent> <leader>b :Buffers<CR>

" terminal config
" nnoremap <Leader>th :split | terminal<CR>
" nnoremap <Esc> <C-\><C-n>   " esc to get terminal back to normal mode
" autocmd FocusLost * stopinsert
" nnoremap <Leader>th :split | terminal<CR>    " open terminal in a horizontal split
" nnoremap <Leader>tv :vsplit | terminal<CR>  " open terminal in a vertical split

" vim-fugitize config
nnoremap <Leader>gs :G<CR>        " open Git status
nnoremap <Leader>gd :Gdiff<CR>    " open Git diff
nnoremap <Leader>gb :Gblame<CR>   " open Git blame
nnoremap <Leader>gc :Gcommit<CR>  " commit changes
nnoremap <Leader>gp :Gpush<CR>    " push commits
nnoremap <Leader>gl :Glog<CR>     " show Git log

" vista.vim config
let g:vista_icon_indent = ['╰─▸ ', '├─▸ ']
nnoremap <Leader>vs :Vista!!<CR>
autocmd FileType python,markdown,java,javascript :Vista!!
let g:vista#renderer#enable_icon = 1  " enable or disable icons
autocmd bufenter * if winnr("$") == 1 && vista#sidebar#IsOpen() | execute "normal! :q!\<CR>" | endif

" shortcuts to mimic visual studio code
nnoremap <A-Up> :m .-2<CR>==
nnoremap <A-Down> :m .+1<CR>==
vnoremap <A-Up> :m '<-2<CR>gv=gv
vnoremap <A-Down> :m '>+1<CR>gv=gv

nnoremap <A-S-Up> :t .-1<CR>
nnoremap <A-S-Down> :t .<CR>
vnoremap <A-S-Up> :t '<-1<CR>gv
vnoremap <A-S-Down> :t '>+1<CR>gv

" today's date in YYYY-MM-DD format
nnoremap <leader>d i<C-R>=strftime("%Y-%m-%d")<CR><Esc>

" misc shortcuts
nnoremap <leader>w :w<CR> " write file
nnoremap <leader>q :q<CR> " quit
" close all other windows
nnoremap <leader>o :only<CR>
" clear search highlighting
nnoremap <leader><space> :nohlsearch<CR>
" split window shortcuts
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>h :split<CR>
" use <Ctrl-H/J/K/L> to switch panes
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Tab> <C-w>w   " next window
nnoremap <S-Tab> <C-w>W " previous window
