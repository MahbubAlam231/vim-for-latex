" Author        : Mahbub Alam
" Created       : 16/06/2020
" License       : Self

  " ____       _  __          ____  _           _ _                 
 " / ___| ___ | |/ /___ _   _| __ )(_)_ __   __| (_)_ __   __ _ ___ 
" | |  _ / _ \| ' // _ \ | | |  _ \| | '_ \ / _` | | '_ \ / _` / __|
" | |_| | (_) | . \  __/ |_| | |_) | | | | | (_| | | | | | (_| \__ \
 " \____|\___/|_|\_\___|\__, |____/|_|_| |_|\__,_|_|_| |_|\__, |___/
  "                     |___/                             |___/     

"-------------------------------------------------------------------
" Mahbub's GoKeyBindings
"-------------------------------------------------------------------

" Numbers"{{{
"-------------------------------------------------------------------

inoremap <buffer> 1 <esc>A
inoremap <buffer> 11 1
inoremap <buffer> 2 <esc>lf$i
inoremap <buffer> 22 2
inoremap <buffer> 3 <esc>lf}i
inoremap <buffer> 33 3
inoremap <buffer> 4 <esc>lf"i
inoremap <buffer> 44 4
inoremap <buffer> <localleader>4 {<cr>}<esc>O
inoremap <buffer> 5 <esc>l2f}i
inoremap <buffer> 55 5
inoremap <buffer> 6 <esc>jo
inoremap <buffer> 66 6
inoremap <buffer> 7 <left><left>
inoremap <buffer> 77 7
inoremap <buffer> 8 <left>
inoremap <buffer> 88 8
inoremap <buffer> <localleader>8 \infty
inoremap <buffer> 9 <right>
inoremap <buffer> 99 9
inoremap <buffer> 0 <right><right>
inoremap <buffer> 00 0

"}}}
" Braces{{{
"-------------------------------------------------------------------

inoremap <buffer> ( ()<left>
inoremap <buffer> (( (
inoremap <buffer> { {}<left>
inoremap <buffer> {{ {
inoremap <buffer> [ []<left>
inoremap <buffer> [[ [

"}}}
" Basic symbols{{{

inoremap <buffer> \| \|\|<left>
inoremap <buffer> \|\| \|

inoremap <buffer> ' ''<left>
inoremap <buffer> " ""<left><left>
inoremap <buffer> '' '
inoremap <buffer> "" "

"}}}

" Go symbols{{{

inoremap <buffer> <localleader>pr fmt.Println("")<esc>hi
inoremap <buffer> n= !=

"}}}

" Compilation and Stuff{{{
"-------------------------------------------------------------------

nnoremap <silent> <buffer> <F5> :w!<cr>:!go install %:p:h<cr><cr>:!cp /home/mahbub/codego/bin/%:t:r /home/mahbub/golib/bin<cr><cr>
nnoremap <silent> <buffer> <F7> :w!<cr>:!go run %:p<cr>

"}}}
