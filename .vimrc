" Set 'nocompatible' to ward off unexpected things that your distro might
" " have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Nerdtree
Plugin 'scrooloose/nerdtree'
" VIM-TMUX integration
Plugin 'christoomey/vim-tmux-navigator'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Attempt to determine the type of a file based on its name and possibly its
" " contents. Use this to allow intelligent auto-indenting for each filetype,
" " and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax on
" colorscheme desert
syntax enable
set background=dark
" colorscheme solarized

" Allows you to re-use the same window and switch from an unsaved buffer without saving it first.
" Also allows you to keep an undo history for multiple files when re-using the same window in this way. Note that using 
" persistent undo also lets you undo in multiple files even in the same window, but is less efficient and is actually
" designed for keeping undo history after closing Vim entirely. Vim will complain if you try to quit without saving, 
" and swap files will keep you safe if your computer crashes.
set hidden

" 120 characters wrap
set textwidth=120
set formatoptions+=t
set formatoptions-=l

" Autocomplete for command menu
set wildmenu
" Only redraw when needed
set lazyredraw

" Show command in bottom bar
set showcmd

" Highlight matching [{(
set showmatch

" Highlight matches
set hlsearch
" Incremental search
set incsearch

" Search ignoring case, except if the search contains a capital
set ignorecase
set smartcase

" Allow backspacing over autoident, linebreaks and start of insert action
set backspace=indent,eol,start

set autoindent

set nostartofline

set ruler
set laststatus=2

set confirm

set visualbell

set t_vb=

set mouse=a

set cmdheight=2

set number

" highlight current line
set cursorline
hi CursorLine cterm=NONE ctermbg=darkgrey

set notimeout ttimeout ttimeoutlen=200

set pastetoggle=<F11>

" Tab to 4 spaces. tabstop is not needed, but is fine to change as well.
set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4

" Remap Y to copy until end of line instead the full line (as yy)
map Y y$

nnoremap <C-L> :nohl<CR><C-L>

" FOLDING STUFF
set foldenable " enable folding
set foldlevelstart=10 " open most folds by default
set foldnestmax=10 " max nested fols
" Space open/close folds
nnoremap <space> za
set foldmethod=syntax " fold based on indent level

" Highlight last inserted text
nnoremap gV `[v`]

" NERDTree and buffer shortcuts
nmap <F3> :bp<CR>
nmap <F4> :bn<CR>
nmap <F5> :NERDTreeToggle<CR>
" Close vim if the only opened buffer is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" If true Vim master, use English help file.
set helplang& helplang=es,en
