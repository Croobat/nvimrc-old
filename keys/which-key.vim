""""""""""""""""""""""
"  Map leader  "
""""""""""""""""""""""

" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle'  , 'comment' ]
let g:which_key_map['E'] = [ ':CocCommand explorer --preset floating'       , 'float explorer' ]
let g:which_key_map['S'] = [ ':Startify'                  , 'start screen' ]
let g:which_key_map['b'] = [ '<Plug>CodeRunner'                  , 'Run code' ]
let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer' ]
let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
let g:which_key_map['m'] = [ ':Marks'                     , 'split marks']
let g:which_key_map['q'] = [ ':Sayonara'                     , 'close buffer']
let g:which_key_map['r'] = [ ':Ranger'                    , 'ranger' ]
let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']
let g:which_key_map['z'] = [ ':Goyo'                       , 'zen' ]

" s is for search (FZF)
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'     , 'history'],
      \ ';' : [':Commands'     , 'commands'],
      \ 'a' : [':Ag'           , 'text Ag'],
      \ 'b' : [':BLines'       , 'current buffer'],
      \ 'B' : [':Buffers'      , 'open buffers'],
      \ 'c' : [':Commits'      , 'commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':Files'        , 'files'],
      \ 'g' : [':GFiles'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':History'      , 'file history'],
      \ 'H' : [':History:'     , 'command history'],
      \ 'l' : [':Lines'        , 'lines'] ,
      \ 'm' : [':Marks'        , 'marks'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 'p' : [':Helptags'     , 'help tags'] ,
      \ 'P' : [':Tags'         , 'project tags'],
      \ 's' : [':Snippets'     , 'snippets'],
      \ 'S' : [':Colors'       , 'color schemes'],
      \ 't' : [':Rg'           , 'text Rg'],
      \ 'T' : [':BTags'        , 'buffer tags'],
      \ 'w' : [':Windows'      , 'search windows'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }

" g is for hunks (signify)
let g:which_key_map.g = {
      \ 'name' : '+hunk' ,
      \ 'J' : ['99<plug>(signify-next-hunk)'      , 'Last hunk' ],
      \ 'K' : ['99<plug>(signify-prev-hunk)'      , 'First hunk'],
      \ 'j' : ['<plug>(signify-next-hunk)'        , 'Next hunk' ],
      \ 'k' : ['<plug>(signify-prev-hunk)'        , 'Prev hunk' ],
      \ }

" c is for Conqueror of completion (Coc)
let g:which_key_map.c = {
      \ 'name' : '+Coc' ,
      \ 'a'  : ['<Plug>(coc-codeaction-selected)'      , 'Codeaction selection'],
      \ 'ac' : ['<Plug>(coc-codeaction)'      , 'Codeaction buffer'],
      \ 'c'  : [':<C-u>CocList commands<cr>'      , 'Show commands'],
      \ 'cl' : ['<Plug>(coc-codelens-action)'      , 'Code lens current line'],
      \ 'd'  : [':<C-u>CocList diagnostics<cr>'      , 'Show all diagnostics'],
      \ 'e'  : [':<C-u>CocList extensions<cr>'      , 'Manage extensions'],
      \ 'fo' : ['<Plug>(coc-format-selected)'      , 'Format selection'],
      \ 'j'  : [':<C-u>CocNext<CR>'      , 'Default action next item'],
      \ 'k'  : [':<C-u>CocPrev<CR>'      , 'Default action prev item'],
      \ 'o'  : [':<C-u>CocList outline<cr>'      , 'Search symbol in doc'],
      \ 'p'  : [':<C-u>CocListResume<CR>'      , 'Resum latest coc list'],
      \ 'qf' : ['<Plug>(coc-fix-current)'      , 'Autofix current line'],
      \ 'rn' : ['<Plug>(coc-rename)'      , 'Symbol renaming'],
      \ 's'  : [':<C-u>CocList -I symbols<cr>'      , 'Search workspace symbols'],
      \ 't'  :  [':CocToggle'      , 'Toggle Coc'],
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
