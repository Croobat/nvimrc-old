""""""""""""""""""""""
"  Custom commands  "
""""""""""""""""""""""

function! CocToggle()
    if g:coc_enabled
        CocDisable
    else
        CocEnable
    endif
endfunction
command! CocToggle :call CocToggle()

" You can't stop me
cmap w!! w !sudo tee %
command W SudaWrite

" Tags file
command! MakeTags !ctags -R .
