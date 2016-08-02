function! SearchAndReplace()
    if has("gui_running")
        let s:search  = inputdialog("Search: ")
        let s:replace = inputdialog("Replace: ")
    else
        let s:search  = input("Search: ")
        let s:replace = input("Replace: ")
    endif
    if (s:search == "")
        return
    endif
    exec("%s/". s:search . "/" . s:replace . "/g")
endfunction 
command! -nargs=0 SearchAndReplace call SearchAndReplace()