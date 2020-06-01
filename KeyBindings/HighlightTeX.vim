" Author        : Mahbub Alam
" Created       : 17/11/2018
" License       : Self
" Description   : TeXHighlight

" From .vimrc
"-------------------------------------------------------------------

" Part, Chapter, Section, Subsection, Subsubsection, label"{{{

highlight Folds_brackets_comments ctermbg=174 ctermfg=black

augroup TeXHighlighting
    autocmd!
    autocmd Filetype tex let m = matchadd("Folds_brackets_comments",'%{T{E{X')
    autocmd Filetype tex let m = matchadd("Folds_brackets_comments",'%}T}E}X')
    autocmd Filetype tex let m = matchadd("Folds_brackets_comments",'%F{O{L{D')
    autocmd Filetype tex let m = matchadd("Folds_brackets_comments",'%F}O}L}D')
augroup end

highlight PartMarkerGroup ctermbg=087 ctermfg=black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("PartMarkerGroup",'% Part')
    autocmd Filetype tex let m = matchadd("PartMarkerGroup",'% UnnumberedPart')
augroup end

highlight PartGroup ctermbg=087 ctermfg=black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("PartGroup",'\\part{.\{}}')
    autocmd Filetype tex let m = matchadd("PartGroup",'\\part\*{.\{}}')
augroup end

highlight ChapterMarkerGroup ctermbg=092 ctermfg=yellow

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("ChapterMarkerGroup",'% Chapter')
    autocmd Filetype tex let m = matchadd("ChapterMarkerGroup",'% UnnumberedChapter')
augroup end

highlight ChapterGroup ctermbg=092 ctermfg=yellow

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("ChapterGroup",'\\chapter{.\{}}')
    autocmd Filetype tex let m = matchadd("ChapterGroup",'\\chapter\*{.\{}}')
augroup end

highlight SectionMarkerGroup ctermbg=39 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("SectionMarkerGroup",'% Section')
    autocmd Filetype tex let m = matchadd("SectionMarkerGroup",'% UnnumberedSection')
augroup end

highlight SectionGroup ctermbg=39 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("SectionGroup",'\\section{.\{}}')
    autocmd Filetype tex let m = matchadd("SectionGroup",'\\section\*{.\{}}')
augroup end

highlight SubsectionMarkerGroup ctermbg=198 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("SubsectionMarkerGroup",'% Subsection')
    autocmd Filetype tex let m = matchadd("SubsectionMarkerGroup",'% UnnumberedSubsection')
augroup end

highlight SubsectionGroup ctermbg=198 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("SubsectionGroup",'\\subsection{.\{}}')
    autocmd Filetype tex let m = matchadd("SubsectionGroup",'\\subsection\*{.\{}}')
augroup end

highlight SubsubsectionMarkerGroup ctermbg=yellow ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("SubsubsectionMarkerGroup",'% Subsubsection')
    autocmd Filetype tex let m = matchadd("SubsubsectionMarkerGroup",'% UnnumberedSubsubsection')
augroup end

highlight SubsubsectionGroup ctermbg=yellow ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("SubsubsectionGroup",'\\subsubsection{.\{}}')
    autocmd Filetype tex let m = matchadd("SubsubsectionGroup",'\\subsubsection\*{.\{}}')
augroup end

highlight Label ctermbg=141 ctermfg=0

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("Label",'\\label{.\{}}')
augroup end

"}}}
" MarkerGroup, BoldGroup"{{{

highlight TitleAbstract ctermbg=92 ctermfg=yellow

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("TitleAbstract",'% Abstract')
    autocmd Filetype tex let m = matchadd("TitleAbstract",'% Title')
augroup end

highlight MarkerGroup ctermbg=White ctermfg=Black

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

highlight YellowMarkerGroup ctermbg=yellow ctermfg=black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% Equation')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% UnnumberedEquation')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% Align')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% UnnumberedAlign')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% AlignedEquation')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% UnnumberedAlignedEquation')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% GatheredEquation')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% UnnumberedGatheredEquation')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% Subequations')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% Gather')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% UnnumberedGather')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% Center')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% CaseDefinition')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% DcaseDefinition')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% Enumerate')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% Itemize')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% figure')
    autocmd Filetype tex let m = matchadd("YellowMarkerGroup",'% diary')
augroup end

highlight SalmonMarkerGroup ctermbg=209 ctermfg=black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("SalmonMarkerGroup",'% Array')
    autocmd Filetype tex let m = matchadd("SalmonMarkerGroup",'% Matrix')
    autocmd Filetype tex let m = matchadd("SalmonMarkerGroup",'% Bmatrix')
    autocmd Filetype tex let m = matchadd("SalmonMarkerGroup",'% Pmatrix')
augroup end

highlight Bibliography ctermbg=92 ctermfg=yellow

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("Bibliography",'% Bibliography')
augroup end

highlight ImpliesMarkerGroup ctermbg=208 ctermfg=black

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

highlight Abstract ctermbg=92 ctermfg=yellow

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

highlight DefinitionGroup ctermbg=214 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("DefinitionGroup",'\\begin{definition}')
    autocmd Filetype tex let m = matchadd("DefinitionGroup",'\\end{definition}')
augroup end

highlight uDefinitionGroup ctermbg=100 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("uDefinitionGroup",'\\begin{udefinition}')
    autocmd Filetype tex let m = matchadd("uDefinitionGroup",'\\end{udefinition}')
augroup end

highlight TheoremGroup ctermbg=133 ctermfg=Black

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

highlight uTheoremGroup ctermbg=brown ctermfg=Black

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

highlight ProofGroup ctermbg=108 ctermfg=Black

augroup TeXHighlighting
    autocmd Filetype tex let m = matchadd("ProofGroup",'\\begin{proof}')
    autocmd Filetype tex let m = matchadd("ProofGroup",'\\end{proof}')
    autocmd Filetype tex let m = matchadd("ProofGroup",'\\begin{prf}')
    autocmd Filetype tex let m = matchadd("ProofGroup",'\\end{prf}')
augroup end

highlight EquationGroup ctermbg=106 ctermfg=Black

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

highlight ArrayMatrixEtcGroup ctermbg=209 ctermfg=Black

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

highlight ParenthesisGroup ctermbg=182 ctermfg=black

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


" From TeXKeyBindings.vim
"-------------------------------------------------------------------

" Part, Chapter, Section, Subsection, Subsubsection, label"{{{

highlight Folds_brackets_comments ctermbg=174 ctermfg=black

let m = matchadd("Folds_brackets_comments",'%{T{E{X')
let m = matchadd("Folds_brackets_comments",'%}T}E}X')
let m = matchadd("Folds_brackets_comments",'%F{O{L{D')
let m = matchadd("Folds_brackets_comments",'%F}O}L}D')

highlight PartMarkerGroup ctermbg=087 ctermfg=black

let m = matchadd("PartMarkerGroup",'% Part')
let m = matchadd("PartMarkerGroup",'% UnnumberedPart')

highlight PartGroup ctermbg=087 ctermfg=black

let m = matchadd("PartGroup",'\\part{.\{}}')
let m = matchadd("PartGroup",'\\part\*{.\{}}')

highlight ChapterMarkerGroup ctermbg=092 ctermfg=yellow

let m = matchadd("ChapterMarkerGroup",'% Chapter')
let m = matchadd("ChapterMarkerGroup",'% UnnumberedChapter')

highlight ChapterGroup ctermbg=092 ctermfg=yellow

let m = matchadd("ChapterGroup",'\\chapter{.\{}}')
let m = matchadd("ChapterGroup",'\\chapter\*{.\{}}')

highlight SectionMarkerGroup ctermbg=39 ctermfg=Black

let m = matchadd("SectionMarkerGroup",'% Section')
let m = matchadd("SectionMarkerGroup",'% UnnumberedSection')

highlight SectionGroup ctermbg=39 ctermfg=Black

let m = matchadd("SectionGroup",'\\section{.\{}}')
let m = matchadd("SectionGroup",'\\section\*{.\{}}')

highlight SubsectionMarkerGroup ctermbg=198 ctermfg=Black

let m = matchadd("SubsectionMarkerGroup",'% Subsection')
let m = matchadd("SubsectionMarkerGroup",'% UnnumberedSubsection')

highlight SubsectionGroup ctermbg=198 ctermfg=Black

let m = matchadd("SubsectionGroup",'\\subsection{.\{}}')
let m = matchadd("SubsectionGroup",'\\subsection\*{.\{}}')

highlight SubsubsectionMarkerGroup ctermbg=yellow ctermfg=Black

let m = matchadd("SubsubsectionMarkerGroup",'% Subsubsection')
let m = matchadd("SubsubsectionMarkerGroup",'% UnnumberedSubsubsection')

highlight SubsubsectionGroup ctermbg=yellow ctermfg=Black

let m = matchadd("SubsubsectionGroup",'\\subsubsection{.\{}}')
let m = matchadd("SubsubsectionGroup",'\\subsubsection\*{.\{}}')

highlight Label ctermbg=141 ctermfg=0

let m = matchadd("Label",'\\label{.\{}}')

"}}}
" MarkerGroup, BoldGroup"{{{

highlight TitleAbstract ctermbg=92 ctermfg=yellow

let m = matchadd("TitleAbstract",'% Abstract')
let m = matchadd("TitleAbstract",'% Title')

highlight MarkerGroup ctermbg=White ctermfg=Black

let m = matchadd("MarkerGroup",'% Notation')
let m = matchadd("MarkerGroup",'% UnnumberedNotation')
let m = matchadd("MarkerGroup",'% Definition')
let m = matchadd("MarkerGroup",'% UnnumberedDefinition')
let m = matchadd("MarkerGroup",'% Theorem')
let m = matchadd("MarkerGroup",'% StatementofTheorem')
let m = matchadd("MarkerGroup",'% UnnumberedTheorem')
let m = matchadd("MarkerGroup",'% Lemma')
let m = matchadd("MarkerGroup",'% StatementofLemma')
let m = matchadd("MarkerGroup",'% UnnumberedLemma')
let m = matchadd("MarkerGroup",'% Proposition')
let m = matchadd("MarkerGroup",'% StatementofProposition')
let m = matchadd("MarkerGroup",'% UnnumberedProposition')
let m = matchadd("MarkerGroup",'% Corollary')
let m = matchadd("MarkerGroup",'% StatementofCorollary')
let m = matchadd("MarkerGroup",'% UnnumberedCorollary')
let m = matchadd("MarkerGroup",'% Problem')
let m = matchadd("MarkerGroup",'% Solution')
let m = matchadd("MarkerGroup",'% Proof')
let m = matchadd("MarkerGroup",'% Remark')
let m = matchadd("MarkerGroup",'% UnnumberedRemark')
let m = matchadd("MarkerGroup",'% Conjecture')
let m = matchadd("MarkerGroup",'% Example')
let m = matchadd("MarkerGroup",'% Exercise')
let m = matchadd("MarkerGroup",'% Frame')
let m = matchadd("MarkerGroup",'% Claim')

highlight YellowMarkerGroup ctermbg=yellow ctermfg=black

let m = matchadd("YellowMarkerGroup",'% Equation')
let m = matchadd("YellowMarkerGroup",'% UnnumberedEquation')
let m = matchadd("YellowMarkerGroup",'% Align')
let m = matchadd("YellowMarkerGroup",'% UnnumberedAlign')
let m = matchadd("YellowMarkerGroup",'% AlignedEquation')
let m = matchadd("YellowMarkerGroup",'% UnnumberedAlignedEquation')
let m = matchadd("YellowMarkerGroup",'% GatheredEquation')
let m = matchadd("YellowMarkerGroup",'% UnnumberedGatheredEquation')
let m = matchadd("YellowMarkerGroup",'% Subequations')
let m = matchadd("YellowMarkerGroup",'% Gather')
let m = matchadd("YellowMarkerGroup",'% UnnumberedGather')
let m = matchadd("YellowMarkerGroup",'% Center')
let m = matchadd("YellowMarkerGroup",'% CaseDefinition')
let m = matchadd("YellowMarkerGroup",'% DcaseDefinition')
let m = matchadd("YellowMarkerGroup",'% Enumerate')
let m = matchadd("YellowMarkerGroup",'% Itemize')
let m = matchadd("YellowMarkerGroup",'% figure')
let m = matchadd("YellowMarkerGroup",'% diary')

highlight SalmonMarkerGroup ctermbg=209 ctermfg=black

let m = matchadd("SalmonMarkerGroup",'% Array')
let m = matchadd("SalmonMarkerGroup",'% Matrix')
let m = matchadd("SalmonMarkerGroup",'% Bmatrix')
let m = matchadd("SalmonMarkerGroup",'% Pmatrix')

highlight Bibliography ctermbg=92 ctermfg=yellow

let m = matchadd("Bibliography",'% Bibliography')

highlight ImpliesMarkerGroup ctermbg=208 ctermfg=black

let m = matchadd("ImpliesMarkerGroup",'(\$\\Longrightarrow\$)')
let m = matchadd("ImpliesMarkerGroup",'(\$\\Longleftarrow\$)')
let m = matchadd("ImpliesMarkerGroup",'\$(\\Longrightarrow)\$')
let m = matchadd("ImpliesMarkerGroup",'\$(\\Longleftarrow)\$')

highlight BoldGroup ctermfg=154 cterm=bold

let m = matchadd("BoldGroup",'&')

highlight BoldRedGroup ctermfg=red cterm=bold

let m = matchadd("BoldRedGroup",'\\todo')

"}}}
" Abstract, Theorem, Equation"{{{

highlight Abstract ctermbg=92 ctermfg=yellow

let m = matchadd("Abstract",'\\begin{abstract}')
let m = matchadd("Abstract",'\\end{abstract}')

highlight NotationGroup ctermbg=244 ctermfg=Black

let m = matchadd("NotationGroup",'\\begin{notation}')
let m = matchadd("NotationGroup",'\\end{notation}')
let m = matchadd("NotationGroup",'\\begin{unotation}')
let m = matchadd("NotationGroup",'\\end{unotation}')

highlight DefinitionGroup ctermbg=214 ctermfg=Black

let m = matchadd("DefinitionGroup",'\\begin{definition}')
let m = matchadd("DefinitionGroup",'\\end{definition}')

highlight uDefinitionGroup ctermbg=100 ctermfg=Black

let m = matchadd("uDefinitionGroup",'\\begin{udefinition}')
let m = matchadd("uDefinitionGroup",'\\end{udefinition}')

highlight TheoremGroup ctermbg=133 ctermfg=Black

let m = matchadd("TheoremGroup",'\\begin{theorem}')
let m = matchadd("TheoremGroup",'\\end{theorem}')
let m = matchadd("TheoremGroup",'\\begin{lemma}')
let m = matchadd("TheoremGroup",'\\end{lemma}')
let m = matchadd("TheoremGroup",'\\begin{proposition}')
let m = matchadd("TheoremGroup",'\\end{proposition}')
let m = matchadd("TheoremGroup",'\\begin{corollary}')
let m = matchadd("TheoremGroup",'\\end{corollary}')
let m = matchadd("TheoremGroup",'\\begin{problem}')
let m = matchadd("TheoremGroup",'\\end{problem}')
let m = matchadd("TheoremGroup",'\\begin{solution}')
let m = matchadd("TheoremGroup",'\\end{solution}')
let m = matchadd("TheoremGroup",'\\begin{remark}')
let m = matchadd("TheoremGroup",'\\end{remark}')
let m = matchadd("TheoremGroup",'\\begin{conjecture}')
let m = matchadd("TheoremGroup",'\\end{conjecture}')
let m = matchadd("TheoremGroup",'\\begin{example}')
let m = matchadd("TheoremGroup",'\\end{example}')
let m = matchadd("TheoremGroup",'\\begin{exercise}')
let m = matchadd("TheoremGroup",'\\end{exercise}')
let m = matchadd("TheoremGroup",'\\begin{diary}')
let m = matchadd("TheoremGroup",'\\end{diary}')
let m = matchadd("TheoremGroup",'\\begin{frame}')
let m = matchadd("TheoremGroup",'\\end{frame}')

let m = matchadd("TheoremGroup",'\\begin{thmbox}')
let m = matchadd("TheoremGroup",'\\end{thmbox}')
let m = matchadd("TheoremGroup",'\\begin{orangebox}')
let m = matchadd("TheoremGroup",'\\end{orangebox}')

highlight uTheoremGroup ctermbg=brown ctermfg=Black

let m = matchadd("uTheoremGroup",'\\begin{utheorem}')
let m = matchadd("uTheoremGroup",'\\end{utheorem}')
let m = matchadd("uTheoremGroup",'\\begin{ulemma}')
let m = matchadd("uTheoremGroup",'\\end{ulemma}')
let m = matchadd("uTheoremGroup",'\\begin{uproposition}')
let m = matchadd("uTheoremGroup",'\\end{uproposition}')
let m = matchadd("uTheoremGroup",'\\begin{ucorollary}')
let m = matchadd("uTheoremGroup",'\\end{ucorollary}')
let m = matchadd("uTheoremGroup",'\\begin{uremark}')
let m = matchadd("uTheoremGroup",'\\end{uremark}')

highlight ProofGroup ctermbg=108 ctermfg=Black

let m = matchadd("ProofGroup",'\\begin{proof}')
let m = matchadd("ProofGroup",'\\end{proof}')
let m = matchadd("ProofGroup",'\\begin{prf}')
let m = matchadd("ProofGroup",'\\end{prf}')

highlight EquationGroup ctermbg=106 ctermfg=Black

let m = matchadd("EquationGroup",'\\(')
let m = matchadd("EquationGroup",'\\)')
let m = matchadd("EquationGroup",'\\[')
let m = matchadd("EquationGroup",'\\]')
let m = matchadd("EquationGroup",'\\begin{equation}')
let m = matchadd("EquationGroup",'\\end{equation}')
let m = matchadd("EquationGroup",'\\begin{equation\*}')
let m = matchadd("EquationGroup",'\\end{equation\*}')
let m = matchadd("EquationGroup",'\\begin{split}')
let m = matchadd("EquationGroup",'\\end{split}')
let m = matchadd("EquationGroup",'\\begin{align}')
let m = matchadd("EquationGroup",'\\end{align}')
let m = matchadd("EquationGroup",'\\begin{align\*}')
let m = matchadd("EquationGroup",'\\end{align\*}')
let m = matchadd("EquationGroup",'\\begin{subequations}')
let m = matchadd("EquationGroup",'\\end{subequations}')
let m = matchadd("EquationGroup",'\\begin{center}')
let m = matchadd("EquationGroup",'\\end{center}')
let m = matchadd("EquationGroup",'\\begin{gather}')
let m = matchadd("EquationGroup",'\\end{gather}')
let m = matchadd("EquationGroup",'\\begin{gather\*}')
let m = matchadd("EquationGroup",'\\end{gather\*}')
let m = matchadd("EquationGroup",'\\begin{gathered}')
let m = matchadd("EquationGroup",'\\end{gathered}')
let m = matchadd("EquationGroup",'\\begin{cases}')
let m = matchadd("EquationGroup",'\\end{cases}')
let m = matchadd("EquationGroup",'\\begin{dcases}')
let m = matchadd("EquationGroup",'\\end{dcases}')
let m = matchadd("EquationGroup",'\\begin{enumerate}')
let m = matchadd("EquationGroup",'\\end{enumerate}')
let m = matchadd("EquationGroup",'\\begin{itemize}')
let m = matchadd("EquationGroup",'\\end{itemize}')
let m = matchadd("EquationGroup",'\\begin{landscape}')
let m = matchadd("EquationGroup",'\\end{landscape}')

highlight ArrayMatrixEtcGroup ctermbg=209 ctermfg=Black

let m = matchadd("ArrayMatrixEtcGroup",'\\begin{array}')
let m = matchadd("ArrayMatrixEtcGroup",'\\end{array}')
let m = matchadd("ArrayMatrixEtcGroup",'\\begin{matrix}')
let m = matchadd("ArrayMatrixEtcGroup",'\\end{matrix}')
let m = matchadd("ArrayMatrixEtcGroup",'\\begin{bmatrix}')
let m = matchadd("ArrayMatrixEtcGroup",'\\end{bmatrix}')
let m = matchadd("ArrayMatrixEtcGroup",'\\begin{pmatrix}')
let m = matchadd("ArrayMatrixEtcGroup",'\\end{pmatrix}')
let m = matchadd("ArrayMatrixEtcGroup",'\\item')
let m = matchadd("ArrayMatrixEtcGroup",'\\bibitem')
let m = matchadd("ArrayMatrixEtcGroup",'\\bibliographystyle{.\{}}')
let m = matchadd("ArrayMatrixEtcGroup",'\\bibliography{.\{}}')
let m = matchadd("ArrayMatrixEtcGroup",'\\begin{thebibliography}')
let m = matchadd("ArrayMatrixEtcGroup",'\\end{thebibliography}')

highlight asterisk ctermbg=130 ctermfg=yellow

let m = matchadd("asterisk",'\*')

highlight ParenthesisGroup ctermbg=182 ctermfg=black

" let m = matchadd("ParenthesisGroup",'\\big')
" let m = matchadd("ParenthesisGroup",'\\Big')
" let m = matchadd("ParenthesisGroup",'\\bigg')
" let m = matchadd("ParenthesisGroup",'\\Bigg')
" let m = matchadd("ParenthesisGroup",'\\left')
" let m = matchadd("ParenthesisGroup",'\\right')

let m = matchadd("ParenthesisGroup",'\\big(')
let m = matchadd("ParenthesisGroup",'\\big)')
let m = matchadd("ParenthesisGroup",'{\\big(')
let m = matchadd("ParenthesisGroup",'\\big)}')
" let m = matchadd("ParenthesisGroup",'{\\big({')
" let m = matchadd("ParenthesisGroup",'}\\big)}')
let m = matchadd("ParenthesisGroup",'\\Big(')
let m = matchadd("ParenthesisGroup",'\\Big)')
let m = matchadd("ParenthesisGroup",'{\\Big(')
let m = matchadd("ParenthesisGroup",'\\Big)}')
" let m = matchadd("ParenthesisGroup",'{\\Big({')
" let m = matchadd("ParenthesisGroup",'}\\Big)}')
let m = matchadd("ParenthesisGroup",'\\bigg(')
let m = matchadd("ParenthesisGroup",'\\bigg)')
let m = matchadd("ParenthesisGroup",'{\\bigg(')
let m = matchadd("ParenthesisGroup",'\\bigg)}')
" let m = matchadd("ParenthesisGroup",'{\\bigg({')
" let m = matchadd("ParenthesisGroup",'}\\bigg)}')
let m = matchadd("ParenthesisGroup",'\\Bigg(')
let m = matchadd("ParenthesisGroup",'\\Bigg)')
let m = matchadd("ParenthesisGroup",'{\\Bigg(')
let m = matchadd("ParenthesisGroup",'\\Bigg)}')
" let m = matchadd("ParenthesisGroup",'{\\Bigg({')
" let m = matchadd("ParenthesisGroup",'}\\Bigg)}')
let m = matchadd("ParenthesisGroup",'\\left(')
let m = matchadd("ParenthesisGroup",'\\right)')
let m = matchadd("ParenthesisGroup",'{\\left(')
let m = matchadd("ParenthesisGroup",'\\right)}')
" let m = matchadd("ParenthesisGroup",'{\\left({')
" let m = matchadd("ParenthesisGroup",'}\\right)}')

let m = matchadd("ParenthesisGroup",'\\big\\{')
let m = matchadd("ParenthesisGroup",'\\big\\}')
let m = matchadd("ParenthesisGroup",'{\\big\\{')
let m = matchadd("ParenthesisGroup",'\\big\\}}')
" let m = matchadd("ParenthesisGroup",'{\\big\\{{')
" let m = matchadd("ParenthesisGroup",'}\\big\\}}')
let m = matchadd("ParenthesisGroup",'\\Big\\{')
let m = matchadd("ParenthesisGroup",'\\Big\\}')
let m = matchadd("ParenthesisGroup",'{\\Big\\{')
let m = matchadd("ParenthesisGroup",'\\Big\\}}')
" let m = matchadd("ParenthesisGroup",'{\\Big\\{{')
" let m = matchadd("ParenthesisGroup",'}\\Big\\}}')
let m = matchadd("ParenthesisGroup",'\\bigg\\{')
let m = matchadd("ParenthesisGroup",'\\bigg\\}')
let m = matchadd("ParenthesisGroup",'{\\bigg\\{')
let m = matchadd("ParenthesisGroup",'\\bigg\\}}')
" let m = matchadd("ParenthesisGroup",'{\\bigg\\{{')
" let m = matchadd("ParenthesisGroup",'}\\bigg\\}}')
let m = matchadd("ParenthesisGroup",'\\Bigg\\{')
let m = matchadd("ParenthesisGroup",'\\Bigg\\}')
let m = matchadd("ParenthesisGroup",'{\\Bigg\\{')
let m = matchadd("ParenthesisGroup",'\\Bigg\\}}')
" let m = matchadd("ParenthesisGroup",'{\\Bigg\\{{')
" let m = matchadd("ParenthesisGroup",'}\\Bigg\\}}')
let m = matchadd("ParenthesisGroup",'\\left\\{')
let m = matchadd("ParenthesisGroup",'\\right\\}')
let m = matchadd("ParenthesisGroup",'{\\left\\{')
let m = matchadd("ParenthesisGroup",'\\right\\}}')
" let m = matchadd("ParenthesisGroup",'{\\left\\{{')
" let m = matchadd("ParenthesisGroup",'}\\right\\}}')

let m = matchadd("ParenthesisGroup",'\\big[')
let m = matchadd("ParenthesisGroup",'\\big]')
let m = matchadd("ParenthesisGroup",'{\\big[')
let m = matchadd("ParenthesisGroup",'\\big]}')
" let m = matchadd("ParenthesisGroup",'{\\big[{')
" let m = matchadd("ParenthesisGroup",'}\\big]}')
let m = matchadd("ParenthesisGroup",'\\Big[')
let m = matchadd("ParenthesisGroup",'\\Big]')
let m = matchadd("ParenthesisGroup",'{\\Big[')
let m = matchadd("ParenthesisGroup",'\\Big]}')
" let m = matchadd("ParenthesisGroup",'{\\Big[{')
" let m = matchadd("ParenthesisGroup",'}\\Big]}')
let m = matchadd("ParenthesisGroup",'\\bigg[')
let m = matchadd("ParenthesisGroup",'\\bigg]')
let m = matchadd("ParenthesisGroup",'{\\bigg[')
let m = matchadd("ParenthesisGroup",'\\bigg]}')
" let m = matchadd("ParenthesisGroup",'{\\bigg[{')
" let m = matchadd("ParenthesisGroup",'}\\bigg]}')
let m = matchadd("ParenthesisGroup",'\\Bigg[')
let m = matchadd("ParenthesisGroup",'\\Bigg]')
let m = matchadd("ParenthesisGroup",'{\\Bigg[')
let m = matchadd("ParenthesisGroup",'\\Bigg]}')
" let m = matchadd("ParenthesisGroup",'{\\Bigg[{')
" let m = matchadd("ParenthesisGroup",'}\\Bigg]}')
let m = matchadd("ParenthesisGroup",'\\left[')
let m = matchadd("ParenthesisGroup",'\\right]')
let m = matchadd("ParenthesisGroup",'{\\left[')
let m = matchadd("ParenthesisGroup",'\\right]}')
" let m = matchadd("ParenthesisGroup",'{\\left[{')
" let m = matchadd("ParenthesisGroup",'}\\right]}')

let m = matchadd("ParenthesisGroup",'\\big|')
let m = matchadd("ParenthesisGroup",'\\big|')
let m = matchadd("ParenthesisGroup",'{\\big|')
let m = matchadd("ParenthesisGroup",'\\big|}')
" let m = matchadd("ParenthesisGroup",'{\\big|{')
" let m = matchadd("ParenthesisGroup",'}\\big|}')
let m = matchadd("ParenthesisGroup",'\\Big|')
let m = matchadd("ParenthesisGroup",'\\Big|')
let m = matchadd("ParenthesisGroup",'{\\Big|')
let m = matchadd("ParenthesisGroup",'\\Big|}')
" let m = matchadd("ParenthesisGroup",'{\\Big|{')
" let m = matchadd("ParenthesisGroup",'}\\Big|}')
let m = matchadd("ParenthesisGroup",'\\bigg|')
let m = matchadd("ParenthesisGroup",'\\bigg|')
let m = matchadd("ParenthesisGroup",'{\\bigg|')
let m = matchadd("ParenthesisGroup",'\\bigg|}')
" let m = matchadd("ParenthesisGroup",'{\\bigg|{')
" let m = matchadd("ParenthesisGroup",'}\\bigg|}')
let m = matchadd("ParenthesisGroup",'\\Bigg|')
let m = matchadd("ParenthesisGroup",'\\Bigg|')
let m = matchadd("ParenthesisGroup",'{\\Bigg|')
let m = matchadd("ParenthesisGroup",'\\Bigg|}')
" let m = matchadd("ParenthesisGroup",'{\\Bigg|{')
" let m = matchadd("ParenthesisGroup",'}\\Bigg|}')
let m = matchadd("ParenthesisGroup",'\\left|')
let m = matchadd("ParenthesisGroup",'\\right|')
let m = matchadd("ParenthesisGroup",'{\\left|')
let m = matchadd("ParenthesisGroup",'\\right|}')
" let m = matchadd("ParenthesisGroup",'{\\left|{')
" let m = matchadd("ParenthesisGroup",'}\\right|}')

"}}}
" Highlight Word{{{
"
" This mini-plugin provides a few mappings for highlighting words temporarily.
"
" Sometimes you're looking at a hairy piece of code and would like a certain
" word or two to stand out temporarily.  You can search for it, but that only
" gives you one color of highlighting.  Now you can use <leader>N where N is
" a number from 1-6 to highlight the current word in a specific color.

function! HiInterestingWord(n) "{{{
    " Save our location.
    normal! mz

    " Yank the current word into the z register.
    normal! "zyiw

    " Calculate an arbitrary match ID.  Hopefully nothing else is using it.
    let mid = 86750 + a:n

    " Clear existing matches, but don't worry if they don't exist.
    silent! call matchdelete(mid)

    " Construct a literal pattern that has to match at boundaries.
    let pat = '\V\<' . escape(@z, '\') . '\>'

    " Actually match the words.
    call matchadd("InterestingWord" . a:n, pat, 1, mid)

    " Move back to our original location.
    normal! `z
endfunction "}}}
" Mappings{{{

nnoremap <silent> <leader>1 :call HiInterestingWord(1)<cr>
nnoremap <silent> <leader>2 :call HiInterestingWord(2)<cr>
nnoremap <silent> <leader>3 :call HiInterestingWord(3)<cr>
nnoremap <silent> <leader>4 :call HiInterestingWord(4)<cr>
nnoremap <silent> <leader>5 :call HiInterestingWord(5)<cr>
nnoremap <buffer> <leader>6 :call HiInterestingWord(6)<cr>

nnoremap <silent> <localleader>1 :hi clear InterestingWord1<cr>
nnoremap <silent> <localleader>2 :hi clear InterestingWord2<cr>
nnoremap <silent> <localleader>3 :hi clear InterestingWord3<cr>
nnoremap <silent> <localleader>4 :hi clear InterestingWord4<cr>
nnoremap <silent> <localleader>5 :hi clear InterestingWord5<cr>
nnoremap <silent> <localleader>6 :hi clear InterestingWord6<cr>

"}}}
" Default Highlights{{{

hi def InterestingWord1 guifg=#000000 ctermfg=16 guibg=#ffa724 ctermbg=214
hi def InterestingWord2 guifg=#000000 ctermfg=16 guibg=#8cffba ctermbg=121
hi def InterestingWord3 guifg=#000000 ctermfg=16 guibg=#ff9eb8 ctermbg=211
hi def InterestingWord4 guifg=#000000 ctermfg=16 guibg=#b88853 ctermbg=137
hi def InterestingWord5 guifg=#000000 ctermfg=16 guibg=#aeee00 ctermbg=154
hi def InterestingWord6 guifg=#000000 ctermfg=16 guibg=#ff2c4b ctermbg=195

"}}}

"}}}
