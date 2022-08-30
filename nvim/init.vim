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
set rtp+=/opt/homebrew/bin/fzf

set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set scrolloff=10
set nu

set synmaxcol=200

highlight OverLength ctermbg=green ctermfg=white
match OverLength /\%81v/

call plug#begin('~/.local/share/nvim/plugged')

Plug 'adelarsq/vim-matchit'
Plug 'alvan/vim-closetag'
Plug 'elixir-editors/vim-elixir'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jparise/vim-graphql'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'sbdchd/neoformat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug '/opt/homebrew/bin/fzf'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-ruby/vim-ruby'

call plug#end()

nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" packloadall
silent! helptags ALL
