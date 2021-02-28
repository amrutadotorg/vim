"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"vim +PlugUpgrade +PlugUpdate +qa!
call plug#begin()
Plug 'sickill/vim-monokai'
Plug 'phanviet/vim-monokai-pro'
Plug 'sainnhe/sonokai'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
"ALE (Asynchronous Lint Engine) is a comprehensive code analysis plugin for Vim.
Plug 'w0rp/ale'
call plug#end()
syntax enable
set nocompatible

try
  colorscheme sonokai
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

"ALE
let b:ale_linters = ['pyflakes', 'flake8', 'pylint']
let b:ale_fixers = ['eslint']
let b:ale_fix_on_save = 1
