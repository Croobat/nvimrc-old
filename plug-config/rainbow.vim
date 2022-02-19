" junegunn rainbow
"let g:rainbow#max_level = 16
"let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
"let g:rainbow_active = 1

" frazrepo rainbow
let g:rainbow_active = 1

let g:rainbow_load_separately = [
    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
    \ ]

let g:rainbow_guifgs = ['#5af78e','#caa9fa','#ff92d0','#9aedfe', '#f8f8f2']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
