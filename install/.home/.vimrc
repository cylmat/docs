""""""""""""""""""""""""""""""""""""""
" VIMPLUG : Lightweight plugin manager
"     @https://github.com/junegunn/vim-plug
"
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
""""""""""""""""""""""""""""""""""""""
call plug#begin()

""" A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'
set laststatus=2 " add color in simple window
set noshowmode " remove double information bar

call plug#end()
