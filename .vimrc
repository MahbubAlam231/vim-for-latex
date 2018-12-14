
"-------------------------------------------------------------------
" Mahbub's .vimrc
"-------------------------------------------------------------------

" Preamble{{{
"-------------------------------------------------------------------

" Basic options{{{2
"-------------------------------------------------------------------

set nocompatible                      " be improved, required (must be before everything)
filetype off                          " required, disables filetype detection

set title                             " Terminal title reflects buffer name
set autoread                          " Auto reload changed files
set wildmenu                          " Tab autocomplete in command mode
set backspace=indent,eol,start        " http://vi.stackexchange.com/a/2163
set clipboard=unnamed                 " Clipboard support (OSX)
set nopaste                           " No pasting from other application in GUI
set lazyredraw                        " Reduce the redraw frequency
set ttyfast                           " Send more characters in fast terminals
set nobackup nowritebackup noswapfile " Turn off backup files
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

"2}}}
" Tabs, indentation and wrapping{{{2
"-------------------------------------------------------------------

set tabstop=4                         " Redefine tab as four spaces
set shiftwidth=4                      " To change the number of space characters inserted for indentation
set expandtab                         " Four spaces for tabs everywhere
set autoindent                        " Auto indent
set smartindent                       " Does the right thing (mostly) in programs
set showmatch                         " Briefly jump to the match if a bracket is inserted, 'matchtime' to be used to set the time to show the match

""Make the 71th column stand out
"highlight ColorColumn ctermbg=magenta
"call matchadd('ColorColumn', '\%72v', 100)

set wrap                              " Wrap longlines by default
set listchars=extends:→               " Show arrow if line continues rightwards
set listchars+=precedes:←             " Show arrow if line continues leftwards

" Wrap toggle
nnoremap <buffer> <localleader>wt :set wrap!<cr>:echo<cr>

"2}}}
" Ignored files/directories from autocomplete (and CtrlP){{{2
"-------------------------------------------------------------------

set wildignore+=*/tmp/*
set wildignore+=*.so
set wildignore+=*.zip,*.jpg,*.jpeg,*.png
set wildignore+=*/vendor/bundle/*
set wildignore+=*/node_modules/

"2}}}
" Searching{{{2
"-------------------------------------------------------------------

set ignorecase                        " Search queries intelligently set case
set smartcase                         " Override 'ignorecase' option if search pattern contains uppercase letters
set incsearch                         " Show search results as you type
set hlsearch                          " Highlight all search patterns

"2}}}
" Split{{{2
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

"2}}}
" Line number{{{

nnoremap <buffer> <localleader>nt :call NumberToggle()<cr>:echo<cr>

"}}}

"}}}

" Plugins and Plugin mappings{{{
"-------------------------------------------------------------------

" Plugins{{{2
"-------------------------------------------------------------------

" Set the runtime path to include fzf and Vundle, and initialize

set rtp+=~/.fzf

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()                   " Vundle_will_run_the_following_Plugins


" Plugin 'Valloric/YouCompleteMe'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
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
Plugin 'junegunn/fzf.vim'
Plugin 'justinmk/vim-sneak'
Plugin 'kana/vim-textobj-datetime'
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-indent'
Plugin 'kana/vim-textobj-line'
Plugin 'kana/vim-textobj-user'
Plugin 'mattn/webapi-vim'
Plugin 'scrooloose/nerdtree'
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


call vundle#end()                     " required
filetype plugin indent on             " required, enables filetype detection

"2}}}
" Plugin mappings{{{2
"-------------------------------------------------------------------

" Airline{{{3

let g:airline_theme = 'simple'

"3}}}
" Easymotion and Sneak{{{3

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

"3}}}
" Fugitive{{{

nnoremap <buffer> <localleader>gp :Gw<cr>:Gcommit -m "Add updated files"<cr><cr>:Gpush origin master<cr>

"}}}
" FuzzyFinder{{{

nnoremap <buffer> <localleader>fzf :FZF ~/
nnoremap <buffer> <localleader>fzd :FZF<cr>
nnoremap <buffer> <localleader>fzh :FZF ~<cr>

"}}}
" LaTeX-Box and Folding{{{3

" let g:LatexBox_latexmk_options="-shell-escape --enable-write18"
" let g:LatexBox_latexmk_preview_continuously = 1
" let g:LatexBox_Folding=1

" Folding
set foldlevelstart=0
nnoremap <buffer> <localleader>mn :setlocal foldmethod=manual<cr>
nnoremap <buffer> <localleader>mr :setlocal foldmethod=marker<cr>

" Saving folds set in manual fold method
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
    autocmd BufNewFile,BufRead *.* silent loadview
augroup end

" Opening/closing folding{{{4
nnoremap <buffer> zo mozozz
nnoremap <buffer> zc mczczz
nnoremap <buffer> zC mczCzz
nnoremap <buffer> zv mvzvzz
nnoremap <buffer> zr mrzRzz
nnoremap <buffer> zm mmzMzz
nnoremap <buffer> <localleader>z zMzvzz
nnoremap <buffer> <space> zazz
nnoremap <buffer> <localleader><space> zazt

vnoremap <buffer> zo mozozz
vnoremap <buffer> zc mczczz
vnoremap <buffer> zC mczCzz
vnoremap <buffer> zv mvzvzz
vnoremap <buffer> zr mrzRzz
vnoremap <buffer> zm mmzMzz
vnoremap <buffer> <localleader>z zMzvzz
vnoremap <buffer> <space> zazz
vnoremap <buffer> <localleader><space> zazt

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

"4}}}

"3}}}
" NERDtree{{{3

nnoremap <buffer> <localleader>nerd :NERDTree<cr>

"3}}}
"Templates and Selecting Template{{{3

" Change "normal" to "normal!" in "~/.vim/bundle/vim-templates/plugin/templates.vim" and add autocmd for writing BufNewFile event

let g:tmpl_author_name='Mahbub Alam'
let g:tmpl_license='Self'

" Selecting template{{{4
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

"4}}}

" Placeholders <++>
nnoremap <buffer> <c-j> zM/<++><cr>zv:noh<cr>cf>
inoremap <buffer> <c-j> <esc>zM/<++><cr>zv:noh<cr>cf>
nnoremap <buffer> <c-k> zM?<++><cr>zv:noh<cr>cf>
inoremap <buffer> <c-k> <esc>zM?<++><cr>zv:noh<cr>cf>

"3}}}
" Titlecase{{{3

let g:titlecase_map_keys = 0

" <Plug>Titlecase " Titlecase the region defined by a text object or motion
nmap <localleader>t <Plug>Titlecase

" <Plug>TitlecaseLine " Titlecase the entire line
nmap <localleader>tt <Plug>TitlecaseLine

" <Plug>Titlecase " Titlecase the visually selected region
vmap <localleader>t <Plug>Titlecase

"3}}}
" YouCompleteMe{{{3

" let g:loaded_youcompleteme = 0

"3}}}

"2}}}

"}}}

" Misc{{{
"-------------------------------------------------------------------

" Align text{{{2
"-------------------------------------------------------------------

nnoremap <buffer> <localleader>al :left<cr>
nnoremap <buffer> <localleader>ac :center<cr>
nnoremap <buffer> <localleader>ar :right<cr>

vnoremap <buffer> <localleader>al :left<cr>
vnoremap <buffer> <localleader>ac :center<cr>
vnoremap <buffer> <localleader>ar :right<cr>

"2}}}
" Braces and stuff{{{2
"-------------------------------------------------------------------

inoremap <buffer> ( ()<esc>i
inoremap <buffer> (( (
inoremap <buffer> { {}<esc>i
inoremap <buffer> p{ {
inoremap <buffer> P{ {
inoremap <buffer> [ []<esc>i
inoremap <buffer> [[ [

inoremap <buffer> \| \|\|<esc>i
inoremap <buffer> \|\| \|

inoremap <buffer> '' ''<esc>i
inoremap <buffer> "" ""<esc>i

"2}}}
" Calculator{{{2
"-------------------------------------------------------------------

inoremap <buffer> <C-B> <C-O>yiW<End>=<C-R>=<C-R>0<cr>

"2}}}
" Colorschemes{{{2
"-------------------------------------------------------------------

syntax on

colorscheme wombat256i

set background=dark

"2}}}
" Command line mappings{{{2
"-------------------------------------------------------------------

cnoremap <buffer> <c-h> <home>
cnoremap <buffer> <c-e> <end>

"2}}}
" Diagraphs{{{2
"-------------------------------------------------------------------

""Make CTRL-K list diagraphs before each digraph entry
"runtime bundle/betterdigraphs/plugin/betterdigraphs.vim
"inoremap <expr> <C-K> BDG_GetDigraph()

"2}}}
" Trailing White Space{{{2
"-------------------------------------------------------------------

"autocmd BufWritePre * %s/\s\+$//e
inoremap <buffer> <localleader>fws <Esc>mwV:FixWhitespace<cr>:echo<cr>`wa
nnoremap <buffer> <localleader>fws mwV:FixWhitespace<cr>:echo<cr>`w

"2}}}
" Leader Mappings{{{2
"-------------------------------------------------------------------

let mapleader="-" "Use leader expressly in normal mode
let maplocalleader=","

" To get <> and write <localleader> easily
inoremap <buffer> <> <><esc>i
inoremap <buffer> <localleader>bu <><esc>ibuffer<esc>la
inoremap <buffer> <L <><esc>ileader<esc>la
inoremap <buffer> <LL <><esc>ilocalleader<esc>la
inoremap <buffer> <localleader>bl <><esc>ibuffer<esc>la <><esc>ileader<esc>la
inoremap <buffer> <localleader>bll <><esc>ibuffer<esc>la <><esc>ilocalleader<esc>la

"2}}}
" Macros{{{2
"-------------------------------------------------------------------

nnoremap <buffer> Q @q

"2}}}
" Navigation{{{2
"-------------------------------------------------------------------

" Get off my lawn - helpful when learning Vim :){{{3
nnoremap <buffer> <Left>  :echoe "Use 'h'. Navigate smartly!"<cr>
nnoremap <buffer> <Down>  :echoe "Use 'j'. Navigate smartly!"<cr>
nnoremap <buffer> <Up>    :echoe "Use 'k'. Navigate smartly!"<cr>
nnoremap <buffer> <Right> :echoe "Use 'l'. Navigate smartly!"<cr>

"3}}}
" Moving on the screen{{{3
nnoremap <buffer> H mh^
nnoremap <buffer> J mjL
nnoremap <buffer> K mkH
nnoremap <buffer> L mlg_

vnoremap <buffer> H mh^
vnoremap <buffer> J mjL
vnoremap <buffer> K mkH
vnoremap <buffer> L mlg_

onoremap <silent> H :normal! mh^<cr>
onoremap <silent> J :normal! mjL<cr>dd
onoremap <silent> K :normal! mkH<cr>
onoremap <silent> L :normal! mlg_<cr>x

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

"3}}}
" Toggle VIM lines and visual lines navigation{{{3
let s:navigation_toggle = 0

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
        let s:navigation_toggle = 0
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
        let s:navigation_toggle = 1
    endif
endfunction

nnoremap <buffer> <localleader>nvt :call NavigationToggleInWrapMode()<cr>:echo<cr>

"3}}}

" Mark and then go to the beginning or end of the file
nnoremap <buffer> gg mggg
nnoremap <buffer> G mgG
nnoremap <buffer> 'g `gzvzz

vnoremap <buffer> gg mggg
vnoremap <buffer> G mgG
vnoremap <buffer> 'g `gzvzz

" " Easy splits navigation{{{3
" nnoremap <buffer> ;h <c-w>h
" nnoremap <buffer> ;j <c-w>j
" nnoremap <buffer> ;k <c-w>k
" nnoremap <buffer> ;l <c-w>l

"3}}}

" Revisit changelog
nnoremap <buffer> g; g;zvzz
nnoremap <buffer> g, g,zvzz

"2}}}
" Searching remaps{{{2

" Marking before searching
nnoremap <buffer> / ms/

nnoremap <buffer> 's `szvzz

" Search within visual selection
vnoremap <buffer> / <esc>ms/\%V

vnoremap <buffer> 's `szvzz

" Don't move on after */#
nnoremap <buffer> * ms*<c-o>zz
nnoremap <buffer> # ms#<c-o>zz

" Search the visually selected using */# (from Scrooloose){{{3
function! s:VSerSearch()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
    let @@ = temp
endfunction

vnoremap <buffer> * :<C-u>call <SID>VSerSearch()<cr>ms//<cr><c-o>zz
vnoremap <buffer> # :<C-u>call <SID>VSerSearch()<cr>ms??<cr><c-o>zz

"3}}}

" Highlighting next match
nnoremap <buffer> n nzvzz:call HLNext(0.05)<cr>:echo<cr>
nnoremap <buffer> N Nzvzz:call HLNext(0.05)<cr>:echo<cr>
nnoremap <buffer> <localleader>nm :call NextMatchToggle()<cr>:echo<cr>

" Vim very magic mode search
" nnoremap <buffer> / ms/\v
" vnoremap <buffer> / ms/\v

" Clearing highlighted matches
nnoremap <buffer> <esc> :noh<cr>:echo<cr>
nnoremap <buffer> <esc><esc> mm/qwqkqx\$<cr>:noh<cr>:echo<cr>`mzz

"2}}}
" Some other remaps{{{2
"-------------------------------------------------------------------

" Yank till the end of the line and clearing a line
nnoremap <buffer> Y y$
nnoremap <buffer> <leader>d 0D

" Creating newline
nnoremap <buffer> <localleader>o mmo<esc>`m
nnoremap <buffer> <localleader>O mmO<esc>`m

" " Uppercasing
" nnoremap <buffer> <c-u> mmgUiw`m
" inoremap <buffer> <c-u> <esc>mmgUiw`ma

"2}}}
" Spelling Check{{{2
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

"2}}}
" Substitute/change{{{2
"-------------------------------------------------------------------

nnoremap <buffer> <localleader>s :%s/
vnoremap <buffer> <localleader>s :s/
nnoremap <buffer> <localleader>S :%S/
vnoremap <buffer> <localleader>S :S/

"2}}}
" Pasting, visual selection and dragging{{{2
"-------------------------------------------------------------------

" Pasting
nnoremap <buffer> p pmp
nnoremap <buffer> P Pmp

" Visually reselect whatever is pasted
nnoremap <buffer> <localleader>V `pV`]
vnoremap <buffer> <localleader>V <esc>`pV`]

" Visually select current line excluding indentation and white space
nnoremap <buffer> vv ^vg_

" Dragging visual blocks
vmap <expr> <S-LEFT>  DVB_Drag('left')
vmap <expr> <S-RIGHT> DVB_Drag('right')
vmap <expr> <S-DOWN>  DVB_Drag('down')
vmap <expr> <S-UP>    DVB_Drag('up')
vmap <expr> D         DVB_Duplicate()

" Remove any introduced trailing whitespace after moving...
let g:DVB_TrimWS = 1

"2}}}

"}}}

" KeyBinding, Abbreviations and Stuff{{{
"-------------------------------------------------------------------

" Selecting KeyBindings{{{2
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
        set spellfile=~/.vim/spell/math.utf-8.add

    "to enter numbers peacefully
    elseif l:code == "np"
        source ~/.vim/KeyBindings/NumbersPeacefully.vim

    "python
    elseif l:code == "py"
        source ~/.vim/KeyBindings/PythonKeyBindings.vim
        set spellfile=~/.vim/spell/math.utf-8.add

    "UnmapTeXKeyBindings
    elseif l:code == "unmaptex"
        source ~/.vim/KeyBindings/UnmapTeXKeyBindings.vim

    "invalid KeyBindings
    elseif l:code != 'tex' && l:code != 'np' && l:code != 'py' && l:code != 'unmaptex'
        echom " <-- Not a valid KeyBinding"
    endif

endfunction

"2}}}
" Selecting Abbreviations{{{2
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

"2}}}
" Sourcing KeyBindings, Abbreviations and Stuff{{{2
"-------------------------------------------------------------------

augroup SourceEverythingForPython
    autocmd!
    autocmd BufNewFile,BufRead *.py :source $MYVIMRC
    autocmd BufNewFile,BufRead *.py :call KeyBindings("py")
    autocmd BufNewFile,BufRead *.tex :setlocal spell spelllang=en_us
augroup end

augroup SourceEverythingForTeX
    autocmd!
    autocmd BufNewFile,BufRead *.tex :source $MYVIMRC
    autocmd BufNewFile,BufRead *.tex :call Abbreviations("gen")
    autocmd BufNewFile,BufRead *.tex :call Abbreviations("math")
    autocmd BufNewFile,BufRead *.tex :call KeyBindings("tex")
    autocmd BufNewFile,BufRead *.tex :call MatrixGroupToggle()
    autocmd BufNewFile,BufRead *.tex :setlocal spell spelllang=en_us
    autocmd BufNewFile,BufRead *.tex :setlocal foldmethod=marker
    autocmd BufNewFile,BufRead *.tex :set foldmarker={T{E{X,}T}E}X
augroup end

" TeXHighlight
function! TeXHighlight()
    if (&ft=='tex')
        source ~/.vim/KeyBindings/TeXHighlight.vim
    endif
endfunction

"Sourcing everything for tex
function! SourceEverythingForTeX()
    call Abbreviations("gen")
    call Abbreviations("math")
    call KeyBindings("tex")
    setlocal foldmethod=marker
endfunction

nnoremap <buffer> <localleader>ev :source $MYVIMRC<cr>:call SourceEverythingForTeX()<cr>:echo<cr>
inoremap <buffer> <localleader>ev <esc>:source $MYVIMRC<cr>:call SourceEverythingForTeX()<cr>:echo<cr>a

"Sourcing TexKeyBindings
nnoremap <buffer> <F4> :call KeyBindings("tex")<cr>:echo<cr>
inoremap <buffer> <F4> <Esc>:call KeyBindings("tex")<cr>:echo<cr>a

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
inoremap <buffer> <localleader>ut <Esc>:call KeyBindings("unmaptex")<cr>:echo<cr>a

"2}}}
" Opening .vimrc, KeyBindings and Stuff{{{2
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
nnoremap <buffer> <leadEr>msh :new ~/.vim/spell/math.utf-8.add<cr>
nnoremap <buffer> <leader>msv :vnew ~/.vim/spell/math.utf-8.add<cr>
nnoremap <buffer> <leader>ms :vnew ~/.vim/spell/math.utf-8.add<cr>

" Opening .vimrc
nnoremap <buffer> <leader>vh :hsplit $MYVIMRC<cr>
nnoremap <buffer> <leader>vv :vsplit $MYVIMRC<cr>
nnoremap <buffer> <leader>v :vsplit $MYVIMRC<cr>

"2}}}

"}}}

" Writing in Normal/Insert Mode and quitting{{{
"-------------------------------------------------------------------

augroup IndentTexPyBuf
    autocmd!
    autocmd BufNewFile,BufRead,BufWritePre *.tex,*.py :normal! mmgg=G`m
augroup end

" Doesn't seem to work when template is enabled
augroup WriteNewBuf
    autocmd!
    autocmd BufNewFile *.* :write
augroup end

nnoremap <buffer> <localleader>w mm:w!<cr>:redraw!<cr>`mzz
inoremap <buffer> ;w <esc>mm:w!<cr>:redraw!<cr>`mzza

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

nnoremap <buffer> <localleader>q mqzMgg:q!<cr>
nnoremap <buffer> <localleader>wq mqzMgg:wq<cr>
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
    autocmd BufNewFile,BufRead *.* :source $MYVIMRC
    autocmd BufNewFile,BufRead *.* :setlocal foldmethod=marker
augroup end

" Sourcing .vimrc
nnoremap <buffer> <localleader>v :source $MYVIMRC<cr>

"}}}

