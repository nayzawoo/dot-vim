let mapleader = ","
let g:mapleader = ","
nnoremap / /\v
vnoremap / /\v
nnoremap , <leader>
vnoremap , <leader>
inoremap ;author Nay Zaw Oo<naythurain.071@gmail.com>
nnoremap <C-S-Up> ddkP
nnoremap <C-S-Down> ddp
vnoremap <C-S-Up> xkP`[V`]
inoremap <S-Space> <esc>
vnoremap <C-S-Down> xp`[V`]
vnoremap <Enter> <Plug>(EasyAlign)
nnoremap <leader>lr :e app/Http/routes.php<cr>
nnoremap <leader>lc :e config/app.php<cr>
nnoremap <f1> @:
map <F2> :mkseosion! ~/.vim/.session <cr>
map <F3> :source ~/.vim/.session <cr>
nmap J 5j
nmap K 5k
map J 5j
map K 5k
xmap J 5j
xmap K 5k
nnoremap ; :
nnoremap : ;
nnoremap <S-X> ciw
nnoremap j gj
nnoremap k gk
nmap <leader>p "*p<cr>
nmap <leader>; mZA;<esc>`Z;
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap :bp :BufSurfBack<cr>
nmap :bn :BufSurfForward<cr>
nnoremap <leader>te :tabedit <c-r>=expand("%:p:h")<cr>
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tm :tabmove<cr>
nnoremap <leader><S-L> :tabNext<cr>
nnoremap <leader>ss :setlocal spell!<cr>
nnoremap <C-S-Right> :vertical resize +5<cr>
nnoremap <C-S-Left> :vertical resize -5<cr>
nnoremap <leader>w :silent :w!<cr>
nnoremap <C-S> :silent :w!<cr>
map Y y$
noremap <F5> :CommandTFlush<CR>
vnoremap > >gv
vnoremap < <gv
noremap <f11> <nop>
inoremap <c-z> <esc>ua
