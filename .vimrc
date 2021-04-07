" -----------------------------------------------------------------------------
" Basic Settings
" Research any of these by running :help <setting>
" -----------------------------------------------------------------------------
set autoindent
set tabstop=4
set expandtab ts=4 sw=4 ai
colorscheme jellybeans
syntax on


" -----------------------------------------------------------------------------
" Plugins
" -----------------------------------------------------------------------------

call plug#begin('~/.vim/plugged')

" Run a diff on 2 directories.
Plug 'will133/vim-dirdiff'

" Githistory highlighting
Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()


