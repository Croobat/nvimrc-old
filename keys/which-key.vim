""""""""""""""""""""""
"     Map leader     "
""""""""""""""""""""""

" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'

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
let g:which_key_map[' '] = [ 'i\<Space>\<Esc>l'                          , 'add space'          ]
let g:which_key_map['/'] = [ 'gcc\<Esc>'                                 , 'comment line'       ]
let g:which_key_map[';'] = [ '$a;\<Esc>'                                 , 'Quick semicolon'    ]
let g:which_key_map['.'] = [ '$a.\<Esc>'                                 , 'Quick dot'          ]
let g:which_key_map[':'] = [ '$a:\<Esc>'                                 , 'Quick colon'        ]
let g:which_key_map[','] = [ '$a,\<Esc>'                                 , 'Quick comma'        ]
let g:which_key_map['D'] = [ ':Codi!'                                    , 'Disable codi'       ]
let g:which_key_map['E'] = [ ':CocCommand explorer --preset floating'    , 'float explorer'     ]
let g:which_key_map['b'] = [ '<Plug>CodeRunner'                          , 'Run code'           ]
let g:which_key_map['d'] = [ ':Codi'                                     , 'Enable codi'        ]
let g:which_key_map['e'] = [ ':CocCommand explorer'                      , 'explorer'           ]
let g:which_key_map['h'] = [ '<C-W>s'                                    , 'split below'        ]
let g:which_key_map['l'] = [ ':Bracey'                                   , 'live server'        ]
let g:which_key_map['L'] = [ ':BraceyReload'                             , 'reload live server' ]
let g:which_key_map['m'] = [ ':Marks'                                    , 'split marks'        ]
let g:which_key_map['q'] = [ ':Sayonara'                                 , 'close buffer'       ]
let g:which_key_map['s'] = [ '<Plug>SortMotion'                          , 'Sort'               ]
let g:which_key_map['T'] = [ 'gzap'                                      , 'Title c. paragraph' ]
let g:which_key_map['t'] = [ 'gz'                                        , 'Title case'         ]
let g:which_key_map['v'] = [ '<C-W>v'                                    , 'split right'        ]
let g:which_key_map['z'] = [ ':Goyo'                                     , 'zen'                ]

let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'     , 'history'              ],
      \ ';' : [':Commands'     , 'commands'             ],
      \ 'a' : [':Ag'           , 'text Ag'              ],
      \ 'b' : [':BLines'       , 'current buffer'       ],
      \ 'B' : [':Buffers'      , 'open buffers'         ],
      \ 'c' : [':Commits'      , 'commits'              ],
      \ 'C' : [':BCommits'     , 'buffer commits'       ],
      \ 'f' : [':Files'        , 'files'                ],
      \ 'g' : [':GFiles'       , 'git files'            ],
      \ 'G' : [':GFiles?'      , 'modified git files'   ],
      \ 'h' : [':History'      , 'file history'         ],
      \ 'H' : [':History:'     , 'command history'      ],
      \ 'l' : [':Lines'        , 'lines'                ],
      \ 'm' : [':Marks'        , 'marks'                ],
      \ 'M' : [':Maps'         , 'normal maps'          ],
      \ 'p' : [':Helptags'     , 'help tags'            ],
      \ 'P' : [':Tags'         , 'project tags'         ],
      \ 's' : [':Snippets'     , 'snippets'             ],
      \ 'S' : [':Colors'       , 'color schemes'        ],
      \ 't' : [':Rg'           , 'text Rg'              ],
      \ 'T' : [':BTags'        , 'buffer tags'          ],
      \ 'w' : [':Windows'      , 'search windows'       ],
      \ 'y' : [':Filetypes'    , 'file types'           ],
      \ 'z' : [':FZF'          , 'FZF'                  ],
      \ }

" g is for hunks (signify)
let g:which_key_map.h = {
      \ 'name' : '+hunk' ,
      \ 'J' : ['99<plug>(signify-next-hunk)'      , 'Last hunk' ],
      \ 'K' : ['99<plug>(signify-prev-hunk)'      , 'First hunk'],
      \ 'j' : ['<plug>(signify-next-hunk)'        , 'Next hunk' ],
      \ 'k' : ['<plug>(signify-prev-hunk)'        , 'Prev hunk' ],
      \ }

" c is for Conqueror of completion (Coc)
let g:which_key_map.k = {
      \ 'name' : '+Coc' ,
      \ 'a'  : ['<Plug>(coc-codeaction-selected)'     , 'Codeaction selection'    ],
      \ 'ac' : ['<Plug>(coc-codeaction)'              , 'Codeaction buffer'       ],
      \ 'c'  : [':CocList commands'                   , 'Show commands'           ],
      \ 'cl' : ['<Plug>(coc-codelens-action)'         , 'Code lens current line'  ],
      \ 'd'  : [':CocList diagnostics'                , 'Show all diagnostics'    ],
      \ 'e'  : [':CocList extensions'                 , 'Manage extensions'       ],
      \ 'fo' : ['<Plug>(coc-format-selected)'         , 'Format selection'        ],
      \ 'j'  : [':CocNext'                            , 'Default action next item'],
      \ 'k'  : [':CocPrev'                            , 'Default action prev item'],
      \ 'o'  : [':CocList outline'                    , 'Search symbol in doc'    ],
      \ 'p'  : [':CocListResume'                      , 'Resume latest coc list'  ],
      \ 'qf' : ['<Plug>(coc-fix-current)'             , 'Autofix current line'    ],
      \ 'rn' : ['<Plug>(coc-rename)'                  , 'Symbol renaming'         ],
      \ 's'  : [':CocList -I symbols'                 , 'Search workspace symbols'],
      \ 't'  :  [':CocToggle'                         , 'Toggle Coc'              ],
      \ }

" " space is for better navigation (easymotion)
" let g:which_key_map.s = {
"       \ 'name' : '+easymotion' ,
"       \ 'f' : ['<Plug>(easymotion-bd-f)'            , 'find 1 char' ],
"       \ 's' : ['<Plug>(easymotion-overwin-f2)'      , 'find 2 char' ],
"       \ 'l' : ['<Plug>(easymotion-bd-jk)'           , 'find line'   ],
"       \ 'w' : ['<Plug>(easymotion-bd-w)'            , 'find word'   ],
"       \ }

let g:which_key_map.a = {
      \ 'name' : '+arduino' ,
      \ 'a' : [':ArduinoVerify'             , 'Build sketch'            ],
      \ 'b' : [':ArduinoUpload'             , 'Build and upload'        ],
      \ 'd' : [':ArduinoUploadAndSerial'    , 'Build, upload and debug' ],
      \ 'q' : [':ArduinoChooseBoard'        , 'Choose board'            ],
      \ 'p' : [':ArduinoChooseProgrammer'   , 'Choose programmer'       ],
      \ }

" let g:which_key_map.c = {
"       \ 'name' : '+comment' ,
"       \ '/' : ['<Plug>NERDCommenterToggle'     , 'Line'             ],
"       \ 'm' : ['<Plug>NERDCommenterMinimal'    , 'Minimal'          ],
"       \ 'i' : ['<Plug>NERDCommenterInvert'     , 'Invert'           ],
"       \ 's' : ['<Plug>NERDCommenterSexy'       , 'Sexy'             ],
"       \ 'y' : ['<Plug>NERDCommenterYank'       , 'Yank and comment' ],
"       \ '$' : ['<Plug>NERDCommenterToEOL'      , 'EOL'              ],
"       \ 'A' : ['<Plug>NERDCommenterAppend'     , 'Append'           ],
"       \ 'I' : ['<Plug>NERDCommenterInsert'     , 'Insert'           ],
"       \ 'c' : ['<Plug>NERDCommenterComment'    , 'Comment'          ],
"       \ 'n' : ['<Plug>NERDCommenterNested'     , 'Nesting'          ],
"       \ 'a' : ['<Plug>NERDCommenterAltDelims'  , 'Alt delimiters'   ],
"       \ 'l' : ['<Plug>NERDCommenterAlignLeft'  , 'Align left'       ],
"       \ 'b' : ['<Plug>NERDCommenterAlignBoth'  , 'Align both'       ],
"       \ 'u' : ['<Plug>NERDCommenterUncomment'  , 'Uncomment'        ],
"       \ 'p' : ["gcap"        , 'Paragraph'                          ],
"       \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
