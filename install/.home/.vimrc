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


" (use also https://vonheikemen.github.io/devlog/tools/using-netrw-vim-builtin-file-explorer/)

" See also VimCode (vim like Vscode)
" https://github.com/ibnYusrat/vimcode
"   with:
" Plug 'mattn/emmet-vim'
" Plug 'mhartington/oceanic-next'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'jcherven/jummidark.vim'
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'jremmen/vim-ripgrep'
" Plug 'preservim/nerdtree'
" Plug 'ryanoasis/vim-devicons'
" Plug 'metakirby5/codi.vim'
" Plug 'preservim/nerdcommenter'
" Plug 'tpope/vim-surround'
" Plug 'APZelos/blamer.nvim'
"""""""""""""""""""""""""""""""""""""""""""""" config


""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""" CORE INIT.vim """""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""
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
" syntax enable 
endif

filetype plugin indent on

set encoding=utf8
set ffs=unix,dos

""""" BASIC SETTINGS """""

" wildmenu   - wmnu Better command-line completion
set clipboard=unnamed
set cmdheight=1
set cursorline
set hidden
set laststatus=2
set mouse=a
set nowrap
set number
set relativenumber
set ruler
set scrolloff=8
set showcmd
set showmode
set sidescrolloff=8
set signcolumn=yes
set splitbelow
set splitright
set updatetime=200
set wildmenu
set wildmode=longest:full,full

set shortmess+=c
set nocursorcolumn
set noshowmode   " since airline already shows it


""" info """
" syntax highlighting, theme, encoding, fileformat
" colorscheme desert




" errorbells - eb Ring the bell (beep or screen flash) for error messages.
" ruler      - ru Display the cursor position
" showcmd    - sc Show partial commands in the last line of the screen
" showmatch  - sm When a bracket is inserted, briefly jump to the matching one.
" visualbell - vb Use visual bell instead of beeping when doing something wrong

set noeb 
set ruler 
set showcmd 
set showmatch 
set visualbell 

""" edition """

" hlsearch   - hls Highlight searches (use <C-L> to temporarily turn off highlighting
" ignorecase - ic Ignore case when searching
" incsearch  - is incremental search, show matches as typing
" (r)number  - nu rnu Display line numbers on the left
" smartcase  - scs smart searching 
set hlsearch
set ignorecase
set incsearch
set smartcase


""" indent  """

" expandtab  - et use spaces instead of tabs
" shiftwidth - -> tabstop
" smarttab   - sta smart tabs
" tabstop    - ts number of tab spaces
set expandtab 
set shiftwidth=4
set smarttab 
set tabstop=4

" autoindent - ai
" smartindent- si
" wrap       - wrap lines longer than window width
set autoindent 
set smartindent 
set wrap

"""  PERFORMANCE

" lazyredraw - lz Don't redraw while executing macros
set lazyredraw
set ttyfast


""" magic

" https://vim.fandom.com/wiki/Simplifying_regular_expressions_using_magic_and_no-magic
" - Use of "\m" makes the pattern after it be interpreted as if 'magic' is set (like grep)
" - After very "\v", all ASCII chars except '09','az','AZ','_' has special meaning (egrep)
set magic

""" other
" hid backspace=eol,start,indent whichwrap+=<,>,h,l



""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""
""""""""""" PLUGINS (vim-plug) """""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""

""" Install VimPlug """
" mkdir -p ~/.vim/autoload/plug.vim && curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


" call plug#begin('~/.vim/plugged')
call plug#begin()

""" COLORS & TABS """""""""""""""""""

""" Airline
" Lean & mean status/tabline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

""" Colors-solarized
" Precision colorscheme for the vim text editor
Plug 'altercation/vim-colors-solarized'

""" DevIcons
" :help devicons
" set encoding=UTF-8
Plug 'ryanoasis/vim-devicons'

" !set file is chmod 600
Plug 'madox2/vim-ai'
let g:vim_ai_token_file_path = '~/.config/openai.token'

""" Lightline : A light and configurable statusline/tabline
" Plug 'itchyny/lightline.vim'
" set laststatus=2 " add color in simple window
" set noshowmode " remove double information bar

""" NERDTree
" File explorer (Ctrl+B)
" :NERDTree
" :help NERDTree
Plug 'preservim/nerdtree'

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



""" MOVING """""""

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


""" USEFUL """"""

""" Fugitive.vim
" A Git wrapper so awesome
" Git (optional, VS Code Source Control vibe)
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'


""" Fzf : A command-line fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


""" Polyglot
" A collection of language packs for Vim.
Plug 'sheerun/vim-polyglot'

""" a syntax checking
Plug 'dense-analysis/ale'

""" Tcomment: https://github.com/tomtom/tcomment_vim
" :help tcomment-operator
" e.g.: gc{motion}
Plug 'tomtom/tcomment_vim'

" Multi-cursor
" Plug 'mg979/vim-visual-multi'

" Comment toggle (Ctrl+/)
Plug 'tpope/vim-commentary'


"" --- must have ---
""""""""""""""""""""

" Shows leader mappings like VS Code.
Plug 'liuchengxu/vim-which-key'

" https://github.com/neoclide/coc.nvim
" autocompletion engine for Vim8 & Neovim, full language server protocol support as VS Code
" uncomment for right version with Vim and Node
" Plug 'neoclide/coc.nvim', {'branch': 'release'}


" For your style (fzf + git + big configs), this is gold:
" instant file marks
" jump between 4–8 files like tabs on steroids
Plug 'ThePrimeagen/harpoon'



call plug#end()


"  PLUGIN CONFIG
" """"""""""""""

" ---- NERDTree ----
let g:NERDTreeShowHidden=1
let g:NERDTreeMinimalUI=1

" ---- Airline ----
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

" ---- GitGutter ----
set updatetime=250

" ---- Visual Multi (Ctrl+D) ----
let g:VM_maps = {}
let g:VM_maps["Find Under"] = "<C-d>"
let g:VM_maps["Find Subword Under"] = "<C-d>"



""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""" KEYMAPS """""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""

" --- or let mapleader="\<Space>"
" must be first defined
" define Space as Leader
let mapleader = " "


""""""""""""" ai
" stop async chat generation
nnoremap <leader>ais :AIStopChat<CR>

" complete text on the current line or in visual selection
nnoremap <leader>aia :AI<CR>
xnoremap <leader>aia :AI<CR>

" edit text with a custom prompt
" xnoremap <leader>aif :AIEdit fix grammar and spelling<CR>
" nnoremap <leader>aif :AIEdit fix grammar and spelling<CR>

" trigger chat
xnoremap <leader>c :AIChat<CR>
nnoremap <leader>c :AIChat<CR>

" redo last AI command
nnoremap <leader>r :AIRedo<CR>

"""""" Useful mappings

" Escape in insert mode
inoremap qq <Esc>

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>

nnoremap <leader>cht :tabnew ~/.vim.cheat <CR>




" =====================
" VS CODE–LIKE KEYBINDS

" Ctrl+B → Toggle file explorer
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <leader>e :NERDTreeToggle<CR>

" Ctrl+P → Quick open file
nnoremap <C-p> :Files<CR>
nnoremap <leader>f :Files<CR>


" Ctrl+Shift+F → Search in files
nnoremap <C-S-f> :Rg<CR>
nnoremap <leader>g :Rg<CR>

" Ctrl+S → Save
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a

nnoremap <C-w> :bd<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :bd<CR>

" Ctrl+W → Close file (buffer, not split)
" don't use <C-w> over-mapping because it's used for Vim window management
nnoremap <leader>x :bd<CR>


" ---- Buffers ----
" Ctrl+Tab / Ctrl+Shift+Tab → Next / Prev buffer
nnoremap <leader>b :Buffers<CR>
nnoremap <C-Tab> :bnext<CR>
nnoremap <C-S-Tab> :bprevious<CR>

" Alt+Up / Alt+Down → Move line
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi

" Ctrl+/ → Toggle comment
nnoremap <C-/> :Commentary<CR>
vnoremap <C-/> :Commentary<CR>
nnoremap <leader>c :Commentary<CR>
vnoremap <leader>c :Commentary<CR>

" ---- Git ----
nnoremap <leader>gs :Git<CR>
nnoremap <leader>gd :Gdiffsplit<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gb :Git blame<CR>

" ---- Resize splits ----
nnoremap <leader><Left>  :vertical resize -5<CR>
nnoremap <leader><Right> :vertical resize +5<CR>
nnoremap <leader><Up>    :resize +3<CR>
nnoremap <leader><Down>  :resize -3<CR>

 " ---- Move lines ----
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" ---- Clear search ----
nnoremap <leader><space> :nohlsearch<CR>

" ---- Window navigation ----
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l



" ===============
" QUALITY OF LIFE

" Clear search highlight
nnoremap <leader><space> :nohlsearch<CR>

" Faster window navigation
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

 " Better yank/paste
set clipboard+=unnamedplus

" Keep selection when indenting
vnoremap < <gv
vnoremap > >gv

" Quick escape
inoremap jk <Esc>
