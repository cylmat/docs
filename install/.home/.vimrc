""""""""""""""""""
" VIMPLUG : Lightweight plugin manager
"     @https://github.com/junegunn/vim-plug
"
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"
" Load plugins:
" :source %
" :PlugInstall
""""""""""""""""""

call plug#begin()

" Airline : Lean & mean status/tabline
Plug 'vim-airline/vim-airline'

" Syntastic : a syntax checking
Plug 'scrooloose/syntastic'

" NERDTree : A tree explorer
Plug 'scrooloose/nerdtree'

" fugitive.vim: A Git wrapper so awesome
Plug 'tpope/vim-fugitive'

" EasyMotion
Plug 'easymotion/vim-easymotion'

" Surround
Plug 'tpope/vim-surround'

" Easy-align A Vim alignment plugin
Plug 'junegunn/vim-easy-align'

" Fzf : A command-line fuzzy finder
Plug 'junegunn/fzf'

" precision colorscheme for the vim text editor
Plug 'altercation/vim-colors-solarized'

" repeat.vim: enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'



" Lightline : A light and configurable statusline/tabline
" Plug 'itchyny/lightline.vim'
" set laststatus=2 " add color in simple window
" set noshowmode " remove double information bar

call plug#end()

