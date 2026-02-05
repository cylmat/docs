""""""""""""""""""""""""""""""""""""""""""""""
" Configuration
" - https://github.com/amix/vimrc
" - https://github.com/javiersalcedopuyo/DOT-Files/blob/master/init.vim
"
""""""""""""""""""
" Plugins
" - https://dev.to/javiersalcedopuyo/turn-vim-into-a-comfy-and-modern-editor-with-these-plugins-53k3
" - https://vimawesome.com
" - https://github.com/ibnYusrat/vimcode (vim like Vscode)
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
"
""""""""""""""""""
" - see also:

""" quickfix
" romainl/vim-qf: Tame the quickfix window
" stefandtw/quickfix-reflector.vim: Change code right in the quickfix window

""" navigation
" rhysd/clever-f.vim: use fff instead of f;;
" unblevable/quick-scope: fast left-right movement

""" tabs & status
" bagrat/vim-buffet: IDE-like Vim tabline
" powerline/powerline
" tpope/vim-flagship: Configurable and extensible tab line and status line 

""" tools
" ctrlpvim/ctrlp.vim: Fuzzy file, buffer, mru, tag, etc finder
" mhinz/vim-signify (git gutter alternative)
" skim-rs/skim (fzf)
" vim-test/vim-test

""" focus
" junegunn/goyo.vim: Distraction-free writing in Vim
" junegunn/limelight.vim: Hyperfocus-writing in Vim

"""
" craigemery/vim-autotag
" dominikduda/vim_current_word
" jremmen/vim-ripgrep'
" kshenoy/vim-signature
" ludovicchabant/vim-gutentags
" luochen1990/rainbow
" mattn/emmet-vim'
" preservim/nerdcommenter'

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
" Avoid legacy vi mode
if &compatible
  set nocompatible 
endif

set encoding=utf8
set ffs=unix,dos

filetype plugin indent on
set backspace=indent,eol,start


"""  PERFORMANCE

" lazyredraw - lz Don't redraw while executing macros
" ttyfast - Blast output as fast as possible.
set lazyredraw
set ttyfast

""""" BASIC SETTINGS """""
" errorbells - eb Ring the bell (beep or screen flash) for error messages.
" hidden    : (hidden or active) switch buffers without saving (You can :e otherfile without :w)
" laststatus: 2 is 'always'
" nocursorcolumn: CursorColumn highlights the entire vertical column under the cursor. (noisy)
" selectmode: Mouse selection enter in VISUAL mode
" showcmd   : sc Shows partial commands while typing
" showmode  : show insert, visual.. (not useful if already in status bar)
" signcolumn: Always show the sign column (Prevents text from shifting.)
" splitbelow: Horizontal splits open below the current window. (:split)
" splitright: Vertical splits open to the right. (:vsplit)
" shortmess : Makes completion less noisy.
" updatetime: Faster diagnostics
" visualbell - vb Use visual bell instead of beeping when doing something wrong
" wildmenu  : interactive tab completion for ":" commands.
" wildmode  : Controls how command completion behaves.
" wrap      : Long lines stay on multi lines (no wrap: stay on one long line)
set noeb
set hidden
set laststatus=2
set nocursorcolumn
set noshowmode   " since airline already shows it
set selectmode+=mouse
set shortmess+=c
set showcmd
set showmode
set signcolumn=yes
set splitbelow
set splitright
set updatetime=200
set wildmenu
set wildmode=longest:full,full
set visualbell
set wrap

""" navigation

" number          : show absolute line numbers
" relativenumber  - rnu Display line numbers on the left
" ruler           : show cursor position in status bar
" scrolloff=8     : Keep 8 lines visible above and below the cursor
" sidescrolloff=8 : Keeps 8 columns visible when scrolling sideways
set number
set relativenumber
set ruler
set scrolloff=8
set sidescrolloff=8


""" edition """

" ignorecase - ic Ignore case when searching
" incsearch  - is incremental search, show matches as typing
" showmatch  - sm When a bracket is inserted, briefly jump to the matching one.
" smartcase  - scs smart searching
set ignorecase
set incsearch
set showmatch
set smartcase


""" indent  """

" expandtab  - When you press <Tab>, insert spaces instead of a real tab.
" shiftwidth - One “indent level” = 4 spaces. Used by: >> / << = auto-format
" tabstop    - ts <Tab> is visually displayed as 4 spaces
" smarttab   - <Tab> behaves differently at start of line vs mid-line
"             At line start → use shiftwidth. In middle of line → use tabstop
set expandtab
set shiftwidth=4
set smarttab
set tabstop=4

" autoindent - ai
" smartindent- si
" wrap       - wrap lines longer than window width
set autoindent
set smartindent


""" magic

" https://vim.fandom.com/wiki/Simplifying_regular_expressions_using_magic_and_no-magic
" - Use of "\m" makes the pattern after it be interpreted as if 'magic' is set (like grep)
" - After very "\v", all ASCII chars except '09','az','AZ','_' has special meaning (egrep)
set magic

""" other
" hid backspace=eol,start,indent whichwrap+=<,>,h,l



""""""""""""""""""""""""""""
"""""" color & themes """"""
""""""""""""""""""""""""""""

" syntax : Enable syntax highlighting
syntax on

" background=dark (or light)
" hlsearch   - hls Highlight searches (use <C-L> to temporarily turn off highlighting
" nocursorline - don't highlight the whole line of the cursor (too noisy)
" termguicolors - mandatory! enable 24-bit true RGB color in the TUI 
set background=dark
set hlsearch
set nocursorline
set termguicolors

" theme (build-in: evening, elflord, industry, murphy, pablo, peachpuff, ron, shine, slate, torte)
" switch with :colorscheme {name}
" classic-modern: gruvbox (Plug 'morhetz/gruvbox')
" VS Code vibes: dracula or tokyonight (Plug 'folke/tokyonight.nvim')
" minimal pro: nord (Plug 'arcticicestudio/nord-vim') or solarized (Plug 'altercation/vim-colors-solarized')
" (Plug 'joshdick/onedark.vim') / (Plug 'joshdick/onedark.vim')
" colorscheme evening

""" EVENING override
highlight Comment guifg=#777777
highlight CursorLine guibg=#262626
highlight CursorLineNr guifg=#FFD700 gui=bold
highlight IncSearch guibg=#555555 guifg=NONE
highlight LineNr guifg=#666666
highlight MatchParen guibg=#3a3a3a guifg=#ffffff gui=bold
highlight NormalNC guibg=#181818
highlight Search guibg=#444444 guifg=NONE
highlight SignColumn guibg=#1e1e1e
highlight VertSplit guifg=#333333 guibg=#1e1e1e
highlight Visual guibg=#333333

" Darker background
highlight EndOfBuffer guibg=#1e1e1e
highlight NonText guibg=#1e1e1e
highlight Normal guibg=#1e1e1e ctermbg=NONE
"""

" color comments
" highlight Comment ctermfg=DarkGray guifg=#777777

" Make current line number pop
" highlight CursorLineNr ctermfg=Yellow guifg=#FFD700

" hightlight search colors
" highlight Search guibg=#444444 guifg=NONE

" for transparent background (e.g. for Alacritty)
" highlight Normal guibg=NONE ctermbg=NONE






""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""
""""""""""" PLUGINS (vim-plug) """""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""

""" Install VimPlug """
" mkdir -p ~/.vim/autoload/plug.vim && curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

""" Install plugins with vim-plug
" PlugClean - Remove plugins not listed in the vimrc
" PlugInstall - Install plugins
" PlugUpdate  - Update plugins


" call plug#begin('~/.vim/plugged')
call plug#begin()


"""""""""""""""""""""
""" CONFIGURATION """
"""""""""""""""""""""

""" Sensible
" One step above 'nocompatible' mode (minimal “good defaults” set)
" runtime! plugin/sensible.vim (if manually) make it load earlier, so we can override config
" a universal set of defaults that (hopefully) everyone can agree on.
" ex: nocompatible , filetype plugin indent on, backspace=indent,eol,start, matchit.vim etc..
Plug 'tpope/vim-sensible'


""""""""""""""""""""""""
""" COLORS & STATUS """"
""""""""""""""""""""""""

""" Airline (heavy but fancy)
" Lean & mean status/tabline
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

  " or "

""" Lightline (lightweight bar)
" "A light and configurable statusline/tabline
" set laststatus=2 " add color in simple window
" set noshowmode " remove double information bar
Plug 'itchyny/lightline.vim'

""" DevIcons for files
" :help devicons
Plug 'ryanoasis/vim-devicons'

""" Startify
" The fancy start screen for Vim
Plug 'mhinz/vim-startify'


  " themes "

""" solarized theme
" Precision colorscheme for the vim text editor
Plug 'altercation/vim-colors-solarized'

""" tokyo night theme
Plug 'ghifarit53/tokyonight-vim'

""" vimcode dark
Plug 'tomasiser/vim-code-dark'



"""""""""""""""""""""""""
""" TOOLS & EXPLORER """"
"""""""""""""""""""""""""

""" NERDTree
" File explorer (Ctrl+B)
" :help NERDTree
" :NERDTree
Plug 'preservim/nerdtree'

""" Tagbar: <Tags> outline viewer
" :TagbarToggle
" must install ctags
" sudo apt install exuberant-ctags
" brew install ctags
Plug 'majutsushi/tagbar'

""" Fzf : A command-line fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

""" Which key
" Leader key hints
Plug 'liuchengxu/vim-which-key'


"""""""""""""""""""
""" NAVIGATION """"
"""""""""""""""""""

""" EasyMotion 
" default leader is '\'
" :let mapleader="\"
" :echo mapleader
" e.g.: <Leader><Leader>fo
Plug 'easymotion/vim-easymotion'

""" Matchit
" extended % matching for HTML and other..
" Plug 'https://github.com/adelarsq/vim-matchit'
Plug 'vim-scripts/matchit.zip'


""" Repeat.vim
" enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'

""" Sneak
" Use s{char}{char} or s{char}{Enter}
" Copy, delete, yank... <cdy>z{char}{char}
Plug 'justinmk/vim-sneak'


""" harpoon  (is nvim ??)
" For your style (fzf + git + big configs), this is gold:
" Jump between marked files like tabs on steroids
Plug 'ThePrimeagen/harpoon'


"""""""""""""""
""" CODING """"
"""""""""""""""

""" Easy-align 
" A Vim alignment plugin
Plug 'junegunn/vim-easy-align'

""" Multi-cursor
Plug 'mg979/vim-visual-multi'

""" Tcomment: https://github.com/tomtom/tcomment_vim
" :help tcomment-operator
" e.g.: gc, gc{motion}, gcc (line), g< (uncomment), g> (selected)
Plug 'tomtom/tcomment_vim'

""" Comment toggle (Ctrl+/)
Plug 'tpope/vim-commentary'

""" Surround https://github.com/tpope/vim-surround
" USE cs"'
Plug 'tpope/vim-surround'

""" Unimpaired: https://tpope.io/vim/unimpaired.git
Plug 'tpope/vim-unimpaired'



"""""""""""""""""""
""""" USEFUL """"""
"""""""""""""""""""

""" vim ai
Plug 'madox2/vim-ai'

""" Git Fugitive.vim
" A Git wrapper so awesome
" Git (optional, VS Code Source Control vibe)
Plug 'tpope/vim-fugitive'

""" git gutter
" Shows git diff in the sign column
Plug 'airblade/vim-gitgutter'


"""""""""""""""""""""""""
""" Language support """"
"""""""""""""""""""""""""

""" syntax checking
Plug 'dense-analysis/ale'

""" A collection of language packs for Vim.
Plug 'sheerun/vim-polyglot'


""""""""""""""""""
"" AUTOCOMPLETE ""
""""""""""""""""""

" https://github.com/neoclide/coc.nvim
" autocompletion engine for Vim8 & Neovim, full language server protocol support as VS Code
" uncomment for right version with Vim and Node
" Plug 'neoclide/coc.nvim', {'branch': 'release'}


call plug#end()



""""""""""""""""""""""
"""  PLUGIN CONFIG """
" """"""""""""""""""""


" ---- Airline ----
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

" ---- NERDTree ----
let g:NERDTreeShowHidden=1
let g:NERDTreeMinimalUI=1

" ---- GitGutter ----
set updatetime=250

" ----- theme tokyo night -----
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

" -----vim ai -----
" !set file is chmod 600
let g:vim_ai_token_file_path = '~/.config/openai.token'

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


""" ----- ai ------
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


" --- easy align ----
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


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

""" ---- others

" Ctrl+Shift+F → Search in files (with fzf + ripgrep)
" nnoremap <C-S-f> :Rg<CR>
" nnoremap <leader>g :Rg<CR>
