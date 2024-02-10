syntax on
let mapleader = ","
let g:mapleader = ","
set belloff=all
set encoding=utf-8
set nocompatible
set list listchars=tab:»·,trail:·
set background=dark
set autoread
set clipboard^=unnamed,unnamedplus
set ignorecase
set incsearch
set number
set relativenumber
set ruler
set linespace=15
set nobackup
set noswapfile
set mouse=a

" Highlight cursorline
" NO highlight cursorline for number
" :h ctermbg
set cursorline
hi CursorLine cterm=NONE ctermbg=BLACK ctermfg=NONE
hi CursorLineNR cterm=NONE ctermbg=NONE ctermfg=Yellow

set nowrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround
set showmode
set showcmd
set laststatus=2

" Indentation
set autoindent
set copyindent
set smartindent


" Rendering
set ttyfast

set wildignore+=*/storage/**
set wildignore+=/node_modules/**
set wildignore+=/vendor/**
set wildignore+=/public/**
set wildignore+=*.DS_Store
set wildignore+=*.jpg,*.jpeg,*.png,*.gif,*.ttf,*.tga,*.dds,*.ico,*.eot,*.pdf,*.swf,*.jar,*.zip,*bmp
set wildignore+=*.swp,*.bak,*.pyc,*.class

" Use a line cursor within insert mode and a block cursor everywhere else.
" Reference chart of values:
"   Ps = 0  -> blinking block.
"   Ps = 1  -> blinking block (default).
"   Ps = 2  -> steady block.
"   Ps = 3  -> blinking underline.
"   Ps = 4  -> steady underline.
"   Ps = 5  -> blinking bar (xterm).
"   Ps = 6  -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" MAPPING
" <ALT+j> ==> ª
" <ALT+k> ==> º
" Mac Alt plus hjkl generates ˙∆˚¬
nnoremap ˚ :m .-2<CR>==
nnoremap ∆ :m .+1<CR>==
" nnoremap º :m .-2<CR>==
" nnoremap ª :m .+1<CR>==

nmap J 5j
nmap K 5k
map J 5j
map K 5k
xmap J 5j
xmap K 5k
nnoremap / /\v
vnoremap / /\v
nnoremap , <leader>
vnoremap , <leader>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap :bp :BufSurfBack<cr>
nmap :bn :BufSurfForward<cr>
vnoremap > >gv
vnoremap < <gv
nnoremap <leader>q  :q<CR>
nnoremap <leader>w  :w<CR>
nnoremap <leader>x  :x<CR>

