""""""""""""""""""""""
"  Auto source  "
""""""""""""""""""""""

" VIMRC
au! BufWritePost $MYVIMRC source %

" Xbinkeys
autocmd BufWritePost *xbindkeysrc !killall xbindkeys; xbindkeys --poll-rc

" sxhkd
autocmd BufWritePost *sxhkdrc !killall sxhkd; setsid sxhkd -t 2 &

" Suckless
" autocmd BufWritePost config.h,config.def.h !sudo make install

" Remove trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e
