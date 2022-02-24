let g:plugged_home = '~/.nvim/plugged'

"*********************************
"	Global Configs
"*********************************
syntax on
set nu
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set smartindent
set hidden
set incsearch
set ignorecase
set encoding=utf-8
filetype plugin indent on
let mapleader="\<space>"
set background=dark
if (has("termguicolors"))
 set termguicolors
endif


"********************************
"	Plugins
"********************************
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'thaerkh/vim-indentguides'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"JavaScript || HTML || CSS
Plug 'pangloss/vim-javascript'
Plug 'othree/html5.vim'
Plug 'jelera/vim-javascript-syntax'
Plug 'isruslan/vim-es6'
Plug 'gko/vim-coloresque'
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'
"Theme
Plug 'rafi/awesome-vim-colorschemes'
" Test plugins
" Language Client Server
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

"*********************************
"	Plugins Config
"*********************************
" AirLine
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme= 'papercolor'

" ALE
let g:ale_linters = {
\}
let g:ale_fixers = {
\   '*': ['trim_whitespace'],
\}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1

"Ident Guides
let g:indentguides_spacechar = '▏'
let g:indentguides_tabchar = '▏'

"nerdtree
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeIgnore = []
let NERDTreeStatusline = ''

"Language Client Protocol
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ }

"Snippets Configs
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"


"Theme
colorscheme PaperColor

"********************************
"	Remaps
"********************************
" NerdThree
nmap <C-n> :NERDTreeToggle<CR>
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>
nnoremap <F1> :bprevious<CR>
nnoremap <F2> :bnext<CR>
nnoremap <C-s> :w!<CR>
nnoremap <silent> <s-Down> :m +1<CR>
nnoremap <silent> <s-Up> :m -2<CR>
"Maps to navigate in Insert Mode
inoremap <C-k> <C-o>gk
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <C-o>gj


"*********************************
" autocmd/Terminal
"*********************************
" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://zsh
  resize 10
endfunction
nnoremap <c-t> :call OpenTerminal()<CR>
