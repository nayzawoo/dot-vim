function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction
command! Bc call <SID>BufcloseCloseIt()

function! <SID>BuffCloseAll()
    execute(":Bonly")
    execute(":Bc")
endfunction 
command! Bd call <SID>BuffCloseAll()