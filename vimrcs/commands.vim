autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufLeave,FocusLost * silent! wall
fun! <SID>removeWhiteSpace()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
command! Ds :%s/\s\+$//e
command! Reload :source ~/.vimrc
command! Html :set ft=html
command! Php :set ft=php
command! Javascript :set ft=javascript
command! Css :set ft=css
command! Rc :e $MYVIMRC
command! -bang Fuck if "<bang>" == "!" |
      \ execute 'w !sudo tee > /dev/null %' |
      \ echohl WarningMsg |
      \ echo 'PEWPEW! SUDO!' |
      \ echohl None |
      \ endif
augroup autoload_vimrc
au!
au BufWritePost $MYVIMRC so $MYVIMRC
augroup END

for f in split(glob('~/.vim/vimrcs/scripts/*.vim'), '\n')
  exe 'source' f
endfor
