set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'

Plugin 'tobyS/vmustache'
Plugin 'tobyS/pdv'
Plugin 'junegunn/fzf'
Plugin 'AndrewRadev/sideways.vim'
Plugin 'bling/vim-airline'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'wincent/command-t'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'mattn/emmet-vim'
Plugin 'mbbill/undotree'
" Plugin 'mxw/vim-jsx'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdtree'
" Plugin 'scrooloose/syntastic'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/unite.vim'
Plugin 'SirVer/ultisnips'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/html5.vim'
Plugin 'StanAngeloff/php.vim'
" Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'VundleVim/Vundle.vim'
Plugin 'honza/vim-snippets'
Plugin 'xsbeats/vim-blade'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'ervandew/supertab'
Plugin 'darthmall/vim-vue'
Plugin 'mhinz/vim-startify'
Plugin 'townk/vim-autoclose'
Plugin 'digitaltoad/vim-pug'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'yggdroot/indentline'

" PDV
" https://github.com/tobyS/pdv
let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>

call vundle#end() 
filetype plugin indent on 

colorscheme PaperColor

" neocomplete
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_auto_select = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"


" vim-blade
command! Blade :set ft=blade
autocmd BufRead,BufNewFile *.blade.php set filetype=html

" vim-session
let g:session_autoload = 'yes'
let g:session_autosave = 'yes'

" vim-airline
" let g:airline#extensions#branch#enabled = 1
" let g:airline#extensions#branch#enabled = 1
" if !exists('g:airline_symbols')
"     let g:airline_symbols = {}
" endif
" let g:airline#extensions#tabline#enabled = 0
" let g:airline_theme='wombat'
" let g:airline_theme='luna'
" let g:airline_theme='powerlineish'
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.whitespace = 'Ξ'
" let g:airline#extensions#branch#enabled = 1
" let g:airline#extensions#branch#empty_message = ''

" rainbow_parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" nerdtree
let NERDTreeMinimalUI=1
let NERDTreeShowHidden=1
nnoremap <c-k><c-b> :NERDTreeTabsToggle<CR>
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
" let bgcolor=synIDattr(hlID('NonText'), 'bg#')
" call NERDTreeHighlightFile('json', 'Red', 'none', '#ffa500', "#262626")
" call NERDTreeHighlightFile('html', 'gray', 'none', 'yellow', "#262626")
" call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', "#262626")
" call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', "#262626")
" call NERDTreeHighlightFile('coffee', 'Red', 'white', 'red', "#262626")
" call NERDTreeHighlightFile('js', 'Red', 'white', '#ffa500', "#262626")
" call NERDTreeHighlightFile('php', 'Magenta', 'white', '#6200EA', "#262626")
" call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868', "#262626")
" call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868', "#262626")
" call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868', "#262626")


" vim-emmet
let g:user_emmet_mode='n'    
let g:user_emmet_mode='inv'  
let g:user_emmet_mode='a'    
let g:user_emmet_install_global = 0
nnoremap <leader>e :Emmet
autocmd FileType html,php,css EmmetInstall

"  UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetDirectories=[
            \ "UltiSnips",
            \ "~/.vim/bundle/angular-vim-snippets/UltiSnips"
            \ ]

" syntastic
let g:syntastic_javascript_checkers = ['jshint']

" undotree
nnoremap <leader>ud :UndotreeShow<CR>

" CommandT
nnoremap <C-P> :CommandT<cr>
let g:CommandTWildIgnore= ".idea/**,storage/**,**/bower_components/*,node_modules/**,vendor/**"
let g:CommandTMaxFiles=10000
let g:CommandTMaxHeight = 30
let g:CommandTFileScanner="git"
let g:CommandTMaxDepth=7
let g:CommandTNeverShowDotFiles=1
nnoremap <C-T> :CommandTMRU<cr><tab>

" ctrl_p
" let g:ctrlp_working_path_mode = 'ra'
" if executable('ag')
"   set grepprg=ag\ --nogroup\ --nocolor " Use Ag over Grep
"   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""' " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
" endif

" php.vim
function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction
augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END


" php-cs-fixer
command! Format call <SID>FormatPHP()
function! <SID>FormatPHP()
    execute(":silent :call PhpCsFixerFixFile()")
endfunction
let g:php_cs_fixer_path = "/usr/local/bin/php-cs-fixer"
let g:php_cs_fixer_level = "symfony"
let g:php_cs_fixer_fixers_list = "ordered_use,align_equals,concat_with_spaces,extra_empty_lines,multiline_array_trailing_comma,linefeed,short_tag,indentation,trailing_spaces,align_double_arrow"
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.



" BufExplorer
nnoremap <silent> <c-b> :BufExplorer<CR>

" haya14busa/incsearch.vim
set hlsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearh-backward)
map g/ <Plug>(incsearch-stay)
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" elzr/vim-json
au! BufRead,BufNewFile *.json set filetype=json

" AndrewRadev/sideways.vim
nnoremap <M-left> :SidewaysLeft<cr>
nnoremap <M-right> :SidewaysRight<cr>

" Format
noremap <F3> :Autoformat<CR>
