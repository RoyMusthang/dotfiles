" PLUGINS
call plug#begin()
Plug 'windwp/nvim-autopairs'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'ryanoasis/vim-devicons'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
call plug#end()



" CONFIGURAÇÕES BASICAS

set nocompatible		" Funciona como vim
filetype plugin indent on
syntax enable			" Habilita a sintaxe
set number " Numeração de linhas
set path+=**
set wildmode=longest,list,full
set encoding=utf8 		" Modo de texto com acentuação
set showmatch
set linebreak
set nobackup
set ignorecase 			" Ignora a diferença de minusculo e maiusculo
set smartcase			
set clipboard+=unnamedplus 	" Usa o ctrl+c ctrl+v no registro do nvim
set tabstop=2
set shiftwidth=2		" Ao recuar com '>', use 4 espaços de largura
set softtabstop=2
set spelllang=pt_br		" Configura a lingua
set incsearch 			" Incrementa a pesquisa
" set fillchars+=eob:\		" Linhas vazias no final de um buffer
set hidden
set signcolumn=yes			" Adicione uma coluna à esquerda para o lint	
" ao teclar a barra de espaço no modo normal, o Vim
" irá colapsar ou expandir o bloco de código do cursor
" foldlevel é a partir de que nível de indentação o 
" código iniciará colapsado
set foldmethod=syntax
set foldlevel=99
nnoremap <space> za


" ESTILO
highlight Comment cterm=italic
colorscheme gruvbox
let g:airline_theme = 'gruvbox'

nnoremap <C-n> :NERDTree<CR>


" AirLine""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
set guifont=DroidSansMono\ Nerd\ Font\ 11
" Find files using Telescope command-line sugar.
    nnoremap <leader>ff <cmd>Telescope find_files<cr>
    nnoremap <leader>fg <cmd>Telescope live_grep<cr>
    nnoremap <leader>fb <cmd>Telescope buffers<cr>
    nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" Select all
nmap <C-a> gg<S-v>G
" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" Move window
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map sh <C-w>h
map sk <C-w>k
map sj <C-w>j
map sl <C-w>l
" Resize window
nmap <C-w><left> <C-w><
nmap <C-w><right> <C-w>>
nmap <C-w><up> <C-w>+
nmap <C-w><down> <C-w>-
