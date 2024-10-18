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
""""""""""""""""
" https://vimawesome.com !!!
""""""""""""""""
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

" Colors-solarized: Precision colorscheme for the vim text editor
Plug 'altercation/vim-colors-solarized'

" Easy-align A Vim alignment plugin
Plug 'junegunn/vim-easy-align'

" EasyMotion https://github.com/easymotion/vim-easymotion
" e.g.: <Leader><Leader>fo
Plug 'easymotion/vim-easymotion'

" Fugitive.vim: A Git wrapper so awesome
Plug 'tpope/vim-fugitive'

" Fzf : A command-line fuzzy finder
" https://github.com/junegunn/fzf
" USE Plug 'junegunn/fzf'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Matchit
" extended % matching for HTML and other..
" Plug 'vim-scripts/matchit.zip'

" NERDTree : A tree explorer
" Run with :NERDTree
" :help NERDTree
Plug 'scrooloose/nerdtree'

" Repeat.vim: enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'

" Sensible
" One step above 'nocompatible' mode
" a universal set of defaults that (hopefully) everyone can agree on.
" runtime! make it load earlier, that we can override config after it
" runtime! plugin/sensible.vim

" Sneak
" https://github.com/justinmk/vim-sneak
" Use s{char}{char}
Plug 'justinmk/vim-sneak'

" Surround https://github.com/tpope/vim-surround
" USE cs"'
Plug 'tpope/vim-surround'

" Syntastic : a syntax checking
Plug 'scrooloose/syntastic'

" Tagbar: Class outline viewer
Plug 'majutsushi/tagbar'

" Tcomment: https://github.com/tomtom/tcomment_vim
" :help tcomment-operator
" e.g.: gc{motion}
Plug 'tomtom/tcomment_vim'

" Unimpaired: https://tpope.io/vim/unimpaired.git
Plug 'tpope/vim-unimpaired'


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

