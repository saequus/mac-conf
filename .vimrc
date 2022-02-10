" -----------------------------------------------------------------------------
" Basic Settings
" Research any of these by running :help <setting>
" -----------------------------------------------------------------------------
set autoindent
set tabstop=4
set expandtab ts=4 sw=4 ai
set encoding=utf8
colorscheme jellybeans
syntax on
filetype indent on
set filetype=html
set smartindent
set backspace=indent,eol,start



" -----------------------------------------------------------------------------
" Plugins
" -----------------------------------------------------------------------------

call plug#begin('~/.vim/plugged')

" Run a diff on 2 directories.
Plug 'will133/vim-dirdiff'

" Githistory highlighting
Plug 'tpope/vim-fugitive'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'sudormrfbin/cheatsheet.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

Plug 'ryanoasis/vim-devicons'

" Initialize plugin system
call plug#end()


