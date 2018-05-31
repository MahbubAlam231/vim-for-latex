
"-------------------------------------------------------------------
" Mahbub's.vimrc
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

nnoremap <localleader>nw :set nowrap<cr>

"2}}}
" Ignored files/directories from autocomplete (and CtrlP){{{2
"-------------------------------------------------------------------

set wildignore+=*/tmp/*
set wildignore+=*.so
set wildignore+=*.zip,*.jpg,*.jpeg,*.png
set wildignore+=*/vendor/bundle/*
set wildignore+=*/node_modules/

"2}}}
" Searching and movement{{{2
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

nnoremap <localleader>hs :split<cr>
nnoremap <localleader>vs :vsplit<cr>

" Resize splits when the window is resized
au VimResized * exe "normal! \<C-w>="

"2}}}
" Set relative number{{{2
"-------------------------------------------------------------------

set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup end

"EscapeRelativeNumber
nnoremap <localleader>n :set norelativenumber<cr>

"2}}}

"}}}

" Plugins{{{
"-------------------------------------------------------------------

" Set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()           "Vundle_will_run_the_following_Plugins



" Plugin 'coot/atp_vim'
" Plugin 'easymotion/vim-easymotion'
" Plugin 'ervandew/supertab'
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
Plugin 'flazz/vim-colorschemes'
Plugin 'justinmk/vim-sneak'
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

"}}}

" Plugin mappings{{{1
"-------------------------------------------------------------------

" YouCompleteMe{{{2
"-------------------------------------------------------------------
" Plugin 'valloric/youcompleteme'
"-------------------------------------------------------------------

let g:loaded_youcompleteme = 1

"2}}}
" LaTeX-Box and Folding{{{2
"-------------------------------------------------------------------
" Plugin 'LaTeX-Box-Team/LaTeX-Box'
"-------------------------------------------------------------------

let g:LatexBox_latexmk_options="-shell-escape --enable-write18"
" let g:LatexBox_Folding=1
" let g:LatexBox_fold_envs=1
let g:LatexBox_latexmk_preview_continuously=1

"-------------------------------------------------------------------
" Folding
"-------------------------------------------------------------------

set foldlevelstart=0
setlocal foldmethod=manual
nnoremap <localleader>f :setlocal foldmethod=marker<cr>

" Saving and reloading folds set in manual fold method (use it)
nnoremap <localleader>mk mfzMzMgg:w!<cr>:mkview<cr>`fzzzozozozz
" nnoremap <localleader>lo mf:loadview<cr>zM`f
nnoremap 'f `fzz

" Auto-fold-save (not actually useful) and auto-saved-fold-reload
" au BufWinLeave * mkview
au BufWinEnter * silent loadview

" Opening/closing folding
nnoremap zo zozt
" nnoremap zr zrzt
nnoremap zc zczz
nnoremap zr zrzz
nnoremap zm zmzz
nnoremap zM zMzz
nnoremap <space> zazz
nnoremap <localleader><space> zazt

"2}}}
" CtrlP Settings{{{2

let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

"2}}}
" NERDtree{{{2
"-------------------------------------------------------------------
" Plugin 'scrooloose/nerdtree'
"-------------------------------------------------------------------

nnoremap <localleader>nerd :NERDTree<cr>

"2}}}
" Text Object Entire{{{
"-------------------------------------------------------------------
" Text Object Entire
"-------------------------------------------------------------------

" call textobj#user#map('entire',{
"             \   '-': {
"             \     'select-a': 'ae',
"             \     'select-i': 'ie',
"             \   }
"             \ })

"}}}
" Titlecase and Uppercase first letter of a line{{{2
"-------------------------------------------------------------------
" Plugin 'christoomey/vim-titlecase'
"-------------------------------------------------------------------

let g:titlecase_map_keys = 0

nmap <localleader>t <Plug>Titlecase
" <Plug>Titlecase " Titlecase the region defined by a text object or motion

nmap <localleader>tt <Plug>TitlecaseLine
" <Plug>TitlecaseLine " Titlecase the entire line

vmap <localleader>t <Plug>Titlecase

"-------------------------------------------------------------------
" Uppercase first letter of a line
"-------------------------------------------------------------------

inoremap <localleader><localleader>c <Esc>mm^vU`ma
nnoremap <localleader><localleader>c mm^vU`m

"-------------------------------------------------------------------
" Change case of a whole word
"-------------------------------------------------------------------

nnoremap <C-T> gUiw
inoremap <C-T> <esc>gUliwea

"2}}}
"Templates and Selecting Template{{{2
"-------------------------------------------------------------------
" Plugin 'tibabit/vim-templates'
"-------------------------------------------------------------------

let g:tmpl_author_name='Mahbub Alam'

"-------------------------------------------------------------------
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

nnoremap <localleader>tem :call Template()<cr>

nnoremap <localleader>art :call Template()<cr>art<cr>
nnoremap <localleader>ams :call Template()<cr>ams<cr>
nnoremap <localleader>rep :call Template()<cr>rep<cr>

"2}}}
" Placeholders <++>, Ctrl-j jumps to the next match, careful about <+\infty{{{2
"-------------------------------------------------------------------

nnoremap <C-j> /<+<cr>cf>
inoremap <C-j> <esc>/<+<cr>cf>

"2}}}

"1}}}

" Basic navigation, searching remaps{{{
"-------------------------------------------------------------------

" " Get off my lawn - helpful when learning Vim :)
" nnoremap <Left> :echoe "Use h"<cr>
" nnoremap <Right> :echoe "Use l"<cr>
" nnoremap <Up> :echoe "Use k"<cr>
" nnoremap <Down> :echoe "Use j"<cr>

" Moving on the screen
nnoremap H ^
nnoremap J L
nnoremap K H
nnoremap L g_

vnoremap H ^
vnoremap J L
vnoremap K H
vnoremap L g_

inoremap <localleader>zz <esc>zza
inoremap <localleader>zt <esc>zta
inoremap <localleader>zb <esc>zba

vnoremap zz <esc>zza
vnoremap zt <esc>zta
vnoremap zb <esc>zba

" Find matching character
nnoremap <localleader>5 %
vnoremap <localleader>5 %

" Mark and then go to the beginning or end of the file
nnoremap gg mggg
nnoremap G mgG
nnoremap 'm `mzz
nnoremap 'g `gzz

" Creating newline
nnoremap <localleader>o mmo<esc>`m
nnoremap <localleader>O mmO<esc>`m

" Don't move on after */#
nnoremap * *<c-o>
nnoremap # #<c-o>

" Keep search matches in the middle of the screen
nnoremap n nzz
nnoremap N Nzz

" Search within visual selection
vnoremap / <esc>/\%V

" Search the visually selected using */# (from Scrooloose)
function! s:VSerSearch()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
    let @@ = temp
endfunction

vnoremap * :<C-u>call <SID>VSerSearch()<cr>//<cr><c-o>
vnoremap # :<C-u>call <SID>VSerSearch()<cr>??<cr><c-o>

" Clearing highlighted matches
nnoremap <cr> :noh<cr>
nnoremap <cr><cr> mm/qwqkqx<cr>:noh<cr>:noh<cr>`mzz

" nnoremap n nzz:call HLNext(1)<cr>
" nnoremap N Nzz:call HLNext(1)<cr>

" function! HLNext(blinktime)
"         let [bufnum, lnum, col, off] = getpos('.')
"         let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
"         let target_pat = '\c\%#\%('.@/.'\)'
"         let ring = matchadd('WhiteOnRed', target_pat, 101)
"         redraw
"         exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
"         call matchdelete(ring)
"         redraw
" endfunction

" Vim very magic mode search
" nnoremap / /\v
" vnoremap / /\v

"}}}

" Misc{{{
"-------------------------------------------------------------------

" Align text{{{2
"-------------------------------------------------------------------

nnoremap <localleader>al :left<cr>
nnoremap <localleader>ac :center<cr>
nnoremap <localleader>ar :right<cr>

vnoremap <localleader>al :left<cr>
vnoremap <localleader>ac :center<cr>
vnoremap <localleader>ar :right<cr>

"2}}}
" Calculator{{{2
"-------------------------------------------------------------------

inoremap <C-B> <C-O>yiW<End>=<C-R>=<C-R>0<cr>

"2}}}
" Colorschemes{{{
"-------------------------------------------------------------------

syntax on

" colorscheme apprentice
" colorscheme desert
" colorscheme elflord
" colorscheme evening
" colorscheme hybrid
" colorscheme molokai
" colorscheme molokai_dark
" colorscheme nightsky
" colorscheme solarized
" colorscheme textmate16
" colorscheme woju
" colorscheme wombat
" colorscheme wombat256
" colorscheme wombat256mod
colorscheme wombat256i

set background=dark

" Showcase comments in italics
highlight Comment cterm=italic gui=italic

"}}}
" Diagraphs{{{
"-------------------------------------------------------------------

""Make CTRL-K list diagraphs before each digraph entry
"inoremap <expr> <C-S> ShowDigraphs()

"function! ShowDigraphs ()
"    digraphs
"    call getchar()
"    return "\<C-S>"
"endfunction

"}}}
" Trailing White Space{{{2
"-------------------------------------------------------------------

" Highlighting Bad White Space
highlight BadWhitespace ctermbg=Red ctermfg=Black
match BadWhitespace /\s\+$/

" Delete Trailing White Space
"autocmd BufWritePre * %s/\s\+$//e
inoremap <localleader>dtw <Esc>mm0g_ld$`ma
nnoremap <localleader>dtw mm0g_ld$`m

"2}}}
" Leader Mappings{{{
"-------------------------------------------------------------------

let maplocalleader=","

" To get <> and write <localleader> easily
inoremap << <><esc>i
inoremap .l localleader<esc>la

"}}}
" Line Breaking{{{2
"-------------------------------------------------------------------

nnoremap <localleader>lb f.a<cr><esc>
inoremap <localleader>lb <esc>f.a<cr><esc>

"2}}}
" Spelling Check{{{2
"-------------------------------------------------------------------

syntax on
augroup spelling
  autocmd!
  autocmd FileType tex setlocal spell spelllang=en_us
  autocmd FileType txt setlocal spell spelllang=en_us
augroup end

" FixLastSpellingError
function! FixLastSpellingError()
  :normal! mm[s1z=`m
endfunction

nnoremap <localleader>sp :call FixLastSpellingError()<cr>
inoremap <localleader>sp <esc>:call FixLastSpellingError()<cr>a

" Adding new words to dictionary
nnoremap < [s
nnoremap > ]s
nnoremap <localleader>s zg ]s
nnoremap <localleader><localleader>s zg

"2}}}
" Substitute/change{{{2
"-------------------------------------------------------------------

nnoremap <localleader>c :%s/
vnoremap <localleader>c :s/

"2}}}
" Visual selection{{{2
"-------------------------------------------------------------------

" Visually select current line excluding indentation and white space
nnoremap vv ^vg_

""Swap v and CTRL-V, because Block mode is more useful that Visual mode
"nnoremap    v   <C-V>
"nnoremap <C-V>     v

"vnoremap    v   <C-V>
"vnoremap <C-V>     v

" " Visually reselect whatever is pasted
" nnoremap <localleader>V V`]

"2}}}
" Some other remaps{{{2
"-------------------------------------------------------------------

" To go back a word in insert mode
inoremap <localleader>b <esc>bb

" Go to a mark using quotes '
nnoremap ' `
nnoremap ` '

" Yank till the end of the line
nnoremap Y y$
nnoremap <localleader>D 0D

" " Remapping ; and :
" nnoremap : ;
" nnoremap ; :

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

	"markdown
	if(a:code=="md")
		source ~/.vim/KeyBindings/MarkdownKeyBindings.vim
	endif

	"unmap keys to enter numbers peacefully
	if(a:code=="u")
		source ~/.vim/KeyBindings/UnmapKeyBindings.vim
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

"Sourcing everything for tex
" nnoremap  <localleader>e :source ~/.vimrc<cr>:call Abbreviations()<cr>gen<cr>:call Abbreviations()<cr>math<cr>:call KeyBindings()<cr>tex<cr>mm:loadview<cr>zM`m
nnoremap  <localleader>e :source ~/.vimrc<cr>:call Abbreviations()<cr>gen<cr>:call Abbreviations()<cr>math<cr>:call KeyBindings()<cr>tex<cr>

"Sourcing TexKeyBindings
nnoremap <F4> :call KeyBindings()<cr>tex<cr>
inoremap <F4> <Esc>:call KeyBindings()<cr>tex<cr>a

"Sourcing UnmapKeyBindings
nnoremap <localleader>u :call KeyBindings()<cr>u<cr>

"Sourcing GeneralAbbreviations
nnoremap <localleader>g :call Abbreviations()<cr>gen<cr>

"Sourcing MathAbbreviations
nnoremap <localleader>m :call Abbreviations()<cr>math<cr>

"2}}}
" Opening .vimrc, KeyBindings and Stuff{{{2
"-------------------------------------------------------------------

" Opening TeXKeyBindings "t=tex
nnoremap <localleader><localleader>t :vnew ~/.vim/KeyBindings/TeXKeyBindings.vim<cr>

" Opening Inputted File "IO=Inputted Open
" nnoremap <C-I><C-O> <Esc>0f{lvf.fx"py:new <C-R>p<cr>
nnoremap <localleader><localleader>io <Esc>0f{lvf.fx"py:new <C-R>p<cr>

" Opening Ultisnips "u=ultisnips
nnoremap <localleader><localleader>u :vnew ~/.vim/UltiSnips/tex.snippets<cr>

" Opening Abbreviations
nnoremap <localleader><localleader>a :vnew ~/.vim/Abbreviations<cr>

" Opening .vimrc
nnoremap <localleader><localleader>v :vsplit $MYVIMRC<cr>

"2}}}

"}}}

" Writing in Normal/Insert Mode and quitting{{{
"-------------------------------------------------------------------

nnoremap <localleader>w :w!<cr>:redraw!<cr>
inoremap ;; <esc>:w!<cr>:redraw!<cr>a

augroup auto_write_buffer
  autocmd!
  autocmd TextChanged,TextChangedI <buffer> silent write
augroup end

nnoremap <localleader>q zMgg:wq<cr>

"}}}

" Sourcing{{{
"-------------------------------------------------------------------

" Sourcing current file
nnoremap <localleader>sf :w!<cr>:source %<cr>

" Sourcing visual selection/current line for testing code
vnoremap <localleader>S y:execute @@<cr>
nnoremap <localleader>S ^vg_y:execute @@<cr>

" Sourcing .vimrc
nnoremap  <localleader>v :source $MYVIMRC<cr>

"}}}

