let mapleader = ","

nnoremap <CR> :noh<CR><CR>
nnoremap <silent> <leader><space> :Files<CR>

syntax on

filetype plugin on
filetype indent on

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

set nobackup
set nowb
set noswapfile
set backspace=indent,eol,start
set rtp+=/usr/local/opt/fzf

set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set scrolloff=10
set nu

set synmaxcol=200

highlight OverLength ctermbg=green ctermfg=white guibg=#592929
match OverLength /\%81v/

call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'adelarsq/vim-matchit'
Plug 'alvan/vim-closetag'
Plug 'elixir-editors/vim-elixir'
Plug 'flowtype/vim-flow'
Plug 'jparise/vim-graphql'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-ruby/vim-ruby'

call plug#end()

let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <silent> <C-d> <Plug>(ale_go_to_definition)

let g:flow#autoclose = 1

augroup fmt
  autocmd!
  autocmd BufWritePre *.js,*.jsx,*.ts,*.css,*.scss,*.json,*.graphql,*.html undojoin | Neoformat
augroup END

" packloadall
silent! helptags ALL
