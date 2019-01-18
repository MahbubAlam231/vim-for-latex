" Author        : Mahbub Alam
" Created       : 17/11/2018
" License       : Self
" Description   : TeXHighlight

" Chapter, Section, Subsection, Subsubsection, label"{{{

highlight Folds_brackets_comments ctermbg=174 ctermfg=black
let m = matchadd("Folds_brackets_comments",'{{{')
let m = matchadd("Folds_brackets_comments",'}}}')
let m = matchadd("Folds_brackets_comments",'%{{{')
let m = matchadd("Folds_brackets_comments",'%}}}')
let m = matchadd("Folds_brackets_comments",'%{T{E{X')
let m = matchadd("Folds_brackets_comments",'%}T}E}X')

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


highlight Label ctermbg=Red ctermfg=black
let m = matchadd("Label",'\\label{.\{}}')

"}}}

" MarkerGroup, BoldGroup"{{{

highlight Abstract ctermbg=92 ctermfg=yellow

let m = matchadd("Abstract",'% Abstract')

highlight MarkerGroup ctermbg=White ctermfg=Black

let m = matchadd("MarkerGroup",'% Notation')
let m = matchadd("MarkerGroup",'% Definition')
let m = matchadd("MarkerGroup",'% UnnumberedDefinition')
let m = matchadd("MarkerGroup",'% Theorem')
let m = matchadd("MarkerGroup",'% JustTheorem')
let m = matchadd("MarkerGroup",'% UnnumberedTheorem')
let m = matchadd("MarkerGroup",'% Lemma')
let m = matchadd("MarkerGroup",'% JustLemma')
let m = matchadd("MarkerGroup",'% UnnumberedLemma')
let m = matchadd("MarkerGroup",'% Proposition')
let m = matchadd("MarkerGroup",'% JustProposition')
let m = matchadd("MarkerGroup",'% UnnumberedProposition')
let m = matchadd("MarkerGroup",'% Corollary')
let m = matchadd("MarkerGroup",'% JustCorollary')
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

let m = matchadd("ImpliesMarkerGroup",'($\\Longrightarrow$)')
let m = matchadd("ImpliesMarkerGroup",'($\\Longleftarrow$)')

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
let m = matchadd("ParenthesisGroup",'{\\big({')
let m = matchadd("ParenthesisGroup",'}\\big)}')
let m = matchadd("ParenthesisGroup",'\\Big(')
let m = matchadd("ParenthesisGroup",'\\Big)')
let m = matchadd("ParenthesisGroup",'{\\Big(')
let m = matchadd("ParenthesisGroup",'\\Big)}')
let m = matchadd("ParenthesisGroup",'{\\Big({')
let m = matchadd("ParenthesisGroup",'}\\Big)}')
let m = matchadd("ParenthesisGroup",'\\bigg(')
let m = matchadd("ParenthesisGroup",'\\bigg)')
let m = matchadd("ParenthesisGroup",'{\\bigg(')
let m = matchadd("ParenthesisGroup",'\\bigg)}')
let m = matchadd("ParenthesisGroup",'{\\bigg({')
let m = matchadd("ParenthesisGroup",'}\\bigg)}')
let m = matchadd("ParenthesisGroup",'\\Bigg(')
let m = matchadd("ParenthesisGroup",'\\Bigg)')
let m = matchadd("ParenthesisGroup",'{\\Bigg(')
let m = matchadd("ParenthesisGroup",'\\Bigg)}')
let m = matchadd("ParenthesisGroup",'{\\Bigg({')
let m = matchadd("ParenthesisGroup",'}\\Bigg)}')
let m = matchadd("ParenthesisGroup",'\\left(')
let m = matchadd("ParenthesisGroup",'\\right)')
let m = matchadd("ParenthesisGroup",'{\\left(')
let m = matchadd("ParenthesisGroup",'\\right)}')
let m = matchadd("ParenthesisGroup",'{\\left({')
let m = matchadd("ParenthesisGroup",'}\\right)}')

let m = matchadd("ParenthesisGroup",'\\big\\{')
let m = matchadd("ParenthesisGroup",'\\big\\}')
let m = matchadd("ParenthesisGroup",'{\\big\\{')
let m = matchadd("ParenthesisGroup",'\\big\\}}')
let m = matchadd("ParenthesisGroup",'{\\big\\{{')
let m = matchadd("ParenthesisGroup",'}\\big\\}}')
let m = matchadd("ParenthesisGroup",'\\Big\\{')
let m = matchadd("ParenthesisGroup",'\\Big\\}')
let m = matchadd("ParenthesisGroup",'{\\Big\\{')
let m = matchadd("ParenthesisGroup",'\\Big\\}}')
let m = matchadd("ParenthesisGroup",'{\\Big\\{{')
let m = matchadd("ParenthesisGroup",'}\\Big\\}}')
let m = matchadd("ParenthesisGroup",'\\bigg\\{')
let m = matchadd("ParenthesisGroup",'\\bigg\\}')
let m = matchadd("ParenthesisGroup",'{\\bigg\\{')
let m = matchadd("ParenthesisGroup",'\\bigg\\}}')
let m = matchadd("ParenthesisGroup",'{\\bigg\\{{')
let m = matchadd("ParenthesisGroup",'}\\bigg\\}}')
let m = matchadd("ParenthesisGroup",'\\Bigg\\{')
let m = matchadd("ParenthesisGroup",'\\Bigg\\}')
let m = matchadd("ParenthesisGroup",'{\\Bigg\\{')
let m = matchadd("ParenthesisGroup",'\\Bigg\\}}')
let m = matchadd("ParenthesisGroup",'{\\Bigg\\{{')
let m = matchadd("ParenthesisGroup",'}\\Bigg\\}}')
let m = matchadd("ParenthesisGroup",'\\left\\{')
let m = matchadd("ParenthesisGroup",'\\right\\}')
let m = matchadd("ParenthesisGroup",'{\\left\\{')
let m = matchadd("ParenthesisGroup",'\\right\\}}')
let m = matchadd("ParenthesisGroup",'{\\left\\{{')
let m = matchadd("ParenthesisGroup",'}\\right\\}}')

let m = matchadd("ParenthesisGroup",'\\big[')
let m = matchadd("ParenthesisGroup",'\\big]')
let m = matchadd("ParenthesisGroup",'{\\big[')
let m = matchadd("ParenthesisGroup",'\\big]}')
let m = matchadd("ParenthesisGroup",'{\\big[{')
let m = matchadd("ParenthesisGroup",'}\\big]}')
let m = matchadd("ParenthesisGroup",'\\Big[')
let m = matchadd("ParenthesisGroup",'\\Big]')
let m = matchadd("ParenthesisGroup",'{\\Big[')
let m = matchadd("ParenthesisGroup",'\\Big]}')
let m = matchadd("ParenthesisGroup",'{\\Big[{')
let m = matchadd("ParenthesisGroup",'}\\Big]}')
let m = matchadd("ParenthesisGroup",'\\bigg[')
let m = matchadd("ParenthesisGroup",'\\bigg]')
let m = matchadd("ParenthesisGroup",'{\\bigg[')
let m = matchadd("ParenthesisGroup",'\\bigg]}')
let m = matchadd("ParenthesisGroup",'{\\bigg[{')
let m = matchadd("ParenthesisGroup",'}\\bigg]}')
let m = matchadd("ParenthesisGroup",'\\Bigg[')
let m = matchadd("ParenthesisGroup",'\\Bigg]')
let m = matchadd("ParenthesisGroup",'{\\Bigg[')
let m = matchadd("ParenthesisGroup",'\\Bigg]}')
let m = matchadd("ParenthesisGroup",'{\\Bigg[{')
let m = matchadd("ParenthesisGroup",'}\\Bigg]}')
let m = matchadd("ParenthesisGroup",'\\left[')
let m = matchadd("ParenthesisGroup",'\\right]')
let m = matchadd("ParenthesisGroup",'{\\left[')
let m = matchadd("ParenthesisGroup",'\\right]}')
let m = matchadd("ParenthesisGroup",'{\\left[{')
let m = matchadd("ParenthesisGroup",'}\\right]}')

"}}}

