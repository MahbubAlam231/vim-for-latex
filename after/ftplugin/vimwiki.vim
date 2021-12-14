" Author        : Mahbub Alam
" Created       : 14/12/2021 (Dec, Tue) 18:48:54 IST
" License       : Self
" Description   : https://github.com/rddunphy

function! VimwikiTabOrUltiSnips() abort
	let ret = vimwiki#tbl#kbd_tab()
	if ret=="\<Tab>"
		return "\<C-R>=UltiSnips#ExpandSnippetOrJump()\<CR>"
	end
	return ret
endfunction

function! VimwikiShiftTabOrSupertab() abort
	let ret = vimwiki#tbl#kbd_shift_tab()
	if ret=="\<S-Tab>"
		return "\<C-R>=SuperTab('p')\<CR>"
	end
	return ret
endfunction

inoremap <expr><buffer> <TAB> VimwikiTabOrUltiSnips()
inoremap <expr><buffer> <S-TAB> VimwikiShiftTabOrSupertab()
