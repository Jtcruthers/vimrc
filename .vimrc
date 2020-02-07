syntax on
colorscheme xoria256

set nowrap                      " don't wrap lines
set tabstop=4                   " a tab is four spaces
set smarttab
set tags=tags
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set smartcase                   " ignore case if search pattern is all lowercase,
set timeout timeoutlen=200 ttimeoutlen=100
set visualbell           " don't beep
set autowrite   "Save on buffer switch
set mouse=a
set ruler
set laststatus=2
set showcmd
set ignorecase  " Ignore case in searches
set smartcase   " Make searches case sensitive if capital letter is used
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType javascript.jsx setlocal ts=2 sts=2 sw=2
autocmd FileType html setlocal ts=2 sts=2 sw=2
autocmd FileType yaml setlocal ts=2 sts=2 sw=2
    
" Down is really the next line
nnoremap j gj
nnoremap k gk

"Auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"easier window navigation

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"Resize vsplit
nmap <C-v> :vertical resize +5<cr>
nmap 25 :vertical resize 40<cr>
nmap 50 <c-w>=
nmap 75 :vertical resize 120<cr>

"Vim-Plug
call plug#begin('~/vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'itchyny/lightline.vim'

Plug 'tpope/vim-eunuch'

Plug 'scrooloose/nerdtree'

Plug 'airblade/vim-gitgutter'

Plug 'davidhalter/jedi-vim'

Plug 'ervandew/supertab'

Plug 'valloric/matchtagalways'

Plug 'alvan/vim-closetag'

Plug 'ap/vim-buftabline'

Plug 'mxw/vim-jsx'

Plug 'gorodinskiy/vim-coloresque'

Plug 'mtscout6/syntastic-local-eslint.vim'

Plug 'w0rp/ale'

Plug 'epilande/vim-es2015-snippets'

Plug 'epilande/vim-react-snippets'

Plug 'SirVer/ultisnips'

Plug 'mbbill/undotree'

Plug 'racer-rust/vim-racer'

Plug 'scrooloose/nerdcommenter'

call plug#end()

"Vim Plugin Maps
map ; :Files<CR>

let g:jedi#force_py_version = 3
let g:closetag_filenames = '*.html,*.js, *.jsx'
let g:ale_linters = { 'javascript': ['eslint'], 'jsx': ['eslint'], 'python': ['pylint'] } 
let g:ale_fixers = {'javascript': ['eslint'] }
let g:UltiSnipsExpandTrigger="<C-c>"
let g:racer_cmd = "/Users/justin.carruthers/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1


set hidden
silent !stty -ixon
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprevious<CR>
nnoremap <C-Q> :bdelete<CR>
nnoremap L $
nnoremap H 0

:command JsonFormat %!python -m json.tool
