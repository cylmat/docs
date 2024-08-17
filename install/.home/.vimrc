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

"""""""""""""""
""" PLUGINS """
"""""""""""""""

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

" https://tpope.io/vim/unimpaired.git
Plug 'tpope/vim-unimpaired'

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

"""""""""""""""
""" MAPPING """
"""""""""""""""

"-------
" @ref:
" - https://vim.fandom.com/wiki/Example_vimrc
" - https://github.com/wellbredgrapefruit/vim_config

" Reset to vim-defaults, ward off unexpected things 
if &compatible
  set nocompatible 
endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

"------------------------------------------------------------
" Options
"--------
" Display the cursor position
set ruler

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Display line numbers on the left
set number

" Show partial commands in the last line of the screen
set showcmd

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Better command-line completion
set wildmenu

"------------------------------------------------------------
" Useful mappings
"----------------

" Escape in insert mode
inoremap qq <Esc>

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

""""""""""""""""
"    VSCODE    "
" on Windows C:\...home\.vimrc
""""""""""""""""
 " Change VScode Ctrl binding to Space 

" Leader to <Space>
noremap <Space> <Nop>
map <Space> <Leader>
" --- or let mapleader="\<Space>"

" Editing
nnoremap <Leader>r <C-r>

" Numbers 
nnoremap <Leader>a <C-a>
nnoremap <Leader>x <C-x>

" Visual
nnoremap <Leader>v <C-v>

" Windows
nnoremap <Leader>w <C-w>

" Sneak plugin
" nmap s <Plug>Sneak_s
" nmap S <Plug>Sneak_S
" map f <Plug>Sneak_s
" map F <Plug>Sneak_S

