"-------------------------------------------------------------------
" Author(s)     : Mahbub Alam
" Created       : ~30/05/2018
" License       : MIT
" Description   : Folding in LaTeX-Box or in vimtex like in LaTeX-Suite
"-------------------------------------------------------------------

" Folding in LaTeX-Box or in vimtex like in LaTeX-Suite{{{

" My modification of @petobens (https://tex.stackexchange.com/a/130826/154271) folding method.

" I've (@petobens https://tex.stackexchange.com/users/9953/petobens) modified Latex-Box (excellent) folding in two ways: i) since I only like to fold sections (parts, chapters, etc), the abstract environment and frames (in beamer class) I've added a new variable g:LatexBox_folded_environments that controls which environments are folded ii) I changed the LatexBox_FoldText() to resemble Latex-Suite.

"You should save this file as ftplugin/tex/folding.vim and it should work out of the box.

" If you want to fold other environments add them at Set options and LaTeXBox_FoldText part. (Can't say anything about the next paragraph)

" If you want to fold figures, tables and other environments you should add the functions LabelEnv(), CaptionEnv() and CaptionTable() from LaTeX-Box/ftplugin/latex-box/folding.vim and modify the LatexBox_FoldText() function to include the mentioned functions as its done in Latex-Box folding (but changing the format to the format that suits your needs).

" }}}

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
                \ "subsubsection",
                \ "cvsection"
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
                \ "thmboxed",
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
            \ . 'front\|main\|back\|app\|sub\|cv\|section\|chapter\|part\)\)'

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
        "     if line =~# '% Packages'
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
    endif
endfunction

" }}}
" LatexBox_FoldText helper functions {{{

function! s:CaptionFrame(line)
    " Test simple variants first
    let caption1 = matchstr(a:line,'\\begin\*\?{.*}{\zs.\{-}\ze}')
    let caption2 = matchstr(a:line,'\\begin\*\?{.*}\[.*\]{\zs.\{-}\ze}')
    " let caption3 = matchstr(a:line,'\\begin\*\?{.*}{\zs.\+')

    if len(caption1) > 0
        return caption1
    elseif len(caption2) > 0
        return caption2
        " elseif len(caption3) > 0
        "     return caption3
    else
        let i = v:foldstart
        while i <= v:foldend
            if getline(i) =~ '^\s*\\frametitle'
                return matchstr(getline(i),
                            \ '^\s*%*\s*\\frametitle\(\[.*\]\)\?{\zs.\+\ze}')
                break
            elseif getline(i) =~ '^\s*%*\s*\\titlepage'
                return 'Title page'
                break
            elseif getline(i) =~ '^\s*%*\s*\\tableofcontents'
                return 'Table of contents'
                break
            elseif getline(i) =~ '^\s*%*\s*.*Thank you.*$'
                return 'Thank you'
                break
            elseif getline(i) =~ '^\s*%*\s*.*Tack.*$'
                return 'Tack'
                break
            end
            let i += 1
        endwhile

        return "/~/~NO CAPTION~/~/"
    endif
endfunction

" }}}
" LatexBox_FoldText

function! LatexBox_FoldText()
    " Initialize
    let line = getline(v:foldstart)
    let nlines = v:foldend - v:foldstart + 1
    let level = ''
    let title = line

    " Fold level and number of lines{{{

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

    let level = '+' . repeat('-', fln-1) . ' ' . fln . th . ' '
    " let alignlnr = repeat(' ', 10-2*(v:foldlevel)+1)
    " let lineinfo = nlines . ' lines:     '

    " }}}

    " Preamble{{{

    " if line =~ '\s*\\documentclass'
    if line =~ '\\documentclass'

        " Checking if line spacing has been set by baselinestretch
        " Put that line within the first 50 lines
        let i = v:foldstart
        let j = v:foldend
        let spacing = ''
        while i < j
            if getline(i) =~ '^\\renewcommand{\\baselinestretch}'
                let spacing = ', baselinestretch=' . matchstr(getline(i), '^\\renewcommand{\\baselinestretch}{\zs.\{-}\ze}')
                break
            endif
            let i += 1
        endwhile

        " let title = 'Preamble' . ' | ' . matchstr(line, '\*\?\s*\[\zs.\{-}\ze\]') . ' | ' . matchstr(line, '\*\?\s*{\zs.\{-}\ze}')
        let title = 'Preamble' . ' | ' . matchstr(line, '\*\?\s*\[\zs.\{-}\ze\]') . spacing . ' | ' . matchstr(line, '\*\?\s*{\zs.\{-}\ze}')

        " Checking if documentclass line is commented
        if line =~ '^\s*%'
            let title = '[COMMENTED DOCUMENTCLASS LINE]'
        endif

    elseif line =~ '% Packages'

        let title = '[COMMENTED Packages]'
        let i = v:foldstart
        let j = v:foldend
        while i < j
            " Checking if there are uncommented valid lines
            if getline(i) !~ '^\s*%\|^\s*$'
                let title = 'Packages'
                break
            endif
            let i += 1
        endwhile

    elseif line =~ '% Environments'

        let title = '[COMMENTED Environments]'
        let i = v:foldstart
        let j = v:foldend
        while i < j
            " Checking if there are uncommented valid lines
            if getline(i) !~ '^\s*%\|^\s*$'
                let title = 'Environments'
                break
            endif
            let i += 1
        endwhile

    elseif line =~ '% Newcommands'

        let title = '[COMMENTED Newcommands]'
        let i = v:foldstart
        let j = v:foldend
        while i < j
            " Checking if there are uncommented valid lines
            if getline(i) !~ '^\s*%\|^\s*$'
                let title = 'Newcommands'
                break
            endif
            let i += 1
        endwhile

    endif

    " }}}

    "Title{{{

    if line=~ '\\title'
        let shorttitle = matchstr(line, '\\title\*\?\s*\[\zs.\{-}\ze\]')

        " Giving short-title the priority
        if len(shorttitle) > 0
            let primarytitle = shorttitle
        else
            let longtitle = matchstr(line, '\\title\*\?\s*\(\[\]\)\?{\zs.\{-}\ze}\(\s*%*\)*F{O{L{D')
            let primarytitle = longtitle
        endif

        " Checking whether title is commented
        if line =~ '^\\title'
            let comment = ''
            let endbracket = ''
        elseif line =~'^\s*%'
            let comment = '[COMMENTED '
            let endbracket = ']'
        endif

        " Making title at max 60-character
        if len(primarytitle) > 60
            let title = comment . 'Title' . endbracket . ' - ' . printf('%.57s', primarytitle) . '...'
        else
            let title = comment . 'Title' . endbracket . ' - ' . primarytitle
        endif

    endif

    " }}}

    " Section-environments, frontmatter, appendix etc{{{

    " Getting section-environment title{{{

    let sections = '\(\(sub\|cv\)*section\|part\|chapter\)'
    let secpat1 = '\*\?\s*\\' . sections . '\*\?\s*{'
    let commentedsecpat1 = '^\s*%\(\s*%*\)*\\' . sections . '\*\?\s*{'
    let secpat2 = '^\s*\\' . sections . '\*\?\s*\['

    " Whether comment exists or not
    if line =~# commentedsecpat1 . '.*}\(\s*%*\)*F{O{L{D'
        let comment = '[COMMENTED '
        let endbracket = ']'
    elseif line =~# secpat1 . '.*}\(\s*%*\)*F{O{L{D'
        let comment = ''
        let endbracket = ''
    endif

    " Capturing the type of section-environment ((sub*|cv)part|chapter|section)
    let type = matchstr(line, '\*\?\s*\\\zs.\{-}\ze{')
    " Section-environment typename
    if type ==# 'part'
        let typename = 'P'
    elseif type ==# 'chapter'
        let typename = 'C'
    elseif type ==# 'section'
        let typename = 'S'
    elseif type ==# 'subsection'
        let typename = 'Ss'
    elseif type ==# 'subsubsection'
        let typename = 'Sss'
    elseif type ==# 'cvsection'
        let typename = 'cvS'
    elseif type ==# 'chapter*'
        let typename = 'C*'
    elseif type ==# 'section*'
        let typename = 'S*'
    elseif type ==# 'subsection*'
        let typename = 'Ss*'
    elseif type ==# 'subsubsection*'
        let typename = 'Sss*'
    elseif type ==# 'cvsection*'
        let typename = 'cvS*'
    else
        let typename = '~'
    endif

    let typespace = repeat(' ', 05-len(typename))

    " Checking whether label exists
    let labelcheck = matchstr(line, '\*\?\s*}\\\zs.\{-}\ze{')

    " Creating different section-environment title depending on whether label exists
    if labelcheck == 'label'
        " Capturing actual label name
        let labelname = '    \ ' . matchstr(line, '\*\?\s*}\\label{\zs.\{-}\ze}\(\s*%*\)*F{O{L{D')
        " Making label at max 30-character
        if len(labelname) > 30
            let label = printf('%.027s', labelname) . '...'
        else
            let label = labelname
        endif

        " Capturing section-environment title
        let primarytitle = comment . typename . endbracket . typespace . matchstr(line, secpat1 . '\zs.\{-}\ze}\\label')

    else
        " Label doesn't exist
        let label = '    \ '
        " Capturing section-environment title
        let primarytitle = comment . typename . endbracket . typespace . matchstr(line, secpat1 . '\zs.\{-}\ze}')
    endif

    " Making section-environment-title at max 60-character
    if len(primarytitle) > 60
        let secondarytitle1 = printf('%.57s', primarytitle) . '...'
    else
        let aligntitle = repeat(' ', 60-len(primarytitle))
        let secondarytitle1 = primarytitle . aligntitle
    endif
    " Penultimate title
    let secondarytitle2 = secondarytitle1 . label

    " }}}

    if line =~# '\\frontmatter'
        let title = "Frontmatter"
    elseif line =~# '\\mainmatter'
        let title = "Mainmatter"
    elseif line =~# '\\backmatter'
        let title = "Backmatter"
    elseif line =~# '\\appendix'
        let title = "Appendix"

    elseif line =~# secpat1 . '.*}\(\s*%*\)*F{O{L{D'

        " Final section-environment title
        let title = secondarytitle2

        " }}}

        " Other types of section patterns{{{

    elseif line =~ secpat1
        let primarytitle = matchstr(line, secpat1 . '\zs.*')
        let aligntitle = repeat(' ', 60-len(primarytitle))
        let label = '    \' . matchstr(line, '\*\?\s*}\\\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        let title = primarytitle . aligntitle . label
        " let title = matchstr(line, secpat1 . '\zs.*') . '  |  \' . matchstr(line, '\*\?\s*}\\\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
    elseif line =~ secpat2 . '.*\]'
        let primarytitle = matchstr(line, secpat2 . '\zs.\{-}\ze}\')
        let aligntitle = repeat(' ', 60-len(primarytitle))
        let label = '    \' . matchstr(line, '\*\?\s*}\\\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        let title = primarytitle . aligntitle . label
        " let title = matchstr(line, secpat2 . '\zs.\{-}\ze}\') . '  |  \' . matchstr(line, '\*\?\s*}\\\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
    elseif line =~ secpat2
        let primarytitle = matchstr(line, secpat2 . '\zs.*')
        let aligntitle = repeat(' ', 60-len(primarytitle))
        let label = '    \' . matchstr(line, '\*\?\s*}\\\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        let title = primarytitle . aligntitle . label
        " let title = matchstr(line, secpat2 . '\zs.*') . '  |  \' . matchstr(line, '\*\?\s*}\\\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
    elseif line =~ 'Fake' . sections . ':'
        let title =  matchstr(line,'Fake' . sections . ':\s*\zs.*')
    elseif line =~ 'Fake' . sections
        let title =  matchstr(line, 'Fake' . sections)
    endif

    " }}}

    " Environments{{{

    " Getting environment title{{{
    if line =~ '\\begin'
        " Capture environment name
        let env = matchstr(line,'\\begin\*\?{\zs\w*\*\?\ze}')
        " Capturing given name to the environment
        let envname = matchstr(line, '\*\?\s*\[\zs.\{-}\ze\]')

        if line =~# '^\s*%\(\s*%*\)*\\begin'
            let comment = '[COMMENTED '
            let endbracket = ']'
        else
            let comment = ''
            let endbracket = ''
        endif

        " Checking whether label exists when environment might have a given name
        let labelcheck1 = matchstr(line, '\*\?\s*}\\\zs.\{-}\ze{')
        let labelcheck2 = matchstr(line, '\*\?\s*\]\\\zs.\{-}\ze{')

        " Creating different environment title depending on whether it has a given name and capturing label
        if labelcheck1 == 'label'
            " No given name to environment, so just capture label and make empty environment-title
            " Capturing label
            let label1 = '    \ ' . matchstr(line, '\*\?\s*\\label{\zs.\{-}\ze}\(\s*%*\)*F{O{L{D')
            " Making label at max 30-character
            if len(label1) > 30
                let label2 = printf('%.27s', label1) . '...'
            else
                let label2 = label1
            endif

            let primarytitle1 = ''

            " Discarded/Commented{{{
            " let primarytitle = '  ' . matchstr(line, '\*\?\s*}\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
            " " Making environment-title at max 90-character
            " if len(primarytitle) > 90
            "     let secondarytitle = printf('%.87s', primarytitle) . '...'
            " else
            "     let secondarytitle = primarytitle
            " endif}}}

        elseif labelcheck2 == 'label'
            " Environment has given name, empty or otherwise, together with label, so capturing them
            if envname == ''
                let primarytitle1 = ''
            else
                " Environment has a given name, so capturing it
                let primarytitle1 = ' - ' . envname
            endif

            " Capturing label
            let label1 = '    \ ' . matchstr(line, '\*\?\s*\]\\label{\zs.\{-}\ze}\(\s*%*\)*F{O{L{D')
            " Making label at max 30-character
            if len(label1) > 30
                let label2 = printf('%.27s', label1) . '...'
            else
                let label2 = label1
            endif

            " Discarded/Commented{{{
            " " Environment-title should be at max 90-character
            " " Making environment-given-name at max 68-character
            " if len(primarytitle1) > 60
            "     let primarytitle2 = printf('%.57s', primarytitle1) . '...'
            " else
            "     let aligntitle = repeat(' ', 60-len(primarytitle1))
            "     let primarytitle2 = primarytitle1 . aligntitle
            " endif
            " " Creating environment-title
            " let secondarytitle = primarytitle2 . '  ' . label2}}}

        elseif envname == ''
            " Environment is empty and has no label
            let primarytitle1 = ''
            let label2 = '    \ '
        else
            " Environment is non-empty and has no label
            let primarytitle1 = ' - ' . envname
            let label2 = '    \ '
        endif

        " }}}

        " Abstract{{{

        if env == 'abstract'
            let title = comment . 'Abstract' . endbracket

            " }}}

            " Definition{{{

        elseif env == 'definition'
            let primarytitle2 = comment . 'Definition' . endbracket . primarytitle1

        elseif env == 'udefinition'
            let primarytitle2 = comment . 'UnnumberedDefinition' . endbracket . primarytitle1

        elseif env == 'definition*'
            let primarytitle2 = comment . 'UnnumberedDefinition' . endbracket . primarytitle1

            " }}}

            " Notation{{{

        elseif env == 'notation'
            let primarytitle2 = comment . 'Notation' . endbracket . primarytitle1

        elseif env == 'unotation'
            let primarytitle2 = comment . 'UnnumberedNotation' . endbracket . primarytitle1

        elseif env == 'notation*'
            let primarytitle2 = comment . 'UnnumberedNotation' . endbracket . primarytitle1

            " }}}

            " Lemma{{{

        elseif env == 'lemma'
            let primarytitle2 = comment . 'Lemma' . endbracket . primarytitle1

        elseif env == 'ulemma'
            let primarytitle2 = comment . 'UnnumberedLemma' . endbracket . primarytitle1

        elseif env == 'lemma*'
            let primarytitle2 = comment . 'UnnumberedLemma' . endbracket . primarytitle1

            " }}}

            " Proposition{{{

        elseif env == 'proposition'
            let primarytitle2 = comment . 'Proposition' . endbracket . primarytitle1

        elseif env == 'uproposition'
            let primarytitle2 = comment . 'UnnumberedProposition' . endbracket . primarytitle1

        elseif env == 'proposition*'
            let primarytitle2 = comment . 'UnnumberedProposition' . endbracket . primarytitle1

            " }}}

            " Theorem{{{

        elseif env == 'theorem'
            let primarytitle2 = comment . 'Theorem' . endbracket . primarytitle1

        elseif env == 'utheorem'
            let primarytitle2 = comment . 'UnnumberedTheorem' . endbracket . primarytitle1

        elseif env == 'theorem*'
            let primarytitle2 = comment . 'UnnumberedTheorem' . endbracket . primarytitle1

        elseif env == 'thmboxed'
            let primarytitle2 = comment . 'Boxed Theorem' . endbracket . primarytitle1

            " }}}

            " Corollary{{{

        elseif env == 'corollary'
            let primarytitle2 = comment . 'Corollary' . endbracket . primarytitle1

        elseif env == 'ucorollary'
            let primarytitle2 = comment . 'UnnumberedCorollary' . endbracket . primarytitle1

        elseif env == 'corollary*'
            let primarytitle2 = comment . 'UnnumberedCorollary' . endbracket . primarytitle1

            " }}}

            " Proof{{{

        elseif env == 'proof'
            if envname == ''
                let primarytitle2 = comment . 'Proof' . endbracket
            else
                let primarytitle2 = comment . envname . endbracket
            endif

            " }}}

            " Remark{{{

        elseif env == 'remark'
            let primarytitle2 = comment . 'Remark' . endbracket . primarytitle1

        elseif env == 'uremark'
            let primarytitle2 = comment . 'UnnumberedRemark' . endbracket . primarytitle1

        elseif env == 'remark*'
            let primarytitle2 = comment . 'UnnumberedRemark' . endbracket . primarytitle1

            " }}}

            " Conjecture{{{

        elseif env == 'conjecture'
            let primarytitle2 = comment . 'Conjecture' . endbracket . primarytitle1

        elseif env == 'uconjecture'
            let primarytitle2 = comment . 'UnnumberedConjecture' . endbracket . primarytitle1

        elseif env == 'conjecture*'
            let primarytitle2 = comment . 'UnnumberedConjecture' . endbracket . primarytitle1

            " }}}

            " Frame{{{

        elseif env == 'frame'
            let caption = s:CaptionFrame(line)
            if line =~# '^\s*\\begin'
                " let primarytitle2 = 'Frame - ' . substitute(caption, '}\s*$', '','')
                let primarytitle2 = 'Frame - ' . caption
            elseif line =~# '^\s*%\(\s*%*\)*\\begin'
                let primarytitle2 = '[COMMENTED Frame] - ' . caption
            endif

            " }}}

            " Other environments{{{
        else
            let primarytitle2 = comment . env . endbracket . primarytitle1

            " Discarded/Commented{{{
            " " Capture the whole line for other environments
            " let primarytitle1 = matchstr(line, '^\s*\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
            " " Making environment-title at max 90-character
            " " Making environment-given-name at max 60-character
            " if len(primarytitle1) > 60
            "     let primarytitle2 = printf('%.57s', primarytitle1) . '...'
            " else
            "     let primarytitle2 = primarytitle1
            " endif}}}

        endif

        " }}}

        " Environment-title should be at max 90-character
        " Making environment-given-name at max 60-character
        if env != 'frame'
            if len(primarytitle2) > 60
                let primarytitle3 = printf('%.57s', primarytitle2) . '...'
            else
                let aligntitle = repeat(' ', 60-len(primarytitle2))
                let primarytitle3 = primarytitle2 . aligntitle
            endif
        else
            if len(primarytitle2) > 60
                let primarytitle3 = printf('%.57s', primarytitle2) . '...'
            else
                let aligntitle = repeat(' ', 60-len(primarytitle2))
                let primarytitle3 = primarytitle2 . aligntitle
            endif
        endif
        " Creating environment-title
        let title = primarytitle3 . label2

        " Others{{{

        " elseif env == 'lemma'
        "     let title = '\' . matchstr(line, '\*\?\s*\\\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        "     let title = matchstr(line, '^\s*\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        " elseif env == 'ulemma'
        "     let title = '\' . matchstr(line, '\*\?\s*\\\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        "     let title = matchstr(line, '^\s*\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        " elseif env == 'proposition'
        "     let title = '\' . matchstr(line, '\*\?\s*\\\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        "     let title = matchstr(line, '^\s*\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        " elseif env == 'uproposition'
        "     let title = '\' . matchstr(line, '\*\?\s*\\\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        "     let title = matchstr(line, '^\s*\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        " elseif env == 'theorem'
        "     let title = '\' . matchstr(line, '\*\?\s*\\\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        "     let title = matchstr(line, '^\s*\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        " elseif env == 'utheorem'
        "     let title = '\' . matchstr(line, '\*\?\s*\\\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        "     let title = matchstr(line, '^\s*\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        " elseif env == 'corollary'
        "     let title = '\' . matchstr(line, '\*\?\s*\\\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        "     let title = matchstr(line, '^\s*\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        " elseif env == 'ucorollary'
        "     let title = matchstr(line, '^\s*\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        "     let title = '\' . matchstr(line, '\*\?\s*\\\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        " elseif env == 'remark'
        "     let title = '\' . matchstr(line, '\*\?\s*\\\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        "     let title = matchstr(line, '^\s*\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        " elseif env == 'uremark'
        "     let title = '\' . matchstr(line, '\*\?\s*\\\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        "     let title = matchstr(line, '^\s*\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        " elseif env == 'proof'
        "     let title = 'Proof'
        "     let title = matchstr(line, '\\label\*\?\s*{\zs.\{-}\ze}')

        " }}}

    endif

    " }}}

    " Helper folds{{{
    " Put 'h' after '%' in the commented line to get helper-folds

    if line =~ '\*\?\s*%\s*\Ch \s*'
        " Capture the whole line or the given explantion for helper-folds
        let primarytitleL = matchstr(line, '^\s*\zs.\{-}\ze\s*%\s*h\(\s*%*\)*F{O{L{D')
        let primarytitleE = matchstr(line, '\*\?\s*%\s*h\s*\zs.\{-}\ze\(\s*%*\)*F{O{L{D')
        let primarytitle = '[HELPER FOLD] - ' . primarytitleL . primarytitleE

        " Making helper-folds at max 90-character
        if len(primarytitle) > 90
            let title = printf('%.87s', primarytitle) . '...'
            " Don't mess up my preamble fold-titles
            " elseif line =~ '% Packages'
            "     let title = 'Packages'
            " elseif line =~ '% Environments'
            "     let title = 'Environments'
            " elseif line =~ '% Newcommands'
            "     let title = 'Newcommands'
        else
            let title = primarytitle
        endif
    endif

    " }}}

    " Commented-folds{{{
    " Put 'c' after '%' in the commented line to get commented-folds

    if line =~ '^\s*%\s*\Cc \s*'
        " Capture the whole line for commented-folds
        let primarytitle = '[COMMENTED] - ' . matchstr(line, '^\s*%\s*c\s*\zs.\{-}\ze\(\s*%*\)*F{O{L{D')

        " Making commented-folds at max 90-character
        if len(primarytitle) > 90
            let title = printf('%.87s', primarytitle) . '...'
        else
            let title = primarytitle
        endif
    endif

    " }}}

    " " Helper folds{{{

    " if line =~ '^\s*% '
    "     let primarytitle = matchstr(line, '^\s*% \zs.\{-}\ze\(\s*%*\)*F{O{L{D')
    "     if title != 'Packages' && title != 'Environments' && title != 'Newcommands'
    "         if len(primarytitle) > 124
    "             let title = '[H]  - ' . printf('%.121s', primarytitle) . '...'
    "         else
    "             let title = '[H]  - ' . primarytitle
    "         endif
    "     endif
    " endif

    " " }}}

    return printf('%-15s %-92s %5d lines', level, title, nlines)
    " return printf('%-15s %-138s', level, title)
    " return printf('%-15s %.095s %-40s %4d lines', level, title, label, nlines)
    " return level . alignlnr . title . ' ' . repeat(' ', 10) . nlines

endfunction

"
