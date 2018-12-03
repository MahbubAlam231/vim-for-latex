" Author        : Mahbub Alam
" Created       : 24/06/2018
" License       : Self
" Description   : Python KeyBindings

" Numbers, Braces and Some symbols{{{
"-------------------------------------------------------------------

"" Numbers"{{{
""-------------------------------------------------------------------

"inoremap <buffer> 1 <esc>A
"inoremap <buffer> 11 1
"inoremap <buffer> 2 <esc>f$i
"inoremap <buffer> 22 2
"inoremap <buffer> 3 <esc>lf}i
"inoremap <buffer> 33 3
"inoremap <buffer> 4 $$<esc>i
"inoremap <buffer> 44 4
"inoremap <buffer> <localleader>4 <esc>o\[<cr>\]<esc>O
"inoremap <buffer> 5 <esc>l2f}i
"inoremap <buffer> 55 5
"inoremap <buffer> 6 <esc>jo
"inoremap <buffer> 66 6
"inoremap <buffer> 7 <esc>hi
"inoremap <buffer> 77 7
"inoremap <buffer> 8 <esc>i
"inoremap <buffer> 88 8
"inoremap <buffer> 9 <esc>la
"inoremap <buffer> 99 9
"inoremap <buffer> 0 <esc>lla
"inoremap <buffer> 00 0

""}}}
" Braces{{{
"-------------------------------------------------------------------

inoremap <buffer> ( ()<esc>i
inoremap <buffer> (( (
inoremap <buffer> { {}<esc>i
inoremap <buffer> {{ \{\}<esc>hi
inoremap <buffer> p{ {
inoremap <buffer> P{ {
inoremap <buffer> [ []<esc>i
inoremap <buffer> [[ [

"}}}

inoremap <buffer> \| \|\|<esc>i
inoremap <buffer> \|\| \|

inoremap <buffer> '' ''<esc>i
inoremap <buffer> "" ""<esc>i

"}}}

" Python symbols{{{

inoremap <buffer> <localleader>pr print()<esc>i
inoremap <buffer> <localleader>int int()<esc>i
inoremap <buffer> <localleader>fl float()<esc>i
inoremap <buffer> <localleader>cx complex()<esc>i
inoremap <buffer> n= !=

"}}}

nnoremap <buffer> <F5> :w!<cr>:exec '!python' shellescape(@%, 1)<cr>

