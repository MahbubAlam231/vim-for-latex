" Folding in LaTeX-Box like in LaTeX-Suite

" My modification of @petobens (https://tex.stackexchange.com/users/9953/petobens) folding method.

" I've (@petobens https://tex.stackexchange.com/users/9953/petobens) modified Latex-Box (excellent) folding in two ways: i) since I only like to fold sections (parts, chapters, etc), the abstract environment and frames (in beamer class) I've added a new variable g:LatexBox_folded_environments that controls which environments are folded ii) I changed the LatexBox_FoldText() to resemble Latex-Suite.

"You should save this file as ftplugin/tex/folding.vim and it should work out of the box.

" If you want to fold other environments add them at Set options and LaTeXBox_FoldText part. (Can't say anything about the next paragraph)

" If you want to fold figures, tables and other environments you should add the functions LabelEnv(), CaptionEnv() and CaptionTable() from LaTeX-Box/ftplugin/latex-box/folding.vim and modify the LatexBox_FoldText() function to include the mentioned functions as its done in Latex-Box folding (but changing the format to the format that suits your needs).




" Initialization {{{

if exists('b:loaded_mylatexfolding')
    finish
endif
let b:loaded_mylatexfolding=0

" }}}
" Set options {{{

setlocal foldmethod=marker
setlocal foldexpr=LatexBox_FoldLevel(v:lnum)
setlocal foldtext=LatexBox_FoldText()

if !exists('g:LatexBox_fold_preamble')
    let g:LatexBox_fold_preamble=1
endif

" if !exists('g:LatexBox_fold_preamble_parts')
"     let g:LatexBox_fold_preamble_parts=1
" endif

if !exists('g:LatexBox_fold_parts')
    let g:LatexBox_fold_parts=[
                \ "appendix",
                \ "frontmatter",
                \ "mainmatter",
                \ "backmatter"
                \ ]
endif

if !exists('g:LatexBox_fold_sections')
    let g:LatexBox_fold_sections=[
                \ "part",
                \ "chapter",
                \ "section",
                \ "subsection",
                \ "subsubsection"
                \ ]
endif

if !exists('g:LatexBox_fold_envs')
    let g:LatexBox_fold_envs=1
endif
if !exists('g:LatexBox_folded_environments')
    let g:LatexBox_folded_environments = [
                \ "abstract",
                \ "lemma",
                \ "ulemma",
                \ "proposition",
                \ "uproposition",
                \ "theorem",
                \ "utheorem",
                \ "corollary",
                \ "ucorollary",
                \ "proof",
                \ "remark",
                \ "uremark",
                \ "frame"
                \ ]
endif

" }}}
" LatexBox_FoldLevel helper functions {{{

" This function parses the tex file to find the sections that are to be folded
" and their levels, and then predefines the patterns for optimized folding.
function! s:FoldSectionLevels()
    " Initialize
    let level = 1
    let foldsections = []

    " If we use two or more of the *matter commands, we need one more foldlevel
    let nparts = 0
    for part in g:LatexBox_fold_parts
        let i = 1
        while i < line("$")
            if getline(i) =~ '^\s*\\' . part . '\>'
                let nparts += 1
                break
            endif
            let i += 1
        endwhile
        if nparts > 1
            let level = 2
            break
        endif
    endfor

    " Combine sections and levels, but ignore unused section commands:  If we
    " don't use the part command, then chapter should have the highest
    " level.  If we don't use the chapter command, then section should be the
    " highest level.  And so on.
    let ignore = 1
    for part in g:LatexBox_fold_sections
        " For each part, check if it is used in the file.  We start adding the
        " part patterns to the fold sections array whenever we find one.
        let partpattern = '^\s*\(\\\|% Fake\)' . part . '\>'
        if ignore
            let i = 1
            while i < line("$")
                if getline(i) =~# partpattern
                    call insert(foldsections, [partpattern, level])
                    let level += 1
                    let ignore = 0
                    break
                endif
                let i += 1
            endwhile
        else
            call insert(foldsections, [partpattern, level])
            let level += 1
        endif
    endfor

    return foldsections
endfunction

" }}}
" LatexBox_FoldLevel {{{

" Parse file to dynamically set the sectioning fold levels
let b:LatexBox_FoldSections = s:FoldSectionLevels()

" Optimize by predefine common patterns
let s:foldparts = '^\s*\\\%(' . join(g:LatexBox_fold_parts, '\|') . '\)'
let s:folded = '\(% Fake\|\\\(document\|begin\|end\|'
            \ . 'front\|main\|back\|app\|sub\|section\|chapter\|part\)\)'

" Fold certain selected environments
let s:notbslash = '\%(\\\@<!\%(\\\\\)*\)\@<='
let s:notcomment = '\%(\%(\\\@<!\%(\\\\\)*\)\@<=%.*\)\@<!'
let s:envbeginpattern = s:notcomment . s:notbslash .
            \ '\\begin\s*{\('. join(g:LatexBox_folded_environments, '\|') .'\)}'
let s:envendpattern = s:notcomment . s:notbslash .
            \ '\\end\s*{\('. join(g:LatexBox_folded_environments, '\|') . '\)}'

function! LatexBox_FoldLevel(lnum)
    " Check for normal lines first (optimization)
    let line  = getline(a:lnum)
    if line !~ s:folded
        return "="
    endif

    " Fold preamble
    if g:LatexBox_fold_preamble == 1
        if line =~# '\s*\\documentclass'
            return ">1"
        elseif line =~# '^\s*\\begin\s*{\s*document\s*}'
            return "0"
        endif

    " " Fold preamble parts
    " if g:LatexBox_fold_preamble_parts == 1
    "     if line =~# '% Usepackages'
    "         return ">1"
    "     elseif line =~# '% Environments'
    "         return "0"
    "     endif
    " endif

    " Fold parts (\frontmatter, \mainmatter, \backmatter, and \appendix)
    if line =~# s:foldparts
        return ">1"
    endif

    " Fold chapters and sections
    for [part, level] in b:LatexBox_FoldSections
        if line =~# part
            return ">" . level
        endif
    endfor

    " Fold environments
    if g:LatexBox_fold_envs == 1
        if line =~# s:envbeginpattern
            return "a1"
        elseif line =~# '^\s*\\end{document}'
            " Never fold \end{document}
            return 0
        elseif line =~# s:envendpattern
            return "s1"
        endif
    endif

    " Return foldlevel of previous line
    return "="
endfunction

" }}}
" LatexBox_FoldText helper functions {{{

function! s:CaptionFrame(line)
    " Test simple variants first
    let caption1 = matchstr(a:line,'\\begin\*\?{.*}{\zs.\+\ze}')
    let caption2 = matchstr(a:line,'\\begin\*\?{.*}{\zs.\+')

    if len(caption1) > 0
        return caption1
    elseif len(caption2) > 0
        return caption2
    else
        let i = v:foldstart
        while i <= v:foldend
            if getline(i) =~ '^\s*\\frametitle'
                return matchstr(getline(i),
                            \ '^\s*\\frametitle\(\[.*\]\)\?{\zs.\+')
            end
            let i += 1
        endwhile

        return ""
    endif
endfunction

" }}}
" LatexBox_FoldText {{{

function! LatexBox_FoldText()
    " Initialize
    let line = getline(v:foldstart)
    let nlines = v:foldend - v:foldstart + 1
    let level = ''
    let title = line

    " Fold level and number of lines
    let fln = v:foldlevel
    if fln == 1
        let th = 'st'
    elseif fln == 2
        let th = 'nd'
    elseif fln == 3
        let th = 'rd'
    elseif fln > 3
        let th = 'th'
    endif

    let level = '+' . repeat('--', v:foldlevel-1) . ' ' . fln . th . ' '
    let alignlnr = repeat(' ', 10-2*(v:foldlevel)+1)
    let lineinfo = nlines . ' lines:     '

    " Preamble
    " if line =~ '\s*\\documentclass'
    if line =~ '\\documentclass'
        let title = 'Preamble' . ' | ' . matchstr(line, '\*\?\s*\[\zs.\{-}\ze]') . ' | ' . matchstr(line, '\*\?\s*{\zs.\{-}\ze}%')
    elseif line =~ '% Usepackages'
        let title = 'Usepackages'
    elseif line =~ '% Environments'
        let title = 'Environments'
    elseif line =~ '% Newcommands'
        let title = 'Newcommands'
    endif

    " Parts, sections and fakesections
    let sections = '\(\(sub\)*section\|part\|chapter\)'
    let secpat1 = '^\s*\\' . sections . '\*\?\s*{'
    let secpat2 = '^\s*\\' . sections . '\*\?\s*\['
    if line =~ '\\frontmatter'
        let title = "Frontmatter"
    elseif line =~ '\\mainmatter'
        let title = "Mainmatter"
    elseif line =~ '\\backmatter'
        let title = "Backmatter"
    elseif line =~ '\\appendix'
        let title = "Appendix"
    elseif line =~ secpat1 . '.*}'
        let primarytitle1 = matchstr(line, secpat1 . '\zs.\{-}\ze}\')
        let primarytitle2 = matchstr(line, secpat1 . '\zs.\{-}\ze}%')
        let aligntitle1 = '     ' . repeat(' ', 085-len(primarytitle1))
        let aligntitle2 = '     ' . repeat(' ', 085-len(primarytitle2))
        let labelcheck = matchstr(line, '\*\?\s*}\\\zs.\{-}\ze{')

        if labelcheck == 'label'
            let label = '\' . matchstr(line, '\*\?\s*}\\\zs.\{-}\ze%')
            let title = primarytitle1 . aligntitle1 . label
        else 
            let title = primarytitle2 . aligntitle2 . '\'
        endif

    elseif line =~ secpat1
        let primarytitle = matchstr(line, secpat1 . '\zs.*')
        let aligntitle = '     ' . repeat(' ', 085-len(primarytitle))
        let label = '\' . matchstr(line, '\*\?\s*}\\\zs.\{-}\ze%')
        let title = primarytitle . aligntitle . label
        " let title = matchstr(line, secpat1 . '\zs.*') . '  |  \' . matchstr(line, '\*\?\s*}\\\zs.\{-}\ze%')
    elseif line =~ secpat2 . '.*\]'
        let primarytitle = matchstr(line, secpat2 . '\zs.\{-}\ze}\')
        let aligntitle = '     ' . repeat(' ', 085-len(primarytitle))
        let label = '\' . matchstr(line, '\*\?\s*}\\\zs.\{-}\ze%')
        let title = primarytitle . aligntitle . label
        " let title = matchstr(line, secpat2 . '\zs.\{-}\ze}\') . '  |  \' . matchstr(line, '\*\?\s*}\\\zs.\{-}\ze%')
    elseif line =~ secpat2
        let primarytitle = matchstr(line, secpat2 . '\zs.*')
        let aligntitle = '     ' . repeat(' ', 085-len(primarytitle))
        let label = '\' . matchstr(line, '\*\?\s*}\\\zs.\{-}\ze%')
        let title = primarytitle . aligntitle . label
        " let title = matchstr(line, secpat2 . '\zs.*') . '  |  \' . matchstr(line, '\*\?\s*}\\\zs.\{-}\ze%')
    elseif line =~ 'Fake' . sections . ':'
        let title =  matchstr(line,'Fake' . sections . ':\s*\zs.*')
    elseif line =~ 'Fake' . sections
        let title =  matchstr(line, 'Fake' . sections)
    endif

    " Environments

    if line =~ '\\begin'
        " Capture environment name
        let env = matchstr(line,'\\begin\*\?{\zs\w*\*\?\ze}')

        if env == 'abstract'
            let title = 'Abstract'
        elseif env == 'frame'
            let caption = s:CaptionFrame(line)
            let title = 'Frame - ' . substitute(caption, '}\s*$', '','')

        " For theorem, lemma etc.
        else
            let title = matchstr(line, '^\s*\zs.\{-}\ze%')

        " elseif env == 'lemma'
        "     let title = '\' . matchstr(line, '\*\?\s*\\\zs.\{-}\ze%')
        "     let title = matchstr(line, '^\s*\zs.\{-}\ze%')
        " elseif env == 'ulemma'
        "     let title = '\' . matchstr(line, '\*\?\s*\\\zs.\{-}\ze%')
        "     let title = matchstr(line, '^\s*\zs.\{-}\ze%')
        " elseif env == 'proposition'
        "     let title = '\' . matchstr(line, '\*\?\s*\\\zs.\{-}\ze%')
        "     let title = matchstr(line, '^\s*\zs.\{-}\ze%')
        " elseif env == 'uproposition'
        "     let title = '\' . matchstr(line, '\*\?\s*\\\zs.\{-}\ze%')
        "     let title = matchstr(line, '^\s*\zs.\{-}\ze%')
        " elseif env == 'theorem'
        "     let title = '\' . matchstr(line, '\*\?\s*\\\zs.\{-}\ze%')
        "     let title = matchstr(line, '^\s*\zs.\{-}\ze%')
        " elseif env == 'utheorem'
        "     let title = '\' . matchstr(line, '\*\?\s*\\\zs.\{-}\ze%')
        "     let title = matchstr(line, '^\s*\zs.\{-}\ze%')
        " elseif env == 'corollary'
        "     let title = '\' . matchstr(line, '\*\?\s*\\\zs.\{-}\ze%')
        "     let title = matchstr(line, '^\s*\zs.\{-}\ze%')
        " elseif env == 'ucorollary'
        "     let title = matchstr(line, '^\s*\zs.\{-}\ze%')
        "     let title = '\' . matchstr(line, '\*\?\s*\\\zs.\{-}\ze%')
        " elseif env == 'remark'
        "     let title = '\' . matchstr(line, '\*\?\s*\\\zs.\{-}\ze%')
        "     let title = matchstr(line, '^\s*\zs.\{-}\ze%')
        " elseif env == 'uremark'
        "     let title = '\' . matchstr(line, '\*\?\s*\\\zs.\{-}\ze%')
        "     let title = matchstr(line, '^\s*\zs.\{-}\ze%')
        " elseif env == 'proof'
        "     let title = 'Proof'
        "     let title = matchstr(line, '\\label\*\?\s*{\zs.\{-}\ze}')
        endif
    endif

    return printf('%-15s %-138s %4d lines', level, title, lineinfo)
    " return level . alignlnr . title . ' ' . repeat(' ', 10) . lineinfo 
endfunction

" }}}

