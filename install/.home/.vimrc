""""""""""""""""""""""""""""""""""""""""""""""
" Configuration
" - https://github.com/amix/vimrc
" - https://github.com/javiersalcedopuyo/DOT-Files/blob/master/init.vim
"
""""""""""""""""""
" Plugins
" - https://dev.to/javiersalcedopuyo/turn-vim-into-a-comfy-and-modern-editor-with-these-plugins-53k3
" - https://vimawesome.com
" 
" VIMPLUG : Lightweight plugin manager
" - https://github.com/junegunn/vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
" - https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" The default plugin directory will be as follows:
" - Vim (Linux/macOS): '~/.vim/plugged'
"
" Load plugins:
" :source %
" :PlugInstall
"
""""""""""""""""""
" - see also:
" vim copilot https://github.com/github/copilot.vim
"
" neoclide/coc.nvim
" romainl/vim-qf: Tame the quickfix window
" stefandtw/quickfix-reflector.vim: Change code right in the quickfix window
" tpope/vim-eunuch: Helpers for UNIX
" tpope/vim-obsession: continuously updated session files
" tpope/vim-unimpaired: Pairs of handy bracket mappings 
" unblevable/quick-scope: fast left-right movement
" vim-test/vim-test
" bagrat/vim-buffet: IDE-like Vim tabline
" ctrlpvim/ctrlp.vim: Fuzzy file, buffer, mru, tag, etc finder 
" itchyny/lightline.vim: statusline/tabline plugin for Vim 
" junegunn/goyo.vim: Distraction-free writing in Vim
" junegunn/limelight.vim: Hyperfocus-writing in Vim
" powerline/powerline
" tpope/vim-flagship: Configurable and extensible tab line and status line 
" clever-f.vim: use fff instead of f;;
"""""""""""""""""""
" tpope/vim-repeat
" mhinz/vim-signify
" tpope/vim-fugitive
" sheerun/vim-polyglot
" ludovicchabant/vim-gutentags
" luochen1990/rainbow
" dominikduda/vim_current_word
" kshenoy/vim-signature
" skim-rs/skim (fzf)
" tomasiser/vim-code-dark (color)
"""""""""""""""""""""""""""""""""""""""""""""" config

""" cheats
""" curl -o ~/.vim.cheat https://raw.githubusercontent.com/cylmat/cheats/refs/heads/main/VIM-cheats.md
" nnoremap <leader>cht :tabnew ~/.vim.cheat <CR>

#######################
""" Install VimPlug """
#######################

" mkdir -p ~/.vim/autoload/plug.vim && curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


""""""""""""""""""""""""""""""""""""""""""""""
""" OPTIONS                                """
""""""""""""""""""""""""""""""""""""""""""""""

""" info """
" syntax highlighting, theme, encoding, fileformat
syntax enable 
colorscheme desert
set encoding=utf8 ffs=unix,dos

" errorbells - eb Ring the bell (beep or screen flash) for error messages.
" lazyredraw - lz Don't redraw while executing macros
" ruler      - ru Display the cursor position
" showcmd    - sc Show partial commands in the last line of the screen
" showmatch  - sm When a bracket is inserted, briefly jump to the matching one.
" visualbell - vb Use visual bell instead of beeping when doing something wrong
" wildmenu   - wmnu Better command-line completion
:set lazyredraw noeb ruler showcmd showmatch visualbell wildmenu

""" edition """
" hlsearch   - hls Highlight searches (use <C-L> to temporarily turn off highlighting
" ignorecase - ic Ignore case when searching
" incsearch  - is incremental search, show matches as typing
" (r)number  - nu rnu Display line numbers on the left
" smartcase  - scs smart searching 
:set hlsearch ignorecase incsearch number rnumber smartcase

" expandtab  - et use spaces instead of tabs
" shiftwidth - -> tabstop
" smarttab   - sta smart tabs
" tabstop    - ts number of tab spaces
:set expandtab shiftwidth=4 smarttab tabstop=4

" autoindent - ai
" smartindent- si
" wrap       - wrap lines longer than window width
:set autoindent smartindent wrap


""" magic
" https://vim.fandom.com/wiki/Simplifying_regular_expressions_using_magic_and_no-magic
" - Use of "\m" makes the pattern after it be interpreted as if 'magic' is set (like grep)
" - After very "\v", all ASCII chars except '09','az','AZ','_' has special meaning (egrep)
:set magic

""" other
" hid backspace=eol,start,indent whichwrap+=<,>,h,l




""""""""""""""""""""""""""""""""""""""""""""""
""" PLUGINS                                """
""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin()

""" COLORS & TABS """""""""""""""""""

""" Airline
" Lean & mean status/tabline
Plug 'vim-airline/vim-airline'

""" Colors-solarized
" Precision colorscheme for the vim text editor
Plug 'altercation/vim-colors-solarized'

""" DevIcons
" :help devicons
" set encoding=UTF-8
Plug 'ryanoasis/vim-devicons'

""" Lightline : A light and configurable statusline/tabline
" Plug 'itchyny/lightline.vim'
" set laststatus=2 " add color in simple window
" set noshowmode " remove double information bar

""" NERDTree
" A tree explorer
" :NERDTree
" :help NERDTree
Plug 'scrooloose/nerdtree'

""" Sensible
" One step above 'nocompatible' mode
" a universal set of defaults that (hopefully) everyone can agree on.
" runtime! make it load earlier, that we can override config after it
" runtime! plugin/sensible.vim

""" Startify
" The fancy start screen for Vim
Plug 'mhinz/vim-startify'

""" Tagbar: <Tags> outline viewer
" :TagbarToggle
Plug 'majutsushi/tagbar'



""" MOVING """""""""""""""""""

""" Easy-align 
" A Vim alignment plugin
Plug 'junegunn/vim-easy-align'

""" EasyMotion 
" default leader is '\'
" :let mapleader="\"
" :echo mapleader
" e.g.: <Leader><Leader>fo
Plug 'easymotion/vim-easymotion'

""" Matchit
" extended % matching for HTML and other..
" Plug 'vim-scripts/matchit.zip'

""" Repeat.vim
" enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'

""" Sneak
" Use s{char}{char} or s{char}{Enter}
" Copy, delete, yank... <cdy>z{char}{char}
Plug 'justinmk/vim-sneak'

""" Surround https://github.com/tpope/vim-surround
" USE cs"'
Plug 'tpope/vim-surround'

""" Unimpaired: https://tpope.io/vim/unimpaired.git
Plug 'tpope/vim-unimpaired'



""" USEFUL """""""""""""""""""

""" Ai
Plug 'madox2/vim-ai'
let g:vim_ai_token_file_path = "~/.config/openai.token"

""" Fugitive.vim
" A Git wrapper so awesome
Plug 'tpope/vim-fugitive'

""" Fzf : A command-line fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

""" Polyglot
" A collection of language packs for Vim.
Plug 'sheerun/vim-polyglot'

""" Syntastic : a syntax checking
Plug 'scrooloose/syntastic'

""" Tcomment: https://github.com/tomtom/tcomment_vim
" :help tcomment-operator
" e.g.: gc{motion}
Plug 'tomtom/tcomment_vim'

call plug#end()



""""""""""""""""""""""""""""""""""""""""""""""
""" MAPPING                                """
""""""""""""""""""""""""""""""""""""""""""""""

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

""""""""""""""" Useful mappings

" Escape in insert mode
inoremap qq <Esc>

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>



"""""""""""""""""""""
"""     VSCODE    """
" C:\...home\.vimrc "
"""""""""""""""""""""
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

