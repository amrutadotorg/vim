call plug#begin()
Plug 'sickill/vim-monokai'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
"ALE (Asynchronous Lint Engine) is a comprehensive code analysis plugin for Vim.
Plug 'w0rp/ale'	
call plug#end()
syntax enable

try
  colorscheme monokai
  catch
endtry

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
