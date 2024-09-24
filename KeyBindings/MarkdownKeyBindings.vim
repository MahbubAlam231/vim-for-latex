" -------------------------------------------------------------------
" Author        : Mahbub Alam
" Created       : 08/09/2024 (Sep, Sun) 17:24:57 CEST
" License       : Self
" Description   : Markdown Keybindings
" -------------------------------------------------------------------
"  __  __            _       _
" |  \/  | __ _ _ __| | ____| | _____      ___ __
" | |\/| |/ _` | '__| |/ / _` |/ _ \ \ /\ / / '_ \
" | |  | | (_| | |  |   < (_| | (_) \ V  V /| | | |
" |_|  |_|\__,_|_|  |_|\_\__,_|\___/ \_/\_/ |_| |_|
"               _  __          ____  _           _ _
"              | |/ /___ _   _| __ )(_)_ __   __| (_)_ __   __ _ ___
"              | ' // _ \ | | |  _ \| | '_ \ / _` | | '_ \ / _` / __|
"              | . \  __/ |_| | |_) | | | | | (_| | | | | | (_| \__ \
"              |_|\_\___|\__, |____/|_|_| |_|\__,_|_|_| |_|\__, |___/
"                        |___/                             |___/
" -------------------------------------------------------------------

" Bold
inoremap <buffer> * ******<left><left><left>

" Arrows
inoremap <buffer> <localleader>la <--
inoremap <buffer> <localleader>ra -->

" Table
nnoremap <buffer> <localleader>tb :VimwikiTable 
inoremap <buffer> <localleader>tb <esc>:VimwikiTable 

nnoremap <buffer> <localleader>tb2 :VimwikiTable 2<cr>jla
inoremap <buffer> <localleader>tb2 <esc>:VimwikiTable 2<cr>jla

nnoremap <buffer> <localleader>tb3 :VimwikiTable 3<cr>
inoremap <buffer> <localleader>tb3 <esc>:VimwikiTable 3<cr>

" Adding horizontal line in between vimwiki table
nnoremap <buffer> <localleader>hr yypV:s/[^\|]/-/g<cr>:noh<cr>
inoremap <buffer> <localleader>hr <esc>yypV:s/[^\|]/-/g<cr>yypV:s/-/ /g<cr>:noh<cr>la
