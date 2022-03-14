""""""""""""""""""""""
"  Custom mappings  "
""""""""""""""""""""""

nnoremap <space> <nop>

" Disable Ex mode
map q: <Nop>
nnoremap Q <nop>

" Split long lines
nnoremap Q gqq

" Use alt + hjkl to resize windows
nnoremap <M-J>    :resize -2<CR>
nnoremap <M-K>    :resize +2<CR>
nnoremap <M-H>    :vertical resize +2<CR>
nnoremap <M-L>    :vertical resize -2<CR>

" I hate escape more than anything else
inoremap jk <Esc>

" Better insert navigation
inoremap <M-l> <Esc>la
inoremap <M-h> <Esc>ha
inoremap <M-j> <Esc>ja
inoremap <M-k> <Esc>ka

" Fix multiline segments
nnoremap j gj
nnoremap k gk

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR><CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR><CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <M-j> <C-w>h
nnoremap <M-h> <C-w>j
nnoremap <M-l> <C-w>k
nnoremap <M-k> <C-w>l

" Folding
nnoremap , za
" New fold structure
nnoremap 'm <esc>I## {{{<CR>  <backspace><CR>}}}<esc>kkI##  <esc>i

" insert line
nnoremap <enter> o<esc>
nnoremap <A-enter> O<esc>

" Word wrap
nnoremap <A-z> :set wrap!<CR>

" Faster scrolling
nnoremap <c-j> 5j
nnoremap <c-k> 5k
xnoremap <c-j> 5j
xnoremap <c-k> 5k

" Better pasting
nnoremap <c-p> pg;h

" Code runner (visual)
" vmap <leader>b <plug>CodeRunner
