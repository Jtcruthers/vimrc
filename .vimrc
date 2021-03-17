syntax on
colorscheme distinguished

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

" Folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2
nnoremap fa za

autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType javascript.jsx setlocal ts=2 sts=2 sw=2
autocmd FileType json setlocal ts=2 sts=2 sw=2
autocmd FileType vue setlocal ts=2 sts=2 sw=2
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

"Plug 'tpope/vim-eunuch'

Plug 'ervandew/supertab'

"Plug 'valloric/matchtagalways'

Plug 'ap/vim-buftabline'

"Plug 'mtscout6/syntastic-local-eslint.vim'

Plug 'w0rp/ale'

Plug 'scrooloose/nerdcommenter'

Plug 'jparise/vim-graphql'

Plug 'pangloss/vim-javascript'

Plug 'leafOfTree/vim-vue-plugin'

Plug 'tpope/vim-fugitive'

Plug 'townk/vim-autoclose'

call plug#end()

"Vim Plugin Maps
map ; :GFiles<CR>

let g:jedi#force_py_version = 3
let g:closetag_filenames = '*.html,*.js, *.jsx'
let g:ale_linter_aliases = {'vue': ['css', 'javascript', 'typescript']}
let g:ale_linters = { 'javascript': ['eslint', 'prettier'], 'jsx': ['eslint'], 'python': ['pylint'], 'vue': ['eslint', 'prettier'] } 
let g:ale_fixers = {'vue': ['eslint', 'prettier'], 'javascript': ['eslint', 'prettier'], 'html': ['eslint', 'prettier'] }
let g:UltiSnipsExpandTrigger="<C-c>"
let g:racer_cmd = "/Users/justin.carruthers/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1


set hidden
silent !stty -ixon
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprevious<CR>
nnoremap <C-Q> :bdelete<CR>
nnoremap <C-W> :bdelete!<CR>
nnoremap <Leader>f :ALEFix<CR>
nnoremap L $
nnoremap H 0

:command JsonFormat %!python -m json.tool
