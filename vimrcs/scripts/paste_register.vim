function! Reg()
    reg
    echo "Register: "
    let char = nr2char(getchar())
    if char != "\<Esc>"
        execute "normal! \"".char."p"
    endif
    redraw
endfunction
command! -nargs=0 Reg call Reg()
inoremap <c-v> <esc>:Reg<cr>