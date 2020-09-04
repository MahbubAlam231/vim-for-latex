"          _
"  __   __(_) _ __ ___   _ __  ___
"  \ \ / /| || '_ ` _ \ | '__|/ __|
"  _\ V / | || | | | | || |  | (__
" (_)\_/  |_||_| |_| |_||_|   \___|


"-------------------------------------------------------------------
" Mahbub's .vimrc
"-------------------------------------------------------------------

" Preamble{{{
"-------------------------------------------------------------------

" All basic options{{{
"-------------------------------------------------------------------

set nocompatible                      " Be iMproved, required (must be before everything)
filetype off                          " Required before Vundle and plugins, disables filetype detection

set title                             " Terminal title reflects buffer name
set autochdir                         " Auto change directory (some plugins may not work)
set autoread                          " Auto reload changed files
set wildmenu                          " Tab autocomplete in command mode
" set clipboard=unnamed                 " Clipboard support (OSX)
" set backspace=indent,eol,start        " http://vi.stackexchange.com/a/2163
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
" set mouse=a                           " Mouse could work on vim too
" set laststatus=2                      " Always display statusline
" set statusline=%f\ %y\ %l,%c          " Customizing statusline; don't need it, got airline

"}}}
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

"}}}
" Tabs, indentation and wrapping{{{
"-------------------------------------------------------------------

set tabstop=4                         " Redefine tab as width of four spaces
set softtabstop=4                     " Number of spaces in tab when editing
set shiftwidth=4                      " Number of space characters inserted for indentation
set expandtab                         " Insert four spaces for tabs everywhere
set autoindent                        " Auto indent
set smartindent                       " Does the right thing (mostly) in programs

""Make the 71th column stand out
"highlight ColorColumn ctermbg=magenta
"call matchadd('ColorColumn', '\%72v', 100)

set wrap                              " Wrap longlines by default
set listchars=extends:→               " Show arrow if line continues rightwards
set listchars+=precedes:←             " Show arrow if line continues leftwards

" Wrap toggle
nnoremap <silent> <localleader>wt :set wrap!<cr>

"}}}
" Ignored files/directories from autocomplete{{{
"-------------------------------------------------------------------

set wildignore+=*/tmp/*
" set wildignore+=*.so
set wildignore+=*.aux,*.out,*.toc     " LaTeX intermediate files
set wildignore+=*.jpg,*.jpeg,*.png,*.gif " Images
set wildignore+=*.zip                 " zip files
" set wildignore+=*/vendor/bundle/*
" set wildignore+=*/node_modules/

"}}}
" Searching{{{
"-------------------------------------------------------------------

set ignorecase                        " Search queries intelligently set case
set smartcase                         " Override 'ignorecase' option if search pattern contains uppercase letters
set incsearch                         " Show search results as you type
set hlsearch                          " Highlight all search patterns

"}}}
" Split{{{
"-------------------------------------------------------------------

set splitright                        " Open new splits to the right
set splitbelow                        " Open new splits below

nnoremap <localleader>hs :split<cr>
nnoremap <localleader>vs :vsplit<cr>

augroup ResizeSplitsWhenTheWindowIsResized
    autocmd!
    autocmd VimResized * silent exe "normal! \<C-w>="
augroup end

" Window resizing
nnoremap <S-LEFT>  5<c-w><
nnoremap <S-RIGHT> 5<c-w>>

"}}}
" Line number{{{

set number relativenumber

nnoremap <silent> <localleader>nt :call NumberToggle()<cr>

"}}}

"}}}

" Plugins{{{
"-------------------------------------------------------------------

" Set the runtime path to include fzf and Vundle, and initialize

" set rtp+=~/.fzf

" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()                   " Vundle will run the following Plugins

call plug#begin('~/.vim/plugged')

" Plug 'Valloric/YouCompleteMe'
" Plug 'VundleVim/Vundle.vim'
Plug 'Julian/vim-textobj-brace'
Plug 'MahbubAlam231/dragvisuals'
Plug 'MahbubAlam231/hybrid-line-numbers'
Plug 'MahbubAlam231/searching-with-blinking'
Plug 'MahbubAlam231/vim-system-copy'
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-gitgutter'
Plug 'bps/vim-textobj-python'
Plug 'bronson/vim-trailing-whitespace'
Plug 'christoomey/vim-quicklink'
Plug 'christoomey/vim-sort-motion'
Plug 'christoomey/vim-titlecase'
Plug 'danro/rename.vim'
Plug 'easymotion/vim-easymotion'
Plug 'ervandew/supertab'
" Plug 'fatih/vim-go'
Plug 'flazz/vim-colorschemes'
Plug 'godlygeek/tabular'
Plug 'haya14busa/vim-asterisk'
Plug 'inkarkat/vim-PatternsOnText'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-after-object'
Plug 'justinmk/vim-sneak'
Plug 'kana/vim-textobj-datetime'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-lastpat'
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'
Plug 'lervag/vimtex'
Plug 'mattn/vim-textobj-url'
Plug 'mattn/webapi-vim'
Plug 'mhinz/vim-startify'
Plug 'michal-h21/vim-zettel'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdtree'
Plug 'sjl/gundo.vim'
Plug 'somini/vim-textobj-fold'
Plug 'thinca/vim-textobj-between'
Plug 'tibabit/vim-templates'
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'vim-scripts/ZoomWin'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-scripts/matchit.zip'
Plug 'vim-syntastic/syntastic'
Plug 'vimwiki/vimwiki'

call plug#end()

" call vundle#end()                     " Required
" filetype indent plugin on             " Required, enables filetype detection

"}}}

" Plugin mappings{{{
"-------------------------------------------------------------------

" After object{{{

" augroup AfterObject
"     autocmd!
"     autocmd VimEnter * call after_object#enable(':', '+', '-', '#', ' ', '.', ',', ';', '$', '&', '=', '\')
" augroup end

"}}}
" Airline{{{

let g:airline_theme = 'simple'

"}}}
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

"}}}
" Asterisk{{{

map *   <Plug>(asterisk-*)
map #   <Plug>(asterisk-#)
map g*  <Plug>(asterisk-g*)zz
map g#  <Plug>(asterisk-g#)zz
map z*  <Plug>(asterisk-z*)
map gz* <Plug>(asterisk-gz*)
map z#  <Plug>(asterisk-z#)
map gz# <Plug>(asterisk-gz#)

let g:asterisk#keeppos = 1

"}}}
" Conceal{{{

let g:tex_conceal='abdgm'

"}}}
" Dragvisuals{{{

" Dragging visual blocks
vmap <expr> <S-LEFT>  DVB_Drag('left')
vmap <expr> <S-RIGHT> DVB_Drag('right')
vmap <expr> <S-DOWN>  DVB_Drag('down')
vmap <expr> <S-UP>    DVB_Drag('up')
vmap <expr> D         DVB_Duplicate()

" Remove any introduced trailing whitespace after moving...
let g:DVB_TrimWS = 1

"}}}
" Easymotion and Sneak{{{

map <leader>w mw<Plug>(easymotion-bd-w)
map <leader>e me<Plug>(easymotion-bd-e)
map <leader>f mf<Plug>(easymotion-bd-f)
map <leader>s ms<Plug>(easymotion-s2)
" map <leader>t mt<Plug>(easymotion-t2)

omap <leader>w <Plug>(easymotion-bd-w)
omap <leader>e <Plug>(easymotion-bd-e)
omap <leader>f <Plug>(easymotion-bd-f)
omap <leader>s <Plug>(easymotion-s2)
" omap <leader>t <Plug>(easymotion-t2)

" nmap f <Plug>Sneak_f
" nmap F <Plug>Sneak_F
" nmap t <Plug>Sneak_t
" nmap T <Plug>Sneak_T

" omap f <Plug>Sneak_f
" omap F <Plug>Sneak_F
" omap t <Plug>Sneak_t
" omap T <Plug>Sneak_T

nnoremap 'w `wzvzz
nnoremap 'e `ezvzz
nnoremap 'f `fzvzz
nnoremap 's `szvzz
nnoremap 't `tzvzz

"}}}
" Fugitive{{{

nnoremap <localleader>gp :Gw<cr>:Gcommit -m "Add updated files"<cr><cr>:Gpush origin master<cr>

"}}}
" FuzzyFinder{{{

" Show dot files and ignore .git files
let $FZF_DEFAULT_COMMAND='ag --hidden --ignore ~/.vim/tmp/ --ignore .git -g ""'
let $FZF_DEFAULT_OPTS='-m --height=80% --layout=reverse --inline-info --border --preview="bat --style=numbers --wrap --color=always {}" --bind="f7:toggle-preview,ctrl-f:preview-page-down,ctrl-b:preview-page-up,ctrl-d:preview-down,ctrl-u:preview-up,ctrl-a:select-all+accept,ctrl-y:execute-silent(echo {+} | pbcopy)"'
let g:fzf_preview_window = 'right:60%'

nnoremap <localleader>fzf :FZF ~/
nnoremap <localleader>fzd :Files<cr>
nnoremap <localleader>fzh :FZF ~<cr>

"}}}
" Gundo{{{

nnoremap <localleader>gt :GundoToggle<CR>

"}}}
" Indent Guides{{{

" let g:indent_guides_start_level = 2
" let g:indent_guides_guide_size = 1

nnoremap <localleader>i :IndentGuidesToggle<cr>

"}}}
" Limelight{{{

nmap <localleader>l <Plug>(Limelight)
xmap <localleader>l <Plug>(Limelight)

nnoremap <localleader>li :Limelight!!<cr>

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

"}}}
" NERDtree{{{

nnoremap <localleader>ner :NERDTree<cr>
nnoremap <localleader>nerd :NERDTree<cr>

"}}}
" Supertab{{{

let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

"}}}
"Templates and Selecting Template{{{

" In "~/.vim/bundle/vim-templates/plugin/templates.vim" add autocmd for writing BufNewFile event

let g:tmpl_auto_initialize=1
let g:tmpl_author_name='Mahbub Alam'
let g:tmpl_license='Self'

" Selecting template{{{
function! Template(code)
    if a:code != 'art' && a:code != 'ams' && a:code != 'rep' && a:code != 'sh'
        let l:code = input("Which Template: ")
    else
        let l:code = a:code
    endif

    "art
    if l:code == "art"
        :TemplateInit article

        "ams
    elseif l:code == "ams"
        :TemplateInit amsart

        "rep
    elseif l:code == "rep"
        :TemplateInit report

        "sh
    elseif l:code == "sh"
        :TemplateInit sh

        "invalid template
    elseif l:code != 'art' && l:code != 'ams' && l:code != 'rep'
        echom " <-- Not a valid template"
    endif

endfunction

nnoremap <silent> <localleader>tem :call Template("")<cr>

nnoremap <silent> <localleader>art :call Template("art")<cr>
nnoremap <silent> <localleader>ams :call Template("ams")<cr>
nnoremap <silent> <localleader>rep :call Template("rep")<cr>
nnoremap <silent> <localleader>sh :call Template("sh")<cr>

"}}}

" Placeholders <++>
nnoremap <c-j> /<++><cr>zMzv:noh<cr>cf>
inoremap <c-j> <esc>/<++><cr>zMzv:noh<cr>cf>
nnoremap <c-k> ?<++><cr>zMzv:noh<cr>cf>
inoremap <c-k> <esc>?<++><cr>zMzv:noh<cr>cf>

" Correcting indent immediately after template is infected
nnoremap <localleader>fi mm/                    <cr>0<c-v>Gk^hd`m:noh<cr>

"}}}
" Titlecase{{{

let g:titlecase_map_keys = 0

" <Plug>Titlecase " Titlecase the region defined by a text object or motion
nmap <localleader>t <Plug>Titlecase

" <Plug>TitlecaseLine " Titlecase the entire line
nmap <localleader>tt <Plug>TitlecaseLine

" <Plug>Titlecase " Titlecase the visually selected region
vmap <localleader>t <Plug>Titlecase

"}}}
" Vimtex and Folding{{{

xmap am  <plug>(vimtex-a$)
xmap im  <plug>(vimtex-i$)

omap am  <plug>(vimtex-a$)
omap im  <plug>(vimtex-i$)

nmap dsm <plug>(vimtex-env-delete-math)
nmap csm <plug>(vimtex-env-change-math)

xmap at  <plug>(vimtex-am)
xmap it  <plug>(vimtex-im)

omap at  <plug>(vimtex-am)
omap it  <plug>(vimtex-im)

let g:tex_flavor = 'latex'

" To get ae/ie from vimtex
let g:vimtex_mappings_override_existing = 1

" augroup UseVimtex_ae/ie_InTeX
"     autocmd!
"     autocmd FileType tex xmap <silent><nowait>ie <plug>(vimtex-ie)
"     autocmd FileType tex xmap <silent><nowait>ae <plug>(vimtex-ae)

"     autocmd FileType tex omap <silent><nowait>ie <plug>(vimtex-ie)
"     autocmd FileType tex omap <silent><nowait>ae <plug>(vimtex-ae)
" augroup end

nnoremap <localleader>fm /\(^\([^$]\\|\$[^$]\+\$\)\+\)\@<=\$<cr>
nnoremap <localleader>Fm ?\(^\([^$]\\|\$[^$]\+\$\)\+\)\@<=\$<cr>

let g:vimtex_compiler_latexmk = {
            \ 'backend' : 'process',
            \ 'background' : 1,
            \ 'build_dir' : '',
            \ 'callback' : 1,
            \ 'continuous' : 1,
            \ 'executable' : 'latexmk',
            \ 'hooks' : [],
            \ 'options' : [
            \   '-silent',
            \   '-file-line-error',
            \   '-synctex=1',
            \   '-interaction=nonstopmode']}

nnoremap <silent> <leader>tc :VimtexCompile<cr>
" nnoremap <silent> <leader>tc <plug>(vimtex-view):VimtexCompile<cr>

" Folding{{{
set foldlevelstart=0
set foldmethod=marker
nnoremap <localleader>mn :setlocal foldmethod=manual<cr>
nnoremap <localleader>mr :setlocal foldmethod=marker<cr>

" Saving folds in ~/.vim/view
function! MakeView()
    :execute ":normal! mfzMgg:w!\<cr>:mkview\<cr>`fzvzz"
endfunction

nnoremap <localleader>mk :call MakeView()<cr>
nnoremap 'f `fzvzz
vnoremap 'f `fzvzz

function! FoldingTeXPreamble()
    :execute ":normal! :setlocal foldmethod=marker\<cr>mfggzR/Usepackages\<cr>0ma/Environments\<cr>0mb/Newcommands\<cr>0mc/begin{document}\<cr>k0md`azf`b`bzf`c`czf`d?documentclass\<cr>zf`d:delm a-d\<cr>zMgg`fzvzz"

endfunction

nnoremap <silent> <localleader>fp :call FoldingTeXPreamble()<cr>

augroup Loadview
    autocmd!
    autocmd BufNewFile,BufRead * silent loadview
augroup end

" Opening/closing folding{{{
nnoremap zo mozozz
nnoremap zc mczczz
nnoremap zC mczCzz
nnoremap zv mvzvzz
nnoremap zr mrzRzz
nnoremap zm mmzMzz
nnoremap <localleader>z zMzvzz
nnoremap <space> zazz
nnoremap <localleader><space> zazt
nnoremap <localleader><localleader><space> zazb
nnoremap z<space> zazb

vnoremap zo mozozz
vnoremap zc mczczz
vnoremap zC mczCzz
vnoremap zv mvzvzz
vnoremap zr mrzRzz
vnoremap zm mmzMzz
vnoremap <localleader>z zMzvzz
vnoremap <space> zazz
vnoremap <localleader><space> zazt
vnoremap <localleader><localleader><space> zazb
vnoremap z<space> zazb

nnoremap 'o `ozvzz
nnoremap 'c `czvzz
nnoremap 'v `vzvzz
nnoremap 'r `rzvzz
nnoremap 'm `mzvzz

vnoremap 'o `ozvzz
vnoremap 'c `czvzz
vnoremap 'v `vzvzz
vnoremap 'r `rzvzz
vnoremap 'm `mzvzz

"}}}

"}}}

"}}}
" Vimwiki{{{

let g:vimwiki_ext2syntax = {'.md': 'markdown'}
let g:vimwiki_list = [{'path': '~/vimwiki/',
            \'syntax': 'markdown', 'ext': '.md'},
            \{'path': '~/vimwiki/Python',
            \'syntax': 'markdown', 'ext': '.md'}]
" Mappings
nmap <leader><cr> <Plug>VimwikiSplitLink
nmap <localleader><cr> <Plug>VimwikiVSplitLink
nmap <silent> <leader>wv :vsplit<cr>:VimwikiIndex<cr>

nnoremap <localleader>pb :Pandoc beamer<cr>
nnoremap <localleader>pp :Pandoc pdf<cr>

"}}}
" Plugin test{{{

" Vim instant markdown
" let g:instant_markdown_autostart = 1
" " let g:instant_markdown_slow = 1
" let g:instant_markdown_browser = "firefox --new-window"

" " Plasticboy markdown
" let g:vim_markdown_folding_disabled = 1

" Pandoc
" let g:pandoc#keyboard#display_motions=0

"}}}

"}}}

" Misc{{{
"-------------------------------------------------------------------

" Align text{{{
"-------------------------------------------------------------------

nnoremap <localleader>al :left<cr>
nnoremap <localleader>ac :center<cr>
nnoremap <localleader>ar :right<cr>

vnoremap <localleader>al :left<cr>
vnoremap <localleader>ac :center<cr>
vnoremap <localleader>ar :right<cr>

"}}}
" Braces and stuff{{{
"-------------------------------------------------------------------

inoremap ( ()<esc>i
inoremap (( (
inoremap { {}<esc>i
inoremap {{ {
inoremap [ []<esc>i
inoremap [[ [

inoremap \| \|\|<esc>i
inoremap \|\| \|

inoremap '' ''<esc>i
inoremap "" ""<esc>i
inoremap `` ``<esc>i

"}}}
" Calculator{{{
"-------------------------------------------------------------------

inoremap <C-B> <C-O>yiW<End>=<C-R>=<C-R>0<cr>

"}}}
" Colorschemes{{{
"-------------------------------------------------------------------

let python_highlight_all=2
syntax on

colorscheme wombat256i
" colorscheme seoul256

" set background=light

"}}}
" Command line mappings{{{
"-------------------------------------------------------------------

cnoremap <c-a> <home>
cnoremap <c-e> <end>

"}}}
" Diagraphs{{{
"-------------------------------------------------------------------

""Make CTRL-K list diagraphs before each digraph entry
"runtime bundle/betterdigraphs/plugin/betterdigraphs.vim
"inoremap <expr> <C-K> BDG_GetDigraph()

"}}}
" Leader Mappings{{{
"-------------------------------------------------------------------

let mapleader="-" "Use leader expressly in normal mode
let maplocalleader=","

" To get <> and write <localleader> easily
inoremap <> <><esc>i
inoremap <localleader>bu <><esc>ibuffer<esc>A
inoremap <L <><esc>ileader<esc>A
inoremap <LL <><esc>ilocalleader<esc>A
inoremap <localleader>bl <><esc>ibuffer<esc>A <><esc>ileader<esc>A
inoremap <localleader>bll <><esc>ibuffer<esc>A <><esc>ilocalleader<esc>A

"}}}
" Macros{{{
"-------------------------------------------------------------------

nnoremap Q @q

"}}}
" Navigation{{{
"-------------------------------------------------------------------

" Get off my lawn - helpful when learning Vim :){{{
" nnoremap <Left>  :echoe "Use 'h'. Navigate smartly!"<cr>
" nnoremap <Down>  :echoe "Use 'j'. Navigate smartly!"<cr>
" nnoremap <Up>    :echoe "Use 'k'. Navigate smartly!"<cr>
" nnoremap <Right> :echoe "Use 'l'. Navigate smartly!"<cr>

"}}}
" Moving on the screen{{{
nnoremap H mh^
nnoremap J mjL
nnoremap K mkH
nnoremap L mlg_

vnoremap H mh^
vnoremap J mjL
vnoremap K mkH
vnoremap L mlg_

onoremap H ^
onoremap J L
onoremap K H
onoremap L g_

" onoremap H :<c-u>normal! mh^<cr>
" onoremap J :<c-u>normal! mjL<cr>
" onoremap K :<c-u>normal! mkH<cr>
" onoremap L :<c-u>normal! mlg_<cr>

nnoremap 'h `h
nnoremap 'j `j
nnoremap 'k `k
nnoremap 'l `l

vnoremap 'h `h
vnoremap 'j `j
vnoremap 'k `k
vnoremap 'l `l

inoremap <leader>z <esc>zMzvzza
inoremap <leader>zz <esc>zza
inoremap <leader>zt <esc>zta
inoremap <leader>zb <esc>zba

"}}}
" Toggle VIM lines and visual lines navigation{{{
let s:navigation_toggle=0

function! NavigationToggleInWrapMode()
    if s:navigation_toggle
        " Using VIM lines
        unmap j
        unmap k
        nnoremap H mh^
        nnoremap J mjL
        nnoremap K mkH
        nnoremap L mlg_

        vnoremap H mh^
        vnoremap J mjL
        vnoremap K mkH
        vnoremap L mlg_
        let s:navigation_toggle=0
    else
        " Using visual lines
        nnoremap j gj
        nnoremap k gk
        nnoremap H mhg^
        nnoremap J mjL
        nnoremap K mkH
        nnoremap L mlg$

        vnoremap j gj
        vnoremap k gk
        vnoremap H mhg^
        vnoremap J mjL
        vnoremap K mkH
        vnoremap L mlg$
        let s:navigation_toggle=1
    endif
endfunction

nnoremap <localleader>nv :call NavigationToggleInWrapMode()<cr>

"}}}

" Mark and then go to the beginning or end of the file
nnoremap gg mggg
nnoremap G mgG
nnoremap 'g `gzvzz
nnoremap 'j `jzvzz

vnoremap gg mggg
vnoremap G mgG
vnoremap 'g `gzvzz
vnoremap 'j `jzvzz

" Easy splits navigation{{{
nnoremap <localleader>h  <c-w>h
nnoremap <localleader>j  <c-w>j
nnoremap <localleader>k  <c-w>k
nnoremap <localleader>l  <c-w>l
nnoremap <localleader>hh <c-w>h
nnoremap <localleader>ll <c-w>l

"}}}

" Revisit changelog
nnoremap g; g;zvzz
nnoremap g, g,zvzz

"}}}
" Pasting, visual selection{{{
"-------------------------------------------------------------------

" Pasting
nnoremap p pmp
nnoremap P Pmp

" Visually reselect whatever is pasted (not working)
nnoremap <localleader>V V`[
vnoremap <localleader>V <esc>V`[

" Highlight last inserted text
nnoremap gV `[v`]

" Visually select current line excluding indentation and white space
nnoremap vv ^vg_

"}}}
" Running command in shell and pasting in buffer{{{

" Run in shell and paste in line below
nnoremap <silent> !! yiwo<esc>:.!<c-r><c-r>0<cr>
vnoremap <silent> !! yo<esc>:.!<c-r><c-r>0<cr>0

" Paste date at cursor
nnoremap <silent> <localleader>now a<cr><cr><esc>k:.!date '+\%b \%d \%Y \%H:\%M \%Z (\%a)'<cr>kV2j:j<cr>:echo<cr>/IST<cr>:noh<cr>w%l
inoremap <silent> <localleader>now <cr><cr><esc>k:.!date '+\%b \%d \%Y \%H:\%M \%Z (\%a)'<cr>kV2j:j<cr>:echo<cr>/IST<cr>:noh<cr>w%li

" Calendar on next paragraph with cursor on today
nnoremap <silent> <localleader>cal o<esc>:.!cal<cr>mm:FixWhitespace<cr>/_<cr>2x`mn2xhe:noh<cr>

"}}}
" Searching remaps{{{

" Marking before searching
nnoremap / ms/

nnoremap 's `szvzz

" Search within visual selection
vnoremap / <esc>ms/\%V

vnoremap 's `szvzz

" Don't move on after */#
nnoremap * ms*<c-o>
nnoremap # ms#<c-o>

" Search the visually selected using */# (from Scrooloose){{{
" Shorter mapping, although z* from vim-asterisk even keeps cursor the first time
function! s:VSerSearch()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
    let @@ = temp
endfunction

vnoremap * :<c-u>call <SID>VSerSearch()<cr>ms//<cr><c-o>zz
vnoremap # :<c-u>call <SID>VSerSearch()<cr>ms??<cr><c-o>zz

"}}}

" Highlighting next match
nnoremap <silent> n nzvzz:call HLNext(0.05)<cr>
nnoremap <silent> N Nzvzz:call HLNext(0.05)<cr>
nnoremap <silent> <localleader>nm :call NextMatchToggle()<cr>

" Vim very magic mode search
" nnoremap / ms/\v
" vnoremap / ms/\v

" Number of matches{{{
" Number of matches for a pattern
" <localleader>/<cr> gives number of matches for last search pattern
nnoremap <localleader>/ ms:%s///gn<left><left><left><left>
nnoremap <localleader>? ms:%s///gn<left><left><left><left>

vnoremap <localleader>/ ms:s///gn<left><left><left><left>
vnoremap <localleader>? ms:s///gn<left><left><left><left>

" Number of matches for a word
nnoremap <localleader>* ms*<c-o>:%s///gn<cr>
nnoremap <localleader># ms#<c-o>:%s///gn<cr>

" Number of matches for the visually selected text
vnoremap <localleader>* yms:%s/<c-r>0//gn<cr>
vnoremap <localleader># yms:%s/<c-r>0//gn<cr>

"}}}

" Clearing highlighted matches
nnoremap <c-c> :noh<cr>:echo<cr>
" nnoremap <esc><esc> mm/qwqkqx\$<cr>:noh<cr>:echo<cr>`m

" " Clearing highlighted matches
" nnoremap <silent> <esc> :noh<cr>:echo<cr>
" nnoremap <silent> <esc><esc> mm/qwqkqx\$<cr>:noh<cr>`m

"}}}
" Some other remaps{{{
"-------------------------------------------------------------------

" Joining lines
nnoremap <localleader>J J
vnoremap <localleader>J J

" Yank till the end of the line and clearing a line
nnoremap Y y$
nnoremap <leader>d 0D

" Creating newline
nnoremap <localleader>o mmo<esc>`m
nnoremap <localleader>O mmO<esc>`m

" " Uppercasing (move half-screen up has <c-u>)
" nnoremap <c-u> mmgUiw`m
" inoremap <c-u> <esc>mmgUiw`ma
" vnoremap <c-u> gU

"}}}
" Spelling Check{{{
"-------------------------------------------------------------------

augroup Spelling
    autocmd!
    autocmd FileType tex,text setlocal spell spelllang=en_us
    " Adding new words to dictionary
    autocmd FileType tex,text nnoremap < ms[szz
    autocmd FileType tex,text nnoremap > ms]szz
    autocmd FileType tex,text nnoremap zgN zg[szz
    autocmd FileType tex,text nnoremap zgn zg]szz
    autocmd FileType tex,text nnoremap zwN zw[szz
    autocmd FileType tex,text nnoremap zwn zw]szz

augroup end

" FixLastSpellingError
function! FixLastSpellingError()
    :normal! mf[s1z=`f
endfunction

nnoremap <silent> <localleader>fs :call FixLastSpellingError()<cr>
inoremap <silent> <localleader>fs <esc>:call FixLastSpellingError()<cr>a

"}}}
" Substitute/change{{{
"-------------------------------------------------------------------

nnoremap <localleader>s :%s/
vnoremap <localleader>s :s/
nnoremap <localleader>S :%S/
vnoremap <localleader>S :S/

"}}}
" TeXHighlighting{{{
"-------------------------------------------------------------------

" Part, Chapter, Section, Subsection, Subsubsection, label"{{{

highlight Folds_brackets_comments ctermbg=174 ctermfg=black

augroup TeXHighlighting
    autocmd!
    autocmd Filetype tex let m = matchadd("Folds_brackets_comments",'%{T{E{X')
    autocmd Filetype tex let m = matchadd("Folds_brackets_comments",'%}T}E}X')
    autocmd Filetype tex let m = matchadd("Folds_brackets_comments",'%F{O{L{D')
    autocmd Filetype tex let m = matchadd("Folds_brackets_comments",'%F}O}L}D')
augroup end

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
    autocmd Filetype tex let m = matchadd("Label",'\\label{.\{}}')
augroup end

"}}}
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
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% GatheredEquation')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% UnnumberedGatheredEquation')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% Subequations')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% Gather')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% UnnumberedGather')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% Center')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% CaseDefinition')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% DcaseDefinition')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% Enumerate')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% Itemize')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% figure')
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% diary')
augroup end

highlight ArrayMatrixEtcMarkerGroup ctermbg=210 ctermfg=black

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

highlight ImpliesMarkerGroup ctermbg=210 ctermfg=black

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

highlight BoldRedGroup ctermfg=red cterm=bold

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("BoldRedGroup",'\\todo')
augroup end

"}}}
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
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{dcases}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{dcases}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{enumerate}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{enumerate}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{itemize}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{itemize}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{landscape}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{landscape}')
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
augroup end

highlight asterisk ctermbg=130 ctermfg=yellow

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

"}}}

"}}}
" PythonHighlighting{{{

highlight PythonGroup ctermfg=3

augroup PythonHighlighting
    autocmd!
    autocmd Filetype python let m = matchadd("PythonGroup",'{.\{-}}')
augroup end

"}}}
" TerminalHighlighting{{{
hi Terminal ctermbg=238 ctermfg=188 guibg=lightgrey guifg=blue
"}}}
" Trailing White Space{{{
"-------------------------------------------------------------------

"autocmd BufWritePre *.* %s/\s\+$//e
inoremap <localleader>fws <esc>mwV:FixWhitespace<cr>`wa
nnoremap <localleader>fws mwV:FixWhitespace<cr>`w
nnoremap <localleader>faw mw:FixWhitespace<cr>`w

"}}}

"}}}

" KeyBinding, Abbreviations and Stuff{{{
"-------------------------------------------------------------------

" Selecting KeyBindings{{{
"-------------------------------------------------------------------

" Select KeyBinding Scheme
function! KeyBindings(code)
    if a:code != 'tex' && a:code != 'np' && a:code != 'py' && a:code != 'unmaptex' && a:code != 'go'
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

        "invalid KeyBindings
    elseif l:code != 'tex' && l:code != 'np' && l:code != 'py' && l:code != 'unmaptex'
        echom " <-- Not a valid KeyBinding"
    endif

endfunction

"}}}
" Selecting Abbreviations{{{
"-------------------------------------------------------------------

" Select Abbreviation Type
function! Abbreviations(code)
    if a:code != 'gen' && a:code != 'math'
        let l:code = input("Which Abbreviation: ")
    else
        let l:code = a:code
    endif

    "gen
    if l:code == "gen"
        source ~/.vim/Abbreviations/GeneralAbbreviations.vim

        "math
    elseif l:code == "math"
        source ~/.vim/Abbreviations/MathAbbreviations.vim

        "invalid Abbreviations
    elseif l:code != 'gen' && l:code != 'math'
        echom " <-- Not a valid Abbreviation"
    endif

endfunction

"}}}
" Sourcing KeyBindings, Abbreviations and Stuff{{{
"-------------------------------------------------------------------

augroup SourceEverythingForTeX
    autocmd!
    autocmd BufNewFile         *.tex silent write
    autocmd BufNewFile         *.tex source ~/.vim/plugged/vimtex/ftplugin/tex/folding.vim
    autocmd BufNewFile,BufRead *.tex call Abbreviations("gen")
    autocmd BufNewFile,BufRead *.tex call Abbreviations("math")
    autocmd BufNewFile,BufRead *.tex call KeyBindings("tex")
    autocmd BufNewFile,BufRead *.tex call MatrixGroupToggle()
    autocmd BufNewFile,BufRead *.tex setlocal spell spelllang=en_us
    autocmd BufNewFile,BufRead *.tex setlocal spellfile=~/.vim/spell/math.utf-8.add
    autocmd BufNewFile,BufRead *.tex setlocal foldmethod=marker
    autocmd BufNewFile,BufRead *.tex setlocal foldmarker=F{O{L{D,F}O}L}D
    autocmd BufNewFile,BufRead *.tex exe "normal! 4zj"
augroup end

" Sourcing everything for tex
function! SourceEverythingForTeX()
    call Abbreviations("gen")
    call Abbreviations("math")
    call KeyBindings("tex")
    setlocal spell spelllang=en_us
    setlocal spellfile=~/.vim/spell/math.utf-8.add
    setlocal foldmethod=marker
    setlocal foldmarker=F{O{L{D,F}O}L}D
endfunction

nnoremap <silent> <localleader>ev :source $MYVIMRC<cr>:call SourceEverythingForTeX()<cr>
inoremap <silent> <localleader>ev <esc>:source $MYVIMRC<cr>:call SourceEverythingForTeX()<cr>a

" Changing foldmarker for tex
nnoremap <localleader>cfm :%s/}T}E}X/F}O}L}D/g \| :%s/{T{E{X/F{O{L{D/g<cr><cr>

augroup Vimwiki
    autocmd!
    autocmd BufNewFile         *.md silent write
    autocmd BufNewfile,BufRead *.md colorscheme wombat256i
    autocmd BufNewFile,BufRead *.md setlocal spell spelllang=en_us
    autocmd BufNewFile,BufRead *.md setlocal spellfile=~/.vim/spell/math.utf-8.add
    autocmd BufNewFile,BufRead *.md nnoremap glm V<
    " autocmd BufNewFile,BufRead *.md setlocal foldmethod=marker
    " autocmd BufNewFile,BufRead *.md setlocal foldmarker=F{O{L{D,F}O}L}D
augroup end

augroup SourceEverythingForPython
    autocmd!
    autocmd BufNewFile         *.py silent write
    autocmd BufNewFile,BufRead *.py call KeyBindings("py")
    " autocmd BufNewFile,BufRead *.py set signcolumn=yes
    " autocmd Filetype python nunmap <
    " autocmd Filetype python nunmap >
    " autocmd BufNewFile,BufRead *.py set foldmethod=indent
augroup end

augroup SourceEverythingForGo
    autocmd!
    autocmd BufNewFile         *.go silent write
    autocmd BufNewFile,BufRead *.go call KeyBindings("go")
    autocmd BufNewFile,BufRead *.go setlocal spell spelllang=en_us
    autocmd BufNewFile,BufRead *.go setlocal spellfile=~/.vim/spell/math.utf-8.add
augroup end

"Sourcing NumbersPeacefully
nnoremap <localleader>np :call KeyBindings("np")<cr>
inoremap <localleader>np <esc>:call KeyBindings("np")<cr>a
inoremap <localleader>nd <esc>:call KeyBindings("tex")<cr>a

"Sourcing GeneralAbbreviations
nnoremap <localleader>ag :call Abbreviations("gen")<cr>

" Sourcing MathAbbreviations
nnoremap <localleader>am :call Abbreviations("math")<cr>

"Sourcing PythonKeyBindings
nnoremap <localleader>py :call KeyBindings("py")<cr>

"Sourcing UnmapTexKeyBindings
nnoremap <localleader>ut :call KeyBindings("unmaptex")<cr>
inoremap <localleader>ut <esc>:call KeyBindings("unmaptex")<cr>a

"}}}
" Opening .vimrc, KeyBindings and Stuff{{{
"-------------------------------------------------------------------

" Opening TeXKeyBindings "te=tex
nnoremap <leader>hte :new ~/.vim/KeyBindings/TeXKeyBindings.vim<cr>
nnoremap <leader>vte :vnew ~/.vim/KeyBindings/TeXKeyBindings.vim<cr>
nnoremap <leader>te :vnew ~/.vim/KeyBindings/TeXKeyBindings.vim<cr>
nnoremap <leader>hnp :new ~/.vim/KeyBindings/NumbersPeacefully.vim<cr>
nnoremap <leader>vnp :vnew ~/.vim/KeyBindings/NumbersPeacefully.vim<cr>
nnoremap <leader>np :vnew ~/.vim/KeyBindings/NumbersPeacefully.vim<cr>

" Opening PythonKeyBindings
nnoremap <leader>hpy :new ~/.vim/KeyBindings/PythonKeyBindings.vim<cr>
nnoremap <leader>vpy :vnew ~/.vim/KeyBindings/PythonKeyBindings.vim<cr>
nnoremap <leader>py :vnew ~/.vim/KeyBindings/PythonKeyBindings.vim<cr>

" Opening GoKeyBindings
nnoremap <leader>hgo :new ~/.vim/KeyBindings/GoKeyBindings.vim<cr>
nnoremap <leader>vgo :vnew ~/.vim/KeyBindings/GoKeyBindings.vim<cr>
nnoremap <leader>go :vnew ~/.vim/KeyBindings/GoKeyBindings.vim<cr>

" Opening UnmapTeXKeyBindings
nnoremap <leader>hut :new ~/.vim/KeyBindings/UnmapTeXKeyBindings.vim<cr>
nnoremap <leader>vut :vnew ~/.vim/KeyBindings/UnmapTeXKeyBindings.vim<cr>
nnoremap <leader>ut :vnew ~/.vim/KeyBindings/UnmapTeXKeyBindings.vim<cr>

" Opening tex.snippets "u=ultisnips
nnoremap <leader>hts :new ~/.vim/UltiSnips/tex.snippets<cr>
nnoremap <leader>vts :vnew ~/.vim/UltiSnips/tex.snippets<cr>
nnoremap <leader>ts :vnew ~/.vim/UltiSnips/tex.snippets<cr>

" Opening py.snippets
nnoremap <leader>hps :new ~/.vim/UltiSnips/python.snippets<cr>
nnoremap <leader>vps :vnew ~/.vim/UltiSnips/python.snippets<cr>
nnoremap <leader>ps :vnew ~/.vim/UltiSnips/python.snippets<cr>

" Opening Abbreviations
nnoremap <leader>ha :new ~/.vim/Abbreviations<cr>
nnoremap <leader>va :vnew ~/.vim/Abbreviations<cr>
nnoremap <leader>a :vnew ~/.vim/Abbreviations<cr>
nnoremap <leader>hag :new ~/.vim/Abbreviations/GeneralAbbreviations.vim<cr>
nnoremap <leader>vag :vnew ~/.vim/Abbreviations/GeneralAbbreviations.vim<cr>
nnoremap <leader>ag :vnew ~/.vim/Abbreviations/GeneralAbbreviations.vim<cr>
nnoremap <leader>ham :new ~/.vim/Abbreviations/MathAbbreviations.vim<cr>
nnoremap <leader>vam :vnew ~/.vim/Abbreviations/MathAbbreviations.vim<cr>
nnoremap <leader>am :vnew ~/.vim/Abbreviations/MathAbbreviations.vim<cr>

" Opening mathspell file
nnoremap <leader>hms :new ~/.vim/spell/math.utf-8.add<cr>
nnoremap <leader>vms :vnew ~/.vim/spell/math.utf-8.add<cr>
nnoremap <leader>ms :vnew ~/.vim/spell/math.utf-8.add<cr>

" Opening .vimrc
nnoremap <leader>hv :split $MYVIMRC<cr>
nnoremap <leader>vv :vsplit $MYVIMRC<cr>

"}}}

"}}}

" Writing and quitting{{{
"-------------------------------------------------------------------

" augroup IndentTexPyBuf
"     autocmd!
"     autocmd BufNewFile,BufRead *.tex,*.py :normal! mmgg=G`m
" augroup end

" Doesn't seem to work when template is enabled
augroup WriteNewBuf
    autocmd!
    autocmd BufNewFile * silent write
augroup end

nnoremap <silent> <localleader>w mm:w!<cr>`m
inoremap <silent> ;w <esc>mm:w!<cr>`ma

augroup ContinuouslyWriteBuf
    autocmd!
    autocmd TextChanged *.* nested silent write
    autocmd TextChangedI *.* silent write
augroup end

nnoremap <localleader>q mqzM:q!<cr>
nnoremap <localleader>wq mqzM:wq!<cr>
nnoremap 'q `qzvzz
vnoremap 'q `qzvzz

"}}}

" Sourcing{{{
"-------------------------------------------------------------------

" Sourcing current file
nnoremap <silent> <localleader>sf :w!<cr>:source %<cr>:noh<cr>
nnoremap <silent> <localleader>msf :call MakeView()<cr>:source %<cr>:noh<cr>

augroup ForAllBuf
    autocmd!
    autocmd BufNewfile,BufRead,BufEnter * source $MYVIMRC
    " autocmd BufNewfile,BufRead * source $MYVIMRC
    " autocmd BufNewFile,BufRead * call Abbreviations("gen")
    autocmd FocusGained,FocusLost,BufEnter * checktime
    autocmd CursorHold,CursorHoldI * checktime
augroup end

" Sourcing visual selection/current line for testing code
vnoremap <localleader>E y:execute @@<cr>
nnoremap <localleader>E ^vg_y:execute @@<cr>

" Sourcing .vimrc
nnoremap <localleader>v :source $MYVIMRC<cr>

"}}}
