" speedie's vim configuration file

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" PlugInstall to install plugins.
call plug#begin('~/.vim/plugged')
Plug 'dylanaraps/wal.vim'
Plug 'lilydjwg/colorizer'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ervandew/supertab'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vifm/vifm.vim'
Plug 'derekwyatt/vim-fswitch'
Plug 'ap/vim-buftabline'
Plug 'pulkomandy/c.vim'

" Comment these lines if you are using Vim
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
call plug#end()

let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-html', 'coc-html-css-support', 'coc-markdownlint', 'coc-ltex', 'coc-sh']
let TERM = "xterm-true-color"

syntax on
set number
set autoindent
set tabstop=4
set smarttab
set softtabstop=4
set noswapfile
set nocursorline
set noshowmode
set hidden
set mouse=a
set undolevels=1000
set clipboard=unnamedplus
set title
filetype plugin indent on
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
colorscheme wal

map ZX :w<cr>
map L 20l
map H 20h
map F :Vifm<cr>
map ZF :!firefox %<cr>
map ZC :!/bin/sh -c %<cr>
vmap c :%norm $
vmap C :%norm I

nnoremap <C-t> :NERDTree<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-z> :NERDTreeToggle<CR>
nnoremap <C-N> :bnext<CR>
nnoremap <C-A> :badd New file<CR>
nnoremap <C-X> :bdelete!<CR>
nnoremap <C-s> :split<CR>
nnoremap <C-q> :only<CR>

let &t_Cs = "\e[4:3m"
let &t_Ce = "\e[4:0m"

hi CocErrorHighlight gui=undercurl guisp=red
hi SpellBad   guisp=red    gui=undercurl guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE term=underline cterm=undercurl
hi SpellCap   guisp=yellow    gui=undercurl guifg=NONE guibg=NONE ctermfg=NONE ctermbg=NONE term=underline cterm=undercurl
