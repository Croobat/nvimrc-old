""""""""""""""""""""""
"  NVIM Plugins  "
""""""""""""""""""""""

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " Dracula theme
    Plug 'Mofiqul/dracula.nvim'

    " File Explorer
    Plug 'scrooloose/NERDTree'

    " Nerd commenter
    Plug 'preservim/nerdcommenter'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Intellisense Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Status line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Ranger FM
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

    " Sayonara (close buffers)
    Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }

    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'

    " Colors
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'junegunn/rainbow_parentheses.vim'

    " More target operators
    Plug 'wellle/targets.vim'

    " Visible marks
    Plug 'kshenoy/vim-signature'

    " Snippets
    Plug 'honza/vim-snippets'

    " Startify (project manager vim)
    Plug 'mhinz/vim-startify'

    " Git integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

    " Better navigation
    Plug 'justinmk/vim-sneak'
    Plug 'unblevable/quick-scope'

    " Which key
    Plug 'liuchengxu/vim-which-key'

    " sudo privileges neovim
    Plug 'lambdalisue/suda.vim'

    " zen mode
    Plug 'junegunn/goyo.vim'

    " code runner
    Plug 'xianzhon/vim-code-runner'

    """
    call plug#end()

