let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ ]

let g:startify_custom_header = [
        \ '                        _            ',
        \ '  _ __   ___  _____   _(_)_ __ ___   ',
        \ ' | |_ \ / _ \/ _ \ \ / / | |_ ` _ \  ',
        \ ' | | | |  __/ (_) \ V /| | | | | | | ',
        \ ' |_| |_|\___|\___/ \_/ |_|_| |_| |_| ',
        \]
