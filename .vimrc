" Helptags
syntax on
filetype plugin indent on
set nocompatible
set noerrorbells
set list listchars=tab:»·,trail:·
set hidden
set nostartofline
set laststatus=2
set autoread
set autowrite
set clipboard=unnamedplus
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set autoindent
set cindent
set copyindent
set smartindent
set novisualbell
set nocursorcolumn
set norelativenumber
set noerrorbells
set nobackup
set noswapfile
set smartcase
set nohlsearch
set incsearch
set lazyredraw
set magic
set ignorecase
set showtabline=1
set encoding=utf-8
set nospell
set nowrap
set number
set showcmd
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

set wildignore+=*/heart/**
set wildignore+=*/storage/**
set wildignore+=/node_modules/**
set wildignore+=*/public/bower_components/**
set wildignore+=*.DS_Store
set wildignore+=*.jpg,*.jpeg,*.png,*.gif,*.ttf,*.tga,*.dds,*.ico,*.eot,*.pdf,*.swf,*.jar,*.zip,*bmp
set wildignore+=*.swp,*.bak,*.pyc,*.class
" set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 12
" set guifont=Source\ CodePro\ Regular\ 13
set guifont=Ubuntu\ Mono\ 12
" set guifont=Anonymous\ Pro\ 13
" set guifont=Inconsolata\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 13
set lines=500 columns=200
set linespace=15
set mouse=a
set cursorline
set background=dark
if $COLORTERM == 'gnome-terminal'
    if !has('gui_running')
      set t_Co=256
    endif
endif

" hi Directory guifg=#16A085 guibg=#000000

for f in split(glob('~/.vim/vimrcs/*.vim'), '\n')
  exe 'source' f
endfor
