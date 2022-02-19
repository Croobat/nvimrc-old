""""""""""""""""""""""
"    NVIM Plugins    "
""""""""""""""""""""""

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    """""""""""""""""""""""
    ""       theme        "
    """""""""""""""""""""""
    "" Dracula theme
    Plug 'Mofiqul/dracula.nvim'


    """""""""""""""""""""""
    ""    Programming     "
    """""""""""""""""""""""
    "" Conqueror of completion (stable)
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    "" Snippets
    Plug 'honza/vim-snippets'
    "Plug 'SirVer/ultisnips'

    "" code runner
    Plug 'xianzhon/vim-code-runner'

    "" Realtime coding
    Plug 'metakirby5/codi.vim'

    "" Arduino
    Plug 'stevearc/vim-arduino'

    "" Real time pages
    Plug 'turbio/bracey.vim'

    """""""""""""""""""""""
    ""    Syntax/typing   "
    """""""""""""""""""""""
    "" Nerd commenter
    Plug 'tpope/vim-commentary'

    "" Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    "" Auto close tags (press >)
    Plug 'alvan/vim-closetag'

    "" Surround with ({""})
    Plug 'tpope/vim-surround'

    "" Replace with register (griw)
    Plug 'vim-scripts/ReplaceWithRegister'

    "" Sort motion
    Plug 'christoomey/vim-sort-motion'

    "" Titlecase
    Plug 'christoomey/vim-titlecase'

    "" Emmet convention
    Plug 'mattn/emmet-vim'

    "" Treesitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    """""""""""""""""""""""
    ""     Navigation     "
    """""""""""""""""""""""
    "" More target operators
    Plug 'wellle/targets.vim'

    "" Visible marks
    Plug 'kshenoy/vim-signature'

    "" Quicker search (s)
    Plug 'justinmk/vim-sneak'

    "" Better t and f
    Plug 'unblevable/quick-scope'

    """""""""""""""""""""""
    ""   File navigation  "
    """""""""""""""""""""""
    "" Sayonara (close buffers)
    Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }

    "" Fuzzy finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'


    """""""""""""""""""""""
    ""   Git integration  "
    """""""""""""""""""""""
     "" Git integration
    Plug 'mhinz/vim-signify'

    "" Git commands from vim (:Git)
    Plug 'tpope/vim-fugitive'

    "" Hub commands (:GBrowse :GRemove)
    "" Plug 'tpope/vim-rhubarb'

    "" Browse commits (:GV! :GV? :GV)
    "" Plug 'junegunn/gv.vim'


    """""""""""""""""""""""
    ""      Objects       "
    """""""""""""""""""""""
    "" Needed for kana text objects
    Plug 'kana/vim-textobj-user'

    "" Intend (ai, ii)
    Plug 'michaeljsmith/vim-indent-object'

    "" Entire file (ae, ie)
    Plug 'kana/vim-textobj-entire'

    "" Significant line object
    Plug 'kana/vim-textobj-line'

    "" Ruby block (ends with end)
    Plug 'nelstrom/vim-textobj-rubyblock'


    """""""""""""""""""""""
    ""   Aesthetics/QOL   "
    """""""""""""""""""""""
    "" Status bar
    Plug 'nvim-lualine/lualine.nvim'
    "" If you want to have icons in your statusline choose one of these
    "Plug 'kyazdani42/nvim-web-devicons'

    "" Colors
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'p00f/nvim-ts-rainbow'
    " Plug 'frazrepo/vim-rainbow'
    "" Plug 'junegunn/rainbow_parentheses.vim'

    "" zen mode
    Plug 'junegunn/goyo.vim'

    "" Which key
    Plug 'liuchengxu/vim-which-key'

    "" neovim sudo privileges (:Sudawrite :Sudaread)
    Plug 'lambdalisue/suda.vim'

    "" Show indent lines
    Plug 'Yggdroot/indentLine'

    "" Add repeat dot with some plugins
    Plug 'tpope/vim-repeat'

    "" Startup TB
    "" Plug 'tweekmonster/startuptime.vim'

    """
    call plug#end()

