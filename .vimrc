
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
set backspace=indent,eol,start        " http://vi.stackexchange.com/a/2163
set clipboard=unnamed                 " Clipboard support (OSX)
set nopaste                           " No pasting from other application in GUI
set lazyredraw                        " Reduce the redraw frequency
set ttyfast                           " Send more characters in fast terminals
set noerrorbells                      " Turn off audible bells
set visualbell                        " Flash the screen when an error message is displayed
set history=10000                     " Command line history for vim
set timeoutlen=1000 ttimeoutlen=0     " Remove timeout when hitting escape
set showcmd                           " Show partial commands in the line of the screen
set complete=.,w,b,u,t,i,kspell       " Complete using Ctrl-p
set textwidth=1000                    " Line length in vim
set cursorline                        " Highlighting the line containing the cursor
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

set tabstop=4                         " Redefine tab as four spaces
set softtabstop=4                     " Number of spaces in tab when editing
set shiftwidth=4                      " To change the number of space characters inserted for indentation
set expandtab                         " Four spaces for tabs everywhere
set autoindent                        " Auto indent
set smartindent                       " Does the right thing (mostly) in programs
set showmatch                         " Briefly jump to the match if a bracket is inserted, 'matchtime' to be used to set the time to show the match
set foldenable                        " Enable folding

""Make the 71th column stand out
"highlight ColorColumn ctermbg=magenta
"call matchadd('ColorColumn', '\%72v', 100)

set wrap                              " Wrap longlines by default
set listchars=extends:→               " Show arrow if line continues rightwards
set listchars+=precedes:←             " Show arrow if line continues leftwards

" Wrap toggle
nnoremap <buffer> <localleader>wt :set wrap!<cr>:echo<cr>

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

nnoremap <buffer> <localleader>hs :split<cr>
nnoremap <buffer> <localleader>vs :vsplit<cr>

augroup ResizeSplitsWhenTheWindowIsResized
    autocmd!
    autocmd VimResized <buffer> exe "normal! \<C-w>="
augroup end

" Window resizing
nnoremap <buffer> <S-LEFT>  5<c-w><
nnoremap <buffer> <S-RIGHT> 5<c-w>>

"}}}
" Line number{{{

set number relativenumber

nnoremap <buffer> <localleader>nt :call NumberToggle()<cr>:echo<cr>

"}}}

"}}}

" Plugins{{{
"-------------------------------------------------------------------

" Set the runtime path to include fzf and Vundle, and initialize

set rtp+=~/.fzf

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()                   " Vundle will run the following Plugins


" Plugin 'Valloric/YouCompleteMe'
Plugin 'KeitaNakamura/tex-conceal.vim'
Plugin 'MahbubAlam231/dragvisuals'
Plugin 'MahbubAlam231/hybrid-line-numbers'
Plugin 'MahbubAlam231/searching-with-blinking'
Plugin 'MahbubAlam231/vim-system-copy'
Plugin 'SirVer/ultisnips'
Plugin 'VundleVim/Vundle.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'christoomey/vim-quicklink'
Plugin 'christoomey/vim-sort-motion'
Plugin 'christoomey/vim-titlecase'
Plugin 'danro/rename.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'ervandew/supertab'
Plugin 'flazz/vim-colorschemes'
Plugin 'haya14busa/vim-asterisk'
Plugin 'inkarkat/vim-PatternsOnText'
Plugin 'junegunn/fzf.vim'
Plugin 'justinmk/vim-sneak'
Plugin 'kana/vim-textobj-datetime'
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-indent'
Plugin 'kana/vim-textobj-line'
Plugin 'kana/vim-textobj-user'
Plugin 'lervag/vimtex'
Plugin 'mattn/webapi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/gundo.vim'
Plugin 'tibabit/vim-templates'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-scripts/ReplaceWithRegister'
Plugin 'vim-scripts/ZoomWin'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-scripts/matchit.zip'
Plugin 'vim-syntastic/syntastic'


call vundle#end()                     " Required
filetype indent plugin on             " Required, enables filetype detection

"}}}

" Plugin mappings{{{
"-------------------------------------------------------------------

" Airline{{{

let g:airline_theme = 'simple'

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

" set conceallevel=2
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

" map f <Plug>Sneak_f
" map F <Plug>Sneak_F
" map t <Plug>Sneak_t
" map T <Plug>Sneak_T

nnoremap <buffer> 'w `wzvzz
nnoremap <buffer> 'e `ezvzz
nnoremap <buffer> 'f `fzvzz
nnoremap <buffer> 's `szvzz
nnoremap <buffer> 't `tzvzz

"}}}
" Fugitive{{{

nnoremap <buffer> <localleader>gp :Gw<cr>:Gcommit -m "Add updated files"<cr><cr>:Gpush origin master<cr>

"}}}
" FuzzyFinder{{{

nnoremap <buffer> <localleader>fzf :FZF ~/
nnoremap <buffer> <localleader>fzd :FZF<cr>
nnoremap <buffer> <localleader>fzh :FZF ~<cr>

"}}}
" Gundo{{{

nnoremap <localleader>gt :GundoToggle<CR>

"}}}
" NERDtree{{{

nnoremap <buffer> <localleader>ner :NERDTree<cr>
nnoremap <buffer> <localleader>nerd :NERDTree<cr>

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
    if a:code != 'art' && a:code != 'ams' && a:code != 'rep'
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

        "invalid template
    elseif l:code != 'art' && l:code != 'ams' && l:code != 'rep'
        echom " <-- Not a valid template"
    endif

endfunction

nnoremap <buffer> <localleader>tem :call Template("")<cr>:echo<cr>

nnoremap <buffer> <localleader>art :call Template("art")<cr>:echo<cr>
nnoremap <buffer> <localleader>ams :call Template("ams")<cr>:echo<cr>
nnoremap <buffer> <localleader>rep :call Template("rep")<cr>:echo<cr>

"}}}

" Placeholders <++>
nnoremap <buffer> <c-j> /<++><cr>zv:noh<cr>cf>
inoremap <buffer> <c-j> <esc>/<++><cr>zv:noh<cr>cf>
nnoremap <buffer> <c-k> ?<++><cr>zv:noh<cr>cf>
inoremap <buffer> <c-k> <esc>?<++><cr>zv:noh<cr>cf>

" Correcting indent immediately after template is infected
nnoremap <buffer> <localleader>fi mm/                    <cr>0<c-v>Gk^hd`m:noh<cr>

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

" let g:vimtex_indent_enabled=1
" let g:vimtex_complete_enabled=0
" let g:vimtex_complete_bib=0
" let g:vimtex_complete_citation=0
" let g:vimtex_complete_ref=0
" let g:vimtex_complete_close_braces=0
" let g:vimtex_fold_enabled=1

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

augroup UseVimtex_ae/ie_InTeX
    autocmd!
    autocmd FileType tex xmap <silent><nowait><buffer> ie <plug>(vimtex-ie)
    autocmd FileType tex xmap <silent><nowait><buffer> ae <plug>(vimtex-ae)

    autocmd FileType tex omap <silent><nowait><buffer> ie <plug>(vimtex-ie)
    autocmd FileType tex omap <silent><nowait><buffer> ae <plug>(vimtex-ae)
augroup end

nnoremap <buffer> <localleader>fm /\(^\([^$]\\|\$[^$]\+\$\)\+\)\@<=\$<cr>
nnoremap <buffer> <localleader>Fm ?\(^\([^$]\\|\$[^$]\+\$\)\+\)\@<=\$<cr>

" Folding{{{
set foldlevelstart=0
set foldmethod=marker
nnoremap <buffer> <localleader>mn :setlocal foldmethod=manual<cr>
nnoremap <buffer> <localleader>mr :setlocal foldmethod=marker<cr>

" Saving folds in ~/.vim/view
function! MakeView()
    :execute ":normal! mfzMgg:w!\<cr>:mkview\<cr>`fzvzz"
endfunction

nnoremap <buffer> <localleader>mk :call MakeView()<cr>:echo<cr>
nnoremap <buffer> 'f `fzvzz
vnoremap <buffer> 'f `fzvzz

function! FoldingTeXPreamble()
    :execute ":normal! :setlocal foldmethod=marker\<cr>mfggzR/Usepackages\<cr>0ma/Environments\<cr>0mb/Newcommands\<cr>0mc/begin{document}\<cr>k0md`azf`b`bzf`c`czf`d?documentclass\<cr>zf`d:delm a-d\<cr>zMgg`fzvzz"

endfunction

nnoremap <buffer> <localleader>fp :call FoldingTeXPreamble()<cr>:echo<cr>

augroup Loadview
    autocmd!
    autocmd BufNewFile,BufRead * silent loadview
augroup end

" Opening/closing folding{{{
nnoremap <buffer> zo mozozz
nnoremap <buffer> zc mczczz
nnoremap <buffer> zC mczCzz
nnoremap <buffer> zv mvzvzz
nnoremap <buffer> zr mrzRzz
nnoremap <buffer> zm mmzMzz
nnoremap <buffer> <localleader>z zMzvzz
nnoremap <buffer> <space> zazz
nnoremap <buffer> <localleader><space> zazt
nnoremap <buffer> z<space> zazb

vnoremap <buffer> zo mozozz
vnoremap <buffer> zc mczczz
vnoremap <buffer> zC mczCzz
vnoremap <buffer> zv mvzvzz
vnoremap <buffer> zr mrzRzz
vnoremap <buffer> zm mmzMzz
vnoremap <buffer> <localleader>z zMzvzz
vnoremap <buffer> <space> zazz
vnoremap <buffer> <localleader><space> zazt
vnoremap <buffer> z<space> zazb

nnoremap <buffer> 'o `ozvzz
nnoremap <buffer> 'c `czvzz
nnoremap <buffer> 'v `vzvzz
nnoremap <buffer> 'r `rzvzz
nnoremap <buffer> 'm `mzvzz

vnoremap <buffer> 'o `ozvzz
vnoremap <buffer> 'c `czvzz
vnoremap <buffer> 'v `vzvzz
vnoremap <buffer> 'r `rzvzz
vnoremap <buffer> 'm `mzvzz

"}}}

"}}}

"}}}

"}}}

" Misc{{{
"-------------------------------------------------------------------

" Align text{{{
"-------------------------------------------------------------------

nnoremap <buffer> <localleader>al :left<cr>
nnoremap <buffer> <localleader>ac :center<cr>
nnoremap <buffer> <localleader>ar :right<cr>

vnoremap <buffer> <localleader>al :left<cr>
vnoremap <buffer> <localleader>ac :center<cr>
vnoremap <buffer> <localleader>ar :right<cr>

"}}}
" Braces and stuff{{{
"-------------------------------------------------------------------

inoremap <buffer> ( ()<left>
inoremap <buffer> (( (
inoremap <buffer> { {}<left>
inoremap <buffer> {{ \{\}<left><left>
inoremap <buffer> p{ {
inoremap <buffer> P{ {
inoremap <buffer> [ []<left>
inoremap <buffer> [[ [

inoremap <buffer> \| \|\|<left>
inoremap <buffer> \|\| \|

inoremap <buffer> '' ''<left>
inoremap <buffer> "" ""<left>

"}}}
" Calculator{{{
"-------------------------------------------------------------------

inoremap <buffer> <C-C> <C-O>yiW<End>=<C-R>=<C-R>0<cr>

"}}}
" Colorschemes{{{
"-------------------------------------------------------------------

syntax on

colorscheme wombat256i
" colorscheme badwolf

set background=dark

"}}}
" Command line mappings{{{
"-------------------------------------------------------------------

cnoremap <buffer> <c-h> <home>
cnoremap <buffer> <c-e> <end>

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
inoremap <buffer> <> <><left>
inoremap <buffer> <localleader>bu <><left>buffer<right>
inoremap <buffer> <L <><left>leader<right>
inoremap <buffer> <LL <><left>ilocalleader<right>
inoremap <buffer> <localleader>bl <><left>buffer<right> <><left>leader<right>
inoremap <buffer> <localleader>bll <><left>buffer<right> <><left>localleader<right>

"}}}
" Macros{{{
"-------------------------------------------------------------------

nnoremap <buffer> Q @q

"}}}
" Navigation{{{
"-------------------------------------------------------------------

" Get off my lawn - helpful when learning Vim :){{{
" nnoremap <buffer> <Left>  :echoe "Use 'h'. Navigate smartly!"<cr>
" nnoremap <buffer> <Down>  :echoe "Use 'j'. Navigate smartly!"<cr>
" nnoremap <buffer> <Up>    :echoe "Use 'k'. Navigate smartly!"<cr>
" nnoremap <buffer> <Right> :echoe "Use 'l'. Navigate smartly!"<cr>

"}}}
" Moving on the screen{{{
nnoremap <buffer> H mh^
nnoremap <buffer> J mjL
nnoremap <buffer> K mkH
nnoremap <buffer> L mlg_

vnoremap <buffer> H mh^
vnoremap <buffer> J mjL
vnoremap <buffer> K mkH
vnoremap <buffer> L mlg_

onoremap <buffer> H :<c-u>normal! mh^<cr>
onoremap <buffer> J :<c-u>normal! mjL<cr>
onoremap <buffer> K :<c-u>normal! mkH<cr>
onoremap <buffer> L :<c-u>normal! mlg_<cr>

nnoremap <buffer> 'h `h
nnoremap <buffer> 'j `j
nnoremap <buffer> 'k `k
nnoremap <buffer> 'l `l

vnoremap <buffer> 'h `h
vnoremap <buffer> 'j `j
vnoremap <buffer> 'k `k
vnoremap <buffer> 'l `l

inoremap <buffer> <leader>z <esc>zMzvzza
inoremap <buffer> <leader>zz <esc>zza
inoremap <buffer> <leader>zt <esc>zta
inoremap <buffer> <leader>zb <esc>zba

"}}}
" Toggle VIM lines and visual lines navigation{{{
let s:navigation_toggle=0

function! NavigationToggleInWrapMode()
    if s:navigation_toggle
        " Using VIM lines
        unmap <buffer> j
        unmap <buffer> k
        nnoremap <buffer> H mh^
        nnoremap <buffer> J mjL
        nnoremap <buffer> K mkH
        nnoremap <buffer> L mlg_

        vnoremap <buffer> H mh^
        vnoremap <buffer> J mjL
        vnoremap <buffer> K mkH
        vnoremap <buffer> L mlg_
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
        let s:navigation_toggle=1
    endif
endfunction

nnoremap <buffer> <localleader>nvt :call NavigationToggleInWrapMode()<cr>:echo<cr>

"}}}

" Mark and then go to the beginning or end of the file
nnoremap <buffer> gg mggg
nnoremap <buffer> G mgG
nnoremap <buffer> 'g `gzvzz
nnoremap <buffer> 'j `jzvzz

vnoremap <buffer> gg mggg
vnoremap <buffer> G mgG
vnoremap <buffer> 'g `gzvzz
vnoremap <buffer> 'j `jzvzz

" Easy splits navigation{{{
nnoremap <buffer> <localleader>h  <c-w>h
nnoremap <buffer> <localleader>j  <c-w>j
nnoremap <buffer> <localleader>k  <c-w>k
nnoremap <buffer> <localleader>l  <c-w>l
nnoremap <buffer> <localleader>hh <c-w>h
nnoremap <buffer> <localleader>ll <c-w>l

"}}}

" Revisit changelog
nnoremap <buffer> g; g;zvzz
nnoremap <buffer> g, g,zvzz

"}}}
" Pasting, visual selection{{{
"-------------------------------------------------------------------

" Pasting
nnoremap <buffer> p pmp
nnoremap <buffer> P Pmp

" Visually reselect whatever is pasted (not working)
nnoremap <buffer> <localleader>V V`[
vnoremap <buffer> <localleader>V <esc>V`[

" Highlight last inserted text
nnoremap gV `[v`]

" Visually select current line excluding indentation and white space
nnoremap <buffer> vv ^vg_

"}}}
" Running command in shell and pasting in buffer{{{

nnoremap <buffer> !! !!sh<cr>

"}}}
" Searching remaps{{{

" Marking before searching
nnoremap <buffer> / ms/

nnoremap <buffer> 's `szvzz

" Search within visual selection
vnoremap <buffer> / <esc>ms/\%V

vnoremap <buffer> 's `szvzz

" Don't move on after */#
nnoremap <buffer> * ms*<c-o>
nnoremap <buffer> # ms#<c-o>

" Search the visually selected using */# (from Scrooloose){{{
" Shorter mapping, although z* from vim-asterisk even keeps cursor the first time
function! s:VSerSearch()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
    let @@ = temp
endfunction

vnoremap <buffer> * :<c-u>call <SID>VSerSearch()<cr>ms//<cr><c-o>zz
vnoremap <buffer> # :<c-u>call <SID>VSerSearch()<cr>ms??<cr><c-o>zz

"}}}

" Highlighting next match
nnoremap <buffer> n nzvzz:call HLNext(0.05)<cr>:echo<cr>
nnoremap <buffer> N Nzvzz:call HLNext(0.05)<cr>:echo<cr>
nnoremap <buffer> <localleader>nm :call NextMatchToggle()<cr>:echo<cr>

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

" Number of matches for a word
nnoremap <buffer> <localleader>* ms*<c-o>:%s///gn<cr>
nnoremap <buffer> <localleader># ms#<c-o>:%s///gn<cr>

" Number of matches for the visually selected text
vnoremap <buffer> <localleader>* yms:%s/<c-r>0//gn<cr>
vnoremap <buffer> <localleader># yms:%s/<c-r>0//gn<cr>

"}}}

" Clearing highlighted matches
nnoremap <buffer> <esc> :noh<cr>:echo<cr>
nnoremap <buffer> <esc><esc> mm/qwqkqx\$<cr>:noh<cr>:echo<cr>`m

"}}}
" Some other remaps{{{
"-------------------------------------------------------------------

" Yank till the end of the line and clearing a line
nnoremap <buffer> Y y$
nnoremap <buffer> <leader>d 0D

" Creating newline
nnoremap <buffer> <localleader>o mmo<esc>`m
nnoremap <buffer> <localleader>O mmO<esc>`m

" " Uppercasing (move half-screen up has <c-u>)
" nnoremap <buffer> <c-u> mmgUiw`m
" inoremap <buffer> <c-u> <esc>mmgUiw`ma
" vnoremap <buffer> <c-u> gU

"}}}
" Spelling Check{{{
"-------------------------------------------------------------------

augroup Spelling
    autocmd!
    autocmd FileType tex,text,py setlocal spell spelllang=en_us
augroup end

" FixLastSpellingError
function! FixLastSpellingError()
    :normal! mf[s1z=`f
endfunction

nnoremap <buffer> <localleader>fs :call FixLastSpellingError()<cr>:echo<cr>
inoremap <buffer> <localleader>fs <esc>:call FixLastSpellingError()<cr>:echo<cr>a

" Adding new words to dictionary
nnoremap <buffer> < ms[szz
nnoremap <buffer> > ms]szz
nnoremap <buffer> zgN zg[szz
nnoremap <buffer> zgn zg]szz
nnoremap <buffer> zwN zw[szz
nnoremap <buffer> zwn zw]szz

"}}}
" Substitute/change{{{
"-------------------------------------------------------------------

nnoremap <buffer> <localleader>s :%s/
vnoremap <buffer> <localleader>s :s/
nnoremap <buffer> <localleader>S :%S/
vnoremap <buffer> <localleader>S :S/

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

highlight PartMarkerGroup ctermbg=087 ctermfg=black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("PartMarkerGroup",'% Part')
    autocmd Filetype tex let m = matchadd("PartMarkerGroup",'% UnnumberedPart')
augroup end

highlight PartGroup ctermbg=087 ctermfg=black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("PartGroup",'\\part{.\{}}')
    autocmd Filetype tex let m = matchadd("PartGroup",'\\part\*{.\{}}')
augroup end

highlight ChapterMarkerGroup ctermbg=092 ctermfg=yellow

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("ChapterMarkerGroup",'% Chapter')
    autocmd Filetype tex let m = matchadd("ChapterMarkerGroup",'% UnnumberedChapter')
augroup end

highlight ChapterGroup ctermbg=092 ctermfg=yellow

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("ChapterGroup",'\\chapter{.\{}}')
    autocmd Filetype tex let m = matchadd("ChapterGroup",'\\chapter\*{.\{}}')
augroup end

highlight SectionMarkerGroup ctermbg=39 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("SectionMarkerGroup",'% Section')
    autocmd Filetype tex let m = matchadd("SectionMarkerGroup",'% UnnumberedSection')
augroup end

highlight SectionGroup ctermbg=39 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("SectionGroup",'\\section{.\{}}')
    autocmd Filetype tex let m = matchadd("SectionGroup",'\\section\*{.\{}}')
augroup end

highlight SubsectionMarkerGroup ctermbg=198 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("SubsectionMarkerGroup",'% Subsection')
    autocmd Filetype tex let m = matchadd("SubsectionMarkerGroup",'% UnnumberedSubsection')
augroup end

highlight SubsectionGroup ctermbg=198 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("SubsectionGroup",'\\subsection{.\{}}')
    autocmd Filetype tex let m = matchadd("SubsectionGroup",'\\subsection\*{.\{}}')
augroup end

highlight SubsubsectionMarkerGroup ctermbg=yellow ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("SubsubsectionMarkerGroup",'% Subsubsection')
    autocmd Filetype tex let m = matchadd("SubsubsectionMarkerGroup",'% UnnumberedSubsubsection')
augroup end

highlight SubsubsectionGroup ctermbg=yellow ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("SubsubsectionGroup",'\\subsubsection{.\{}}')
    autocmd Filetype tex let m = matchadd("SubsubsectionGroup",'\\subsubsection\*{.\{}}')
augroup end

highlight Label ctermbg=141 ctermfg=0

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("Label",'\\label{.\{}}')
augroup end

"}}}
" MarkerGroup, BoldGroup"{{{

highlight TitleAbstract ctermbg=92 ctermfg=yellow

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("TitleAbstract",'% Abstract')
    autocmd Filetype tex let m = matchadd("TitleAbstract",'% Title')
augroup end

highlight MarkerGroup ctermbg=White ctermfg=Black

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

highlight YellowMarkerGroup ctermbg=yellow ctermfg=black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% Equation')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% UnnumberedEquation')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% Align')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% UnnumberedAlign')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% AlignedEquation')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% UnnumberedAlignedEquation')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% GatheredEquation')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% UnnumberedGatheredEquation')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% Subequations')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% Gather')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% UnnumberedGather')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% Center')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% CaseDefinition')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% DcaseDefinition')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% Enumerate')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% Itemize')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% figure')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% diary')
augroup end

highlight SalmonMarkerGroup ctermbg=209 ctermfg=black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("SalmonMarkerGroup",'% Array')
    autocmd Filetype tex let m = matchadd("SalmonMarkerGroup",'% Matrix')
    autocmd Filetype tex let m = matchadd("SalmonMarkerGroup",'% Bmatrix')
    autocmd Filetype tex let m = matchadd("SalmonMarkerGroup",'% Pmatrix')
augroup end

highlight Bibliography ctermbg=92 ctermfg=yellow

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("Bibliography",'% Bibliography')
augroup end

highlight ImpliesMarkerGroup ctermbg=208 ctermfg=black

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

highlight Abstract ctermbg=92 ctermfg=yellow

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

highlight DefinitionGroup ctermbg=214 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("DefinitionGroup",'\\begin{definition}')
    autocmd Filetype tex let m = matchadd("DefinitionGroup",'\\end{definition}')
augroup end

highlight uDefinitionGroup ctermbg=100 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("uDefinitionGroup",'\\begin{udefinition}')
    autocmd Filetype tex let m = matchadd("uDefinitionGroup",'\\end{udefinition}')
augroup end

highlight TheoremGroup ctermbg=133 ctermfg=Black

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

highlight uTheoremGroup ctermbg=brown ctermfg=Black

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

highlight ProofGroup ctermbg=108 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("ProofGroup",'\\begin{proof}')
    autocmd Filetype tex let m = matchadd("ProofGroup",'\\end{proof}')
    autocmd Filetype tex let m = matchadd("ProofGroup",'\\begin{prf}')
    autocmd Filetype tex let m = matchadd("ProofGroup",'\\end{prf}')
augroup end

highlight EquationGroup ctermbg=106 ctermfg=Black

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

highlight ArrayMatrixEtcGroup ctermbg=209 ctermfg=Black

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

highlight ParenthesisGroup ctermbg=182 ctermfg=black

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
" Trailing White Space{{{
"-------------------------------------------------------------------

"autocmd BufWritePre *.* %s/\s\+$//e
inoremap <buffer> <localleader>fws <esc>mwV:FixWhitespace<cr>:echo<cr>`wa
nnoremap <buffer> <localleader>fws mwV:FixWhitespace<cr>:echo<cr>`w

"}}}

"}}}

" KeyBinding, Abbreviations and Stuff{{{
"-------------------------------------------------------------------

" Selecting KeyBindings{{{
"-------------------------------------------------------------------

" Select KeyBinding Scheme
function! KeyBindings(code)
    if a:code != 'tex' && a:code != 'np' && a:code != 'py' && a:code != 'unmaptex'
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
    autocmd BufNewFile,BufRead *.tex source $MYVIMRC
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

" Changing foldmarker for tex
nnoremap <buffer> <localleader>cfm :%s/}T}E}X/F}O}L}D/g \| :%s/{T{E{X/F{O{L{D/g<cr><cr>

augroup SourceTheseForAll
    autocmd!
    autocmd BufNewFile,BufRead * call Abbreviations("gen")
augroup end

augroup SourceEverythingForPython
    autocmd!
    autocmd BufNewFile,BufRead *.py source $MYVIMRC
    autocmd BufNewFile,BufRead *.tex call KeyBindings("py")
    autocmd BufNewFile,BufRead *.py setlocal spell spelllang=en_us
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

nnoremap <buffer> <localleader>ev :call SourceEverythingForTeX()<cr>:echo<cr>
inoremap <buffer> <localleader>ev <esc>:call SourceEverythingForTeX()<cr>:echo<cr>a

"Sourcing TexKeyBindings
nnoremap <buffer> <F4> :call KeyBindings("tex")<cr>:echo<cr>
inoremap <buffer> <F4> <esc>:call KeyBindings("tex")<cr>:echo<cr>a

"Sourcing NumbersPeacefully
nnoremap <buffer> <localleader>np :call KeyBindings("np")<cr>:echo<cr>
inoremap <buffer> <localleader>np <esc>:call KeyBindings("np")<cr>:echo<cr>a
inoremap <buffer> <localleader>nd <esc>:call KeyBindings("tex")<cr>:echo<cr>a

"Sourcing GeneralAbbreviations
nnoremap <buffer> <localleader>ag :call Abbreviations("gen")<cr>:echo<cr>

" Sourcing MathAbbreviations
nnoremap <buffer> <localleader>am :call Abbreviations("math")<cr>:echo<cr>

"Sourcing PythonKeyBindings
nnoremap <buffer> <localleader>py :call KeyBindings("py")<cr>:echo<cr>

"Sourcing UnmapTexKeyBindings
nnoremap <buffer> <localleader>ut :call KeyBindings("unmaptex")<cr>:echo<cr>
inoremap <buffer> <localleader>ut <esc>:call KeyBindings("unmaptex")<cr>:echo<cr>a

"}}}
" Opening .vimrc, KeyBindings and Stuff{{{
"-------------------------------------------------------------------

" Opening TeXKeyBindings "t=tex
nnoremap <buffer> <leader>th :new ~/.vim/KeyBindings/TeXKeyBindings.vim<cr>
nnoremap <buffer> <leader>tv :vnew ~/.vim/KeyBindings/TeXKeyBindings.vim<cr>
nnoremap <buffer> <leader>nph :new ~/.vim/KeyBindings/NumbersPeacefully.vim<cr>
nnoremap <buffer> <leader>npv :vnew ~/.vim/KeyBindings/NumbersPeacefully.vim<cr>
nnoremap <buffer> <leader>np :vnew ~/.vim/KeyBindings/NumbersPeacefully.vim<cr>

" Opening Ultisnips "u=ultisnips
nnoremap <buffer> <leader>uh :new ~/.vim/UltiSnips/tex.snippets<cr>
nnoremap <buffer> <leader>uv :vnew ~/.vim/UltiSnips/tex.snippets<cr>
nnoremap <buffer> <leader>u :vnew ~/.vim/UltiSnips/tex.snippets<cr>

" Opening Abbreviations
nnoremap <buffer> <leader>ah :new ~/.vim/Abbreviations<cr>
nnoremap <buffer> <leader>av :vnew ~/.vim/Abbreviations<cr>
nnoremap <buffer> <leader>a :vnew ~/.vim/Abbreviations<cr>
nnoremap <buffer> <leader>agh :new ~/.vim/Abbreviations/GeneralAbbreviations.vim<cr>
nnoremap <buffer> <leader>agv :vnew ~/.vim/Abbreviations/GeneralAbbreviations.vim<cr>
nnoremap <buffer> <leader>ag :vnew ~/.vim/Abbreviations/GeneralAbbreviations.vim<cr>
nnoremap <buffer> <leader>amh :new ~/.vim/Abbreviations/MathAbbreviations.vim<cr>
nnoremap <buffer> <leader>amv :vnew ~/.vim/Abbreviations/MathAbbreviations.vim<cr>
nnoremap <buffer> <leader>am :vnew ~/.vim/Abbreviations/MathAbbreviations.vim<cr>

" Opening PythonKeyBindings
nnoremap <buffer> <leader>pyh :new ~/.vim/KeyBindings/PythonKeyBindings.vim<cr>
nnoremap <buffer> <leader>pyv :vnew ~/.vim/KeyBindings/PythonKeyBindings.vim<cr>
nnoremap <buffer> <leader>py :vnew ~/.vim/KeyBindings/PythonKeyBindings.vim<cr>

" Opening UnmapTeXKeyBindings
nnoremap <buffer> <leader>uth :new ~/.vim/KeyBindings/UnmapTeXKeyBindings.vim<cr>
nnoremap <buffer> <leader>utv :vnew ~/.vim/KeyBindings/UnmapTeXKeyBindings.vim<cr>
nnoremap <buffer> <leader>ut :vnew ~/.vim/KeyBindings/UnmapTeXKeyBindings.vim<cr>

" Opening mathspell file
nnoremap <buffer> <leader>msh :new ~/.vim/spell/math.utf-8.add<cr>
nnoremap <buffer> <leader>msv :vnew ~/.vim/spell/math.utf-8.add<cr>
nnoremap <buffer> <leader>ms :vnew ~/.vim/spell/math.utf-8.add<cr>

" Opening .vimrc
nnoremap <buffer> <leader>vh :split $MYVIMRC<cr>
nnoremap <buffer> <leader>vv :vsplit $MYVIMRC<cr>
nnoremap <buffer> <leader>v :vsplit $MYVIMRC<cr>

"}}}

"}}}

" Writing in Normal/Insert Mode and quitting{{{
"-------------------------------------------------------------------

augroup IndentTexPyBuf
    autocmd!
    autocmd BufNewFile,BufRead *.tex,*.py :normal! mmgg=G`m
augroup end

" Doesn't seem to work when template is enabled
augroup WriteNewBuf
    autocmd!
    autocmd BufNewFile * silent write
augroup end

nnoremap <buffer> <localleader>w mm:w!<cr>`m
inoremap <buffer> ;w <esc>mm:w!<cr>`ma

augroup ContinuouslyWriteBuf
    autocmd!
    autocmd TextChanged,TextChangedI *.* silent write
augroup end

" autocmd BufRead,BufNewFile *.* let b:save_time=localtime()
" autocmd CursorHold,CursorHoldI,CursorMoved,CursorMovedI *.* call UpdateFile()
" autocmd BufWritePre *.* let b:save_time=localtime()

" function! UpdateFile()
"     if ((localtime() - b:save_time) >= 2)
"         update
"         call TeXHighlight()
"         let b:save_time=localtime()
"     endif
" endfunction

nnoremap <buffer> <localleader>q mqzM:q!<cr>
nnoremap <buffer> <localleader>wq mqzM:wq<cr>
nnoremap <buffer> 'q `qzvzz
vnoremap <buffer> 'q `qzvzz

"}}}

" Sourcing{{{
"-------------------------------------------------------------------

" Sourcing current file
nnoremap <buffer> <localleader>sf :w!<cr>:source %<cr>:noh<cr>:echo<cr>
nnoremap <buffer> <localleader>msf :call MakeView()<cr>:source %<cr>:noh<cr>:echo<cr>

" Sourcing visual selection/current line for testing code
vnoremap <buffer> <localleader>E y:execute @@<cr>
nnoremap <buffer> <localleader>E ^vg_y:execute @@<cr>

augroup Source$MYVIMRC
    autocmd!
    autocmd BufNewfile,BufRead * source $MYVIMRC
augroup end

" Sourcing .vimrc
nnoremap <buffer> <localleader>v :source $MYVIMRC<cr>

"}}}
