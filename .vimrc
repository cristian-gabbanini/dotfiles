call plug#begin('~/.vim/plugged')
	Plug 'scrooloose/nerdtree'
	Plug 'altercation/vim-colors-solarized'
	Plug 'shougo/vimproc'
	Plug 'shougo/vimshell'
	Plug 'pangloss/vim-javascript'
	Plug 'itchyny/lightline.vim'
	Plug 'chriskempson/base16-vim'
  Plug 'w0rp/ale'
call plug#end()


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <silent> <C-n> :NERDTreeFocus<CR>
map <silent> <C-n> :NERDTreeToggle<CR>

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
let g:ale_lint_on_text_changed = 1

let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
 
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"

let g:ale_fixers = {'javascript': ['prettier']}
let g:ale_fix_on_save = 1


set cole=1
set conceallevel=1
set laststatus=2
set t_Co=256
set tabstop=2
set shiftwidth=4
set softtabstop=2
set expandtab

syntax on
colorscheme base16-default-dark

