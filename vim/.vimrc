" Sample .vimrc file by Anshuman Ray (rayanshu@gmail.com)
" version 6.5 beta

" ======================================
" Note to myself:
" <Any note to remember>
" put supertab before youcompleteme
" ======================================

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" filesystem
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'bling/vim-bufferline'

" html
"Plugin 'isnowfy/python-vim-instant-markdown'
"Plugin 'jtratner/vim-flavored-markdown'
"Plugin 'suan/vim-instant-markdown'
"Plugin 'nelstrom/vim-markdown-preview'
Plugin 'tpope/vim-surround'

" python syntax checker, linting and highlighting
"Plugin 'nvie/vim-flake8'
"Plugin 'vim-scripts/Pydiction'
"Plugin 'scrooloose/syntastic'
Plugin 'w0rp/ale'
Plugin 'hdima/python-syntax'
Plugin 'jmcantrell/vim-virtualenv'

" auto-completion stuff
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
"Plugin 'python-mode/python-mode'
"Plugin 'klen/rope-vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'

" code folding and indentation
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'

" Colors!!!
Plugin 'michalbachowski/vim-wombat256mod'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'
Plugin 'marcopaganini/termschool-vim-theme'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'jacoborus/tender.vim'
Plugin 'morhetz/gruvbox'

" Etc.
"Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" ===============================================
" Settings start here
" ===============================================

" Basic usability key remaps
nnoremap ; :
cnoremap Q q
cnoremap q1 q!
cnoremap Q! q!
cnoremap Q1 q!
inoremap jk <Esc>
inoremap kj <Esc>
nnoremap Y y$
map <F1> <Esc>
map! <F1> <Esc>

" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","
set ts=4
set sts=4
set sw=4
set et

" ===============================
" Color scheme and font settings
" ===============================
" Set to True Color 256-bit
set encoding=utf-8
set t_Co=256
set term=xterm-256color
set termencoding=utf-8
"set termguicolors
syntax on

" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=blue guibg=blue
au InsertLeave * match ExtraWhitespace /\s\+$/

if has('gui_running')
  set background=light
else
  set background=dark
endif

let g:gruvbox_color_column='bg1'
"let g:solarized_termcolors=256
"colorscheme solarized
"colorscheme termschool
"colorscheme wombat256mod
"colorscheme railscasts
"colorscheme tender
colorscheme gruvbox

" To enable easier toggle between light and dark themes
call togglebg#map("<F12>")

"set guifont=Monaco:h14
"set cursorline

" Increase the command window height
set cmdheight=1

" Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

" highlight last inserted text
nnoremap gV `[v`]

" visual autocomplete for command menu
set wildmenu

set pastetoggle=<F2>

if has("clipboard")
	set clipboard=unnamed
	set clipboard=unnamedplus
	set clipboard=exclude:.*  " tell vim not to try connecting to X server
endif

" Mouse and backspace
set mouse=a  " on OSX press ALT and click
set bs=2     " make backspace behave like normal again

" Disable stupid backup and swap files - they trigger too many events for file system watchers
set nobackup
set nowritebackup
set noswapfile

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Useful settings
set history=700
set undolevels=700

" Disable the irritating bell in putty
set visualbell
set t_vb=

" Timeout between Insert to Command mode
set ttimeoutlen=125


" ===============================
" Navigation settings
" ===============================
" browser like scrolling
nnoremap <C-J> 8j
nnoremap <C-K> 8k

" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" use t{h,j,k,l} to switch between different windows
    noremap tk <c-w>k
    noremap tj <c-w>j
    noremap th <c-w>h
    noremap tl <c-w>l
	nmap twj :resize +5<cr>
	nmap twk :resize -5<cr>
	nmap twh :vertical resize -5<cr>
	nmap twl :vertical resize +5<cr>

" t[number] => switch to the file showed in the top tabs
" t[ t] => prev tab/next tab
nmap t1 <Plug>AirlineSelectTab1
nmap t2 <Plug>AirlineSelectTab2
nmap t3 <Plug>AirlineSelectTab3
nmap t4 <Plug>AirlineSelectTab4
nmap t5 <Plug>AirlineSelectTab5
nmap t6 <Plug>AirlineSelectTab6
nmap t7 <Plug>AirlineSelectTab7
nmap t8 <Plug>AirlineSelectTab8
nmap t9 <Plug>AirlineSelectTab9
nmap t[ <Plug>AirlineSelectPrevTab
nmap t] <Plug>AirlineSelectNextTab

" split navigations made simpler
"nnoremap <C-J> <C-W><C-J>
"nnoremap <C-K> <C-W><C-K>
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

" code folding setting
set nofoldenable
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

" Relative line numbers
au FocusLost * :set number
au FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" toggle b/w number and relative number seamlessly
function! NumberToggle()
  if(&relativenumber == 1)
    set nornu
  else
    set relativenumber
  endif
endfunc

nnoremap <F3> :call NumberToggle()<cr>

set hidden
noremap <C-TAB> :bnext<CR>
noremap <C-S-TAB> :bprev<CR>

" Remove all trailing whitespaces by pressing leader+t
nnoremap <leader>t :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Add full path of the current open buffer
nnoremap <leader>p :put!=expand('%:p')<CR>

"au InsertLeave * call TurnOffCaps() " Try to implement this


" ===============================
" Plugin settings
" ===============================
" to view atleast the doc string when a code block is folded
let g:SimpylFold_docstring_preview = 1

" because supertab cycles backwards by default(c-p)
let g:SuperTabDefaultCompletionType = "<c-n>"

" settings for systastic
"let g:syntastic_python_python_exec = "python2" " otherwise vim shows syntax errors in print statements

" YouCompleteMe autocomplete settings
"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
"autocmd BufWritePost *.py,*.c,*.sh YcmForceCompileAndDiagnostics


" ALE linter settings
"let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_sign_error = '~!'


" Pydiction settings
let g:pydiction_location = '/home/ary/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 4


" Tagbar settings
nmap <leader>o :TagbarToggle<CR>


" NERDTree settings
nnoremap <F4> :NERDTreeToggle<CR>
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1


" for vim-airline
set laststatus=2
let g:airline_theme='understated' "'molokai'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_powerline_fonts = 1


" for vim-powerline
"set laststatus=2
"set guifont=Inconsolata\ for\ Powerline:h15
"let g:Powerline_symbols = 'fancy'
"set fillchars+=stl:\ ,stlnc:\
"let g:Powerline_mode_V="V·LINE"
"let g:Powerline_mode_cv="V·BLOCK"
"let g:Powerline_mode_S="S·LINE"
"let g:Powerline_mode_cs="S·BLOCK"


" for NERDCommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


" Settings for CtrlP
let g:ctrlp_max_height = 24
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*


" Settings for silversearcher ag plugin
let g:ackprg = 'ag --vimgrep --smart-case'
cnoreabbrev ag Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack


" Settings for jedi-vim
let g:jedi#usages_command = "<leader>z"
"let g:jedi#popup_on_dot = 0

map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" python with virtualenv support
py << EOF
import os.path
import sys
import vim
if 'VIRTUA_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  sys.path.insert(0, project_base_dir)
  activate_this = os.path.join(project_base_dir,'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

"it would be nice to set tag files by the active virtualenv here
":set tags=~/mytags "tags for ctags and taglist

"omnicomplete
"autocmd FileType python set omnifunc=pythoncomplete#Complete


"------------Start Python PEP 8 stuff----------------
" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

" spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=blue guibg=blue

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/

" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
au BufRead,BufNewFile *.py,*.pyw, set textwidth=119

" Use UNIX (\n) line endings.
au BufNewFile,BufRead *.py,*.pyw,*.c,*.h,*.sh set fileformat=unix

" For full syntax highlighting:
let python_highlight_all=1

" Keep indentation level from previous line:
autocmd FileType python set autoindent

" make backspaces more powerful
set backspace=indent,eol,start

" Folding based on indentation:
autocmd FileType python set foldmethod=indent
" use space to open folds
nnoremap <space> za

" map sort function to a key to automatically sort python imports alphabetically
vnoremap <Leader>s :sort<CR>

"----------Stop python PEP 8 stuff--------------

" js stuff
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
