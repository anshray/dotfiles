" Sample init.vim file by Anshuman Ray (rayanshu@gmail.com)
" version 1.3 beta

" ======================================
" Note to myself:
" <Any note to remember>
" references: mhartington/dotfiles, ...
" ======================================

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction
call plug#begin('~/.vim/plugged')

" completion/templating/syntax checker
  Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
  Plug 'w0rp/ale'
  Plug 'ervandew/supertab'
  Plug 'scrooloose/nerdcommenter'
  "Plug 'jiangmiao/auto-pairs'
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'

" command extension
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-surround'
  Plug 'mbbill/undotree',    { 'on': 'UndotreeToggle' }
  Plug 'wellle/targets.vim'
  Plug 'tpope/vim-repeat'
  "Plug 'junegunn/vim-easy-align'  " cool plugin
  "Plug 'terryma/vim-multiple-cursors'

" utils
  "Plug 'neomake/neomake'
  Plug 'kassio/neoterm'
  "Plug 'sjl/gundo.vim'
  "Plug 'chrisbra/NrrwRgn'
  Plug 'vim-scripts/Mark--Karkat'

" misc
  "Plug 'asins/vimcdoc'
  "Plug 'ccvext.vim'
  "Plug 'CodeFalling/fcitx-vim-osx'
  "Plug 'lilydjwg/fcitx.vim'
  "Plug 'junegunn/vim-github-dashboard'

" documentation
  "Plug 'rhysd/nyaovim-markdown-preview'
  "Plug 'xolox/vim-notes'
  "Plug 'xolox/vim-misc'
  "Plug 'itchyny/calendar.vim'
  "Plug 'junegunn/vim-journal'

" navigation and git
  Plug 'tpope/vim-fugitive'
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  Plug 'mhinz/vim-sayonara'
  "Plug 'mileszs/ack.vim'
  "Plug 'bling/vim-bufferline'
  "Plug 'ctrlpvim/ctrlp.vim'
  "Plug 'wesleyche/SrcExpl'
  "Plug 'taglist.vim'
  "Plug 'rizzatti/dash.vim'
  "Plug 'eugen0329/vim-esearch'

" c/c++
  "Plug 'zhranklin/deoplete-clang'

" java
  "Plug 'artur-shaik/vim-javacomplete2'
  "Plug 'vhakulinen/neovim-intellij-complete-deoplete'

" python
  Plug 'hdima/python-syntax'
  Plug 'davidhalter/jedi-vim'
  Plug 'zchee/deoplete-jedi'
  Plug 'google/yapf'

" html/css/javascript
  "Plug 'mattn/emmet-vim'

" scala
  "Plug 'ensime/ensime-vim', { 'do': function('DoRemote') }
  "Plug 'derekwyatt/vim-scala'
  "Plug 'ktvoelker/sbt-vim'
  "Plug 'megaannum/vimside'

" looking  # these plugins should be at the last
  "Plug 'mhinz/vim-startify'
  Plug 'airblade/vim-gitgutter'
  Plug 'Yggdroot/indentLine'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  "Plug 'myusuf3/numbers.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'iryston/gruvbox'
  Plug 'turly/vimstuff'  " bluish
  Plug 'w0ng/vim-hybrid'
  Plug 'tomasr/molokai'
  Plug 'chriskempson/base16-vim'
  Plug 'mhartington/oceanic-next'
  Plug 'altercation/vim-colors-solarized'
  "Plug 'nightsense/willy'

call plug#end()


" ===============================================
" Settings start here
" ===============================================

" Rebind <Leader> key
  "I like to have it here becuase it is easier to reach than the default and
  "it is next to ``m`` and ``n`` which I use for navigating between tabs.
  let mapleader = ","

" Fundamental settings
  set fileencoding=utf-8
  set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1
  set fileformat=unix
  set fileformats=unix,dos,mac
  filetype on
  filetype plugin on
  filetype plugin indent on
  set termguicolors
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  "let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
  syntax on

" Basic usability key remaps
  "nnoremap ; :
  cnoremap Q q
  cnoremap q1 q!
  cnoremap Q! q!
  cnoremap Q1 q!
  inoremap jk <Esc>
  inoremap kj <Esc>
  inoremap jj <Esc>
  inoremap kk <Esc>
  nnoremap Y y$
  map <F1> <Esc>
  map! <F1> <Esc>
  command! W :w

" Some useful settings
  set encoding=utf-8
  set splitright
  "set splitbelow
  set mouse=a
  set number            "line number
  set nowrap            "no line wrapping
  set smartindent
  set showcmd
  set expandtab         "tab to spaces
  set tabstop=4         "the width of a tab
  set softtabstop=4
  set shiftwidth=4      "the width for indent
  set textwidth=79      "width of document (used by gd)
  set fo-=t             "don't automatically wrap text when typing
  set foldenable
  set foldmethod=indent "folding by indent
  set foldlevel=99
  set colorcolumn=80
  highlight ColorColumn ctermbg=233
  set ignorecase        "ignore the case when search texts
  set smartcase         "if searching text contains uppercase case will not be ignored
  set pastetoggle=<F2>
  set nospell spelllang=en_us
  nnoremap gV `[v`]     "highlight last inserted text
  set completeopt=longest,menuone,preview
  set autoread
  set so=3 " scroll lines above/below cursor
  set lazyredraw
  set wildmode=longest,list,full
  set undofile
  set numberwidth=2
  set clipboard+=unnamedplus

" Lookings
  "set cursorline       "hilight the line of the cursor
  "set cursorcolumn     "hilight the column of the cursor
  set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
		  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
		  \,sm:block-blinkwait175-blinkoff150-blinkon175
  " Show whitespace
  " MUST be inserted BEFORE the colorscheme command
  autocmd ColorScheme * highlight ExtraWhitespace ctermbg=blue guibg=blue
  au InsertLeave * match ExtraWhitespace /\s\+$/
  set background=dark
  "let g:hybrid_custom_term_colors = 1
  "let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
  "nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
  "nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
  "nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>
  "nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
  "nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
  "nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?
  ""let g:gruvbox_color_column='bg1'
  "let g:gruvbox_italic=1
  "let g:gruvbox_invert_selection=0
  colorscheme OceanicNext    "use the theme gruvbox
  " change the color of chars over the width of 80 into blue
  " (uncomment to enable it)
  "au BufWinEnter * let w:m2=matchadd('Underlined', '\%>' . 80 . 'v.\+', -1)
  " To enable easier toggle between light and dark themes
  call togglebg#map("<F12>")

" Shortcuts
    nnoremap <C-J> 8j
    nnoremap <C-K> 8k

    " Align blocks of text and keep them selected
    vmap < <gv
    vmap > >gv

    nnoremap <leader>d "_d
    vnoremap <leader>d "_d
    vnoremap <c-/> :TComment<cr>

    " toggle b/w number and relative number seamlessly
    function! NumberToggle()
      if(&relativenumber == 1)
        set nornu
      else
        set relativenumber
      endif
    endfunc

    nnoremap <F3> :call NumberToggle()<cr>

  " Remove all trailing whitespaces by pressing leader+w
    nnoremap <leader>w :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

  " Add full path of the current open buffer
    nnoremap <leader>p :put!=expand('%:p')<CR>

  " \\ => go to command mode
    imap <leader><leader> <esc>:
  " go => go to anywhere
    nmap go <Plug>(easymotion-jumptoanywhere)
  " <c-v> => for pasting
    "imap <c-v> <esc>"+pa
  " <c-h/j/k/l> => hjkl in normal mode (but there is a bug mapping <c-h>)
    "imap <c-h> <left>
    "imap <c-j> <down>
    "imap <c-k> <up>
    "imap <c-l> <right>
  " \cl => redraw the screen
    nmap <leader>l <c-l><c-l>
    imap <leader>l <esc><leader>la
  " <space> => fold/unfold current code
  " tips: zR => unfold all; zM => fold all
    nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
  " ,, => escape to normal mode
    "imap ,, <Esc>
    "tmap ,, <Esc>
  " <esc> => go back to normal mode (in terminal mode)
    tnoremap <Esc> <C-\><C-n>
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
  " ts => toggle the srcExpl (for source code exploring)
    "nnoremap ts :SrcExplToggle<CR>
  " tg => toogle the gundo
    "nnoremap tg :GundoToggle<CR>
  " tb => open the tagbar
    "nmap tb :TagbarToggle<CR>
  " ti => taglist
    "nmap ti :TagbarClose<CR>:Tlist<CR>
  " <s-enter> => toggle the terminal
  "  if exists('nyaovim_version')
  "    nnoremap <silent> <s-cr> :Ttoggle<cr>
  "  else " in terminal use t<enter>
  "    nmap t<CR> :Ttoggle<CR>
  "  endif
  " tt => type the command for the terminal
    nnoremap tt :T<space>
  " te => send current line/selected lines to the terminal
    nnoremap <silent> te :TREPLSend<CR>
    xnoremap <silent> te :TREPLSend<CR>
  " tE => send the thole current file to the terminal
    nnoremap <silent> tE :TREPLSendFile<CR>
  " \t => goto normal mode and press t (e.g. \t<enter> to toggle the terminal)
    imap <leader>t <esc>t
  " tm => toggle the markdown preview
    let g:markdown_preview_on = 0
    au! BufWinEnter *.md,*.markdown,*.mdown let g:markdown_preview_on = g:markdown_preview_auto || g:markdown_preview_on
    au! BufWinLeave *.md,*.markdown,*.mdown let g:markdown_preview_on = !g:markdown_preview_auto && g:markdown_preview_on
    nmap tm @=(g:markdown_preview_on ? ':Stop' : ':Start')<CR>MarkdownPreview<CR>:let g:markdown_preview_on = 1 - g:markdown_preview_on<CR>
  " \g => scroll to bottom in markdown preview (insert mode)
    imap <leader>g <esc><leader>Ga
  " \jd => GoTo the definition
    "nnoremap <leader>jd :YcmCompleter GoTo<CR>
  " \e => edit only current/selected line(s) in normal/visual mode
  " z + [fFtTwWbBeE(ge)(gE)jknNs] => easy motion
    map zf <Leader><Leader>f
    map zF <Leader><Leader>F
    "map zt <Leader><Leader>t
    map zT <Leader><Leader>T
    map zw <Leader><Leader>w
    map zW <Leader><Leader>W
    map zb <Leader><Leader>b
    map zB <Leader><Leader>B
    map ze <Leader><Leader>e
    map zE <Leader><Leader>E
    map zge <Leader><Leader>ge
    map zgE <Leader><Leader>gE
    map zj <Leader><Leader>j
    map zk <Leader><Leader>k
    map zn <Leader><Leader>n
    map zN <Leader><Leader>N
    map zs <Leader><Leader>s
  " zn => NrrwRgn in normal/visual mode
    nmap zn :NR<CR>
    xmap zn :NR<CR>
  " zm => multipleCursor by regular expression
    nnoremap zm :MultipleCursorsFind<space>
    xnoremap zm :MultipleCursorsFind<space>
    xmap zI zm^<cr>I
    xmap zA zm$<cr>A

" diff options. without this Gdiff was splitting horizontally on OSx.
  set diffopt=filler,vertical

" with this option on, a buffer is marked as ‘hidden’ if it has unsaved changes, and it is not currently loaded in a window.
" If you try and quit Vim while there are hidden buffers, you will raise an error:
" E162: No write since last change for buffer “a.txt”
  set hidden

" better gui clipboard integration
" http://stackoverflow.com/questions/8134647/copy-and-paste-in-vim-via-keyboard-between-different-mac-terminals
" http://vim.wikia.com/wiki/Accessing_the_system_clipboard
" set clipboard=unnamed

" ===============================
" Plugin settings
" ===============================

  " NERDTree
    nmap <F4> :NERDTreeToggle<CR>
    let NERDTreeMapActivateNode='<space>'
    let NERDTreeShowHidden=1
    let NERDTreeHijackNetrw=0
    "let g:WebDevIconsUnicodeDecorateFolderNodes = 1
    let g:NERDTreeWinSize=45
    let g:NERDTreeAutoDeleteBuffer=1
    "let g:WebDevIconsOS = 'Darwin'
    let NERDTreeMinimalUI=1
    let NERDTreeCascadeSingleChildDir=1
    let g:NERDTreeHeader = 'hello'

    " let g:webdevicons_conceal_nerdtree_brackets = 0
    " let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
    " 
    let g:NERDTreeShowIgnoredStatus = 0
    " let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = 1
    " let g:NERDTreeDirArrows = 1
    "let g:NERDTreeDirArrowExpandable = ''
    "let g:NERDTreeDirArrowCollapsible = ''
    "let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''

  " Nerdtree sybtax highlight
    let g:NERDTreeFileExtensionHighlightFullName = 1
    let g:NERDTreeExactMatchHighlightFullName = 1
    let g:NERDTreePatternMatchHighlightFullName = 1

  " UndoTree
    let g:undotree_WindowLayout = 2
    nnoremap U :UndotreeToggle<CR>

  " Sayonara
    nnoremap <leader>x :Sayonara<CR>

  " Tagbar
    nmap <leader>o :TagbarToggle<CR>
    let g:tagbar_width=35

  " hdima/python-syntax
    let python_highlight_all = 1

  " FZF.vim
    nnoremap <C-p> :Files<CR>

    let g:fzf_colors =
    \ { 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Comment'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Statement'],
      \ 'info':    ['fg', 'PreProc'],
      \ 'border':  ['fg', 'Ignore'],
      \ 'prompt':  ['fg', 'Conditional'],
      \ 'pointer': ['fg', 'Exception'],
      \ 'marker':  ['fg', 'Keyword'],
      \ 'spinner': ['fg', 'Label'],
      \ 'header':  ['fg', 'Comment'] }


  " Airline
    set noshowmode  " hide default mode text (e.g. INSERT) as airline already displays it
    let g:airline_theme='tomorrow'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#buffer_idx_mode = 1
    "let g:airline_powerline_fonts = 1
    if !exists('g:airline_symbols')
      let g:airline_symbols = {}
    endif

  " ALE Linter
    let g:ale_completion_enabled = 0  " do not let ALE hijack omni completion
    let g:ale_echo_msg_error_str = 'E'
    let g:ale_echo_msg_warning_str = 'W'
    let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
    let g:ale_lint_delay = 1000
    nmap ]a <Plug>(ale_next_wrap)
    nmap [a <Plug>(ale_previous_wrap)
    let g:ale_python_pylint_executable = 'pylint3'
    "let g:ale_sign_error = ''
    let g:ale_sign_warning = '»'
    let g:ale_virtualenv_dir_names = ['.env', 'env', 've-py3', 've', 'virtualenv', 'venv']
    let g:ale_type_map = {'pylint': {'ES': 'WS'}}

  " Deoplete Auto-complete
    let g:deoplete#enable_at_startup = 1
    let g:deoplete#omni_patterns = {}
    let g:deoplete#omni_patterns.scala = '[^. *\t]\.\w*\|: [A-Z]\w*'
    let g:deoplete#sources#clang#libclang_path='/usr/local/opt/llvm/lib/libclang.3.6.dylib'
    let g:deoplete#sources#clang#clang_header = '/usr/local/opt/llvm/lib/clang/3.6.2/include'
    let g:deoplete#sources#clang#flags = [
          \ '-isystem',
          \ '/Library/Developer/CommandLineTools/usr/bin/../include/c++/v1',
          \ '-isystem',
          \ '/usr/local/include',
          \ '-isystem',
          \ '/Library/Developer/CommandLineTools/usr/bin/../lib/clang/7.3.0/include',
          \ '-isystem',
          \ '/Library/Developer/CommandLineTools/usr/include',
          \ '-isystem',
          \ '/usr/include',
          \ '-isystem',
          \ '/System/Library/Frameworks',
          \ '-isystem',
          \ '/Library/Frameworks',
          \ ]

  " jedi-vim for python
    let g:jedi#completions_enabled = 0
    let g:jedi#usages_command = "<leader>z"
    let g:jedi#force_py_version = 3
    let g:jedi#completions_command = "<C-N>"

  " deoplete-jedi for python
    let g:deoplete#sources#jedi#show_docstring = 1
    let g:deoplete#sources#jedi#server_timeout = 30

  " google YAPF
    autocmd FileType python nnoremap <LocalLeader>= :0,$!yapf<CR>

  " Settings for silversearcher ag plugin
    "let g:ackprg = 'ag --vimgrep --smart-case'
    "cnoreabbrev ag Ack
    "cnoreabbrev Ag Ack
    "cnoreabbrev AG Ack

  " EasyAlign
    xmap ga <Plug>(LiveEasyAlign)
    nmap ga <Plug>(LiveEasyAlign)

  " EasyMotion
    hi EasyMotionTarget ctermfg=9 guifg=red
    hi EasyMotionTarget2First ctermfg=9 guifg=red
    hi EasyMotionTarget2Second ctermfg=9 guifg=lightred
    hi link EasyMotionShade Comment

  " Emmet
    let g:user_emmet_leader_key = ',z'

  " ESearch
    let g:esearch = {
      \ 'adapter':    'ack',
      \ 'backend':    'nvim',
      \ 'out':        'win',
      \ 'batch_size': 1000,
      \ 'use':        ['visual', 'hlsearch', 'last'],
      \}

  " IndentLine  :IndentLinesToggle toggles lines on and off.
    let g:indentLine_setColors = 0
    "let g:indentLine_color_gui = "#504945"
    let g:indentLine_enabled = 0  " disable by default

  " Markdown_preview (a plugin in nyaovim)
    let g:markdown_preview_eager = 1
    let g:markdown_preview_auto = 1
  " Multi_cursor
    let g:multi_cursor_use_default_mapping=0
    let g:multi_cursor_start_key='<c-n>'
    let g:multi_cursor_next_key='<tab>'
    let g:multi_cursor_prev_key='b'
    let g:multi_cursor_skip_key='x'
    let g:multi_cursor_quit_key='q'
  " Neomake
    let g:neomake_cpp_enabled_makers = ['clang']
    let g:neomake_cpp_clang_args = ['-Wall', '-Wextra', '-std=c++11', '-o', '%:p:r']
    let g:neomake_cpp_gcc_args = ['-Wall', '-Wextra', '-std=c++11', '-o', '%:p:r']
    let g:neomake_scala_enabled_markers = ['fsc', 'scalastyle']
    let g:neomake_scala_scalac_args = ['-Ystop-after:parser', '-Xexperimental']
  " Neoterm
    let g:neoterm_size=20
    let g:neoterm_repl_command= 'zsh'
    "let g:neoterm_position = 'horizontal'
    " toogle the terminal
    " kills the current job (send a <c-c>)
    nnoremap <silent> tc :call neoterm#kill()<cr>
  " Notes
    "let g:notes_directories = ['~/Dev/notes-in-vim']
  " Startify
    "command! -nargs=1 CD cd <args> | Startify
    "autocmd User Startified setlocal cursorline
    "let g:startify_enable_special         = 0
    "let g:startify_files_number           = 8
    "let g:startify_relative_path          = 1
    "let g:startify_change_to_dir          = 1
    "let g:startify_update_oldfiles        = 1
    "let g:startify_session_autoload       = 1
    "let g:startify_session_persistence    = 1
    "let g:startify_session_delete_buffers = 1
    "let g:startify_list_order = [
    "  \ ['   LRU within this dir:'],
    "  \ 'dir',
    "  \ ['   LRU:'],
    "  \ 'files',
    "  \ ['   Sessions:'],
    "  \ 'sessions',
    "  \ ['   Bookmarks:'],
    "  \ 'bookmarks',
    "  \ ]
    "let g:startify_skiplist = [
    "            \ 'COMMIT_EDITMSG',
    "            \ 'plugged/.*/doc',
    "            \ '/data/repo/neovim/runtime/doc',
    "            \ '.vimrc',
    "            \ 'nyaovimrc.html',
    "            \ ]
    "let g:startify_bookmarks = [
    "            \ { 'c': '~/.vimrc' },
    "            \ { 'y': '~/.config/nyaovim/nyaovimrc.html' },
    "            \ ]
    "let g:startify_custom_footer =
    "      \ ['', "   I like it!", '']
    "highlight StartifyFooter  ctermfg=240

  " Supertab
    let g:SuperTabDefaultCompletionType = "<c-n>"
    "let g:SuperTabMappingForward = '<s-tab>'
    "let g:SuperTabMappingBackward = '<tab>'
  " Taglist
    let Tlist_Show_One_File=1
    let Tlist_Exit_OnlyWindow=1
    let Tlist_File_Fold_Auto_Close=1
    let Tlist_WinWidth=30
    let Tlist_Use_Right_Window=1
  " UltiSnip
  " <tab> => expand the snippets
    let g:UltiSnipsExpandTrigger = '<tab>'
  " <ctrl-d> => list available snippets start with the chars before the cursor
    let g:UltiSnipsListSnippets = '<c-d>'
  " <enter> => go to the next placeholder
    let g:UltiSnipsJumpForwardTrigger = '<enter>'
  " <shift-enter> => go to the previous placeholder
    if exists('g:nyaovim_version')
      let g:UltiSnipsJumpBackwardTrigger = '<s-enter>'
    else "as <shift-enter> can't be handled in terminal, use <ctrl-k> instead
      let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
    endif

  " Vim-Devicons
    "let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
    "let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
    "let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vim'] = ''

" Automatics
  "function! ToStartify()
  "  if winnr("$") == 1 && buffer_name(winbufnr(winnr())) != ""
  "    vs
  "    Startify
  "    exec "normal \<c-w>w"
  "  endif
  "endfunction
  "au! QuitPre * call ToStartify()
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  autocmd BufWritePost *.scala :EnTypeCheck
  "cd $HOME
  au BufRead,BufNewFile,BufEnter \@!(term://)* cd %:p:h
  "au! BufWritePost * Neomake
  autocmd FileType json set nocursorcolumn

map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>
"autocmd CompleteDone * pclose " To close preview window of deoplete automagically
