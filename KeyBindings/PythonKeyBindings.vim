 "____        _   _
"|  _ \ _   _| |_| |__   ___  _ __
"| |_) | | | | __| '_ \ / _ \| '_ \ 
"|  __/| |_| | |_| | | | (_) | | | |
"|_|    \__, |\__|_| |_|\___/|_| |_|
 "      |___/
 "_  __          ____  _           _ _
"| |/ /___ _   _| __ )(_)_ __   __| (_)_ __   __ _ ___
"| ' // _ \ | | |  _ \| | '_ \ / _` | | '_ \ / _` / __|
"| . \  __/ |_| | |_) | | | | | (_| | | | | | (_| \__ \
"|_|\_\___|\__, |____/|_|_| |_|\__,_|_|_| |_|\__, |___/
 "         |___/                             |___/

"-------------------------------------------------------------------
" Mahbub's PythonKeyBindings
"-------------------------------------------------------------------

" Numbers"{{{
"-------------------------------------------------------------------

inoremap <buffer> 1 <esc>A
inoremap <buffer> 11 1
inoremap <buffer> 2 <esc>f"i
inoremap <buffer> 22 2
inoremap <buffer> 3 <esc>lf)i
inoremap <buffer> 33 3
inoremap <buffer> 4 $$<esc>i
inoremap <buffer> 44 4
inoremap <buffer> <localleader>4 <esc>o\[<cr>\]<esc>O
inoremap <buffer> 5 <esc>l2f)i
inoremap <buffer> 55 5
inoremap <buffer> 6 <esc>f'i
inoremap <buffer> 66 6
inoremap <buffer> 7 <esc>hi
inoremap <buffer> 77 7
inoremap <buffer> 8 <esc>i
inoremap <buffer> 88 8
inoremap <buffer> 9 <esc>la
inoremap <buffer> 99 9
inoremap <buffer> 0 <esc>lla
inoremap <buffer> 00 0

"}}}
" Braces{{{
"-------------------------------------------------------------------

inoremap <buffer> ( ()<esc>i
inoremap <buffer> (( (
inoremap <buffer> { {}<esc>i
inoremap <buffer> {{ {
inoremap <buffer> [ []<left>
inoremap <buffer> [[ [

"}}}
" Basic symbols{{{

inoremap <buffer> \| \|\|<esc>i
inoremap <buffer> \|\| \|

inoremap <buffer> ' ''<esc>i
inoremap <buffer> 3' ''''''<esc>hhi
inoremap <buffer> 3" """"""<esc>hhi
inoremap <buffer> " ""<esc>i
inoremap <buffer> '' '
inoremap <buffer> "" "

"}}}

" Python symbols{{{

inoremap <buffer> <localleader>int int()<esc>i
inoremap <buffer> <localleader>fl float()<esc>i
inoremap <buffer> <localleader>cx complex()<esc>i
inoremap <buffer> ;= !=
inoremap <buffer> ;la lambda

"}}}

" Compilation and Stuff{{{
"-------------------------------------------------------------------

nnoremap <silent> <buffer> <F9> :w!<cr>:!python3 %:p<cr>
nnoremap <silent> <buffer> <localleader><cr> :term ++noclose ++cols=86 python3 %:p<cr>
nnoremap <silent> <buffer> <F5> :w!<cr>:exec '!python3.8' shellescape(@%, 1)<cr>

inoremap <silent> <buffer> <F9> <esc>:w!<cr>:!python3 %:p<cr>

"}}}
