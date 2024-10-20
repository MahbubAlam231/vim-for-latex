" ------------------------------------------------------------
" Author        : Mahbub Alam
" Created       : ~2017
" License       : Self
" Description   : MYVIMRC
" ------------------------------------------------------------
"          _
"  __   __(_) _ __ ___   _ __  ___
"  \ \ / /| || '_ ` _ \ | '__|/ __|
"  _\ V / | || | | | | || |  | (__
" (_)\_/  |_||_| |_| |_||_|   \___|
" -------------------------------------------------------------------

" Preamble{{{
" -------------------------------------------------------------------

" All basic options{{{
" -------------------------------------------------------------------

set nocompatible                      " Be iMproved, required (must be before everything)
" filetype off                          " Required before Vundle and plugins, disables filetype detection

set title                             " Terminal title reflects buffer name
set autochdir                         " Auto change directory (some plugins may not work)
set autoread                          " Auto reload changed files
set wildmenu                          " Tab autocomplete in command mode
" set clipboard=unnamed                 " Clipboard support (OSX)
set backspace=indent,eol,start        " http://vi.stackexchange.com/a/2163
" set dictionary+=$HOME/.local/share/dict/sv    " adding new dictionaries
" set dictionary=+/usr/share/dict/sv.cwl  " adding new dictionaries
set nopaste                           " No pasting from other application in GUI
set lazyredraw                        " Reduce the redraw frequency
set ttyfast                           " Send more characters in fast terminals
set noerrorbells                      " Turn off audible bells
set history=1000                      " Command line history for vim
set timeoutlen=1500 ttimeoutlen=0     " Remove timeout when hitting escape
set showcmd                           " Show partial commands in the line of the screen
" set complete=.,w,b,u,t,i,kspell       " Complete using Ctrl-p (relevant without Ctrl-p?)
set textwidth=1000                    " Line length in vim
set cursorline                        " Highlighting the line containing the cursor
set updatetime=100                    " For gitgutter
set showmatch                         " Briefly jump to the match if a bracket is inserted, :h 'matchtime'
set foldenable                        " Enable folding
set novisualbell                      " Flash the screen when an error message is displayed
set modeline                          " In Debian and Ubuntu, for example, the modeline option has been disabled for security reasons
" set encoding=latin1                   " Default is utf-8
" set cursorcolumn                      " Highlighting the column containing the cursor
set mouse=a                           " Mouse could work on vim too
" set noesckeys
" set laststatus=2                      " Always display statusline
" set statusline=%f\ %y\ %l,%c          " Customizing statusline; don't need it, got airline

" }}}
" Backups{{{

set backup                            " Enable backups
set noswapfile                        " It's 2013, Vim.

set undodir=~/.vim/tmp/undo//         " Undo files
set backupdir=~/.vim/tmp/backup//     " Backups
set directory=~/.vim/tmp/swap//       " Swap files
set writebackup                       " Write backup

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif

" }}}
" Leader Mappings{{{
" -------------------------------------------------------------------

let mapleader="-" "Use leader expressly in normal mode
let maplocalleader=","

" To get <> and write <localleader> easily, etc
inoremap <buffer> <> <><esc>i
inoremap <buffer> <localleader>bu <><esc>ibuffer<esc>la
inoremap <buffer> <L <><esc>ileader<esc>la
inoremap <buffer> <localleader><localleader>ll <><esc>ilocalleader<esc>la
inoremap <buffer> <localleader>bl <><esc>ibuffer<esc>la <><esc>ileader<esc>la
inoremap <buffer> <localleader>bll nnoremap <><esc>ibuffer<esc>la <><esc>ilocalleader<esc>la
inoremap <buffer> <localleader>nbll nnoremap <><esc>ibuffer<esc>la <><esc>ilocalleader<esc>la
inoremap <buffer> <localleader>vbll nnoremap <><esc>ibuffer<esc>la <><esc>ilocalleader<esc>la
inoremap <buffer> <localleader>ibll inoremap <><esc>ibuffer<esc>la <><esc>ilocalleader<esc>la

" }}}
" Tabs, indentation and wrapping{{{
" -------------------------------------------------------------------

set tabstop=4                         " Redefine tab as width of four spaces
set softtabstop=4                     " Number of spaces in tab when editing
set shiftwidth=4                      " Number of space characters inserted for indentation
set expandtab                         " Insert four spaces for tabs everywhere
set smarttab                          " Insert spaces or go to next indent
set autoindent                        " Auto indent
set smartindent                       " Does the right thing (mostly) in programs

" "Make the 71th column stand out
" highlight ColorColumn ctermbg=magenta
" call matchadd('ColorColumn', '\%72v', 100)

set listchars=extends:>
set listchars+=precedes:<
set listchars+=tab:>-
set listchars+=trail:-
" set listchars=extends:→               " Show arrow if line continues rightwards
" set listchars+=precedes:←             " Show arrow if line continues leftwards

set wrap                              " Wrap longlines by default
" Wrap toggle
nnoremap <buffer> <silent> <localleader>wt :set wrap!<cr>

" }}}
" Ignored files/directories from autocomplete{{{
" -------------------------------------------------------------------

set wildignore+=*/texlive/* " texlile folder
set wildignore+=*/tmp/*
" set wildignore+=*.so
set wildignore+=*.aux,*.out,*.toc     " LaTeX intermediate files
set wildignore+=*.jpg,*.jpeg,*.png,*.gif " Images
set wildignore+=*.zip                 " zip files
set wildignore+=*/.git/*              " .git directories
set wildignore+=/git/*                " git projects
set wildignore+=*.sty
" set wildignore+=*/vendor/bundle/*
" set wildignore+=*/node_modules/

" }}}
" Searching{{{
" -------------------------------------------------------------------

set ignorecase                        " Search queries intelligently set case
set smartcase                         " Override 'ignorecase' option if search pattern contains uppercase letters
set incsearch                         " Show search results as you type
set hlsearch                          " Highlight all search patterns

" }}}
" Split{{{
" -------------------------------------------------------------------

set splitright                        " Open new splits to the right
set splitbelow                        " Open new splits below

" Easy splits navigation(see: https://stackoverflow.com/a/15399297/9445700 - doesn't work)
execute "set <M-a>=\ea"
execute "set <M-s>=\es"
execute "set <M-w>=\ew"
execute "set <M-d>=\ed"

execute "set <M-n>=\en"
execute "set <M-p>=\ep"
execute "set <M-j>=\ej"
execute "set <M-k>=\ek"

execute "set <M-m>=\em"
execute "set <M-;>=\e;"

nnoremap <buffer> <M-a> <c-w>h
nnoremap <buffer> <M-s> <c-w>j
nnoremap <buffer> <M-w> <c-w>k
nnoremap <buffer> <M-d> <c-w>l

" nnoremap <buffer> <localleader>h  <c-w>h
" nnoremap <buffer> <localleader>j  <c-w>j
" nnoremap <buffer> <localleader>k  <c-w>k
" nnoremap <buffer> <localleader>l  <c-w>l
" " nnoremap <buffer> <localleader>hh <c-w>h
" " nnoremap <buffer> <localleader>ll <c-w>l

nnoremap <buffer> <localleader>hs :split<cr>
nnoremap <buffer> <localleader>vs :vsplit<cr>

" Resize splits
augroup ResizeSplitsWhenTheWindowIsResized
    autocmd!
    autocmd VimResized * silent exe "normal! \<C-w>="
augroup end

" Window resizing
nnoremap <buffer> <S-LEFT>  5<c-w><
nnoremap <buffer> <S-RIGHT> 5<c-w>>

" }}}
" Line number{{{

set number relativenumber

nnoremap <buffer> <silent> <localleader>nb :call NumberToggle()<cr>
vnoremap <buffer> <silent> <localleader>nb <esc>:call NumberToggle()<cr>gv

" }}}

" }}}

" Plugins{{{
" -------------------------------------------------------------------

" Set the runtime path to include fzf and Vundle, and initialize

" set rtp+=~/.fzf

" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()                   " Vundle will run the following Plugins

call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/indentpython.vim'
Plug 'vim-python/python-syntax'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'ycm-core/YouCompleteMe'
" Plug 'VundleVim/Vundle.vim'
" Plug 'chrisbra/changesPlugin'
Plug 'jason6/vimwiki_md2html'
" Plug 'masukomi/vim-markdown-folding'
" Plug 'mhinz/vim-signify'
" Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
" Plug 'tpope/vim-eunuch'
" Plug 'mswift42/vim-themes'
" Plug 'rafi/awesome-vim-colorschemes'

Plug 'MahbubAlam231/dragvisuals'
Plug 'MahbubAlam231/hybrid-line-numbers'
Plug 'MahbubAlam231/searching-with-blinking'
Plug 'MahbubAlam231/vim-system-copy'
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-gitgutter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'christoomey/vim-quicklink'
Plug 'christoomey/vim-sort-motion'
Plug 'christoomey/vim-titlecase'
Plug 'danro/rename.vim'
Plug 'easymotion/vim-easymotion'
" Plug 'ervandew/supertab'
Plug 'fatih/vim-go'
Plug 'flazz/vim-colorschemes'
Plug 'godlygeek/tabular'
Plug 'haya14busa/vim-asterisk'
Plug 'honza/vim-snippets'
Plug 'inkarkat/vim-PatternsOnText'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-after-object'
Plug 'justinmk/vim-sneak'
Plug 'bps/vim-textobj-python'
Plug 'Julian/vim-textobj-brace'
Plug 'kana/vim-textobj-datetime'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-lastpat'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'
Plug 'mattn/vim-textobj-url'
Plug 'somini/vim-textobj-fold'
Plug 'thinca/vim-textobj-between'
Plug 'lervag/vimtex'
Plug 'machakann/vim-highlightedyank'
Plug 'mattn/webapi-vim'
Plug 'mhinz/vim-startify'
Plug 'michal-h21/vim-zettel'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdtree'
Plug 'sjl/gundo.vim'
Plug 'tibabit/vim-templates'
Plug 'tmhedberg/SimpylFold'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'trapd00r/vidir'
Plug 'trapd00r/vim-syntax-vidir-ls'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'vim-scripts/ReplaceWithRegister'
Plug 'vim-scripts/ZoomWin'
" Plug 'davidhalter/jedi-vim'
Plug 'vim-scripts/matchit.zip'
Plug 'vim-syntastic/syntastic'

Plug 'vimwiki/vimwiki'
Plug 'junegunn/vim-easy-align'

Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'dhruvasagar/vim-table-mode'

Plug 'el-iot/vim-wikipedia-browser'
Plug 'chikamichi/mediawiki.vim'

call plug#end()

" call vundle#end()                     " Required
filetype indent plugin on             " Required, enables filetype detection

" }}}

" Plugin mappings{{{
" -------------------------------------------------------------------

" Vimtex and Folding{{{

call textobj#user#plugin('tex', {
\   'paren-math': {
\     'pattern': ['\\left(', '\\right)'],
\     'select-a': ['<buffer> av'],
\     'select-i': ['<buffer> iv'],
\   },
\   'brace-math': {
\     'pattern': ['\\left\\{', '\\right\\}'],
\     'select-a': ['<buffer> ab'],
\     'select-i': ['<buffer> ib'],
\   },
\   'sq-brace-math': {
\     'pattern': ['\\left[', '\\right]'],
\     'select-a': ['<buffer> as'],
\     'select-i': ['<buffer> is'],
\   },
\ })

" \   'paren-math0': {
" \     'pattern': ['{\\left(', '\\right)}'],
" \     'select-a': ['a)'],
" \     'select-i': ['i)'],
" \   },

xmap <buffer> am  <plug>(vimtex-a$)
xmap <buffer> im  <plug>(vimtex-i$)

omap <buffer> am  <plug>(vimtex-a$)
omap <buffer> im  <plug>(vimtex-i$)

nmap <buffer> dsm <plug>(vimtex-env-delete-math)
nmap <buffer> csm <plug>(vimtex-env-change-math)
nmap <buffer> tsm <plug>(vimtex-env-toggle-math)

xmap <buffer> at  <plug>(vimtex-am)
xmap <buffer> it  <plug>(vimtex-im)

omap <buffer> at  <plug>(vimtex-am)
omap <buffer> it  <plug>(vimtex-im)

" nnoremap <buffer> <localleader><cr> <plug>(vimtex-context-menu)

" To get ae/ie from vimtex (this might not (idk) let own mappings work :-()
let g:vimtex_mappings_override_existing = 1

" augroup UseVimtex_ae/ie_InTeX
"     autocmd!
"     autocmd FileType tex xmap <buffer> <silent><nowait>ie <plug>(vimtex-ie)
"     autocmd FileType tex xmap <buffer> <silent><nowait>ae <plug>(vimtex-ae)

"     autocmd FileType tex omap <buffer> <silent><nowait>ie <plug>(vimtex-ie)
"     autocmd FileType tex omap <buffer> <silent><nowait>ae <plug>(vimtex-ae)
" augroup end

" Finding next and previous math block
augroup FindMath
    autocmd!
    autocmd FileType tex,vimwiki,markdown nnoremap <buffer> <localleader>fm /\(^\([^$]\\|\$[^$]\+\$\)\+\)\@<=\$<cr>:noh<cr>
    autocmd FileType tex,vimwiki,markdown nnoremap <buffer> <localleader>Fm ?\(^\([^$]\\|\$[^$]\+\$\)\+\)\@<=\$<cr>:noh<cr>
augroup end

let g:tex_flavor = 'latex'

let g:vimtex_compiler_latexmk = {
            \ 'backend' : 'process',
            \ 'background' : 1,
            \ 'out_dir' : '',
            \ 'callback' : 0,
            \ 'continuous' : 1,
            \ 'executable' : 'latexmk',
            \ 'hooks' : [],
            \ 'options' : [
            \   '-silent',
            \   '-file-line-error',
            \   '-synctex=1',
            \   '-interaction=nonstopmode']}

let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
" let g:vimtex_compiler_enabled = 1
" let g:vimtex_view_general_options_latexmk = '--unique'

" Disable vimtex completion if you want to manage it manually
let g:vimtex_complete_enabled = 1
let g:vimtex_syntax_enabled = 0
" let g:vimtex_complete_bib = 1
let g:vimtex_complete_ignore = ['.*/usr/local/texlive/.*']  " Add any directories to ignore here

" let g:vimtex_view_method = 'zathura'
" let g:vimtex_view_general_viewer = 'zathura'
" let g:vimtex_compiler_progname = 'vim'

" if empty(v:servername) && exists('*remote_startserver')
"     call remote_startserver('VIM')
" endif

nmap <buffer> <leader>tc :VimtexCompile<cr>
" nnoremap <buffer> <leader>tc <plug>(vimtex-view):VimtexCompile<cr>

nmap <buffer> <localleader>cz :call vimtex#fzf#run('ctli')<cr>
nmap <buffer> <localleader>tc <plug>(vimtex-toc-open)
nmap <buffer> <localleader>cl :VimtexClean<cr>:w!<CR>:!latexmk -cd -f -silent -pdf -bibtex -pdf %:p<CR><CR>:!latexmk -silent -cd -f -pdf %:p<CR><CR>zz

" Folding{{{
set foldlevelstart=0
set foldmethod=marker
nnoremap <buffer> <localleader>mn :setlocal foldmethod=manual<cr>
nnoremap <buffer> <localleader>mr :setlocal foldmethod=marker<cr>


" Fixing LaTeX folds
nnoremap <buffer> <localleader>ff mf:%s/F{O{L{D/F{O{L{D/g<cr>`fzvzz
nnoremap <buffer> <localleader>bf mfA% F{O{L{D<esc>`f
nnoremap <buffer> <localleader>ef mfA% F}O}L}D<esc>`f

" Saving folds in ~/.vim/view
function! MakeView()
    execute "normal! mfzMgg:w!\<cr>:mkview\<cr>`fzvzz"
endfunction

nnoremap <buffer> <localleader>mk :call MakeView()<cr>
nnoremap <buffer> 'f `fzvzz
vnoremap <buffer> 'f `fzvzz

function! FoldingTeXPreamble()
    execute "normal! :setlocal foldmethod=marker\<cr>mfggzR/Packages\<cr>0ma/Environments\<cr>0mb/Newcommands\<cr>0mc/begin{document}\<cr>k0md`azf`b`bzf`c`czf`d?documentclass\<cr>zf`d:delm a-d\<cr>zMgg`fzvzz"

endfunction

nnoremap <buffer> <silent> <localleader>fp :call FoldingTeXPreamble()<cr>

augroup Loadview
    autocmd!
    autocmd BufNewFile,BufRead *.* silent loadview
augroup end

" Opening/closing folding{{{
nnoremap <buffer> zo mzzozz
nnoremap <buffer> zc mzzczz
nnoremap <buffer> zC mzzCzz
nnoremap <buffer> zv mzzvzz
nnoremap <buffer> zr mzzRzz
nnoremap <buffer> zR mzzrzz
nnoremap <buffer> zm mzzMzz
nnoremap <buffer> <localleader>z zMzvzz
nnoremap <buffer> <space> zazz
nnoremap <buffer> <localleader><space> zazt
nnoremap <buffer> z<space> zazb

vnoremap <buffer> zo mzzozz
vnoremap <buffer> zc mzzczz
vnoremap <buffer> zC mzzCzz
vnoremap <buffer> zv mzzvzz
vnoremap <buffer> zr mzzRzz
vnoremap <buffer> zm mzzMzz
vnoremap <buffer> <localleader>z zMzvzz
vnoremap <buffer> <space> zazz
vnoremap <buffer> <localleader><space> zazt
vnoremap <buffer> z<space> zazb

nnoremap <buffer> 'o `ozvzz
nnoremap <buffer> 'c `czvzz
nnoremap <buffer> 'v `vzvzz
nnoremap <buffer> 'r `rzvzz
nnoremap <buffer> 'm mn`mzvzz
nnoremap <buffer> 'z ma`zzvzz

vnoremap <buffer> 'o `ozvzz
vnoremap <buffer> 'c `czvzz
vnoremap <buffer> 'v `vzvzz
vnoremap <buffer> 'r `rzvzz
vnoremap <buffer> 'm mn`mzvzz
vnoremap <buffer> 'z ma`zzvzz

" }}}

" }}}

" }}}
" Vimwiki{{{

" let g:vimwiki_custom_wiki2html = '/home/mahbub/.vim/plugged/vimwiki_md2html/misaka_md2html.py'
let g:vimwiki_custom_wiki2html = '/home/mahbub/.vim/plugged/vimwiki/autoload/vimwiki/customwiki2html.sh'
let g:vimwiki_ext2syntax = {'.md': 'markdown'}
let g:vimwiki_list = [{'path': '~/Dropbox/Data/vimwiki/',
            \'syntax': 'markdown',
            \'ext': 'md',
            \'path_html': '~/Dropbox/Data/vimwiki_html/',
            \'custom_wiki2html': '~/.vim/plugged/vimwiki/autoload/vimwiki/customwiki2html.sh',
            \'html_filename_parametrization': 1,
            \'template_path': '~/Dropbox/Data/vimwiki/templates/',
            \'template_default': 'default',
            \'template_ext': '.tpl'}]
" \'custom_wiki2html': 'vimwiki_markdown',
            " \'custom_wiki2html': '~/.vim/plugged/vimwiki_md2html/misaka_md2html.py',
            " \'python_path': '/home/mahbub/.local/share/pipx/venvs/misaka/bin/python',
            " \'python_path': '~/vimwiki_env/bin/python',

" let g:vimwiki_folding = 'expr'

" TODO: figure out html from markdown with vimwiki. Look at Nihar's solution

let g:nv_search_paths = ['~/Dropbox/Data/vimwiki/']
let g:zettel_format = "%title-%Y-%m-%d"
inoremap <buffer> <localleader>[ <esc><Plug>ZettelSearchmap

" Disabling wiki creation on the fly
" let g:vimwiki_global_ext = 0
" let g:vimwiki_commentstring='<!--%s-->'

" Mappings
augroup VimwikiMappings
    autocmd!
    autocmd Filetype vimwiki nmap <buffer> <leader>we :vsplit<cr><Plug>VimwikiIndex
    autocmd Filetype vimwiki nmap <buffer> <leader><cr> <Plug>VimwikiSplitLink
    autocmd Filetype vimwiki nmap <buffer> <localleader><cr> <Plug>VimwikiVSplitLink
    autocmd Filetype vimwiki nmap <buffer> <silent> <leader>wv :vsplit<cr>:VimwikiIndex<cr>
    " Make current line a filename
    autocmd Filetype vimwiki nnoremap <buffer> <localleader>ml ^y$I[<esc>A]()<esc>P
    autocmd Filetype vimwiki nnoremap <buffer> <localleader>lv :!xdg-open %:t:r.pdf<cr><cr>

augroup end

" function! VimwikiFoldLevelCustom(lnum)
"     let pounds = strlen(matchstr(getline(a:lnum), '^#\+'))
"     if (pounds)
"         return '>' . pounds  " start a fold level
"     endif
"     if getline(a:lnum) =~? '\v^\s*$'
"         if (strlen(matchstr(getline(a:lnum + 1), '^#\+')))
"             return '-1' " don't fold last blank line before header
"         endif
"     endif
"     return '=' " return previous fold level
" endfunction

augroup VimwikiAuGroup
    autocmd!
    autocmd FileType vimwiki setlocal foldmethod=expr
    autocmd FileType vimwiki setlocal foldenable
    " autocmd FileType vimwiki setlocal foldexpr=VimwikiFoldLevelCustom(v:lnum)
augroup end

function! Backlinking()
    execute "normal Vip:g/|/exe 'norm! f|d$'"
endfunction

nnoremap <localleader>vb Vip:g/\|/exe "norm! f\|d$"<cr>Vip:g/\.md/VimwikiFollowLink<cr>

function! LexinSearch(word)
    " let searchterm=getreg('s')
    :!firefox \"https://lexin.nada.kth.se/lexin/\#searchinfo=both,swe_swe, . word . "\" "
endfunction

nnoremap <localleader>ls "syiw:call LexinSearch("s)<cr>

" Tables{{{

" let g:vimwiki_table_mappings=0
" let g:vimwiki_table_auto_fmt=0

" augroup ChangeVimwikiTableTab
"     autocmd!
"     autocmd Filetype vimwiki inoremap <silent><expr><buffer> <M-n> vimwiki#tbl#kbd_tab()
"     autocmd Filetype vimwiki inoremap <silent><expr><buffer> <M-p> vimwiki#tbl#kbd_shift_tab()
"     " autocmd Filetype vimwiki inoremap <silent><expr> <Tab> vimwiki#tbl#kbd_tab()
"     " autocmd Filetype vimwiki inoremap <silent><expr> <S-Tab> vimwiki#tbl#kbd_shift_tab()
" augroup end

" Adding horizontal line in between vimwiki table
nnoremap <buffer> <localleader>hr yypV:s/[^\|]/-/g<cr>:noh<cr>
inoremap <buffer> <localleader>hr <esc>yypV:s/[^\|]/-/g<cr>yypV:s/-/ /g<cr>:noh<cr>la
nnoremap <buffer> <localleader>br yypV:s/[^\|]/ /g<cr>:noh<cr>
inoremap <buffer> <localleader>br <esc>mmyypV:s/[^\|]/ /g<cr>:noh<cr>yyp`m2ji

" pipe_tables to grid_tables
vnoremap <buffer> <localleader>tg :!python3 /home/mahbub/scripts/bin/pipe_to_grid.py<cr>

" Vim table mode
" let b:table_mode_corner='+'
" let b:table_mode_corner_corner = '+'
" let b:table_mode_header_fillchar = '='
nnoremap <buffer> <localleader>tm :TableModeToggle<cr>

" Easy align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" }}}

" }}}
" Python{{{

let g:python_highlight_all = 1

let g:textobj_python_no_default_key_mappings = 1

call textobj#user#map('python', {
      \   'class': {
      \     'select-a': '<buffer>ac',
      \     'select-i': '<buffer>ic',
      \     'move-n': '<buffer>]pc',
      \     'move-p': '<buffer>[pc',
      \   },
      \   'function': {
      \     'select-a': '<buffer>af',
      \     'select-i': '<buffer>if',
      \     'move-n': '<buffer>]pf',
      \     'move-p': '<buffer>[pf',
      \   }
      \ })

" }}}
" Coc{{{

" Remap keys for navigating diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> gh :call CocActionAsync('doHover')<CR>

inoremap <silent><expr> <M-n>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<M-n>" :
      \ coc#refresh()
inoremap <silent><expr> <M-p> coc#pum#visible() ? coc#pum#prev(1) : "\<M-p>"

inoremap <silent><expr> <M-j>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<M-n>" :
      \ coc#refresh()
inoremap <silent><expr> <M-k> coc#pum#visible() ? coc#pum#prev(1) : "\<M-p>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <M-;> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" inoremap <silent><expr> <cr> coc#pum#visible() ? coc#pum#confirm()
"                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" " Function to check for backspace, used in tab completion{{{
" function! CheckBackspace() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" " Use <tab> for trigger completion and navigate through completions
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump', ''])<CR>" :
"       \ CheckBackspace() ? "\<TAB>" :
"       \ coc#refresh()

" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" " Automatically fix issues on save
" autocmd BufWritePre * :CocCommand eslint.executeAutofix

" " Check if the character before the cursor is a whitespace
" function! CheckBackspace() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" " Use tab for trigger completion and navigate through snippets
" " Tab key for snippet expansion
" inoremap <silent> <C-Space> coc#refresh() " Complete with coc.nvim
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<C-r>=snipmate#expand_or_jump(1)" . "\<C-g>u" 
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<C-r>=snipmate#jump(-1)" . "\<C-g>u"
" " inoremap <expr> <TAB> pumvisible() ? "\<C-n>" : coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump', ''])<CR>" : CheckBackspace() ? "\<TAB>" : coc#refresh()
" " inoremap <expr> <S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" " Use <c-j> to jump to the next snippet placeholder
" imap <silent><expr> <C-j> coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump', ''])<CR>" : "\<C-j>"

" " Use <c-k> to jump back in UltiSnips
" imap <expr> <C-k> UltiSnips#CanJumpBackwards() ? '<C-R>=UltiSnips#JumpBackwards()<CR>' : '<C-k>'

"}}}

" }}}
" Pandoc{{{

let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
let g:pandoc#filetypes#pandoc_markdown=0
let g:pandoc#keyboard#display_motions = 0
let g:vim_markdown_no_default_key_mappings = 1
" let g:pandoc#command#custom_filters = ['/home/mahbub/python-code/my-modules/pipe_to_grid_filter.py']

" augroup SetFiletypeMarkdown
"     autocmd!
"     autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
"     autocmd BufNewFile,BufRead *.md setlocal commentstring=<!--%s-->
" augroup end

" }}}

" Abolish and coercing{{{

" Coercing
vmap <buffer> <localleader>cr :s/ /-/g<cr>:noh<cr>
nmap <buffer> <localleader>cr :%s/ /-/g<cr>:noh<cr>
nmap <buffer> crr V:s/ /-/g<cr>:noh<cr>

" }}}
" After object{{{

" augroup AfterObject
"     autocmd!
"     autocmd VimEnter * call after_object#enable(':', '+', '-', '#', ' ', '.', ',', ';', '$', '&', '=', '\')
" augroup end

" }}}
" Airline{{{

let g:airline_theme = 'simple'

" }}}
" GitGutter{{{

" let g:gitgutter_set_sign_backgrounds = 1

" highlight GitGutterAdd guifg=#009900 ctermfg=Green
" highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
" highlight GitGutterDelete guifg=#ff2222 ctermfg=209

" let g:gitgutter_sign_added = 'xx'
" let g:gitgutter_sign_modified = 'yy'
" let g:gitgutter_sign_removed = 'zz'
" let g:gitgutter_sign_removed_first_line = '^^'
" let g:gitgutter_sign_modified_removed = 'ww'

" let g:gitgutter_enabled = 1

" }}}
" Asterisk{{{

map <buffer> *   <Plug>(asterisk-*)<c-o>
map <buffer> #   <Plug>(asterisk-#)<c-o>
" map <buffer> g*  <Plug>(asterisk-g*)zz
" map <buffer> g#  <Plug>(asterisk-g#)zz
" map <buffer> z*  <Plug>(asterisk-z*)
" map <buffer> z#  <Plug>(asterisk-z#)
map <buffer> gz* <Plug>(asterisk-gz*)
map <buffer> gz# <Plug>(asterisk-gz#)

" Use g instead of z, z messes up dz, cz
map <buffer> g*  <Plug>(asterisk-z*)
map <buffer> g#  <Plug>(asterisk-z#)

let g:asterisk#keeppos = 1

" }}}
" Commentary{{{

augroup CommentString
    autocmd!
    autocmd FileType vimwiki setlocal commentstring=<!--%s-->
augroup end

" }}}
" Conceal{{{

let g:tex_conceal='abdgm'

" }}}
" Dragvisuals{{{

" Dragging visual blocks
vmap <buffer> <expr> <S-LEFT>  DVB_Drag('left')
vmap <buffer> <expr> <S-RIGHT> DVB_Drag('right')
vmap <buffer> <expr> <S-DOWN>  DVB_Drag('down')
vmap <buffer> <expr> <S-UP>    DVB_Drag('up')
vmap <buffer> <expr> D         DVB_Duplicate()

" Remove any introduced trailing whitespace after moving...
let g:DVB_TrimWS = 1

" }}}
" Easymotion and Sneak{{{

let g:EasyMotion_do_mapping = 0

map <buffer> <leader>w mw<Plug>(easymotion-bd-w)
map <buffer> <leader>e me<Plug>(easymotion-bd-e)
map <buffer> <leader>f mf<Plug>(easymotion-bd-f)
map <buffer> <leader>s ms<Plug>(easymotion-s2)
" map <buffer> <leader>t mt<Plug>(easymotion-t2)

omap <buffer> <leader>w <Plug>(easymotion-bd-w)
omap <buffer> <leader>e <Plug>(easymotion-bd-e)
omap <buffer> <leader>f <Plug>(easymotion-bd-f)
omap <buffer> <leader>s <Plug>(easymotion-s2)
" omap <buffer> <leader>t <Plug>(easymotion-t2)

" nmap <buffer> f <Plug>Sneak_f
" nmap <buffer> F <Plug>Sneak_F
" nmap <buffer> t <Plug>Sneak_t
" nmap <buffer> T <Plug>Sneak_T

" omap <buffer> f <Plug>Sneak_f
" omap <buffer> F <Plug>Sneak_F
" omap <buffer> t <Plug>Sneak_t
" omap <buffer> T <Plug>Sneak_T

nnoremap <buffer> 'w `wzvzz
nnoremap <buffer> 'e `ezvzz
nnoremap <buffer> 'f `fzvzz
nnoremap <buffer> 's `szvzz
nnoremap <buffer> 't `tzvzz

nnoremap <buffer> \ ,

nmap <buffer> , <Plug>Sneak_,
    omap <buffer> , <Plug>Sneak_,
    xmap <buffer> , <Plug>Sneak_,

    nmap <buffer> \ <Plug>Sneak_,
    omap <buffer> \ <Plug>Sneak_,
    xmap <buffer> \ <Plug>Sneak_,

    "}}}
" Eunuch"{{{

" Don't use :Delete from vim-eunuch, it is equvalent to 'rm' in linux, file forever gone
" cnoremap <buffer> df .!trash %<cr>:Delete<cr>

" }}}
" Fugitive{{{

nnoremap <buffer> <localleader>gp :Gw<cr>:Gcommit -m "Add updated files"<cr><cr>:Gpush origin master<cr>

" }}}
" FuzzyFinder{{{

" Show dot files and ignore .git files
let $FZF_DEFAULT_COMMAND='ag --hidden --ignore ~/.vim/tmp/ --ignore .git -g ""'
let $FZF_DEFAULT_OPTS='-m --height=80% --layout=reverse --inline-info --border --preview="bat --style=numbers --wrap --color=always {}" --bind="f7:toggle-preview,ctrl-f:preview-page-down,ctrl-b:preview-page-up,ctrl-d:preview-down,ctrl-u:preview-up,ctrl-a:select-all+accept,ctrl-y:execute-silent(echo {+} | pbcopy)"'
let g:fzf_preview_window = 'right:60%'

" nnoremap <buffer> <localleader>fzf :FZF ~/
nnoremap <buffer> <localleader>fzd :Files<cr>
nnoremap <buffer> <localleader>fzf :FZF ~<cr>
nnoremap <buffer> <localleader>fzp :FZF ~/python-code<cr>

" }}}
" Gundo{{{

nnoremap <buffer> <localleader>gt :GundoToggle<CR>

" }}}
" Indent Guides{{{

" let g:indent_guides_start_level = 2
" let g:indent_guides_guide_size = 1

nnoremap <buffer> <localleader>i :IndentGuidesToggle<cr>

" Indenting frames
nnoremap <buffer> =f mi?{frame}<cr>=ae`i

" }}}
" Limelight{{{

" nmap <buffer> <localleader>l <Plug>(Limelight)
" xmap <buffer> <localleader>l <Plug>(Limelight)

nnoremap <buffer> <localleader><localleader>li :Limelight!!<cr>

" Color name (:help cterm-colors) or ANSI code
" let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 244

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
" let g:limelight_priority = -1

" " Color name (:help gui-colors) or RGB color
" let g:limelight_conceal_guifg = 'DarkGray'
" let g:limelight_conceal_guifg = '#777777'

" " Default: 0.5
" let g:limelight_default_coefficient = 0.7

" " Beginning/end of paragraph
" "   When there's no empty line between the paragraphs
" "   and each paragraph starts with indentation
" let g:limelight_bop = '^\s'
" let g:limelight_eop = '\ze\n^\s'

" " Number of preceding/following paragraphs to include (default: 0)
" let g:limelight_paragraph_span = 1

" }}}
" NERDtree{{{

let NERDTreeShowHidden=1
nnoremap <buffer> <localleader>nt :NERDTree<cr>:set number relativenumber<cr>

" }}}
" Startify{{{

nnoremap <buffer> <localleader>st :Startify<cr>

" }}}
" " Supertab{{{

" let g:SuperTabDefaultCompletionType = "<c-n>"
" let g:SuperTabContextDefaultCompletionType = "<c-n>"
" set completeopt-=menuone
" set completeopt-=preview
" set wildmode=longest:full,full

" " }}}
" Templates and Selecting Template{{{

" In "~/.vim/plugged/vim-templates/plugin/templates.vim" add autocmd for writing BufNewFile event

let g:tmpl_auto_initialize=1
let g:tmpl_author_name='Mahbub Alam'
let g:tmpl_license='Self'
let g:template_list = ["amsart", "article", "beamer", "c", "CMakeLists.txt", "cpp", "go", "h", "hpp", "html", "java", "js", "jsx", "letter", "main.c", "main.cpp", "Makefile", "md", "mock", "py", "report", "sh", "tex", "vim"]

" Selecting template
" function! Template(code)"{{{
" " include all templates{{{
"    " let item = a:code
"    " if (item in g:template_list)
"    "     echo "yes"
"    " else
"    "     echo "no"
"    " endif
"    " let input_not_valid = 1
"    " while input_not_valid == 1
"    "     if item in template_list
"    "         let input_not_valid = 0
"    "     else
"    "         echo item "not in template list."
"    "         let item = input("Which Template: ")
"    "     endif
"    " endwhile
"    " let l:code = a:code
"    " echo l:code
"    " exe "normal! TemplateInit". " " . l:code
"    " " try
"    " "     TemplateInit amsart
"    " " endtry

" "}}}

"    if a:code != 'art' && a:code != 'ams' && a:code != 'rep' && a:code != 'sh'
"        let l:code = input("Which Template: ")
"    else
"        let l:code = a:code
"    endif

"    "art
"    if l:code == "art"
"        :TemplateInit article

"        "ams
"    elseif l:code == "ams"
"        :TemplateInit amsart

"        "rep
"    elseif l:code == "rep"
"        :TemplateInit report

"        "sh
"    elseif l:code == "sh"
"        :TemplateInit sh

"        "invalid template
"    elseif l:code != 'art' && l:code != 'ams' && l:code != 'rep'
"        echom " <-- Not a valid template"
"    endif

" endfunction"}}}

nnoremap <buffer> <silent> <localleader>tem :TemplateAutoInit<cr>

nnoremap <buffer> <silent> <localleader>art :TemplateInit article<cr>
nnoremap <buffer> <silent> <localleader>ams :TemplateInit amsart<cr>
nnoremap <buffer> <silent> <localleader>rep :TemplateInit report<cr>
nnoremap <buffer> <silent> <localleader>sh :TemplateInit sh<cr>

" Placeholders <++>
nnoremap <buffer> <silent> <c-j> /<+\(.\)*+><cr>zMzvzz:noh<cr>cf>
inoremap <buffer> <silent> <c-j> <esc>/<+\(.\)*+><cr>zMzvzz:noh<cr>cf>
nnoremap <buffer> <silent> <c-k> ?<+\(.\)*+><cr>zMzvzz:noh<cr>cf>
inoremap <buffer> <silent> <c-k> <esc>?<+\(.\)*+><cr>zMzvzz:noh<cr>cf>

" }}}
" Titlecase{{{

let g:titlecase_map_keys = 0

" <Plug>Titlecase " Titlecase the region defined by a text object or motion
nmap <buffer> <localleader>t <Plug>Titlecase

" <Plug>TitlecaseLine " Titlecase the entire line
nmap <buffer> <localleader>tt <Plug>TitlecaseLine

" <Plug>Titlecase " Titlecase the visually selected region
vmap <buffer> <localleader>t <Plug>Titlecase

" Uppercase the first letter of a word
nnoremap <buffer> <localleader>uc viwbU

" }}}
" UltiSnips{{{

let g:UltiSnipsUsePythonVersion = 3

let g:UltiSnipsEditSplit='vertical'
nnoremap <buffer> <leader>ue :UltiSnipsEdit<cr>

augroup Snippets
    autocmd!
    autocmd FileType snippets setlocal foldmethod=marker
    autocmd FileType snippets setlocal foldlevel=0
augroup end

" Set the key to expand a snippet
" let g:UltiSnipsExpandTrigger = "<c-j>"

" " Set the key to jump forward in the snippet
" let g:UltiSnipsJumpForwardTrigger = '<c-j>'

" " Set the key to jump backward in the snippet
" let g:UltiSnipsJumpBackwardTrigger = '<c-k>'

" function! ExpandUltiSnipsNormal(snippet)
"     exe "normal! a" . a:snippet
"     call UltiSnips_ExpandSnippet()
"     return
" endfunction

" nnoremap <buffer> <silent> <localleader>ps gg/##<cr>:noh<cr>jotnow<c-r>=UltiSnips#Anon('TIME: `date +%d-%m-%y\ \(%b,\ %a\)\ %H:%M\ %Z`', 'tnow')<cr><cr><esc>O
" nnoremap <buffer> <silent> <localleader>rl gg/##<cr>:noh<cr>jotnow<c-r>=UltiSnips#Anon('TIME: `date +%d-%m-%y\ \(%b,\ %a\)\ %H:%M\ %Z`', 'tnow')<cr><cr><esc>O


" }}}
" " Unimpaired{{{

" if &filetype != 'python'
"     nmap < [
"     nmap > ]
"     omap < [
"     omap > ]
"     xmap < [
"     xmap > ]
" endif

" " }}}
" Plugin test{{{

" Vim instant markdown
" let g:instant_markdown_autostart = 1
" " let g:instant_markdown_slow = 1
" let g:instant_markdown_browser = "firefox --new-window"

" " Plasticboy markdown
" let g:vim_markdown_folding_disabled = 1

" Pandoc
" let g:pandoc#keyboard#display_motions=0

" }}}
" " YouCompleteMe{{{

" let g:ycm_autoclose_preview_window_after_completion=1
" map <buffer> <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" " Use <Tab> for both UltiSnips expansion and YCM completion
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" imap <expr> <Tab>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<Tab>" :
"       \ UltiSnips#CanExpandSnippet() ? "\<C-R>=UltiSnips#ExpandSnippet()<CR>" :
"       \ "\<Tab>"

" imap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<C-h>"

" " " Use <Tab> for both UltiSnips expansion and YCM completion
" " function! s:check_back_space() abort
" "   let col = col('.') - 1
" "   return !col || getline('.')[col - 1]  =~# '\s'
" " endfunction

" " " Tab key behavior for YCM and UltiSnips
" " imap <expr> <Tab>
" "       \ pumvisible() ? "\<C-n>" :
" "       \ <SID>check_back_space() ? "\<Tab>" :
" "       \ UltiSnips#CanExpandSnippet() ? "\<C-R>=UltiSnips#ExpandSnippet()<CR>" :
" "       \ "\<Tab>"

" " " Shift-Tab behavior for backward navigation in YCM
" " imap <expr> <S-Tab>
" "       \ pumvisible() ? "\<C-p>" : "\<C-h>"

" " Jump forward in snippets with <C-j> and backward with <C-k>
" imap <C-j> <C-R>=UltiSnips#JumpForwards()<CR>
" imap <C-k> <C-R>=UltiSnips#JumpBackwards()<CR>

" " python with virtualenv support
" python3 << EOF
" import os
" import sys
" if 'VIRTUAL_ENV' in os.environ:
"   project_base_dir = os.environ['VIRTUAL_ENV']
"   activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"   execfile(activate_this, dict(__file__=activate_this))
" EOF

" " " Use Tab for UltiSnips or YCM autocompletion
" " function! s:check_back_space() abort
" "   let col = col('.') - 1
" "   return !col || getline('.')[col - 1]  =~# '\s'
" " endfunction

" " inoremap <silent><expr> <TAB>
" "       \ pumvisible() ? "\<C-n>" :
" "       \ UltiSnips#CanExpandSnippet() ? "\<C-R>=UltiSnips#ExpandSnippet()<CR>" :
" "       \ UltiSnips#CanJumpForwards() ? "\<C-R>=UltiSnips#JumpForwards()<CR>" :
" "       \ <SID>check_back_space() ? "\<Tab>" :
" "       \ "\<C-x>\<C-o>"

" " inoremap <silent><expr> <S-TAB>
" "       \ pumvisible() ? "\<C-p>" :
" "       \ UltiSnips#CanJumpBackwards() ? "\<C-R>=UltiSnips#JumpBackwards()<CR>" :
" "       \ "\<C-h>"



" " function! g:UltiSnips_Complete()
" "     call UltiSnips#ExpandSnippet()
" "     if g:ulti_expand_res == 0
" "         if pumvisible()
" "             return "\<C-n>"
" "         else
" "             call UltiSnips#JumpForwards()
" "             if g:ulti_jump_forwards_res == 0
" "                return "\<TAB>"
" "             endif
" "         endif
" "     endif
" "     return ""
" " endfunction

" " au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
" " let g:UltiSnipsJumpForwardTrigger="<tab>"
" " let g:UltiSnipsListSnippets="<c-e>"
" " " this mapping Enter key to <C-y> to chose the current highlight item 
" " " and close the selection list, same as other IDEs.
" " " CONFLICT with some plugins like tpope/Endwise
" " inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" " }}}

" }}}

" Misc{{{
" -------------------------------------------------------------------

" Braces and stuff{{{
" -------------------------------------------------------------------

" Fix it to delete inside larger parenthesis
onoremap <buffer> p i)
" In the same line delete inside any parenthesis
onoremap <buffer> in( :<c-u>normal! f(vi)<cr>
onoremap <buffer> inp :<c-u>normal! f(vi)<cr>
onoremap <buffer> il( :<c-u>normal! F)vi)<cr>
onoremap <buffer> ilp :<c-u>normal! F)vi)<cr>
onoremap <buffer> iN( :<c-u>normal! F)vi)<cr>
onoremap <buffer> iNp :<c-u>normal! F)vi)<cr>

if &filetype != 'python'
    inoremap <buffer> ( ()<esc>i
    inoremap <buffer> (( (
    inoremap <buffer> { {}<esc>i
    inoremap <buffer> {{ {
    inoremap <buffer> [ []<esc>i
    inoremap <buffer> [[ [

    inoremap <buffer> \| \|\|<esc>i
    inoremap <buffer> \|\| \|

    inoremap <buffer> '' ''<esc>i
    inoremap <buffer> "" ""<esc>i
    inoremap <buffer> `` ``<esc>i
endif

augroup MarkdownVimwiki
    autocmd!
    autocmd FileType markdown,vimwiki inoremap <buffer> ** **<left>
    " autocmd FileType markdown,vimwiki iunmap <buffer> \|
    " autocmd FileType markdown,vimwiki iunmap <buffer> \|\|
augroup end

" }}}
" Calculator{{{
" -------------------------------------------------------------------

inoremap <buffer> <c-b> <c-o>yiW<end> = <c-r>=<c-r>0<cr>

" " Adding or substracting numbers in normal mode is <ctrl-a> or <ctrl-x>
" nnoremap <buffer> <c-b> viwo<esc>maA+1<esc>v`aygvc<c-r>=<c-r>0<cr><esc>
" nnoremap <buffer> <c-s> viwo<esc>maea-1<esc>v`aygvc<c-r>=<c-r>0<cr><esc>

" }}}
" Colorschemes{{{
" -------------------------------------------------------------------

let python_highlight_all=2
syntax on
" syntax sync fromstart

let g:seoul256_background=233
let g:seoul256_light_background=256

let g:seoul256_srgb=1

" colorscheme seoul256-light
" colorscheme seoul256
" colorscheme wombat256i
" colorscheme solarized
" colorscheme light-kiss
" colorscheme simple_dark

let g:my_colorscheme_mode=1
function! ColorToggle()
    if g:my_colorscheme_mode
        colorscheme seoul256-light
        let g:my_colorscheme_mode=0
    else
        colorscheme seoul256
        " colorscheme badwolf
        let g:my_colorscheme_mode=1
    endif

    " " Fix highlight issue with tex files
    " if &filetype=='tex'
    "     call SourceEverythingForTeX()
    " endif

endfunction

call ColorToggle()
nnoremap <buffer> <localleader>ct :call ColorToggle()<cr>

function! ColorschemeToggle()
    if g:my_colorscheme_mode
        silent !sed -i 's/^let g:my_colorscheme_mode=0/let g:my_colorscheme_mode=1/' /home/mahbub/Dropbox/Data/.vimrc
    else
        silent !sed -i 's/^let g:my_colorscheme_mode=1/let g:my_colorscheme_mode=0/' /home/mahbub/Dropbox/Data/.vimrc
    endif
endfunction

nnoremap <buffer> <localleader>cs mmgg:call ColorschemeToggle()<cr>:source $MYVIMRC<cr>:noh<cr>`mzz

" Editing colorscheme in vimrc
nnoremap <buffer> <localleader>ec /Colorschemes<cr>:noh<cr>zvzt

" }}}
" Command line mappings{{{
" -------------------------------------------------------------------

cnoremap <buffer> <c-a> <home>
cnoremap <buffer> <c-e> <end>

" }}}
" Diagraphs{{{
" -------------------------------------------------------------------

" "Make CTRL-K list diagraphs before each digraph entry
" runtime bundle/betterdigraphs/plugin/betterdigraphs.vim
" inoremap <buffer> <expr> <C-K> BDG_GetDigraph()

" }}}
" Macros{{{
" -------------------------------------------------------------------

nnoremap <buffer> Q @q
vnoremap <buffer> Q @q
" Redefine macro 'q'
nnoremap <buffer> <localleader>rq :let @q='<c-r>q'<left>

" }}}
" Navigation{{{
" -------------------------------------------------------------------

" Get off my lawn - helpful when learning Vim :){{{
" nnoremap <buffer> <Left>  :echoe "Use 'h'. Navigate smartly!"<cr>
" nnoremap <buffer> <Down>  :echoe "Use 'j'. Navigate smartly!"<cr>
" nnoremap <buffer> <Up>    :echoe "Use 'k'. Navigate smartly!"<cr>
" nnoremap <buffer> <Right> :echoe "Use 'l'. Navigate smartly!"<cr>

" }}}
" Moving on the screen{{{

nnoremap <buffer> H mh^
nnoremap <buffer> J mjL
nnoremap <buffer> K mkH
nnoremap <buffer> L ml$
nnoremap <buffer> gH mhg^
nnoremap <buffer> gL mlg$
nnoremap <buffer> ge mege
nnoremap <buffer> <localleader>e mege

vnoremap <buffer> H mh^
vnoremap <buffer> J mjL
vnoremap <buffer> K mkH
vnoremap <buffer> L ml$
vnoremap <buffer> gH mhg^
vnoremap <buffer> gL mlg$
vnoremap <buffer> ge mege
vnoremap <buffer> <localleader>e mege

onoremap <buffer> H ^
onoremap <buffer> J L
onoremap <buffer> K H
onoremap <buffer> L $
onoremap <buffer> gH g^
onoremap <buffer> gL g$
onoremap <buffer> ge mege
onoremap <buffer> <localleader>e mege

" onoremap <buffer> H :<c-u>normal! mh^<cr>
" onoremap <buffer> J :<c-u>normal! mjL<cr>
" onoremap <buffer> K :<c-u>normal! mkH<cr>
" onoremap <buffer> L :<c-u>normal! mlg_<cr>

nnoremap <buffer> 'h `h
nnoremap <buffer> 'j `j
nnoremap <buffer> 'k `k
nnoremap <buffer> 'l `l
nnoremap <buffer> 'e `e

vnoremap <buffer> 'h `h
vnoremap <buffer> 'j `j
vnoremap <buffer> 'k `k
vnoremap <buffer> 'l `l
vnoremap <buffer> 'e `e

inoremap <buffer> \z <esc>zMzvzza
inoremap <buffer> <leader>zz <esc>zza
inoremap <buffer> <leader>zt <esc>zta
inoremap <buffer> <leader>zb <esc>zba

" }}}
" Toggle VIM lines and visual lines navigation, and special use of numbers{{{
let s:navigation_toggle=0

" inoremap <buffer> 1  <esc>A
" inoremap <buffer> 11 1
" inoremap <buffer> 7 <left><left>
" inoremap <buffer> 77 7
" inoremap <buffer> 8 <left>
" inoremap <buffer> 88 8
" inoremap <buffer> 9 <right>
" inoremap <buffer> 99 9
" inoremap <buffer> 0 <right><right>
" inoremap <buffer> 00 0

function! NavigationToggleInWrapMode()
    if s:navigation_toggle
        " Using VIM lines
        unmap <buffer> j
        unmap <buffer> k
        nnoremap <buffer> H mh^
        nnoremap <buffer> J mjL
        nnoremap <buffer> K mkH
        nnoremap <buffer> L ml$

        vnoremap <buffer> H mh^
        vnoremap <buffer> J mjL
        vnoremap <buffer> K mkH
        vnoremap <buffer> L ml$

        " inoremap <buffer> 1  <esc>A
        " inoremap <buffer> 11 1
        " inoremap <buffer> 7 <left><left>
        " inoremap <buffer> 77 7
        " inoremap <buffer> 8 <left>
        " inoremap <buffer> 88 8
        " inoremap <buffer> 9 <right>
        " inoremap <buffer> 99 9
        " inoremap <buffer> 0 <right><right>
        " inoremap <buffer> 00 0

        let s:navigation_toggle=0
    else
        " Using visual lines
        nnoremap <buffer> j gj
        nnoremap <buffer> k gk
        nnoremap <buffer> H mhg^
        nnoremap <buffer> J mjL
        nnoremap <buffer> K mkH
        nnoremap <buffer> L mlg$

        vnoremap <buffer> j gj
        vnoremap <buffer> k gk
        vnoremap <buffer> H mhg^
        vnoremap <buffer> J mjL
        vnoremap <buffer> K mkH
        vnoremap <buffer> L mlg$

        " iunmap <buffer> 1
        " iunmap <buffer> 11
        " iunmap <buffer> 7
        " iunmap <buffer> 77
        " iunmap <buffer> 8
        " iunmap <buffer> 88
        " iunmap <buffer> 9
        " iunmap <buffer> 99
        " iunmap <buffer> 0
        " iunmap <buffer> 00

        let s:navigation_toggle=1
    endif
endfunction

nnoremap <buffer> <localleader>nv :call NavigationToggleInWrapMode()<cr>

" }}}

" Marking remaps
nnoremap <buffer> ' `
nnoremap <buffer> ` '

" Mark and then go to the beginning or end of the file
nnoremap <buffer> gg mggg
" nnoremap <buffer> G mgG
nnoremap <buffer> 'g mh`gzvzz
nnoremap <buffer> 'j `jzvzz

vnoremap <buffer> gg mggg
" vnoremap <buffer> G mgG
" onoremap <buffer> G mgG
vnoremap <buffer> 'g `gzvzz
vnoremap <buffer> 'j `jzvzz

" Revisit changelog
nnoremap <buffer> g; g;zvzz
nnoremap <buffer> g, g,zvzz

" }}}
" Pasting, visual selection{{{
" -------------------------------------------------------------------

" Pasting
nnoremap <buffer> p pmp
nnoremap <buffer> P Pmp

" Visually reselect whatever is pasted (not working)
nnoremap <buffer> <localleader>V V`[
vnoremap <buffer> <localleader>V <esc>V`[

" Highlight last inserted text
nnoremap <buffer> gV `[v`]

" Visually select current line excluding indentation and white space
nnoremap <buffer> vv ^vg_

" }}}
" Running command in shell and pasting in buffer{{{

" Run in shell and paste in line below
nnoremap <buffer> <silent> !! yiwo<esc>:.!<c-r><c-r>0<cr>
vnoremap <buffer> <silent> !! yo<esc>:.!<c-r><c-r>0<cr>0

" " Paste date at cursor
" nnoremap <buffer> <silent> <localleader>now a<cr><cr><esc>k:.!date '+\%b \%d \%Y \%H:\%M \%Z (\%a)'<cr>kV2j:j<cr>:echo<cr>/IST<cr>:noh<cr>w%lx
" inoremap <buffer> <silent> <localleader>now <cr><cr><esc>k:.!date '+\%b \%d \%Y \%H:\%M \%Z (\%a)'<cr>kV2j:j<cr>:echo<cr>/IST<cr>:noh<cr>w%lxa

" Calendar on next paragraph with cursor on today
nnoremap <buffer> <silent> <localleader>cal mco<esc>:.!cal<cr>:FixWhitespace<cr>?_<cr>2xwn2xhe:noh<cr>`c

" }}}
" Searching remaps{{{

" Marking before searching
nnoremap <buffer> / ms/
nnoremap <buffer> ? ms?

nnoremap <buffer> 's `szvzz

" Search within visual selection
vnoremap <buffer> ;/ <esc>ms/\%V

vnoremap <buffer> 's `szvzz

" " Don't move on after */# (taken care of at vim-asterisk)
" nnoremap <buffer> * ms*<c-o>
" nnoremap <buffer> # ms#<c-o>

" Search the visually selected using */# (from Scrooloose){{{
" Shorter mapping, although z* from vim-asterisk even retains cursor position
function! s:VSerSearch()
    let temp = @s
    norm! gv"sy
    let @/ = '\V' . substitute(escape(@s, '\'), '\n', '\\n', 'g')
    let @s = temp
endfunction

vnoremap <buffer> * :<c-u>call <SID>VSerSearch()<cr>ms//<cr><c-o>zz
vnoremap <buffer> # :<c-u>call <SID>VSerSearch()<cr>ms??<cr><c-o>zz

" }}}

" Highlighting next match
nnoremap <buffer> <silent> n nzvzz:call HLNext(0.05)<cr>
nnoremap <buffer> <silent> N Nzvzz:call HLNext(0.05)<cr>
nnoremap <buffer> <silent> <localleader>nm :call NextMatchToggle()<cr>

" Vim very magic mode search
" nnoremap <buffer> / ms/\v
" vnoremap <buffer> / ms/\v

" Number of matches{{{
" Number of matches for a pattern
" <localleader>/<cr> gives number of matches for last search pattern
nnoremap <buffer> <localleader>/ ms:%s///gn<left><left><left><left>
nnoremap <buffer> <localleader>? ms:%s///gn<left><left><left><left>

vnoremap <buffer> <localleader>/ ms:s///gn<left><left><left><left>
vnoremap <buffer> <localleader>? ms:s///gn<left><left><left><left>

if &filetype == 'snippets'
    nnoremap <buffer> <? ms/snippet /e<left><left>
    nnoremap <buffer> >? ms?snippet ?e<left><left>
endif

" Number of matches for the word under cursor
nnoremap <buffer> <localleader>* ms*:%s///gn<cr>
nnoremap <buffer> <localleader># ms#:%s///gn<cr>

" Number of matches for the visually selected text
vnoremap <buffer> <localleader>* yms:%s/<c-r>0//gn<cr>
vnoremap <buffer> <localleader># yms:%s/<c-r>0//gn<cr>

" }}}

" Clearing highlighted matches
nnoremap <buffer> <c-c> :noh<cr>:echo<cr>
" nnoremap <buffer> <esc><esc> mh/qwqkqx\$<cr>:noh<cr>:echo<cr>`h

" augroup EscapeRemap
"     autocmd!
"     autocmd VimEnter * nnoremap <buffer> <silent> <esc> :noh<cr>:echo<cr>
"     autocmd VimEnter * inoremap <buffer> <silent> <esc> :noh<cr><esc>
" augroup end

" augroup Escape_mapping
"   autocmd!
"   autocmd InsertEnter * call s:setupEscapeMap()
" augroup end

" function! s:setupEscapeMap()
"   nnoremap <Esc> :noh<CR>:echo<cr>
"   " inoremap <Esc> <esc>:noh<CR>:echo<cr>
" endfunction

" " Clearing highlighted matches
" nnoremap <buffer> <silent> <esc> :noh<cr>:echo<cr>
" nnoremap <buffer> <silent> <esc><esc> mh/qwqkqx\$<cr>:noh<cr>`h

" }}}
" Shell KeyBindings{{{

augroup ShellKeyBindings
    autocmd!
    autocmd FileType sh inoremap <buffer> ; _
    autocmd FileType sh inoremap <buffer> ;<space> _
augroup end

" }}}
" Some other remaps{{{
" -------------------------------------------------------------------

" Ctrl-BS in vim
noremap! <c-h> <c-w>
" noremap! <buffer> <C-BS> vbc

" Indenting whole environment in tex
" nnoremap <buffer> =ae mi=ae`i

" Joining lines
nnoremap <buffer> <localleader>j J
vnoremap <buffer> <localleader>j J

" Yank till the end of the line and clearing a line
nnoremap <buffer> Y y$
nnoremap <buffer> <leader>d 0D

" Creating newline
nnoremap <buffer> <localleader>o moo<esc>`o
nnoremap <buffer> <localleader>O moO<esc>`o

" " Uppercasing (move half-screen up has <c-u>)
" nnoremap <buffer> <c-u> mugUiw`u
" inoremap <buffer> <c-u> <esc>mugUiw`ua
" vnoremap <buffer> <c-u> gU

" Number of paragraphs in a file
function! AlignParagraphs()
    let save_cursor = getcurpos()
    normal! zR
    " Put an empty line between paragraphs
    silent! g/^}\n^..*$/put _
    " Only one empty line between paragraphs
    silent! g/^$\n^$/d
    " Delete 1st line if empty
    if getline('1') == ''
        normal! ggdd
    endif
    " Put blank line at the end of the file
    if getline('$') != ''
        $put _
    endif
    :call setpos('.', save_cursor)
    :call CountParagraphs()
endfunction

nnoremap <buffer> <localleader>ap :call AlignParagraphs()<cr>zv
vnoremap <buffer> <localleader>ap :call AlignParagraphs()<cr>zv

function! CountParagraphs()
    let save_cursor = getcurpos()
    normal! zRG
    while getline('.') == ''
        normal! k
    endwhile
    normal! j
    let b:virtual_last_line=line('.')
    normal! gg}

    let b:number_of_paragraphs=0
    while line('.') != b:virtual_last_line
        normal! }
        let b:number_of_paragraphs=b:number_of_paragraphs + 1
    endwhile

    echom "Number of paragraphs:" b:number_of_paragraphs
    :call setpos('.', save_cursor)
    normal! zMzv
endfunction

nnoremap <buffer> <localleader>cp :call CountParagraphs()<cr>zv
vnoremap <buffer> <localleader>cp :call CountParagraphs()<cr>zv

" }}}
" Spelling Check{{{
" -------------------------------------------------------------------

" Toggling languages (en, sv){{{

augroup SwedishFiles
    autocmd!
    autocmd BufRead,BufNewFile *-svenska.md setlocal spell spelllang=en_us,sv
    autocmd BufRead,BufNewFile *-svenska.md setlocal spellfile=~/.vim/spell/sv.utf-8.add
augroup end

function! LangToggle()
    if &spelllang=='sv'
        " Use english_US
        setlocal spell spelllang=en_us
        setlocal spellfile=~/.vim/spell/math.utf-8.add
    elseif &spelllang=='en_us'
        " Use svenska
        setlocal spell spelllang=sv
        setlocal spellfile=~/.vim/spell/sv.utf-8.add
    endif
endfunction

nnoremap <buffer> <localleader>lt :call LangToggle()<cr>

function! SpellLang(lang)
    if a:lang !~ 'en\|sv\|dl'
        let l:lang = input("Which Language: ")
    else
        let l:lang = a:lang
    endif

    "en
    if l:lang == "en"
        setlocal spell spelllang=en_us
        setlocal spellfile=~/.vim/spell/math.utf-8.add

        "sv
    elseif l:lang == "sv"
        setlocal spell spelllang=sv
        setlocal spellfile=~/.vim/spell/sv.utf-8.add

        "dl
    elseif l:lang == "dl"
        setlocal spell spelllang=sv,en_us
        setlocal spellfile=~/.vim/spell/sv.utf-8.add
        echom "Svenska and English, saving new words priority to sv-dict (CAREFUL)"

        "invalid Language
    elseif l:lang !~ 'en\|sv\|dl'
        echom " <-- Not a valid Language"
    endif

endfunction

nnoremap <buffer> <localleader>en :call SpellLang("en")<cr>
nnoremap <buffer> <localleader>sv :call SpellLang("sv")<cr>
nnoremap <buffer> <localleader>dl :call SpellLang("dl")<cr>

" }}}

augroup Spelling
    autocmd!
    autocmd FileType tex,text,markdown,vimwiki,bib setlocal spell spelllang=en_us
    autocmd FileType tex,text,markdown,vimwiki,bib setlocal spellfile=~/.vim/spell/math.utf-8.add
    " Adding new words to dictionary
    autocmd FileType tex,text,markdown,vimwiki,bib nnoremap <buffer> zgN zg[szz
    autocmd FileType tex,text,markdown,vimwiki,bib nnoremap <buffer> zgn zg]szz
    autocmd FileType tex,text,markdown,vimwiki,bib nnoremap <buffer> zwN zw[szz
    autocmd FileType tex,text,markdown,vimwiki,bib nnoremap <buffer> zwn zw]szz
augroup end

" FixLastSpellingError
function! FixLastSpellingError()
    :normal! mf[s1z=`f
endfunction

nnoremap <buffer> <silent> <localleader>fs :call FixLastSpellingError()<cr>
inoremap <buffer> <silent> <localleader>fs <esc>:call FixLastSpellingError()<cr>a

" Greater-than less-than toggle to find miss-spelled words
let s:gtlt_toggle=0
function! GtLtToggle()
    if s:gtlt_toggle
        " Using >< to (un)indent
        let s:gtlt_toggle=0
        unmap <buffer> <
        unmap <buffer> >
        if &filetype=='vimwiki'
            nmap <buffer> <D-CR> <Plug>VimwikiTabnewLink
        endif
    else
        " Using >< to to find mispelled words
        let s:gtlt_toggle=1
        nnoremap <buffer> < ms[szz
        nnoremap <buffer> > ms]szz
        if &filetype=='vimwiki'
            unmap <buffer> <D-CR>
        endif
    endif
endfunction

nnoremap <buffer> <localleader>< :call GtLtToggle()<cr>
nnoremap <buffer> <localleader>> :call GtLtToggle()<cr>

" }}}
" Substitute/change{{{
" -------------------------------------------------------------------

nnoremap <buffer> <localleader>s :%s/
vnoremap <buffer> <localleader>s :s/
nnoremap <buffer> <localleader>S :%S/
vnoremap <buffer> <localleader>S :S/

" }}}
" PythonHighlighting{{{

" highlight PythonFormattedVarGroup ctermfg=3
highlight PythonFormattedVarGroup ctermfg=256 cterm=bold
highlight PythonBoldGreenGroup ctermfg=46 ctermbg=Black cterm=bold

augroup PythonHighlighting
    autocmd!
    autocmd Filetype python let m = matchadd("PythonFormattedVarGroup",'.{\zs.\{-}\ze}.')
    autocmd Filetype python let m = matchadd("PythonBoldGreenGroup",'TODO')
augroup end

" }}}
" VimwikiHighlighting{{{

highlight VimwikiBoldBlueGroup ctermfg=39 ctermbg=Black
highlight VimwikiBoldGreenGroup ctermfg=46 ctermbg=Black
highlight BoldRedGroup ctermbg=grey ctermfg=red cterm=bold

augroup VimwikiHighlighting
    autocmd!
    autocmd Filetype vim,vimwiki,markdown let m = matchadd("VimwikiBoldBlueGroup",'TIME')
    autocmd Filetype vim,vimwiki,markdown let m = matchadd("VimwikiBoldBlueGroup",'BREAKTHROUGH')
    autocmd Filetype vim,vimwiki,markdown let m = matchadd("VimwikiBoldGreenGroup",'READ-ME')
    autocmd Filetype vim,vimwiki,markdown let m = matchadd("VimwikiBoldGreenGroup",'TODO')

    autocmd Filetype vim,vimwiki,markdown let m = matchadd("VimwikiBoldGreenGroup",'OBS')
    autocmd Filetype vim,vimwiki,markdown let m = matchadd("VimwikiBoldBlueGroup",'LATE ENTRY')
    autocmd Filetype vim,vimwiki,markdown let m = matchadd("VimwikiBoldBlueGroup",'NO DIARY')
    autocmd Filetype vim,vimwiki,markdown let m = matchadd("VimwikiBoldBlueGroup",'LATE DIARY')
    autocmd Filetype vim,vimwiki,markdown let m = matchadd("VimwikiBoldBlueGroup",'SQ')
    autocmd Filetype vim,vimwiki,markdown let m = matchadd("VimwikiBoldBlueGroup",'SQX')
    autocmd Filetype vim,vimwiki,markdown let m = matchadd("VimwikiBoldBlueGroup",'JX')
    " autocmd Filetype vim,vimwiki,markdown let m = matchadd("VimwikiBoldRedGroup",'X ')
augroup end

" }}}
" TerminalHighlighting{{{

" hi Terminal ctermbg=238 ctermfg=188 guibg=lightgrey guifg=blue

" }}}
" Trailing White Space{{{
" -------------------------------------------------------------------

" " Delete trailing whitespace
" augroup AutoDeleteTrailingWhitespace
"     autocmd!
"     autocmd BufWritePre *.* %s/\s\+$//e
" augroup end

" Fix all/double whitespaces in a line, whole file
inoremap <buffer> <localleader>fws <esc>mwV:FixWhitespace<cr>`wzva
nnoremap <buffer> <localleader>fws mwV:FixWhitespace<cr>`wzv
nnoremap <buffer> <localleader>fds <esc>mwV:s/ \{2,\}/ /g<cr>`wzv
nnoremap <buffer> <localleader>fads mw:%s/ \{2,\}/ /g<cr>`wzv
nnoremap <buffer> <localleader>faw mw:FixWhitespace<cr>`wzv

" }}}
" Word Highlight{{{
"
" This mini-plugin provides a few mappings for highlighting words temporarily.
"
" Sometimes you're looking at a hairy piece of code and would like a certain
" word or two to stand out temporarily.  You can search for it, but that only
" gives you one color of highlighting.  Now you can use <leader>N where N is
" a number from 1-6 to highlight the current word in a specific color.

function! HiInterestingWord(n) "{{{
    " Save our location.
    normal! mz

    " Yank the current word into the z register.
    normal! "zyiw

    " Calculate an arbitrary match ID.  Hopefully nothing else is using it.
    let mid = 86750 + a:n

    " Clear existing matches, but don't worry if they don't exist.
    silent! call matchdelete(mid)

    " Construct a literal pattern that has to match at boundaries.
    let pat = '\V\<' . escape(@z, '\') . '\>'

    " Actually match the words.
    call matchadd("InterestingWord" . a:n, pat, 1, mid)

    " Move back to our original location.
    normal! `z
endfunction "}}}
" Mappings{{{

nnoremap <silent> <leader>1 :call HiInterestingWord(1)<cr>
nnoremap <silent> <leader>2 :call HiInterestingWord(2)<cr>
nnoremap <silent> <leader>3 :call HiInterestingWord(3)<cr>
nnoremap <silent> <leader>4 :call HiInterestingWord(4)<cr>
nnoremap <silent> <leader>5 :call HiInterestingWord(5)<cr>
nnoremap <buffer> <leader>6 :call HiInterestingWord(6)<cr>

nnoremap <silent> <localleader>1 :hi clear InterestingWord1<cr>
nnoremap <silent> <localleader>2 :hi clear InterestingWord2<cr>
nnoremap <silent> <localleader>3 :hi clear InterestingWord3<cr>
nnoremap <silent> <localleader>4 :hi clear InterestingWord4<cr>
nnoremap <silent> <localleader>5 :hi clear InterestingWord5<cr>
nnoremap <silent> <localleader>6 :hi clear InterestingWord6<cr>

" }}}
" Default Highlights{{{

hi def InterestingWord1 guifg=#000000 ctermfg=16 guibg=#ffa724 ctermbg=214
hi def InterestingWord2 guifg=#000000 ctermfg=16 guibg=#8cffba ctermbg=121
hi def InterestingWord3 guifg=#000000 ctermfg=16 guibg=#ff9eb8 ctermbg=211
hi def InterestingWord4 guifg=#000000 ctermfg=16 guibg=#b88853 ctermbg=137
hi def InterestingWord5 guifg=#000000 ctermfg=16 guibg=#aeee00 ctermbg=154
hi def InterestingWord6 guifg=#000000 ctermfg=16 guibg=#ff2c4b ctermbg=195

" }}}

" }}}
" TeXHighlighting{{{
" -------------------------------------------------------------------

" Part, Chapter, Section, Subsection, Subsubsection, label"{{{

" FoldsGroup is inside ArrayMatrixEtcGroup

" highlight FoldsGroup ctermbg=174 ctermfg=Black

" augroup TeXHighlighting
"     autocmd!
"     autocmd Filetype tex let m = matchadd("FoldsGroup",'%{T{E{X')
"     autocmd Filetype tex let m = matchadd("FoldsGroup",'%}T}E}X')
"     autocmd Filetype tex let m = matchadd("FoldsGroup",'%\( \)*\(h\|c\)\( \)*')
"     autocmd Filetype tex let m = matchadd("FoldsGroup",'\(\(%\)*\( \)*\)*F{O{L{D')
"     autocmd Filetype tex let m = matchadd("FoldsGroup",'\(\(%\)*\( \)*\)*F}O}L}D')
"     autocmd Filetype tex let m = matchadd("FoldsGroup",'\(\(%\)*\(.\)*\)*end) F}O}L}D')
" augroup end

highlight PartMarkerGroup ctermbg=092 ctermfg=149

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("PartMarkerGroup",'% Part')
    autocmd Filetype tex let m = matchadd("PartMarkerGroup",'% UnnumberedPart')
augroup end

highlight PartGroup ctermbg=092 ctermfg=149

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("PartGroup",'\\part{.\{}}')
    autocmd Filetype tex let m = matchadd("PartGroup",'\\part\*{.\{}}')
augroup end

highlight ChapterMarkerGroup ctermbg=092 ctermfg=149

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("ChapterMarkerGroup",'% Chapter')
    autocmd Filetype tex let m = matchadd("ChapterMarkerGroup",'% UnnumberedChapter')
augroup end

highlight ChapterGroup ctermbg=092 ctermfg=149

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("ChapterGroup",'\\chapter{.\{}}')
    autocmd Filetype tex let m = matchadd("ChapterGroup",'\\chapter\*{.\{}}')
augroup end

highlight SectionMarkerGroup ctermbg=30 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("SectionMarkerGroup",'% Section')
    autocmd Filetype tex let m = matchadd("SectionMarkerGroup",'% UnnumberedSection')
augroup end

highlight SectionGroup ctermbg=30 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("SectionGroup",'\\section{.\{}}')
    autocmd Filetype tex let m = matchadd("SectionGroup",'\\section\*{.\{}}')
augroup end

highlight SubsectionMarkerGroup ctermbg=143 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("SubsectionMarkerGroup",'% Subsection')
    autocmd Filetype tex let m = matchadd("SubsectionMarkerGroup",'% UnnumberedSubsection')
augroup end

highlight SubsectionGroup ctermbg=143 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("SubsectionGroup",'\\subsection{.\{}}')
    autocmd Filetype tex let m = matchadd("SubsectionGroup",'\\subsection\*{.\{}}')
augroup end

highlight SubsubsectionMarkerGroup ctermbg=069 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("SubsubsectionMarkerGroup",'% Subsubsection')
    autocmd Filetype tex let m = matchadd("SubsubsectionMarkerGroup",'% UnnumberedSubsubsection')
augroup end

highlight SubsubsectionGroup ctermbg=069 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("SubsubsectionGroup",'\\subsubsection{.\{}}')
    autocmd Filetype tex let m = matchadd("SubsubsectionGroup",'\\subsubsection\*{.\{}}')
augroup end

highlight Label ctermbg=250 ctermfg=0

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("Label",'\\label{.\{-}}')
augroup end

" }}}
" MarkerGroup, BoldGroup"{{{

highlight TitleAbstract ctermbg=92 ctermfg=149

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("TitleAbstract",'% Abstract')
    autocmd Filetype tex let m = matchadd("TitleAbstract",'% Title')
augroup end

highlight MarkerGroup ctermbg=251 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% Notation')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% UnnumberedNotation')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% Definition')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% UnnumberedDefinition')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% Theorem')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% StatementofTheorem')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% UnnumberedTheorem')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% Lemma')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% StatementofLemma')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% UnnumberedLemma')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% Proposition')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% StatementofProposition')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% UnnumberedProposition')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% Corollary')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% StatementofCorollary')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% UnnumberedCorollary')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% Problem')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% Solution')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% Proof')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% Remark')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% UnnumberedRemark')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% Conjecture')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% Example')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% Exercise')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% Frame')
    autocmd Filetype tex let m = matchadd("MarkerGroup",'% Claim')
augroup end

highlight EquationMarkerGroup ctermbg=174 ctermfg=black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% Equation')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% UnnumberedEquation')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% Align')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% UnnumberedAlign')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% AlignedEquation')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% UnnumberedAlignedEquation')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% SplitEquation')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% GatheredEquation')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% UnnumberedGatheredEquation')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% Subequations')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% Gather')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% UnnumberedGather')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% Center')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% CommutativeDiagram')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% CaseDefinition')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% DcaseDefinition')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% Enumerate')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% Itemize')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% Tabular')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% Figure')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% diary')
augroup end

highlight ArrayMatrixEtcMarkerGroup ctermbg=174 ctermfg=black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcMarkerGroup",'% Array')
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcMarkerGroup",'% Matrix')
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcMarkerGroup",'% Bmatrix')
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcMarkerGroup",'% Pmatrix')
augroup end

highlight Bibliography ctermbg=92 ctermfg=149

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("Bibliography",'% Bibliography')
augroup end

highlight ImpliesMarkerGroup ctermbg=174 ctermfg=black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("ImpliesMarkerGroup",'(\$\\Longrightarrow\$)')
    autocmd Filetype tex let m = matchadd("ImpliesMarkerGroup",'(\$\\Longleftarrow\$)')
    autocmd Filetype tex let m = matchadd("ImpliesMarkerGroup",'\$(\\Longrightarrow)\$')
    autocmd Filetype tex let m = matchadd("ImpliesMarkerGroup",'\$(\\Longleftarrow)\$')
augroup end

highlight BoldGroup ctermfg=154 cterm=bold

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("BoldGroup",'&')
augroup end

highlight BoldRedGroup ctermbg=grey ctermfg=red cterm=bold

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("BoldRedGroup",'\\todo')
    autocmd Filetype tex let m = matchadd("BoldRedGroup",'<+.\{-}+>')
augroup end

highlight SpaceGroup ctermbg=red

" augroup SpaceHighlighting
"     autocmd Filetype tex let m = matchadd("SpaceGroup",'  *')
" augroup end

" }}}
" Abstract, Theorem, Equation"{{{

highlight Abstract ctermbg=92 ctermfg=149

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("Abstract",'\\begin{abstract}')
    autocmd Filetype tex let m = matchadd("Abstract",'\\end{abstract}')
augroup end

highlight NotationGroup ctermbg=244 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("NotationGroup",'\\begin{notation}')
    autocmd Filetype tex let m = matchadd("NotationGroup",'\\end{notation}')
    autocmd Filetype tex let m = matchadd("NotationGroup",'\\begin{unotation}')
    autocmd Filetype tex let m = matchadd("NotationGroup",'\\end{unotation}')
augroup end

highlight DefinitionGroup ctermbg=107 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("DefinitionGroup",'\\begin{definition}')
    autocmd Filetype tex let m = matchadd("DefinitionGroup",'\\end{definition}')
augroup end

highlight uDefinitionGroup ctermbg=100 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("uDefinitionGroup",'\\begin{udefinition}')
    autocmd Filetype tex let m = matchadd("uDefinitionGroup",'\\end{udefinition}')
augroup end

highlight TheoremGroup ctermbg=139 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\begin{theorem}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\end{theorem}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\begin{thmboxed}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\end{thmboxed}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\begin{lemma}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\end{lemma}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\begin{proposition}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\end{proposition}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\begin{corollary}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\end{corollary}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\begin{problem}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\end{problem}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\begin{solution}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\end{solution}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\begin{remark}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\end{remark}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\begin{conjecture}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\end{conjecture}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\begin{example}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\end{example}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\begin{exercise}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\end{exercise}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\begin{diary}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\end{diary}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\begin{frame}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\end{frame}')

    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\begin{thmbox}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\end{thmbox}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\begin{orangebox}')
    autocmd Filetype tex let m = matchadd("TheoremGroup",'\\end{orangebox}')
augroup end

highlight uTheoremGroup ctermbg=169 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("uTheoremGroup",'\\begin{utheorem}')
    autocmd Filetype tex let m = matchadd("uTheoremGroup",'\\end{utheorem}')
    autocmd Filetype tex let m = matchadd("uTheoremGroup",'\\begin{ulemma}')
    autocmd Filetype tex let m = matchadd("uTheoremGroup",'\\end{ulemma}')
    autocmd Filetype tex let m = matchadd("uTheoremGroup",'\\begin{uproposition}')
    autocmd Filetype tex let m = matchadd("uTheoremGroup",'\\end{uproposition}')
    autocmd Filetype tex let m = matchadd("uTheoremGroup",'\\begin{ucorollary}')
    autocmd Filetype tex let m = matchadd("uTheoremGroup",'\\end{ucorollary}')
    autocmd Filetype tex let m = matchadd("uTheoremGroup",'\\begin{uremark}')
    autocmd Filetype tex let m = matchadd("uTheoremGroup",'\\end{uremark}')
augroup end

highlight ProofGroup ctermbg=139 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("ProofGroup",'\\begin{proof}')
    autocmd Filetype tex let m = matchadd("ProofGroup",'\\end{proof}')
    autocmd Filetype tex let m = matchadd("ProofGroup",'\\begin{prf}')
    autocmd Filetype tex let m = matchadd("ProofGroup",'\\end{prf}')
augroup end

highlight EquationGroup ctermbg=109 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\(')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\)')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\[')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\]')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{equation}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{equation}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{equation\*}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{equation\*}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{split}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{split}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{align}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{align}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{align\*}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{align\*}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{subequations}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{subequations}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{center}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{center}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{gather}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{gather}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{gather\*}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{gather\*}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{gathered}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{gathered}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{cases}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{cases}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{rcases}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{rcases}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{dcases}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{dcases}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{enumerate}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{enumerate}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{itemize}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{itemize}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{tabular}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{tabular}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{landscape}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{landscape}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{figure}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{figure}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{tikzcd}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{tikzcd}')
augroup end

highlight ArrayMatrixEtcGroup ctermbg=174 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcGroup",'\\begin{array}')
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcGroup",'\\end{array}')
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcGroup",'\\begin{matrix}')
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcGroup",'\\end{matrix}')
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcGroup",'\\begin{bmatrix}')
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcGroup",'\\end{bmatrix}')
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcGroup",'\\begin{pmatrix}')
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcGroup",'\\end{pmatrix}')
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcGroup",'\\item')
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcGroup",'\\bibitem')
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcGroup",'\\bibliographystyle{.\{}}')
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcGroup",'\\bibliography{.\{}}')
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcGroup",'\\begin{thebibliography}')
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcGroup",'\\end{thebibliography}')

    " Folds
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcGroup",'%{T{E{X')
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcGroup",'%}T}E}X')
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcGroup",'%\( \)*\(h\|c\)\( \)*')
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcGroup",'\(\(%\)*\( \)*\)*F{O{L{D')
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcGroup",'\(\(%\)*\( \)*\)*F}O}L}D')
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcGroup",'\(\(%\)*\(.\)*\)*end) F}O}L}D')
    autocmd Filetype tex let m = matchadd("ArrayMatrixEtcGroup",'\(\(%\)*\(.\)*\)*(\S* end)')
augroup end

highlight asterisk ctermbg=109 ctermfg=red

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("asterisk",'\*')
augroup end

highlight ParenthesisGroup ctermbg=247 ctermfg=black

augroup TeXHighlighting
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\big')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Big')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\bigg')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Bigg')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\left')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\right')

    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\big(')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\big)')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\big(')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\big)}')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\big({')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'}\\big)}')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Big(')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Big)')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\Big(')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Big)}')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\Big({')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'}\\Big)}')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\bigg(')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\bigg)')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\bigg(')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\bigg)}')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\bigg({')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'}\\bigg)}')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Bigg(')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Bigg)')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\Bigg(')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Bigg)}')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\Bigg({')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'}\\Bigg)}')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\left(')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\right)')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\left(')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\right)}')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\left({')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'}\\right)}')

    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\big\\{')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\big\\}')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\big\\{')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\big\\}}')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\big\\{{')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'}\\big\\}}')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Big\\{')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Big\\}')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\Big\\{')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Big\\}}')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\Big\\{{')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'}\\Big\\}}')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\bigg\\{')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\bigg\\}')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\bigg\\{')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\bigg\\}}')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\bigg\\{{')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'}\\bigg\\}}')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Bigg\\{')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Bigg\\}')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\Bigg\\{')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Bigg\\}}')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\Bigg\\{{')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'}\\Bigg\\}}')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\left\\{')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\right\\}')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\left\\{')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\right\\}}')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\left\\{{')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'}\\right\\}}')

    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\big[')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\big]')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\big[')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\big]}')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\big[{')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'}\\big]}')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Big[')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Big]')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\Big[')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Big]}')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\Big[{')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'}\\Big]}')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\bigg[')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\bigg]')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\bigg[')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\bigg]}')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\bigg[{')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'}\\bigg]}')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Bigg[')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Bigg]')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\Bigg[')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Bigg]}')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\Bigg[{')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'}\\Bigg]}')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\left[')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\right]')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\left[')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\right]}')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\left[{')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'}\\right]}')

    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\big|')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\big|')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\big|')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\big|}')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\big|{')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'}\\big|}')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Big|')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Big|')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\Big|')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Big|}')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\Big|{')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'}\\Big|}')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\bigg|')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\bigg|')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\bigg|')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\bigg|}')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\bigg|{')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'}\\bigg|}')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Bigg|')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Bigg|')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\Bigg|')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\Bigg|}')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\Bigg|{')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'}\\Bigg|}')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\left|')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\right|')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\left|')
    autocmd Filetype tex let m = matchadd("ParenthesisGroup",'\\right|}')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'{\\left|{')
    " autocmd Filetype tex let m = matchadd("ParenthesisGroup",'}\\right|}')
augroup end

" }}}

" }}}

" }}}

" KeyBindings, Abbreviations and Stuff{{{
" -------------------------------------------------------------------

" Selecting KeyBindings{{{
" -------------------------------------------------------------------

" Select KeyBinding Scheme
function! KeyBinding(code)
    if a:code !~ 'tex\|np\|py\|unmaptex\|go\|md\|wiki'
        let l:code = input("Which KeyBindings: ")
    else
        let l:code = a:code
    endif

    "tex
    if l:code == "tex"
        source ~/.vim/KeyBindings/TeXKeyBindings.vim

        "to enter numbers peacefully
    elseif l:code == "np"
        source ~/.vim/KeyBindings/NumbersPeacefully.vim

        "python
    elseif l:code == "py"
        source ~/.vim/KeyBindings/PythonKeyBindings.vim

        "UnmapTeXKeyBindings
    elseif l:code == "unmaptex"
        source ~/.vim/KeyBindings/UnmapTeXKeyBindings.vim

        "Go-lang
    elseif l:code == "go"
        source ~/.vim/KeyBindings/GoKeyBindings.vim

    " Markdown/vimwiki
    elseif l:code =~ 'md\|wiki'
        source ~/.vim/KeyBindings/MarkdownKeyBindings.vim

        "invalid KeyBindings
    elseif l:code !~ 'tex\|np\|py\|unmaptex\|go\|md\|wiki'
        echom " <-- Not a valid KeyBinding"
    endif

endfunction

" }}}
" Selecting Abbreviations{{{
" -------------------------------------------------------------------

" Select Abbreviation Type
function! Abbreviations(code)
    if a:code !~ 'gen\|math'
        let l:code = input("Which Abbreviation: ")
    else
        let l:code = a:code
    endif

    "gen
    if l:code == "gen"
        if &spelllang=='en_us'
            source ~/.vim/Abbreviations/GeneralAbbreviations.vim
        else
            echo 'spelllang not en_us. Finishing.'
        endif

        "math
    elseif l:code == "math"
        source ~/.vim/Abbreviations/MathAbbreviations.vim

        "invalid Abbreviations
    elseif l:code !~ 'gen\|math'
        echom " <-- Not a valid Abbreviation"
    endif

endfunction

" }}}
" Sourcing KeyBindings, Abbreviations and Stuff{{{
" -------------------------------------------------------------------

" SourceEverythingForTeX{{{
augroup SourceEverythingForTeX
    autocmd!
    " autocmd BufNewFile,BufRead *.tex silent write
    autocmd BufEnter *.tex silent VimtexCompile
    autocmd BufNewFile,BufRead *.tex call Abbreviations("gen")
    autocmd BufNewFile,BufRead *.tex call Abbreviations("math")
    autocmd BufNewFile,BufRead *.tex call KeyBinding("tex")
    " autocmd BufNewFile,BufRead *.tex call GtLtToggle()
    autocmd BufNewFile,BufRead *.tex nnoremap <buffer> <localleader><cr> <plug>(vimtex-context-menu)
    autocmd BufNewFile,BufRead *.tex setlocal spell spelllang=en_us
    autocmd BufNewFile,BufRead *.tex setlocal spellfile=~/.vim/spell/math.utf-8.add
    autocmd BufNewFile,BufRead *.tex setlocal foldmethod=marker
    autocmd BufNewFile,BufRead *.tex setlocal foldmarker=F{O{L{D,F}O}L}D
    autocmd BufNewFile,BufRead *.tex setlocal signcolumn=no
    autocmd BufNewFile,BufRead *.tex execute "normal! 4zj"

    " Compiling tex
    autocmd Filetype tex inoremap <buffer> <F5> <esc>:w!<CR>:!latexmk -cd -f -silent -pdf -bibtex -pdf %:p<CR><CR>:!latexmk -silent -cd -f -pdf %:p<CR><CR>:!latexmk -silent -cd -f -pdf %:p<CR><CR>zza
    autocmd Filetype tex nnoremap <buffer> <F5> :w!<CR>:!latexmk -cd -f -silent -pdf -bibtex -pdf %:p<CR><CR>:!latexmk -silent -cd -f -pdf %:p<CR><CR>zz
    autocmd Filetype tex nnoremap <buffer> <F9> :w!<CR>:!latexmk -cd -f -silent -pdf -bibtex -pdf %:p<CR><CR>:!latexmk -silent -cd -f -pdf %:p<CR><CR>zz
    autocmd Filetype tex inoremap <buffer> <F7> <esc>:w!<CR>:!latexmk -cd -f -silent -pdf %:p<CR><CR>zz:VimtexView<cr><cr>a
    autocmd Filetype tex nnoremap <buffer> <F7> :w!<CR>:!latexmk -cd -f -silent -pdf %:p<CR><CR>zz:VimtexView<cr><cr>
    " autocmd Filetype tex nnoremap <buffer> <F5> :w!<CR>:!latexmk -cd -f -silent -pdf -bibtex -pdf %:p<CR><CR>:!latexmk -silent -cd -f -pdf %:p<CR><CR>:!latexmk -silent -cd -f -pdf %:p<CR><CR>zz
augroup end

" Sourcing everything for tex
function! SourceEverythingForTeX()
    call Abbreviations("gen")
    call Abbreviations("math")
    call KeyBinding("tex")
    setlocal spell spelllang=en_us
    setlocal spellfile=~/.vim/spell/math.utf-8.add
    setlocal foldmethod=marker
    setlocal foldmarker=F{O{L{D,F}O}L}D
    echom "Sourced everything for TeX"
endfunction

nnoremap <buffer> <silent> <localleader>te :call SourceEverythingForTeX()<cr>
inoremap <buffer> <silent> <localleader>te <esc>:call SourceEverythingForTeX()<cr>a

" Changing and setting foldmarker for tex
nnoremap <buffer> <localleader>cfm :%s/}T}E}X/ F}O}L}D/g \| :%s/{T{E{X/ F{O{L{D/g<cr><cr>
nnoremap <buffer> <localleader>rfm :%s/%F}O}L}D/% F}O}L}D/g \| :%s/%F{O{L{D/% F{O{L{D/g<cr><cr>

" Editing tex stuff in vimrc
nnoremap <buffer> <localleader>et /SourceEverythingForTeX<cr>n:noh<cr>zvzz

" }}}
" SourceEverythingForVimwiki{{{
augroup SourceEverythingForVimwiki
    autocmd!
    " autocmd FileType vimwiki set filetype=markdown
    autocmd BufNewFile,BufRead *.md silent write
    " autocmd BufNewFile,BufRead *.md call Abbreviations("gen")
    " autocmd BufNewFile,BufRead *.md call Abbreviations("math")
    autocmd BufNewFile,BufRead *.md call KeyBinding("md")
    autocmd BufNewFile,BufRead *.md setlocal spell spelllang=en_us
    autocmd BufNewFile,BufRead *.md setlocal spellfile=~/.vim/spell/math.utf-8.add
    autocmd BufNewFile,BufRead,BufEnter *-svenska.md setlocal spell spelllang=sv,en_us
    autocmd BufNewFile,BufRead,BufEnter *-svenska.md setlocal spellfile=~/.vim/spell/sv.utf-8.add
    autocmd BufNewFile,BufRead *.md nnoremap <buffer> <localleader>u1 yypVr=
    autocmd BufNewFile,BufRead *.md nnoremap <buffer> <localleader>u2 yypVr-

    " Compiling
    autocmd Filetype markdown,vimwiki nnoremap <buffer> <localleader>pb :Pandoc beamer<cr>
    autocmd Filetype markdown,vimwiki nnoremap <buffer> <localleader>pp :!pandoc % -o %:t:r.pdf -V geometry:margin=3cm -V fontsize=12pt<cr><cr>
    autocmd Filetype markdown,vimwiki nnoremap <buffer> <localleader>pd :!pandoc % -o %:t:r.pdf -V geometry:margin=2cm -V fontsize=12pt<cr><cr>
    autocmd Filetype markdown,vimwiki nnoremap <buffer> <localleader>p2 :!pandoc % -o %:t:r.pdf -V geometry:margin=2cm -V fontsize=12pt<cr><cr>
    autocmd Filetype markdown,vimwiki nnoremap <buffer> <F9>            :!pandoc % -o %:t:r.pdf -V geometry:margin=3cm -V fontsize=12pt<cr><cr>
    autocmd Filetype markdown,vimwiki inoremap <buffer> <F9>            <esc>:!pandoc % -o %:t:r.pdf -V geometry:margin=3cm -V fontsize=12pt<cr><cr>
    autocmd Filetype markdown,vimwiki nnoremap <buffer> <localleader>ph :!pandoc -s -c style.css -o ~/Dropbox/Data/vimwiki_html/%:t:r.html<cr><cr>

    " autocmd BufNewFile,BufRead *.md TableModeEnable
    " autocmd Filetype markdown,vimwiki TableModeEnable

    " autocmd Filetype markdown,vimwiki nnoremap <buffer> <localleader>pb :!pandoc beamer<cr>
    " autocmd Filetype markdown,vimwiki nnoremap <buffer> <localleader>pp :Pandoc pdf -V geometry:margin=3cm -V fontsize=12pt<cr>
    " autocmd Filetype markdown,vimwiki nnoremap <buffer> <localleader>pd :Pandoc pdf -V geometry:margin=2cm -V fontsize=12pt<cr>
    " " autocmd Filetype markdown,vimwiki nnoremap <buffer> <localleader>pp :Pandoc pdf -V geometry:margin=3cm -V fontsize=12pt --from=markdown+pipe_tables<cr>
    " autocmd Filetype markdown,vimwiki nnoremap <buffer> <F9>            :Pandoc pdf<cr>
    " autocmd Filetype markdown,vimwiki inoremap <buffer> <F9>            <esc>:Pandoc pdf<cr>a
    " autocmd Filetype markdown,vimwiki nnoremap <buffer> <localleader>ph :Pandoc html -o ~/Dropbox/Data/vimwiki_html/%:t:r.html<cr>

    " autocmd BufNewFile,BufRead *.md inoremap <silent><buffer> <CR> <C-]><Esc>:VimwikiReturn 3 5<CR>
    " autocmd BufNewFile,BufRead *.md inoremap <silent><buffer> <S-CR> <Esc>:VimwikiReturn 2 2<CR>
    " autocmd Filetype vimwiki setlocal foldmethod=marker
    " autocmd BufNewFile,BufRead *.md setlocal foldmethod=marker
    " autocmd BufNewFile,BufRead *.md setlocal foldmarker=F{O{L{D,F}O}L}D

augroup end

" Fancy write markdown to PDF for dissemination
" nnoremap <leader>pp :!pandoc %:p --pdf-engine=xelatex --to=pdf -o ~/%:t:r.pdf<left><left><left><left>
nnoremap <leader>pp :!pandoc %:p --pdf-engine=xelatex -o ~/%:t:r.pdf<cr><cr>

" Sourcing everything for markdown/vimwiki
function! SourceEverythingForMarkdown()
    call KeyBinding("md")
    setlocal spell spelllang=en_us
    setlocal spellfile=~/.vim/spell/en.utf-8.add
    echom "Sourced everything for Markdown/Vimwiki"
endfunction


nnoremap <buffer> <silent> <localleader>md :call SourceEverythingForMarkdown()<cr>
inoremap <buffer> <silent> <localleader>md <esc>:call SourceEverythingForMarkdown()<cr>a

" }}}
" SourceEverythingForPython{{{
augroup SourceEverythingForPython
    autocmd!
    autocmd BufNewFile,BufRead *.py silent write
    autocmd BufNewFile,BufRead *.py call KeyBinding("py")
    autocmd BufNewFile,BufRead *.py setlocal signcolumn=yes
    autocmd QuitPre,ExitPre,VimLeave *.py FixWhitespace
    " autocmd BufNewFile,BufRead *.py set foldmethod=indent
augroup end

" }}}
" SourceEverythingForGo{{{
augroup SourceEverythingForGo
    autocmd!
    autocmd BufNewFile,BufRead *.go silent write
    autocmd BufNewFile,BufRead *.go call KeyBinding("go")
    autocmd BufNewFile,BufRead *.go setlocal spell spelllang=en_us
    autocmd BufNewFile,BufRead *.go setlocal spellfile=~/.vim/spell/math.utf-8.add
augroup end

" }}}
" Leader mappings{{{
" Sourcing NumbersPeacefully
nnoremap <buffer> <localleader>np :call KeyBinding("np")<cr>
inoremap <buffer> <localleader>np <esc>:call KeyBinding("np")<cr>a
inoremap <buffer> <localleader>nd <esc>:call KeyBinding("tex")<cr>a

" Sourcing GeneralAbbreviations
nnoremap <buffer> <localleader>ag :call Abbreviations("gen")<cr>

" Sourcing MathAbbreviations
nnoremap <buffer> <localleader>am :call Abbreviations("math")<cr>

" Sourcing PythonKeyBindings
nnoremap <buffer> <localleader>py :call KeyBinding("py")<cr>

" Sourcing GoKeyBindings
nnoremap <buffer> <localleader>go :call KeyBinding("go")<cr>

" Sourcing UnmapTexKeyBindings
nnoremap <buffer> <localleader>ut :call KeyBinding("unmaptex")<cr>
inoremap <buffer> <localleader>ut <esc>:call KeyBinding("unmaptex")<cr>a

" }}}

" }}}
" Opening .vimrc, KeyBindings and Stuff{{{
" -------------------------------------------------------------------

" Opening TeXKeyBindings "te=tex
nnoremap <buffer> <leader>hte :new ~/.vim/KeyBindings/TeXKeyBindings.vim<cr>
nnoremap <buffer> <leader>te :vnew ~/.vim/KeyBindings/TeXKeyBindings.vim<cr>
nnoremap <buffer> <leader>hnp :new ~/.vim/KeyBindings/NumbersPeacefully.vim<cr>
nnoremap <buffer> <leader>np :vnew ~/.vim/KeyBindings/NumbersPeacefully.vim<cr>

" Opening MarkdownKeyBindings "md=markdown,vimwiki
nnoremap <buffer> <leader>hmd :new ~/.vim/KeyBindings/MarkdownKeyBindings.vim<cr>
nnoremap <buffer> <leader>md :vnew ~/.vim/KeyBindings/MarkdownKeyBindings.vim<cr>

" Opening PythonKeyBindings
nnoremap <buffer> <leader>hpy :new ~/.vim/KeyBindings/PythonKeyBindings.vim<cr>
nnoremap <buffer> <leader>py :vnew ~/.vim/KeyBindings/PythonKeyBindings.vim<cr>

" Opening GoKeyBindings
nnoremap <buffer> <leader>hgo :new ~/.vim/KeyBindings/GoKeyBindings.vim<cr>
nnoremap <buffer> <leader>go :vnew ~/.vim/KeyBindings/GoKeyBindings.vim<cr>

" Opening UnmapTeXKeyBindings
nnoremap <buffer> <leader>hut :new ~/.vim/KeyBindings/UnmapTeXKeyBindings.vim<cr>
nnoremap <buffer> <leader>ut :vnew ~/.vim/KeyBindings/UnmapTeXKeyBindings.vim<cr>

" Opening all.snippets
nnoremap <buffer> <leader>as :vnew ~/.vim/UltiSnips/all.snippets<cr>

" Opening tex.snippets
nnoremap <buffer> <leader>hts :new ~/.vim/UltiSnips/tex.snippets<cr>
nnoremap <buffer> <leader>ts :vnew ~/.vim/UltiSnips/tex.snippets<cr>

" Opening py.snippets
nnoremap <buffer> <leader>hps :new ~/.vim/UltiSnips/python.snippets<cr>
nnoremap <buffer> <leader>ps :vnew ~/.vim/UltiSnips/python.snippets<cr>

" Opening Abbreviations
nnoremap <buffer> <leader>ha :new ~/.vim/Abbreviations<cr>
nnoremap <buffer> <leader>a :vnew ~/.vim/Abbreviations<cr>
nnoremap <buffer> <leader>hag :new ~/.vim/Abbreviations/GeneralAbbreviations.vim<cr>
nnoremap <buffer> <leader>ag :vnew ~/.vim/Abbreviations/GeneralAbbreviations.vim<cr>
nnoremap <buffer> <leader>ham :new ~/.vim/Abbreviations/MathAbbreviations.vim<cr>
nnoremap <buffer> <leader>am :vnew ~/.vim/Abbreviations/MathAbbreviations.vim<cr>

" Opening mathspell file
nnoremap <buffer> <leader>hms :new ~/.vim/spell/math.utf-8.add<cr>
nnoremap <buffer> <leader>ms :vnew ~/.vim/spell/math.utf-8.add<cr>

" Opening .vimrc
nnoremap <buffer> <leader>hvc :split $MYVIMRC<cr>
nnoremap <buffer> <leader>vc :vsplit $MYVIMRC<cr>

" }}}

" }}}

" Writing and quitting{{{
" -------------------------------------------------------------------

" Doesn't seem to work when template is enabled - now works with BufEnter
augroup WriteNewBuf
    autocmd!
    autocmd BufNewFile,BufEnter *.* if &modifiable | silent write | endif
    " autocmd BufNewFile,BufEnter *.* silent write
    " autocmd BufEnter *.tex,*.py,*.md,*-svenska.md silent write
augroup end

" " If you autowrite bibliography you'll lose mother-bib's in case of a mistake
" augroup WriteBibliography
"     autocmd!
"     autocmd QuitPre main-bib.bib,bib.bib exe "norm! :!/home/mahbub/scripts/bin/savevim y\<cr>"
" augroup end

nnoremap <buffer> <silent> <localleader>w mw:w!<cr>`w
nnoremap <buffer> <silent> <localleader>ww mw:w!<cr>`w
" inoremap <buffer> <silent> ;w <esc>mw:w!<cr>`wa
" inoremap <buffer> <silent> ;ww <esc>mw:w!<cr>`wa

augroup ContinuouslyWriteBuf
    autocmd!
    autocmd TextChanged * nested if &modifiable | silent write | endif
    " autocmd TextChanged * nested silent write
    autocmd TextChangedI * silent write
augroup end

nnoremap <localleader>q mqzM:q!<cr>
nnoremap <localleader>wq mqzM:wq!<cr>
nnoremap 'q `qzvzz
vnoremap 'q `qzvzz

" }}}

" Sourcing{{{
" -------------------------------------------------------------------

" " Sourcing current file
" nnoremap <buffer> <silent> <localleader>sf :w!<cr>:source %<cr>:noh<cr>
" nnoremap <buffer> <silent> <localleader>msf :call MakeView()<cr>:source %<cr>:noh<cr>

augroup ForAllBuf
    autocmd!
    autocmd BufNewfile,BufRead,BufEnter * source $MYVIMRC
    " autocmd BufNewfile,BufRead * source $MYVIMRC
    " autocmd BufNewfile,BufRead *.tex let s:gtlt_toggle=0
    " autocmd BufNewFile,BufRead * call Abbreviations("gen")
    autocmd FocusGained,FocusLost,BufEnter * checktime
    autocmd CursorHold,CursorHoldI * checktime
augroup end

" Sourcing visual selection/current line for testing code
vnoremap <buffer> <localleader>E y:execute @@<cr>
nnoremap <buffer> <localleader>E ^vg_y:execute @@<cr>

" Sourcing .vimrc
nnoremap <buffer> <localleader>vc :source $MYVIMRC<cr>:noh<cr>

" }}}
