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
inoremap <buffer> 2* ****<left><left>

" iunmap <buffer> \|
" iunmap <buffer> \|\|

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
nnoremap <buffer> <localleader>br yypV:s/[^\|]/ /g<cr>:noh<cr>
inoremap <buffer> <localleader>br <esc>mmyypV:s/[^\|]/ /g<cr>:noh<cr>yyp`m2ji

" svenska
inoremap <buffer> ® r
inoremap <buffer> þ t
inoremap <buffer> á ä
inoremap <buffer> ó ö
inoremap <buffer> ß s

" Pandoc markdown

" nnoremap <buffer> <localleader>pb :Pandoc beamer<cr>
" nnoremap <buffer> <localleader>pp :Pandoc pdf -V geometry:margin=3cm -V fontsize=12pt<cr>
" nnoremap <buffer> <localleader>pd :Pandoc pdf -V geometry:margin=2cm -V fontsize=12pt<cr>
" " nnoremap <buffer> <localleader>pp :Pandoc pdf -V geometry:margin=3cm -V fontsize=12pt --from=markdown+pipe_tables<cr>
" nnoremap <buffer> <F9>            :Pandoc pdf<cr>
" inoremap <buffer> <F9>            <esc>:Pandoc pdf<cr>a
" nnoremap <buffer> <localleader>ph :Pandoc html -o ~/Dropbox/Data/vimwiki_html/%:t:r.html<cr>


" nnoremap <buffer> <localleader>pb :!pandoc beamer<cr>
nnoremap <buffer> <localleader>pp :!pandoc % -o %:t:r.pdf -V geometry:margin=3cm -V fontsize=12pt<cr><cr>
nnoremap <buffer> <localleader>p2 :!pandoc % -o %:t:r.pdf -V geometry:margin=2cm -V fontsize=12pt<cr><cr>
nnoremap <buffer> <F9>            :!pandoc % -o %:t:r.pdf -V geometry:margin=3cm -V fontsize=12pt<cr><cr>
inoremap <buffer> <F9>            <esc>:!pandoc % -o %:t:r.pdf -V geometry:margin=3cm -V fontsize=12pt<cr><cr>
nnoremap <buffer> <localleader>ph :!pandoc -s -c style.css -o ~/Dropbox/Data/vimwiki_html/%:t:r.html<cr><cr>
