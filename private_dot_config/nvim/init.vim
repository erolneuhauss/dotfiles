"    _  _             _          ___           __ _
"   | \| |___ _____ _(_)_ __    / __|___ _ _  / _(_)__ _
"   | .` / -_) _ \ V / | '  \  | (__/ _ \ ' \|  _| / _` |
"   |_|\_\___\___/\_/|_|_|_|_|  \___\___/_||_|_| |_\__, |
"                                                  |___/
" ascii created with http://patorjk.com/software/taag/

source $HOME/.config/nvim/plugs/plugins.vim

" many nvim-defaults link autoindent, hlsearch, etc are set already
" so those and more do not to be set here. List here:
" https://neovim.io/doc/user/vim_diff.html

set colorcolumn=80
set confirm
set cursorline
set expandtab
set ignorecase
set list
set modeline
set number relativenumber
set scrolloff=5
set smartcase
set splitbelow
set splitright

filetype plugin indent on
set shiftwidth=4
set smartindent
set softtabstop=4
set tabstop=4

" treat yaml files different
autocmd FileType yaml setlocal ts=2 sts=2 sw=2

let g:loaded_python_provider = 0
let g:python3_host_prog = '/usr/bin/python3'

" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  colorscheme gruvbox
endif

source $HOME/.config/nvim/maps.vim
