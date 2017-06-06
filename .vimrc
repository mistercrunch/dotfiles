set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Bundle 'ntpeters/vim-better-whitespace'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'syntastic'
let g:vim_markdown_folding_disabled=1
call vundle#end()            " required
filetype plugin indent on    " required
syntax on
filetype plugin indent on
set background=light
set colorcolumn=80
set hlsearch
set nobackup
set nowritebackup
set noswapfile
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set autoindent
set smarttab
set smartindent
set ignorecase
set smartcase
set viminfo='20,<1000

hi clear SpellBad
hi SpellBad cterm=underline
set spell spelllang=en_us

filetype indent on
filetype on
filetype plugin on
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.yaml :%s/\s\+$//e
au BufRead,BufNewFile *.hql set filetype=sql
highlight Comment ctermfg=blue


set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
