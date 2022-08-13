"speedie's vim configuration file

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" PlugInstall to install plugins.
call plug#begin('~/.vim/plugged')
Plug 'dylanaraps/wal.vim'
Plug 'lilydjwg/colorizer'
Plug 'dmerejkowsky/vim-ale'
Plug 'ervandew/supertab'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vifm/vifm.vim'
call plug#end()

syntax on
set number
set autoindent
set tabstop=4
set smarttab
set softtabstop=4
set noswapfile
set nocursorline
set noshowmode
colorscheme wal

map ZX :w<cr>
map L 20l
map H 20h
map F :Vifm<cr>
map <F6> :!firefox %<cr>
map <F5> :!/bin/sh -c %<cr>

vmap c :%norm $
vmap C :%norm I

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
