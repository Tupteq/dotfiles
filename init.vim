" Mouse support
set mouse=a

" Faster updates
set updatetime=200

" Set GUI colors
set termguicolors

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Don't show mode in last line
set noshowmode

" Search
set ignorecase
set smartcase
" Normalize search regex
nnoremap / /\v
vnoremap / /\v
nnoremap ? ?\v
vnoremap ? ?\v

" Enable filetype plugins
filetype plugin on
filetype indent on

" Yank to the system register (*) by default
set clipboard=unnamed

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","

" Start an external command with a single bang
nnoremap ! :!

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Set lines to the cursor - when moving vertically using j/k
set so=3

" Do not wrap
set nowrap

" Line numbers
set number

" Hidden buffers
set hidden

" Avoid many "press enter"
set cmdheight=2

" Show cursor line
set cursorline

" Set terminal title
set title

" White characters
set list
set listchars=tab:▷∙,trail:~,extends:,precedes:,nbsp:␣

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Speedup
nnoremap ; :

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Search improvements
map <space> /
map <C-space> ?
map <silent> <leader><cr> :noh<cr>

" Tab and indent
set tabstop=4
set shiftwidth=4
set expandtab
set sts=4
set autoindent
set smartindent
set smarttab
set scl=yes  " sign column
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2

" python
let g:python3_host_prog = '/Users/tupteq/.local/share/nvim/venv/bin/python'

call plug#begin()
Plug '/usr/local/opt/fzf'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-obsession'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-unimpaired'
call plug#end()

" fzf
set rtp+=/usr/local/opt/fzf
nmap \ :Buffers<CR>
nmap <C-P> :Files<CR>
nmap <A-\> :History:<CR>
nmap <bar> :History<CR>

" gruvbox
let g:gruvbox_improved_strings = 1
let g:gruvbox_improved_warnings = 1
let g:gruvbox_italic = 1
let g:gruvbox_number_column = 'bg1'
colorscheme gruvbox
hi NonText guifg=Blue  " Reset highlight of NonText
hi clear CursorLine  " Highlight only current line number

" doplete
let g:deoplete#enable_at_startup = 1
set completeopt-=preview
set completeopt+=noinsert

" deoplete-jedi
let g:deoplete#sources#jedi#python_path = '/Users/tupteq/.local/share/nvim/venv/bin/python'

" ale
let g:ale_python_black_executable = '/Users/tupteq/.local/share/nvim/venv/bin/black'
let g:ale_python_flake8_executable = '/Users/tupteq/.local/share/nvim/venv/bin/flake8'
let g:ale_python_flake8_options = '--max-line-length=88 --max-complexity=10 --ignore="E203,W503"'
let g:ale_python_isort_executable = '/Users/tupteq/.local/share/nvim/venv/bin/isort'
let g:ale_python_mypy_executable = '/Users/tupteq/.local/share/nvim/venv/bin/mypy'
let g:ale_fixers = {'python': ['isort', 'black']}
map <leader>x :ALEFix<CR>

" nerdtree
map <C-n> :NERDTreeToggle<CR>

" jedi
let g:jedi#completions_enabled = 0
