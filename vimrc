call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/crontab.vim'
Plug 'oblitum/rainbow'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'tpope/vim-commentary'
call plug#end()

syntax enable
set termguicolors
let g:rainbow_active = 1
"let g:vim_monokai_tasty_italic = 1
let g:lightline = { 'colorscheme': 'monokai_tasty' }

set nocompatible
try
  colorscheme vim-monokai-tasty
  catch
endtry

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
