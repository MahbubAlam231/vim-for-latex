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
" filetype off                          " Required before Vundle and plugins, disables filetype detection

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
set mouse=a                           " Mouse could work on vim too
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
" Leader Mappings{{{
"-------------------------------------------------------------------

let mapleader="-" "Use leader expressly in normal mode
let maplocalleader=","

" To get <> and write <localleader> easily
inoremap <buffer> <> <><esc>i
inoremap <buffer> <localleader>bu <><esc>ibuffer<esc>la
inoremap <buffer> <L <><esc>ileader<esc>la
inoremap <buffer> <localleader>ll <><esc>ilocalleader<esc>la
inoremap <buffer> <localleader>bl <><esc>ibuffer<esc>la <><esc>ileader<esc>la
inoremap <buffer> <localleader>bll <><esc>ibuffer<esc>la <><esc>ilocalleader<esc>la

"}}}
" Tabs, indentation and wrapping{{{
"-------------------------------------------------------------------

set tabstop=4                         " Redefine tab as width of four spaces
set softtabstop=4                     " Number of spaces in tab when editing
set shiftwidth=4                      " Number of space characters inserted for indentation
set expandtab                         " Insert four spaces for tabs everywhere
set smarttab                          " Insert spaces or go to next indent
set autoindent                        " Auto indent
set smartindent                       " Does the right thing (mostly) in programs

""Make the 71th column stand out
"highlight ColorColumn ctermbg=magenta
"call matchadd('ColorColumn', '\%72v', 100)

set listchars=extends:>
set listchars+=precedes:<
set listchars+=tab:>-
set listchars+=trail:-
" set listchars=extends:→               " Show arrow if line continues rightwards
" set listchars+=precedes:←             " Show arrow if line continues leftwards

set wrap                              " Wrap longlines by default
" Wrap toggle
nnoremap <buffer> <silent> <localleader>wt :set wrap!<cr>

"}}}
" Ignored files/directories from autocomplete{{{
"-------------------------------------------------------------------

set wildignore+=*/tmp/*
" set wildignore+=*.so
set wildignore+=*.aux,*.out,*.toc     " LaTeX intermediate files
set wildignore+=*.jpg,*.jpeg,*.png,*.gif " Images
set wildignore+=*.zip                 " zip files
set wildignore+=*/.git/*              " .git directories
set wildignore+=/git/*                " git projects
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

" Easy splits navigation(see: https://stackoverflow.com/a/15399297/9445700 - doesn't work)
execute "set <M-a>=\ea"
execute "set <M-s>=\es"
execute "set <M-w>=\ew"
execute "set <M-d>=\ed"
execute "set <M-n>=\en"
execute "set <M-p>=\ep"

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

augroup ResizeSplitsWhenTheWindowIsResized
    autocmd!
    autocmd VimResized * silent exe "normal! \<C-w>="
augroup end

" Window resizing
nnoremap <buffer> <S-LEFT>  5<c-w><
nnoremap <buffer> <S-RIGHT> 5<c-w>>

"}}}
" Line number{{{

set number relativenumber

nnoremap <buffer> <silent> <localleader>nt :call NumberToggle()<cr>

"}}}
" Pandoc filetype settings{{{

" let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
" let g:pandoc#filetypes#pandoc_markdown=0
" let g:pandoc#keyboard#display_motions = 0

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
" Plug 'chrisbra/changesPlugin'
" Plug 'jason6/vimwiki_md2html'
" Plug 'masukomi/vim-markdown-folding'
" Plug 'mhinz/vim-signify'
" Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
" Plug 'tpope/vim-eunuch'
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
Plug 'fatih/vim-go'
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
Plug 'plasticboy/vim-markdown'
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
filetype indent plugin on             " Required, enables filetype detection

"}}}

" Plugin mappings{{{
"-------------------------------------------------------------------

" Vimtex and Folding{{{

xmap <buffer> am  <plug>(vimtex-a$)
xmap <buffer> im  <plug>(vimtex-i$)

omap <buffer> am  <plug>(vimtex-a$)
omap <buffer> im  <plug>(vimtex-i$)

nmap <buffer> dsm <plug>(vimtex-env-delete-math)
nmap <buffer> csm <plug>(vimtex-env-change-math)

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
            \ 'build_dir' : '',
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
" let g:vimtex_view_general_options_latexmk = '--unique'

nmap <buffer> <leader>tc :VimtexCompile<cr>
" nnoremap <buffer> <leader>tc <plug>(vimtex-view):VimtexCompile<cr>

nmap <buffer> <localleader>cz :call vimtex#fzf#run('ctli')<cr>
nmap <buffer> <localleader>tc <plug>(vimtex-toc-open)

" Folding{{{
set foldlevelstart=0
set foldmethod=marker
nnoremap <buffer> <localleader>mn :setlocal foldmethod=manual<cr>
nnoremap <buffer> <localleader>mr :setlocal foldmethod=marker<cr>


" Fixing LaTeX folds
nnoremap <buffer> <localleader>ff mm?% F{O{L{D<cr>i <esc>zczox`m

" Saving folds in ~/.vim/view
function! MakeView()
    execute "normal! mfzMgg:w!\<cr>:mkview\<cr>`fzvzz"
endfunction

nnoremap <buffer> <localleader>mk :call MakeView()<cr>
nnoremap <buffer> 'f `fzvzz
vnoremap <buffer> 'f `fzvzz

function! FoldingTeXPreamble()
    execute "normal! :setlocal foldmethod=marker\<cr>mfggzR/Usepackages\<cr>0ma/Environments\<cr>0mb/Newcommands\<cr>0mc/begin{document}\<cr>k0md`azf`b`bzf`c`czf`d?documentclass\<cr>zf`d:delm a-d\<cr>zMgg`fzvzz"

endfunction

nnoremap <buffer> <silent> <localleader>fp :call FoldingTeXPreamble()<cr>

augroup Loadview
    autocmd!
    autocmd BufNewFile,BufRead *.* silent loadview
augroup end

" Opening/closing folding{{{
nnoremap <buffer> zo mozozz
nnoremap <buffer> zc mczczz
nnoremap <buffer> zC mczCzz
nnoremap <buffer> zv mvzvzz
nnoremap <buffer> zr mrzRzz
nnoremap <buffer> zR mrzrzz
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
" Vimwiki{{{

let g:vimwiki_ext2syntax = {'.md': 'markdown'}
let g:vimwiki_list = [{'path': '~/Dropbox/Data/vimwiki/',
            \'syntax': 'markdown',
            \'ext': '.md',
            \'path_html': '~/Dropbox/Data/vimwiki_html/',
            \'custom_wiki2html': 'vimwiki_markdown',
            \'html_filename_parametrization': 1,
            \'template_path': '~/Dropbox/Data/vimwiki/templates/',
            \'template_default': 'default',
            \'template_ext': '.tpl'}]
" let g:vimwiki_folding = 'expr'

let g:nv_search_paths = ['~/Dropbox/Data/vimwiki/']
let g:zettel_format = "%title-%d-%m-%y"

" Disabling wiki creation on the fly
" let g:vimwiki_global_ext = 0
" let g:vimwiki_commentstring='<!--%s-->'

let g:vimwiki_table_mappings=0
augroup ChangeVimwikiTableTab
    autocmd!
    autocmd Filetype vimwiki inoremap <silent><expr><buffer> <M-n> vimwiki#tbl#kbd_tab()
    autocmd Filetype vimwiki inoremap <silent><expr><buffer> <M-p> vimwiki#tbl#kbd_shift_tab()
    " autocmd Filetype vimwiki inoremap <silent><expr> <Tab> vimwiki#tbl#kbd_tab()
    " autocmd Filetype vimwiki inoremap <silent><expr> <S-Tab> vimwiki#tbl#kbd_shift_tab()
augroup end

" Mappings
augroup VimwikiMappings
    autocmd!
    autocmd Filetype vimwiki nmap <buffer> <leader>we :vsplit<cr><Plug>VimwikiIndex
    autocmd Filetype vimwiki nmap <buffer> <leader><cr> <Plug>VimwikiSplitLink
    autocmd Filetype vimwiki nmap <buffer> <localleader><cr> <Plug>VimwikiVSplitLink
    autocmd Filetype vimwiki nmap <buffer> <silent> <leader>wv :vsplit<cr>:VimwikiIndex<cr>
    " Make current line a filename
    autocmd Filetype vimwiki nnoremap <buffer> <localleader>ml ^y$I[<esc>A]()<esc>P

augroup end

function! CreateFilenameWithDateTime(filename)
    return a:filename . '-' . strftime("%d-%m-%y")
endfunction

nnoremap <buffer> <localleader>mps :let @n=CreateFilenameWithDateTime("purpose-statement") \| execute "normal! a[<c-r>n](<c-r>n)"<cr>
inoremap <buffer> <localleader>mps [<c-r>=CreateFilenameWithDateTime('purpose-statement')<cr>]<esc>y%%p%r($r)<esc>

function! VimwikiFoldLevelCustom(lnum)
    let pounds = strlen(matchstr(getline(a:lnum), '^#\+'))
    if (pounds)
        return '>' . pounds  " start a fold level
    endif
    if getline(a:lnum) =~? '\v^\s*$'
        if (strlen(matchstr(getline(a:lnum + 1), '^#\+')))
            return '-1' " don't fold last blank line before header
        endif
    endif
    return '=' " return previous fold level
endfunction

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

"}}}
" Pandoc{{{

let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
let g:pandoc#filetypes#pandoc_markdown=0
let g:pandoc#keyboard#display_motions = 0
let g:vim_markdown_no_default_key_mappings = 1

" augroup SetFiletypeMarkdown
"     autocmd!
"     autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
"     autocmd BufNewFile,BufRead *.md setlocal commentstring=<!--%s-->
" augroup end

"}}}

" Abolish and coercing{{{

" Coercing
vmap <buffer> <leader>cr :s/ /-/g<cr>:noh<cr>
nmap <buffer> <leader>cr :%s/ /-/g<cr>:noh<cr>
nmap <buffer> crr V:s/ /-/g<cr>:noh<cr>

"}}}
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

map <buffer> *   <Plug>(asterisk-*)
map <buffer> #   <Plug>(asterisk-#)
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

"}}}
" Commentary{{{

augroup CommentString
    autocmd!
    autocmd FileType vimwiki setlocal commentstring=<!--%s-->
augroup end

"}}}
" Conceal{{{

let g:tex_conceal='abdgm'

"}}}
" Dragvisuals{{{

" Dragging visual blocks
vmap <buffer> <expr> <S-LEFT>  DVB_Drag('left')
vmap <buffer> <expr> <S-RIGHT> DVB_Drag('right')
vmap <buffer> <expr> <S-DOWN>  DVB_Drag('down')
vmap <buffer> <expr> <S-UP>    DVB_Drag('up')
vmap <buffer> <expr> D         DVB_Duplicate()

" Remove any introduced trailing whitespace after moving...
let g:DVB_TrimWS = 1

"}}}
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

"}}}
" Fugitive{{{

nnoremap <buffer> <localleader>gp :Gw<cr>:Gcommit -m "Add updated files"<cr><cr>:Gpush origin master<cr>

"}}}
" FuzzyFinder{{{

" Show dot files and ignore .git files
let $FZF_DEFAULT_COMMAND='ag --hidden --ignore ~/.vim/tmp/ --ignore .git -g ""'
let $FZF_DEFAULT_OPTS='-m --height=80% --layout=reverse --inline-info --border --preview="bat --style=numbers --wrap --color=always {}" --bind="f7:toggle-preview,ctrl-f:preview-page-down,ctrl-b:preview-page-up,ctrl-d:preview-down,ctrl-u:preview-up,ctrl-a:select-all+accept,ctrl-y:execute-silent(echo {+} | pbcopy)"'
let g:fzf_preview_window = 'right:60%'

nnoremap <buffer> <localleader>fzf :FZF ~/
nnoremap <buffer> <localleader>fzd :Files<cr>
nnoremap <buffer> <localleader>fzh :FZF ~<cr>

"}}}
" Gundo{{{

nnoremap <buffer> <localleader>gt :GundoToggle<CR>

"}}}
" Indent Guides{{{

" let g:indent_guides_start_level = 2
" let g:indent_guides_guide_size = 1

nnoremap <buffer> <localleader>i :IndentGuidesToggle<cr>

"}}}
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

"}}}
" NERDtree{{{

nnoremap <buffer> <localleader>ner :NERDTree<cr>

"}}}
" Supertab{{{

let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

"}}}
"Templates and Selecting Template{{{

" In "~/.vim/plugged/vim-templates/plugin/templates.vim" add autocmd for writing BufNewFile event

let g:tmpl_auto_initialize=1
let g:tmpl_author_name='Mahbub Alam'
let g:tmpl_license='Self'
let g:template_list = ["amsart", "article", "beamer", "c", "CMakeLists.txt", "cpp", "go", "h", "hpp", "html", "java", "js", "jsx", "letter", "main.c", "main.cpp", "Makefile", "md", "mock", "py", "report", "sh", "tex", "vim"]

" Selecting template
"function! Template(code)"{{{
"" include all templates{{{
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

""}}}

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

"endfunction"}}}

" nnoremap <buffer> <silent> <localleader>tem :TemplateInit

nnoremap <buffer> <silent> <localleader>art :TemplateInit article<cr>
nnoremap <buffer> <silent> <localleader>ams :TemplateInit amsart<cr>
nnoremap <buffer> <silent> <localleader>rep :TemplateInit report<cr>
nnoremap <buffer> <silent> <localleader>sh :TemplateInit sh<cr>

" Placeholders <++>
nnoremap <buffer> <c-j> /<++><cr>zMzv:noh<cr>cf>
inoremap <buffer> <c-j> <esc>/<++><cr>zMzv:noh<cr>cf>
nnoremap <buffer> <c-k> ?<++><cr>zMzv:noh<cr>cf>
inoremap <buffer> <c-k> <esc>?<++><cr>zMzv:noh<cr>cf>

" Correcting indent immediately after template is infected
nnoremap <buffer> <localleader>fi mm/                    <cr>0<c-v>Gk^hd`m:noh<cr>

"}}}
" Titlecase{{{

let g:titlecase_map_keys = 0

" <Plug>Titlecase " Titlecase the region defined by a text object or motion
nmap <buffer> <localleader>t <Plug>Titlecase

" <Plug>TitlecaseLine " Titlecase the entire line
nmap <buffer> <localleader>tt <Plug>TitlecaseLine

" <Plug>Titlecase " Titlecase the visually selected region
vmap <buffer> <localleader>t <Plug>Titlecase

"}}}
" UltiSnips{{{

let g:UltiSnipsEditSplit='vertical'
nnoremap <buffer> <leader>ue :UltiSnipsEdit<cr>
nnoremap <buffer> <leader>as :vnew ~/.vim/UltiSnips/all.snippets<cr>

" function! ExpandUltiSnipsNormal(snippet)
"     exe "normal! a" . a:snippet
"     call UltiSnips_ExpandSnippet()
"     return
" endfunction

nnoremap <buffer> <silent> <localleader>ps gg4}otnow<c-r>=UltiSnips#Anon('TIME: `date +%d-%m-%y\ \(%b,\ %a\)\ %H:%M\ %Z`', 'tnow')<cr><cr><esc>O


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
" YouCompleteMe{{{

" let g:ycm_autoclose_preview_window_after_completion=1
" map <buffer> <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"}}}

"}}}

" Misc{{{
"-------------------------------------------------------------------

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

augroup MarkdownVimwiki
    autocmd!
    autocmd FileType markdown,vimwiki inoremap <buffer> ** **<left>
augroup end

"}}}
" Calculator{{{
"-------------------------------------------------------------------

inoremap <buffer> <C-B> <C-O>yiW<End> = <C-R>=<C-R>0<cr>

"}}}
" Colorschemes{{{
"-------------------------------------------------------------------

let python_highlight_all=2
syntax on

" colorscheme wombat256i
colorscheme seoul256

set background=dark

"}}}
" Command line mappings{{{
"-------------------------------------------------------------------

cnoremap <buffer> <c-a> <home>
cnoremap <buffer> <c-e> <end>

"}}}
" Diagraphs{{{
"-------------------------------------------------------------------

""Make CTRL-K list diagraphs before each digraph entry
"runtime bundle/betterdigraphs/plugin/betterdigraphs.vim
"inoremap <buffer> <expr> <C-K> BDG_GetDigraph()

"}}}
" Macros{{{
"-------------------------------------------------------------------

nnoremap <buffer> Q @q
" Redefine macro 'q'
nnoremap <buffer> <localleader>rq :let @q='<c-r>q'<left>

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
nnoremap <buffer> gH mhg^
nnoremap <buffer> gL mlg$

vnoremap <buffer> H mh^
vnoremap <buffer> J mjL
vnoremap <buffer> K mkH
vnoremap <buffer> L mlg_
vnoremap <buffer> gH mhg^
vnoremap <buffer> gL mlg$

onoremap <buffer> H ^
onoremap <buffer> J L
onoremap <buffer> K H
onoremap <buffer> L g_
onoremap <buffer> gH g^
onoremap <buffer> gL g$

" onoremap <buffer> H :<c-u>normal! mh^<cr>
" onoremap <buffer> J :<c-u>normal! mjL<cr>
" onoremap <buffer> K :<c-u>normal! mkH<cr>
" onoremap <buffer> L :<c-u>normal! mlg_<cr>

nnoremap <buffer> 'h `h
nnoremap <buffer> 'j `j
nnoremap <buffer> 'k `k
nnoremap <buffer> 'l `l

vnoremap <buffer> 'h `h
vnoremap <buffer> 'j `j
vnoremap <buffer> 'k `k
vnoremap <buffer> 'l `l

inoremap <buffer> \z <esc>zMzvzza
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

nnoremap <buffer> <localleader>nv :call NavigationToggleInWrapMode()<cr>

"}}}

" Mark and then go to the beginning or end of the file
nnoremap <buffer> gg mggg
" nnoremap <buffer> G mgG
nnoremap <buffer> 'g `gzvzz
nnoremap <buffer> 'j `jzvzz

vnoremap <buffer> gg mggg
" vnoremap <buffer> G mgG
vnoremap <buffer> 'g `gzvzz
vnoremap <buffer> 'j `jzvzz

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
nnoremap <buffer> gV `[v`]

" Visually select current line excluding indentation and white space
nnoremap <buffer> vv ^vg_

"}}}
" Running command in shell and pasting in buffer{{{

" Run in shell and paste in line below
nnoremap <buffer> <silent> !! yiwo<esc>:.!<c-r><c-r>0<cr>
vnoremap <buffer> <silent> !! yo<esc>:.!<c-r><c-r>0<cr>0

" " Paste date at cursor
" nnoremap <buffer> <silent> <localleader>now a<cr><cr><esc>k:.!date '+\%b \%d \%Y \%H:\%M \%Z (\%a)'<cr>kV2j:j<cr>:echo<cr>/IST<cr>:noh<cr>w%lx
" inoremap <buffer> <silent> <localleader>now <cr><cr><esc>k:.!date '+\%b \%d \%Y \%H:\%M \%Z (\%a)'<cr>kV2j:j<cr>:echo<cr>/IST<cr>:noh<cr>w%lxa

" Calendar on next paragraph with cursor on today
nnoremap <buffer> <silent> <localleader>cal o<esc>:.!cal<cr>mm:FixWhitespace<cr>?_<cr>2xwn2xhe:noh<cr>

"}}}
" Searching remaps{{{

" Marking before searching
nnoremap <buffer> / ms/

nnoremap <buffer> 's `szvzz

" Search within visual selection
vnoremap <buffer> ;/ <esc>ms/\%V

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

" Number of matches for the word under cursor
nnoremap <buffer> <localleader>* ms*<c-o>:%s///gn<cr>
nnoremap <buffer> <localleader># ms#<c-o>:%s///gn<cr>

" Number of matches for the visually selected text
vnoremap <buffer> <localleader>* yms:%s/<c-r>0//gn<cr>
vnoremap <buffer> <localleader># yms:%s/<c-r>0//gn<cr>

"}}}

" Clearing highlighted matches
nnoremap <buffer> <c-c> :noh<cr>:echo<cr>
" nnoremap <buffer> <esc><esc> mm/qwqkqx\$<cr>:noh<cr>:echo<cr>`m

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
" nnoremap <buffer> <silent> <esc><esc> mm/qwqkqx\$<cr>:noh<cr>`m

"}}}
" Some other remaps{{{
"-------------------------------------------------------------------

" Joining lines
nnoremap <buffer> <localleader>J J
vnoremap <buffer> <localleader>J J

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

" Number of paragraphs in a file
function! AlignParagraphs()
    normal! mpzR
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
    normal! `p
    :call CountParagraphs()
endfunction

nnoremap <buffer> <localleader>ap :call AlignParagraphs()<cr>

function! CountParagraphs()
    normal! mpzRG
    while getline('.') == ''
        normal! k
    endwhile
    normal! j
    let b:virtual_last_line=line('.')
    normal! gg

    let b:number_of_paragraphs=0
    while line('.') != b:virtual_last_line
        normal! }
        let b:number_of_paragraphs=b:number_of_paragraphs + 1
    endwhile

    echom "Number of paragraphs:" b:number_of_paragraphs
    normal! `pzMzv
endfunction

nnoremap <buffer> <localleader>cp :call CountParagraphs()<cr>

"}}}
" Spelling Check{{{
"-------------------------------------------------------------------

augroup Spelling
    autocmd!
    autocmd FileType tex,text,markdown,vimwiki,bib setlocal spell spelllang=en_us
    autocmd FileType tex,text,markdown,vimwiki,bib setlocal spellfile=~/.vim/spell/en.utf-8.add,~/.vim/spell/math.utf-8.add
    " Adding new words to dictionary
    autocmd FileType tex,text,markdown,vimwiki,bib nnoremap <buffer> zgN zg[szz
    autocmd FileType tex,text,markdown,vimwiki,bib nnoremap <buffer> zgn zg]szz
    autocmd FileType tex,text,markdown,vimwiki,bib nnoremap <buffer> zwN zw[szz
    autocmd FileType tex,text,markdown,vimwiki,bib nnoremap <buffer> zwn zw]szz
augroup end

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

" FixLastSpellingError
function! FixLastSpellingError()
    :normal! mf[s1z=`f
endfunction

nnoremap <buffer> <silent> <localleader>fs :call FixLastSpellingError()<cr>
inoremap <buffer> <silent> <localleader>fs <esc>:call FixLastSpellingError()<cr>a

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
    autocmd Filetype tex let m = matchadd("Folds_brackets_comments",'% F{O{L{D')
    autocmd Filetype tex let m = matchadd("Folds_brackets_comments",'% F}O}L}D')
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
    autocmd Filetype tex let m = matchadd("Label",'\\label{.\{-}}')
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
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% SplitEquation')
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
    autocmd Filetype tex let m = matchadd("EquationMarkerGroup",'% Figure')
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
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\begin{figure}')
    autocmd Filetype tex let m = matchadd("EquationGroup",'\\end{figure}')
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
" VimwikiHighlighting{{{

highlight VimwikiBoldBlueGroup ctermfg=39 ctermbg=Black
highlight VimwikiBoldGreenGroup ctermfg=46 ctermbg=Black

augroup VimwikiHighlighting
    autocmd!
    autocmd Filetype vimwiki,markdown let m = matchadd("VimwikiBoldBlueGroup",'TIME')
    autocmd Filetype vimwiki,markdown let m = matchadd("VimwikiBoldBlueGroup",'BREAKTHROUGH')
    autocmd Filetype vimwiki,markdown let m = matchadd("VimwikiBoldGreenGroup",'READ-ME')

    autocmd Filetype vimwiki,markdown let m = matchadd("VimwikiBoldBlueGroup",'LATE ENTRY')
    autocmd Filetype vimwiki,markdown let m = matchadd("VimwikiBoldBlueGroup",'NO DIARY')
    autocmd Filetype vimwiki,markdown let m = matchadd("VimwikiBoldBlueGroup",'LATE DIARY')
    autocmd Filetype vimwiki,markdown let m = matchadd("VimwikiBoldBlueGroup",'SQ')
    autocmd Filetype vimwiki,markdown let m = matchadd("VimwikiBoldBlueGroup",'SQX')
    autocmd Filetype vimwiki,markdown let m = matchadd("VimwikiBoldBlueGroup",'JX')
    " autocmd Filetype vimwiki,markdown let m = matchadd("VimwikiBoldRedGroup",'X ')
augroup end

"}}}
" TerminalHighlighting{{{

" hi Terminal ctermbg=238 ctermfg=188 guibg=lightgrey guifg=blue

"}}}
" Trailing White Space{{{
"-------------------------------------------------------------------

"autocmd BufWritePre *.* %s/\s\+$//e
inoremap <buffer> <localleader>fws <esc>mwV:FixWhitespace<cr>`wa
nnoremap <buffer> <localleader>fws mwV:FixWhitespace<cr>`w
nnoremap <buffer> <localleader>faw mw:FixWhitespace<cr>`w

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

" SourceEverythingForTeX{{{
augroup SourceEverythingForTeX
    autocmd!
    autocmd BufNewFile,BufRead *.tex silent write
    autocmd BufNewFile,BufRead *.tex call Abbreviations("gen")
    autocmd BufNewFile,BufRead *.tex call Abbreviations("math")
    autocmd BufNewFile,BufRead *.tex call KeyBindings("tex")
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
    autocmd Filetype tex nnoremap <buffer> <F5> :w!<CR>:!latexmk -cd -f -silent -pdf -bibtex -pdf %:p<CR><CR>:!latexmk -silent -cd -f -pdf %:p<CR><CR>:!latexmk -silent -cd -f -pdf %:p<CR><CR>zz
    autocmd Filetype tex inoremap <buffer> <F9> <esc>:w!<CR>:!latexmk -cd -f -silent -pdf %:p<CR><CR>zz:VimtexView<cr>a
    autocmd Filetype tex nnoremap <buffer> <F9> :w!<CR>:!latexmk -cd -f -silent -pdf %:p<CR><CR>zz:VimtexView<cr>

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

nnoremap <buffer> <silent> <localleader>te :source $MYVIMRC<cr>:call SourceEverythingForTeX()<cr>
inoremap <buffer> <silent> <localleader>te <esc>:source $MYVIMRC<cr>:call SourceEverythingForTeX()<cr>a

" Changing and setting foldmarker for tex
nnoremap <buffer> <localleader>cfm :%s/}T}E}X/ F}O}L}D/g \| :%s/{T{E{X/ F{O{L{D/g<cr><cr>
nnoremap <buffer> <localleader>rfm :%s/F}O}L}D/ F}O}L}D/g \| :%s/F{O{L{D/ F{O{L{D/g<cr><cr>

"}}}
" SourceEverythingForVimwiki{{{
augroup SourceEverythingForVimwiki
    autocmd!
    autocmd BufNewFile,BufRead *.md silent write
    autocmd BufNewFile,BufRead *.md call Abbreviations("gen")
    autocmd BufNewFile,BufRead *.md call Abbreviations("math")
    autocmd BufNewFile,BufRead *.md setlocal spell spelllang=en_us
    autocmd BufNewFile,BufRead *.md setlocal spellfile=~/.vim/spell/en.utf-8.add,~/.vim/spell/math.utf-8.add
    autocmd BufNewFile,BufRead *.md nnoremap <buffer> <localleader>u1 yypVr=
    autocmd BufNewFile,BufRead *.md nnoremap <buffer> <localleader>u2 yypVr-

    " Compiling
    autocmd Filetype markdown,vimwiki nnoremap <buffer> <localleader>pb :Pandoc beamer<cr>
    autocmd Filetype markdown,vimwiki nnoremap <buffer> <localleader>pp :Pandoc pdf -V geometry:margin=2.5cm -V fontsize=12pt<cr>
    autocmd Filetype markdown,vimwiki nnoremap <buffer> <F7>            :Pandoc pdf<cr>
    autocmd Filetype markdown,vimwiki inoremap <buffer> <F7>            <esc>:Pandoc pdf<cr>a
    autocmd Filetype markdown,vimwiki nnoremap <buffer> <localleader>ph :Pandoc -s -c style.css -o ~/vimwiki_html/%:t:r.html<cr>

    " autocmd BufNewFile,BufRead *.md execute "normal! 4zj"
    " autocmd BufNewFile,BufRead *.md inoremap <silent><buffer> <CR> <C-]><Esc>:VimwikiReturn 3 5<CR>
    " autocmd BufNewFile,BufRead *.md inoremap <silent><buffer> <S-CR> <Esc>:VimwikiReturn 2 2<CR>
    " autocmd Filetype vimwiki setlocal foldmethod=marker
    " autocmd BufNewFile,BufRead *.md setlocal foldmethod=marker
    " autocmd BufNewFile,BufRead *.md setlocal foldmarker=F{O{L{D,F}O}L}D
augroup end

"}}}
" SourceEverythingForPython{{{
augroup SourceEverythingForPython
    autocmd!
    autocmd BufNewFile,BufRead *.py silent write
    autocmd BufNewFile,BufRead *.py call KeyBindings("py")
    autocmd BufNewFile,BufRead *.py setlocal signcolumn=yes
    " autocmd BufNewFile,BufRead *.py set foldmethod=indent
augroup end

"}}}
" SourceEverythingForGo{{{
augroup SourceEverythingForGo
    autocmd!
    autocmd BufNewFile,BufRead *.go silent write
    autocmd BufNewFile,BufRead *.go call KeyBindings("go")
    autocmd BufNewFile,BufRead *.go setlocal spell spelllang=en_us
    autocmd BufNewFile,BufRead *.go setlocal spellfile=~/.vim/spell/math.utf-8.add
augroup end

"}}}
" Leader mappings{{{
"Sourcing NumbersPeacefully
nnoremap <buffer> <localleader>np :call KeyBindings("np")<cr>
inoremap <buffer> <localleader>np <esc>:call KeyBindings("np")<cr>a
inoremap <buffer> <localleader>nd <esc>:call KeyBindings("tex")<cr>a

"Sourcing GeneralAbbreviations
nnoremap <buffer> <localleader>ag :call Abbreviations("gen")<cr>

" Sourcing MathAbbreviations
nnoremap <buffer> <localleader>am :call Abbreviations("math")<cr>

"Sourcing PythonKeyBindings
nnoremap <buffer> <localleader>py :call KeyBindings("py")<cr>

"Sourcing GoKeyBindings
nnoremap <buffer> <localleader>go :call KeyBindings("go")<cr>

"Sourcing UnmapTexKeyBindings
nnoremap <buffer> <localleader>ut :call KeyBindings("unmaptex")<cr>
inoremap <buffer> <localleader>ut <esc>:call KeyBindings("unmaptex")<cr>a

"}}}

"}}}
" Opening .vimrc, KeyBindings and Stuff{{{
"-------------------------------------------------------------------

" Opening TeXKeyBindings "te=tex
nnoremap <buffer> <leader>hte :new ~/.vim/KeyBindings/TeXKeyBindings.vim<cr>
nnoremap <buffer> <leader>vte :vnew ~/.vim/KeyBindings/TeXKeyBindings.vim<cr>
nnoremap <buffer> <leader>te :vnew ~/.vim/KeyBindings/TeXKeyBindings.vim<cr>
nnoremap <buffer> <leader>hnp :new ~/.vim/KeyBindings/NumbersPeacefully.vim<cr>
nnoremap <buffer> <leader>vnp :vnew ~/.vim/KeyBindings/NumbersPeacefully.vim<cr>
nnoremap <buffer> <leader>np :vnew ~/.vim/KeyBindings/NumbersPeacefully.vim<cr>

" Opening PythonKeyBindings
nnoremap <buffer> <leader>hpy :new ~/.vim/KeyBindings/PythonKeyBindings.vim<cr>
nnoremap <buffer> <leader>vpy :vnew ~/.vim/KeyBindings/PythonKeyBindings.vim<cr>
nnoremap <buffer> <leader>py :vnew ~/.vim/KeyBindings/PythonKeyBindings.vim<cr>

" Opening GoKeyBindings
nnoremap <buffer> <leader>hgo :new ~/.vim/KeyBindings/GoKeyBindings.vim<cr>
nnoremap <buffer> <leader>vgo :vnew ~/.vim/KeyBindings/GoKeyBindings.vim<cr>
nnoremap <buffer> <leader>go :vnew ~/.vim/KeyBindings/GoKeyBindings.vim<cr>

" Opening UnmapTeXKeyBindings
nnoremap <buffer> <leader>hut :new ~/.vim/KeyBindings/UnmapTeXKeyBindings.vim<cr>
nnoremap <buffer> <leader>vut :vnew ~/.vim/KeyBindings/UnmapTeXKeyBindings.vim<cr>
nnoremap <buffer> <leader>ut :vnew ~/.vim/KeyBindings/UnmapTeXKeyBindings.vim<cr>

" Opening tex.snippets "u=ultisnips
nnoremap <buffer> <leader>hts :new ~/.vim/UltiSnips/tex.snippets<cr>
nnoremap <buffer> <leader>vts :vnew ~/.vim/UltiSnips/tex.snippets<cr>
nnoremap <buffer> <leader>ts :vnew ~/.vim/UltiSnips/tex.snippets<cr>

" Opening py.snippets
nnoremap <buffer> <leader>hps :new ~/.vim/UltiSnips/python.snippets<cr>
nnoremap <buffer> <leader>vps :vnew ~/.vim/UltiSnips/python.snippets<cr>
nnoremap <buffer> <leader>ps :vnew ~/.vim/UltiSnips/python.snippets<cr>

" Opening Abbreviations
nnoremap <buffer> <leader>ha :new ~/.vim/Abbreviations<cr>
nnoremap <buffer> <leader>va :vnew ~/.vim/Abbreviations<cr>
nnoremap <buffer> <leader>a :vnew ~/.vim/Abbreviations<cr>
nnoremap <buffer> <leader>hag :new ~/.vim/Abbreviations/GeneralAbbreviations.vim<cr>
nnoremap <buffer> <leader>vag :vnew ~/.vim/Abbreviations/GeneralAbbreviations.vim<cr>
nnoremap <buffer> <leader>ag :vnew ~/.vim/Abbreviations/GeneralAbbreviations.vim<cr>
nnoremap <buffer> <leader>ham :new ~/.vim/Abbreviations/MathAbbreviations.vim<cr>
nnoremap <buffer> <leader>vam :vnew ~/.vim/Abbreviations/MathAbbreviations.vim<cr>
nnoremap <buffer> <leader>am :vnew ~/.vim/Abbreviations/MathAbbreviations.vim<cr>

" Opening mathspell file
nnoremap <buffer> <leader>hms :new ~/.vim/spell/math.utf-8.add<cr>
nnoremap <buffer> <leader>vms :vnew ~/.vim/spell/math.utf-8.add<cr>
nnoremap <buffer> <leader>ms :vnew ~/.vim/spell/math.utf-8.add<cr>

" Opening .vimrc
nnoremap <buffer> <leader>hvc :split $MYVIMRC<cr>
nnoremap <buffer> <leader>vc :vsplit $MYVIMRC<cr>

"}}}

"}}}

" Writing and quitting{{{
"-------------------------------------------------------------------

" Doesn't seem to work when template is enabled
augroup WriteNewBuf
    autocmd!
    autocmd BufNewFile * silent write
augroup end

nnoremap <buffer> <silent> <localleader>w mm:w!<cr>`m
inoremap <buffer> <silent> ;w <esc>mm:w!<cr>`ma

augroup ContinuouslyWriteBuf
    autocmd!
    autocmd TextChanged * nested if &modifiable | silent write | endif
    autocmd TextChangedI * silent write
augroup end

nnoremap <localleader>q mqzM:q!<cr>
nnoremap <localleader>wq mqzM:wq!<cr>
nnoremap 'q `qzvzz
vnoremap 'q `qzvzz

"}}}

" Sourcing{{{
"-------------------------------------------------------------------

" Sourcing current file
nnoremap <buffer> <silent> <localleader>sf :w!<cr>:source %<cr>:noh<cr>
nnoremap <buffer> <silent> <localleader>msf :call MakeView()<cr>:source %<cr>:noh<cr>

augroup ForAllBuf
    autocmd!
    " autocmd BufNewfile,BufRead,BufEnter * source $MYVIMRC
    autocmd BufNewfile,BufRead * source $MYVIMRC
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

"}}}
