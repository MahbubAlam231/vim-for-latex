
"-------------------------------------------------------------------
" Mahbub's .vimrc
"-------------------------------------------------------------------

" Preamble{{{
"-------------------------------------------------------------------

" Basic options{{{2
"-------------------------------------------------------------------

set nocompatible                      " be improved, required
filetype off                          " required

set autoread                          " Auto reload changed files
set autoindent                        " Auto Indent
set wildmenu                          " Tab autocomplete in command mode
set backspace=indent,eol,start        " http://vi.stackexchange.com/a/2163
set clipboard=unnamed                 " Clipboard support (OSX)
set laststatus=2                      " Show status line on startup
set nopaste
set lazyredraw                        " Reduce the redraw frequency
set ttyfast                           " Send more characters in fast terminals
set nobackup nowritebackup noswapfile " Turn off backup files
set noerrorbells novisualbell         " Turn off visual and audible bells
" set mouse=a                           " Mouse could work on vim too
set history=1000
set timeoutlen=1000 ttimeoutlen=0     " Remove timeout when hitting escape
set showcmd                           " Show size of visual selection
set statusline=%f\ %l,%c              " Showing number of lines in visual selection
set complete=.,w,b,u,t,i,kspell       " complete using Ctrl-p
set cursorline

"2}}}
" Tabs, spaces, wrapping, textwidth{{{2
"-------------------------------------------------------------------

set tabstop=4
set shiftwidth=4
set wrap
set textwidth=1000
set expandtab                         " Two spaces for tabs everywhere
set listchars=extends:→               " Show arrow if line continues rightwards
set listchars+=precedes:←             " Show arrow if line continues leftwards

""Make the 71th column stand out
"highlight ColorColumn ctermbg=magenta
"call matchadd('ColorColumn', '\%72v', 100)

nnoremap <buffer> <localleader>nw :set nowrap<cr>

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
set smartcase
set incsearch                         " Show search results as you type
set hlsearch
set showmatch

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
nnoremap <buffer> <c-h> 5<c-w>>
nnoremap <buffer> <c-l> 5<c-w><

"2}}}
" Set relative number{{{2
"-------------------------------------------------------------------

set number relativenumber

augroup NumberToggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * :set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * :set norelativenumber
augroup end

"EscapeRelativeNumber
nnoremap <buffer> <localleader>n :set norelativenumber<cr>

"2}}}

"}}}

" Plugins and Plugin mappings{{{
"-------------------------------------------------------------------

" Plugins{{{2
"-------------------------------------------------------------------

" Set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()           "Vundle_will_run_the_following_Plugins


" Plugin 'coot/atp_vim'
" Plugin 'ervandew/supertab'
" Plugin 'justinmk/vim-sneak'
" Plugin 'michaeljsmith/vim-indent-object'
" Plugin 'valloric/youcompleteme'
" Plugin 'vim-scripts/FuzzyFinder'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'SirVer/ultisnips'
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'christoomey/vim-sort-motion'
Plugin 'christoomey/vim-system-copy'
Plugin 'christoomey/vim-titlecase'
Plugin 'danro/rename.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'flazz/vim-colorschemes'
Plugin 'kana/vim-textobj-datetime'
Plugin 'kana/vim-textobj-entire'
Plugin 'kana/vim-textobj-indent'
Plugin 'kana/vim-textobj-line'
Plugin 'kana/vim-textobj-user' 
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'thameera/vimv'
Plugin 'tibabit/vim-templates'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/ReplaceWithRegister'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'w0ng/vim-hybrid'


call vundle#end()             "required
filetype plugin indent on     "required

"2}}}
" Plugin mappings{{{2
"-------------------------------------------------------------------

" CtrlP Settings{{{3

let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

"3}}}
" Easymotion{{{3

nmap ;w <Plug>(easymotion-bd-w)
vmap ;w <Plug>(easymotion-bd-w)

nmap ;e <Plug>(easymotion-bd-e)
vmap ;e <Plug>(easymotion-bd-e)

nmap ;f <Plug>(easymotion-bd-f)
vmap ;f <Plug>(easymotion-bd-f)

nmap ;s <Plug>(easymotion-s2)
vmap ;s <Plug>(easymotion-s2)

nmap ;t <Plug>(easymotion-t2)
vmap ;t <Plug>(easymotion-t2)

"3}}}
" LaTeX-Box and Folding{{{3

" let g:LatexBox_latexmk_options="-shell-escape --enable-write18"
" let g:LatexBox_Folding=1
" let g:LatexBox_fold_envs=1
" let g:LatexBox_latexmk_preview_continuously = 1

" Folding
"-------------------------------------------------------------------

set foldlevelstart=0
setlocal foldmethod=manual
nnoremap <buffer> <localleader>f :setlocal foldmethod=marker<cr>

" Saving and reloading folds set in manual fold method (use it)
nnoremap <buffer> <localleader>mk mfzMgg:w!<cr>:mkview<cr>`fzvzz
nnoremap <buffer> 'f `fzz

augroup AutoLoadview
    autocmd!
    autocmd BufNewFile,BufRead * silent loadview
augroup end

" Opening/closing folding
nnoremap <buffer> zv zvzz
nnoremap <buffer> zr zrzz
nnoremap <buffer> zm zmzz
nnoremap <buffer> zM zMzz
nnoremap <buffer> <localleader>z zMzvzz
nnoremap <buffer> <space> zazz
nnoremap <buffer> <localleader><space> zazt

"3}}}
" NERDtree{{{3

nnoremap <buffer> <localleader>nerd :NERDTree<cr>

"3}}}
"Templates and Selecting Template{{{3

" Change "normal" to "normal!" in "~/.vim/bundle/vim-templates/plugin/templates.vim"

let g:tmpl_author_name='Mahbub Alam'
let g:tmpl_license='Self'

" Selecting template
"-------------------------------------------------------------------

" Select Template Type
function! Template()
    let a:code=input("Which Template: ")

    "art
    if(a:code=="art")
    :TemplateInit article
    endif

    "ams
    if(a:code=="ams")
    :TemplateInit amsart
    endif

    "rep
    if(a:code=="rep")
    :TemplateInit report
    endif

endfunction

nnoremap <buffer> <localleader>tem :call Template()<cr>

nnoremap <buffer> <localleader>art :call Template()<cr>art<cr>
nnoremap <buffer> <localleader>ams :call Template()<cr>ams<cr>
nnoremap <buffer> <localleader>rep :call Template()<cr>rep<cr>

" Placeholders <++>, Ctrl-j jumps to the next match
"-------------------------------------------------------------------

nnoremap <buffer> <C-j> /<++><cr>cf>
inoremap <buffer> <C-j> <esc>/<++><cr>cf>

"3}}}
" Titlecase and Uppercase first letter of a line{{{3

let g:titlecase_map_keys = 0

nmap <localleader>t <Plug>Titlecase
" <Plug>Titlecase " Titlecase the region defined by a text object or motion

nmap <localleader>tt <Plug>TitlecaseLine
" <Plug>TitlecaseLine " Titlecase the entire line

vmap <localleader>t <Plug>Titlecase
" <Plug>Titlecase " Titlecase the visually selected region

"3}}}
" YouCompleteMe{{{3

let g:loaded_youcompleteme = 1

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
" Calculator{{{2
"-------------------------------------------------------------------

inoremap <buffer> <C-B> <C-O>yiW<End>=<C-R>=<C-R>0<cr>

"2}}}
" Colorschemes{{{2
"-------------------------------------------------------------------

syntax on

colorscheme wombat256i

set background=dark

" Showcase comments in italics
highlight Comment cterm=italic gui=italic

"2}}}
" Diagraphs{{{2
"-------------------------------------------------------------------

""Make CTRL-K list diagraphs before each digraph entry
"runtime bundle/betterdigraphs/plugin/betterdigraphs.vim
"inoremap <expr> <C-K> BDG_GetDigraph()

"2}}}
" Trailing White Space{{{2
"-------------------------------------------------------------------

" Highlighting Bad White Space
highlight BadWhitespace ctermbg=Red ctermfg=Black
match BadWhitespace /\s\+$/

" Delete Trailing White Space
"autocmd BufWritePre * %s/\s\+$//e
inoremap <buffer> <localleader>dtw <Esc>mm0g_ld$`ma
nnoremap <buffer> <localleader>dtw mm0g_ld$`m

"2}}}
" Leader Mappings{{{2
"-------------------------------------------------------------------

let mapleader="-" "Use leader expressly in normal mode
let maplocalleader=","

" To get <> and write <localleader> easily
inoremap <buffer> << <><esc>i
inoremap <buffer> <localleader>bu <><esc>ibuffer<esc>la 
inoremap <buffer> <L <><esc>ileader<esc>la
inoremap <buffer> <LL <><esc>ilocalleader<esc>la
inoremap <buffer> <localleader>bl <><esc>ibuffer<esc>la <><esc>ileader<esc>la
inoremap <buffer> <localleader>bll <><esc>ibuffer<esc>la <><esc>ilocalleader<esc>la

"2}}}
" Navigation{{{2
"-------------------------------------------------------------------

" " Get off my lawn - helpful when learning Vim :)
" nnoremap <buffer> <Left> :echoe "Use h"<cr>
" nnoremap <buffer> <Right> :echoe "Use l"<cr>
" nnoremap <buffer> <Up> :echoe "Use k"<cr>
" nnoremap <buffer> <Down> :echoe "Use j"<cr>

" Moving on the screen
nnoremap <buffer> H mh^
nnoremap <buffer> J mjL
nnoremap <buffer> K mkH
nnoremap <buffer> L mlg_

vnoremap <buffer> H mh^
vnoremap <buffer> J mjL
vnoremap <buffer> K mkH
vnoremap <buffer> L mlg_

nnoremap <buffer> 'h `h
nnoremap <buffer> 'j `j
nnoremap <buffer> 'k `k
nnoremap <buffer> 'l `l

vnoremap <buffer> 'h `h
vnoremap <buffer> 'j `j
vnoremap <buffer> 'k `k
vnoremap <buffer> 'l `l

nnoremap <buffer> 'm `mzz

inoremap <buffer> <leader>z <esc>zMzvzza
inoremap <buffer> <leader>zz <esc>zza
inoremap <buffer> <leader>zt <esc>zta
inoremap <buffer> <leader>zb <esc>zba

" Go to matching character
nnoremap <buffer> <localleader>5 %
vnoremap <buffer> <localleader>5 %

" Mark and then go to the beginning or end of the file
nnoremap <buffer> gg mggg
nnoremap <buffer> G mgG
nnoremap <buffer> 'g `gzz

" Revisit changelog
nnoremap <buffer> g; g;zz
nnoremap <buffer> g, g,zz

"2}}}
" Searching remaps{{{2

" Marking before searching
nnoremap <buffer> / ms/

" Search within visual selection
vnoremap <buffer> / <esc>ms/\%V

nnoremap <buffer> 's `s
vnoremap <buffer> 's `s

" Don't move on after */#
nnoremap <buffer> * *<c-o>
nnoremap <buffer> # #<c-o>

" Keep search matches in the middle of the screen
nnoremap <buffer> n nzz
nnoremap <buffer> N Nzz

" Search the visually selected using */# (from Scrooloose)
function! s:VSerSearch()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
    let @@ = temp
endfunction

vnoremap <buffer> * :<C-u>call <SID>VSerSearch()<cr>//<cr><c-o>
vnoremap <buffer> # :<C-u>call <SID>VSerSearch()<cr>??<cr><c-o>

" Clearing highlighted matches
nnoremap <buffer> <cr> :noh<cr>
nnoremap <buffer> <cr><cr> mm/qwqkqx<cr>:noh<cr>:noh<cr>`mzz

" nnoremap <buffer> n nzz:call HLNext(0.3)<cr>
" nnoremap <buffer> N Nzz:call HLNext(0.3)<cr>

" function! HLNext(blinktime)
"     highlight BlackOnRed ctermfg=black ctermbg=red
"     let [bufnum, lnum, col, off] = getpos('.')
"     let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
"     let target_pat = '\c\%#\%('.@/.'\)'
"     let ring = matchadd('BlackOnRed', target_pat, 101)
"     redraw
"     exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
"     call matchdelete(ring)
"     redraw
" endfunction

" Vim very magic mode search
" nnoremap <buffer> / /\v
" vnoremap <buffer> / /\v

"2}}}
" Some other remaps{{{2
"-------------------------------------------------------------------

" To go back a word in insert mode
inoremap <buffer> <localleader>b <esc>bb

" Yank till the end of the line and clearing a line
nnoremap <buffer> Y y$
nnoremap <buffer> <leader>d 0D

" Creating newline
nnoremap <buffer> <localleader>o mmo<esc>`m
nnoremap <buffer> <localleader>O mmO<esc>`m

"2}}}
" Some Python Stuff{{{2

augroup SomePythonStuff
    autocmd!
    autocmd FileType py inoremap <buffer> ' ''<esc>i
    autocmd FileType py inoremap <buffer> " ""<esc>i
augroup end

"2}}}
" Some TeX Stuff{{{2

augroup SomeTexStuff
    autocmd!
    autocmd FileType tex inoremap <buffer> /, \,
    autocmd FileType tex nnoremap <buffer> <localleader>toc :LatexTOC<CR>
    autocmd FileType tex inoremap <buffer> '' `'<esc>i
    autocmd FileType tex inoremap <buffer> "" ``"<esc>i
augroup end

"2}}}
" Spelling Check{{{2
"-------------------------------------------------------------------

syntax on

augroup Spelling
    autocmd!
    autocmd FileType tex :setlocal spell spelllang=en_us
    autocmd FileType txt :setlocal spell spelllang=en_us
augroup end

" FixLastSpellingError
function! FixLastSpellingError()
    :normal! mm[s1z=`m
endfunction

nnoremap <buffer> <localleader>sp :call FixLastSpellingError()<cr>
inoremap <buffer> <localleader>sp <esc>:call FixLastSpellingError()<cr>a

" Adding new words to dictionary
nnoremap <buffer> < [szz
nnoremap <buffer> > ]szz
nnoremap <buffer> zgg zg]szz

"2}}}
" Substitute/change{{{2
"-------------------------------------------------------------------

nnoremap <buffer> <localleader>c :%s/
vnoremap <buffer> <localleader>c :s/

"2}}}
" Visual selection and dragging{{{2
"-------------------------------------------------------------------

" Visually select current line excluding indentation and white space
nnoremap <buffer> vv ^vg_

" Drag a visual block
runtime bundle/dragvisuals/plugin/dragvisuals.vim

vmap <expr> <S-LEFT>   DVB_Drag('left')
vmap <expr> <S-RIGHT>  DVB_Drag('right')
vmap <expr> <S-DOWN>   DVB_Drag('down')
vmap <expr> <S-UP>     DVB_Drag('up')
vmap <expr> D        DVB_Duplicate()
                                                            
" Remove any introduced trailing whitespace after moving... 
let g:DVB_TrimWS = 1                                        

""Swap v and CTRL-V, because Block mode is more useful that Visual mode
"nnoremap <buffer>    v   <C-V>
"nnoremap <buffer> <C-V>     v

"vnoremap <buffer>    v   <C-V>
"vnoremap <buffer> <C-V>     v

" " Visually reselect whatever is pasted
" nnoremap <buffer> <localleader>V V`]

"2}}}

"}}}

" KeyBinding, Abbreviations and Stuff{{{
"-------------------------------------------------------------------

" Selecting KeyBindings{{{2
"-------------------------------------------------------------------

" Select KeyBinding Scheme
function! KeyBindings()
	let a:code=input("Enter File Extension: ")

	"tex
	if(a:code=="tex")
		source ~/.vim/KeyBindings/TeXKeyBindings.vim
		set spellfile=~/.vim/spell/math.utf-8.add
	endif

	"to enter numbers peacefully
	if(a:code=="np")
		source ~/.vim/KeyBindings/NumbersPeacefully.vim
	endif

	"python
	if(a:code=="py")
		source ~/.vim/KeyBindings/PythonKeyBindings.vim
		set spellfile=~/.vim/spell/math.utf-8.add
	endif

endfunction

"2}}}
" Selecting Abbreviations{{{2
"-------------------------------------------------------------------

" Select Abbreviation Type
function! Abbreviations()
    let a:code=input("Which Abbreviation: ")

    "gen
    if(a:code=="gen")
    source ~/.vim/Abbreviations/GeneralAbbreviations.vim
        set spellfile=~/.vim/spell/math.utf-8.add
    endif

    "math
    if(a:code=="math")
    source ~/.vim/Abbreviations/MathAbbreviations.vim
        set spellfile=~/.vim/spell/math.utf-8.add
    endif

endfunction

"2}}}
" Sourcing KeyBindings, Abbreviations and Stuff{{{2
"-------------------------------------------------------------------

augroup AutoSourceAllForPythonBuf
    autocmd!
    autocmd BufNewFile,BufRead *.py :source $MYVIMRC
    autocmd BufNewFile,BufRead *.py :execute "normal! :call KeyBindings()\<cr>py\<cr>"
augroup end

"Sourcing everything for tex
nnoremap <buffer>  <localleader>e :source $MYVIMRC<cr>:call Abbreviations()<cr>gen<cr>:call Abbreviations()<cr>math<cr>:call KeyBindings()<cr>tex<cr>

"Sourcing TexKeyBindings
nnoremap <buffer> <F4> :call KeyBindings()<cr>tex<cr>
inoremap <buffer> <F4> <Esc>:call KeyBindings()<cr>tex<cr>a

"Sourcing NumbersPeacefully
nnoremap <buffer> <localleader>np :call KeyBindings()<cr>np<cr>
inoremap <buffer> <localleader>np <esc>:call KeyBindings()<cr>np<cr>a
inoremap <buffer> <localleader>nd <esc>:call KeyBindings()<cr>tex<cr>a

"Sourcing GeneralAbbreviations
nnoremap <buffer> <localleader>g :call Abbreviations()<cr>gen<cr>

" Sourcing MathAbbreviations
nnoremap <buffer> <localleader>m :call Abbreviations()<cr>math<cr>

"Sourcing PythonKeyBindings
nnoremap <buffer> <localleader>py :call KeyBindings()<cr>py<cr>

"2}}}
" Opening .vimrc, KeyBindings and Stuff{{{2
"-------------------------------------------------------------------

" Opening TeXKeyBindings "t=tex
nnoremap <buffer> <leader>t :vnew ~/.vim/KeyBindings/TeXKeyBindings.vim<cr>
nnoremap <buffer> <leader>np :vnew ~/.vim/KeyBindings/NumbersPeacefully.vim<cr>

" Opening Ultisnips "u=ultisnips
nnoremap <buffer> <leader>u :vnew ~/.vim/UltiSnips/tex.snippets<cr>

" Opening Abbreviations
nnoremap <buffer> <leader>a :vnew ~/.vim/Abbreviations<cr>
nnoremap <buffer> <leader>g :vnew ~/.vim/Abbreviations/GeneralAbbreviations.vim<cr>
nnoremap <buffer> <leader>m :vnew ~/.vim/Abbreviations/MathAbbreviations.vim<cr>

" Opening PythonKeyBindings
nnoremap <buffer> <leader>py :vnew ~/.vim/KeyBindings/PythonKeyBindings.vim<cr>

" Opening .vimrc
nnoremap <buffer> <leader>v :vsplit $MYVIMRC<cr>

"2}}}

"}}}

" Writing in Normal/Insert Mode and quitting{{{
"-------------------------------------------------------------------

augroup TexBufAutoIndent
    autocmd!
    autocmd BufWritePre,BufNewFile,BufRead *.tex :normal! mmgg=G`m
augroup end

augroup AutoWriteNewBuf
    autocmd!
    autocmd BufNewFile * :write
augroup end

nnoremap <buffer> <localleader>w :w!<cr>:redraw!<cr>
inoremap <buffer> ;w <esc>:w!<cr>:redraw!<cr>a

augroup ContinuouslyAutoWriteBuf
    autocmd!
    autocmd TextChanged,TextChangedI * silent write
augroup end

nnoremap <buffer> <localleader>q mqzMgg:wq<cr>
nnoremap <buffer> 'q `q

"}}}

" Sourcing{{{
"-------------------------------------------------------------------

" Sourcing current file
nnoremap <buffer> <localleader>sf mfzMgg:w!<cr>:mkview<cr>`fzvzz:source %<cr>

" Sourcing visual selection/current line for testing code
vnoremap <buffer> <localleader>S y:execute @@<cr>
nnoremap <buffer> <localleader>S ^vg_y:execute @@<cr>

augroup AutoSourceMYVIMRC
    autocmd!
    autocmd BufNewFile,BufRead * :source $MYVIMRC
augroup end

" Sourcing .vimrc
nnoremap <buffer>  <localleader>v :source $MYVIMRC<cr>

"}}}

