" Declare the list of plugins.
" https://github.com/junegunn/vim-plug - A minimalist Vim plugin manager.
" Plugins will be downloaded under the specified directory.
"
call plug#begin('~/.vim/plugged')
"  Plug 'altercation/vim-colors-solarized'
"  Plug 'chr4/nginx.vim'
"  Plug 'hashivim/vim-hashicorp-tools'
"  Plug 'jiangmiao/auto-pairs'
"  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"  Plug 'junegunn/fzf.vim'
"  Plug 'junegunn/seoul256.vim'
"  Plug 'jvirtanen/vim-hcl'               " hashicorps plugin
"  Plug 'kevinhwang91/rnvimr'             " ranger plugin
"  Plug 'lervag/vimtex'
"  Plug 'liuchengxu/vista.vim'
"  Plug 'mhinz/vim-signify'
"  Plug 'phaazon/hop.nvim'
"  Plug 'rodjek/vim-puppet'
"  Plug 'scrooloose/nerdtree'
"  Plug 'tmhedberg/simpylfold'
"  Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
"
"  Deactivate because of coc-ansible to work with ansible-language-server
"  Plug 'dense-analysis/ale'
"
" Looks promising, but could not get it to work
"  Plug 'michaelb/sniprun', {'do': 'bash install.sh'}

  Plug 'Yggdroot/indentLine'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'bling/vim-airline'
  Plug 'pearofducks/ansible-vim'
  Plug 'liuchengxu/vim-which-key'         " displays available keybindings
  Plug 'metakirby5/codi.vim'              " virtual text next to your code
  Plug 'mhinz/vim-startify'               " start screen for vim
  Plug 'morhetz/gruvbox'                  " colorscheme
  Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
  Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }
  Plug 'spinks/vim-leader-guide'          " neovim keymap display
  Plug 'tpope/vim-commentary'             " use gcc to comment out
  Plug 'tpope/vim-fugitive'               " A Git wrapper
  Plug 'yaegassy/coc-ansible', {'do': 'yarn install --frozen-lockfile'}

  if has("nvim")
    " I CAN NOT GET LSP TO WORK - try another time
    " Plug 'neovim/nvim-lspconfig'          " built-in language server protocol
    " Plug 'hrsh7th/nvim-cmp'               " completion engine plugin
    " Plug 'hrsh7th/cmp-nvim-lsp'           " nvim-cmp source for neovim builtin LSP client
    " Plug 'hrsh7th/cmp-buffer'
    " Plug 'glepnir/lspsaga.nvim'           " light-weight lsp plugin
    " Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Syntax highlighting
    " This is a requirement, which implements some useful window management
    "   items for neovim
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-telescope/telescope.nvim'  " is a highly extendable fuzzy finder over lists
"    Plug 'hoob3rt/lualine.nvim'           " neovim statusline written in pure lua
    Plug 'kyazdani42/nvim-web-devicons'   " provides icons as well as colors for each icon
    Plug 'ryanoasis/vim-webdevicons'
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'windwp/nvim-autopairs'          " autopair for neovim

  endif

call plug#end()
