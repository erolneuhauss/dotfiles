" Declare the list of plugins.
" https://github.com/junegunn/vim-plug - A minimalist Vim plugin manager.
" Plugins will be downloaded under the specified directory.
"
call plug#begin('~/.vim/plugged')
  Plug 'Yggdroot/indentLine'
  Plug 'altercation/vim-colors-solarized'
  Plug 'bling/vim-airline'
  Plug 'chr4/nginx.vim'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/seoul256.vim'
  Plug 'kevinhwang91/rnvimr'
  Plug 'lervag/vimtex'
  Plug 'metakirby5/codi.vim'
  Plug 'mhinz/vim-signify'
  Plug 'mhinz/vim-startify'
  Plug 'morhetz/gruvbox'
  Plug 'dense-analysis/ale'
  " https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions
  Plug 'neoclide/coc.nvim'
  Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
  Plug 'pearofducks/ansible-vim'
  Plug 'rodjek/vim-puppet'
  Plug 'ryanoasis/vim-webdevicons'
  Plug 'scrooloose/nerdtree'
  " did CocInstall coc-jedi instead of line below
  " Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build' }
  Plug 'spinks/vim-leader-guide'
  Plug 'tmhedberg/simpylfold'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'jiangmiao/auto-pairs'
  Plug 'liuchengxu/vista.vim'
  Plug 'liuchengxu/vim-which-key'
  Plug 'hashivim/vim-hashicorp-tools'
call plug#end()

