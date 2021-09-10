"    _  _             _          ___           __ _
"   | \| |___ _____ _(_)_ __    / __|___ _ _  / _(_)__ _
"   | .` / -_) _ \ V / | '  \  | (__/ _ \ ' \|  _| / _` |
"   |_|\_\___\___/\_/|_|_|_|_|  \___\___/_||_|_| |_\__, |
"                                                  |___/
" ascii created with http://patorjk.com/software/taag/

source $HOME/.config/nvim/plugs/plugins.vim
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/signify.vim
source $HOME/.config/nvim/plug-config/ale.vim
source $HOME/.config/nvim/plug-config/fzf.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/codi.vim

set smartindent
set confirm
set cursorline
set colorcolumn=80
set expandtab
set ignorecase
set smartcase
set list
set modeline
"set mouse=a
set number relativenumber
set scrolloff=5
set tabstop=4
set shiftwidth=4
set softtabstop=4
set splitbelow
set splitright
syntax on
filetype plugin indent on
if (has("termguicolors"))
  set termguicolors
endif
colorscheme gruvbox
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
highlight CursorLine term=bold cterm=bold ctermbg=234

" https://www.vimfromscratch.com/articles/vim-for-python/
" https://github.com/dense-analysis/ale#installation-with-vim-plug
let g:ale_disable_lsp = 1
" Keybindings
let mapleader = ','
let mpalocalleader = '\\'

let g:loaded_python_provider = 0
let g:python3_host_prog = '/usr/bin/python3'
let g:jedi#auto_initialization = 0

let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" buffers
nmap <leader>1 :bprevious<CR>
nmap <leader>2 :bnext<CR>
nmap <leader>i :ls<CR>:b<Space>

"nmap <leader>n :NERDTreeFocus<CR>
"nmap <leader>c :NERDTreeClose<CR>
nmap <leader>f :Files<CR>
nmap <leader>g :vertical G<CR>
nmap <leader>r :RnvimrToggle<CR>
nmap <leader>s :Startify<CR>
nmap <leader>t :split<CR> :term make<CR> :startinsert<CR>

" show mappings
nnoremap <silent> <leader> :WhichKey ','<CR>

" clear search highlights
" nnoremap <silent> <leader>a :<C-u>nohlsearch<CR><C-l>
nnoremap <space><space> :set nohlsearch!<CR>

" improve completion popup menu
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" treat yaml files differently
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

augroup exe_code
    autocmd!

    " exec python code
    autocmd FileType python nnoremap <buffer> <localleader>r
        \ :vsplit<CR> :term python %<CR> :startinsert<CR>
augroup END

