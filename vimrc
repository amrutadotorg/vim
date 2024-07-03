"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/crontab.vim'
Plug 'frazrepo/vim-rainbow'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'tpope/vim-commentary'
Plug 'ojroques/vim-oscyank', {'branch': 'main'}
call plug#end()

syntax on
colorscheme vim-monokai-tasty
filetype on
filetype plugin on
filetype indent on


au! BufNewFile,BufReadPost *.{yaml,yml,config} set filetype=yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

"lightline settings"
set laststatus=2
set noshowmode

"Keyboard shortcuts
autocmd FileType php nnoremap <F5> <Esc>:w<CR>:!clear;wp eval-file %<CR>
autocmd FileType python nnoremap <F5> <Esc>:w<CR>:!clear;python3 %<CR>
map <C-o> :NERDTreeToggle<CR>
noremap // :Commentary<cr>
nnoremap <S-Up>   :<C-u>silent! move-2<CR>==
nnoremap <S-Down> :<C-u>silent! move+<CR>==
xnoremap <S-Up>   :<C-u>silent! '<,'>move-2<CR>gv=gv
xnoremap <S-Down> :<C-u>silent! '<,'>move'>+<CR>gv=gv


" Map y to use OSCYankOperator in normal mode
nmap y <Plug>OSCYankOperator

" Map yy to use OSCYankOperator on the current line in normal mode
nmap yy y_

" Map y to use OSCYankVisual in visual mode
vmap y <Plug>OSCYankVisual
