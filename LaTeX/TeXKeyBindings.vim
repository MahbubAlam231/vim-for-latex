
"-------------------------------------------------------------------
" Mahbub's TeXKeyBindings
"-------------------------------------------------------------------

" Numbers, Braces and Some symbols{{{
"-------------------------------------------------------------------

" Numbers"{{{
"-------------------------------------------------------------------

inoremap <buffer> 1 <esc>A
inoremap <buffer> 11 1
inoremap <buffer> 2 <esc>f$i
inoremap <buffer> 22 2
inoremap <buffer> 3 <esc>lf}i
inoremap <buffer> 33 3
inoremap <buffer> 4 $$<esc>i
inoremap <buffer> 44 4
inoremap <buffer> <localleader>4 <esc>o\[<cr>\]<esc>O
inoremap <buffer> 5 <esc>l2f}i
inoremap <buffer> 55 5
inoremap <buffer> 6 <esc>jo
inoremap <buffer> 66 6
inoremap <buffer> 7 <esc>hi
inoremap <buffer> 77 7
" inoremap 8 <C-x><C-n>
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
inoremap <buffer> {{ \{\}<esc>hi
inoremap <buffer> p{ {
inoremap <buffer> P{ {
inoremap <buffer> [ []<esc>i
inoremap <buffer> [[ [

"}}}

inoremap <buffer> \| \|\|<esc>i
inoremap <buffer> \|\| \|

"}}}

" Math Symbols{{{
"-------------------------------------------------------------------

" Set theory and Logic"{{{
"-------------------------------------------------------------------

inoremap <buffer> <localleader>fa \forall
inoremap <buffer> <localleader>E \exists
inoremap <buffer> <localleader>e \in
inoremap <buffer> <localleader>ne \notin
inoremap <buffer> <localleader>e, \ni
inoremap <buffer> <localleader>0 \varnothing
inoremap <buffer> ;uu \cup_{}<esc>i
inoremap <buffer> ;nn \cap_{}<esc>i
inoremap <buffer> <localleader>uu \cup_{}^{}<esc>F}i
inoremap <buffer> <localleader>nn \cap_{}^{}<esc>F}i
inoremap <buffer> ;uul \cup\limits_{}<esc>i
inoremap <buffer> ;nnl \cap\limits_{}<esc>i
inoremap <buffer> <localleader>uul \cup\limits_{}^{}<esc>F}i
inoremap <buffer> <localleader>nnl \cap\limits_{}^{}<esc>F}i
inoremap <buffer> ;UUl \bigcup\limits_{}<esc>i
inoremap <buffer> ;UUL \bigcup\limits_{}<esc>i
inoremap <buffer> ;NNl \bigcap\limits_{}<esc>i
inoremap <buffer> ;NNL \bigcap\limits_{}<esc>i
inoremap <buffer> <localleader>UUl \bigcup\limits_{}^{}<esc>F}i
inoremap <buffer> <localleader>UUL \bigcup\limits_{}^{}<esc>F}i
inoremap <buffer> <localleader>NNl \bigcap\limits_{}^{}<esc>F}i
inoremap <buffer> <localleader>NNL \bigcap\limits_{}^{}<esc>F}i

"}}}
" Math set symbols{{{
"-------------------------------------------------------------------

inoremap <buffer> ;l \ell

" In math mode{{{
"-------------------------------------------------------------------

" \math__{}{{{

inoremap <buffer> <localleader>mr \mathrm{}<esc>i
inoremap <buffer> <localleader>mb \mathbb{}<esc>i
inoremap <buffer> <localleader>mbf \mathbf{}<esc>i
inoremap <buffer> <localleader>mc \mathcal{}<esc>i
inoremap <buffer> <localleader>mrsf \mathrsf{}<esc>i
inoremap <buffer> <localleader>mscr \mathscr{}<esc>i
inoremap <buffer> <localleader>mi \mathit{}<esc>i

"}}}
" Real numbers{{{

inoremap <buffer> <localleader>rg \mathbb{R}_{\geq 0}
inoremap <buffer> <localleader>rl \mathbb{R}_{\leq 0}
inoremap <buffer> <localleader>r> \mathbb{R}_{>0}
inoremap <buffer> <localleader>r< \mathbb{R}_{<0}
inoremap <buffer> <localleader>r \mathbb{R}
inoremap <buffer> <localleader>rr \mathbb{R}^2
inoremap <buffer> <localleader>rn \mathbb{R}^{n}
inoremap <buffer> <localleader>rm \mathbb{R}^{m}
inoremap <buffer> <localleader>rnk \mathbb{R}^{nk}
inoremap <buffer> <localleader>rnl \mathbb{R}^{n\ell}
inoremap <buffer> <localleader>rmn \mathbb{R}^{mn}
inoremap <buffer> <localleader>rnm \mathbb{R}^{nm}
inoremap <buffer> <localleader>rnn \mathbb{R}^{n^2}
inoremap <buffer> <localleader>rd \mathbb{R}^{d}

"}}}
" Natural numbers{{{

inoremap <buffer> <localleader>n \mathbb{N}
inoremap <buffer> <localleader>nn \mathbb{N}^2
inoremap <buffer> <localleader>nm \mathbb{N}^{}<esc>i

"}}}
" Integers{{{

inoremap <buffer> <localleader>zg \mathbb{Z}_{\geq 0}
inoremap <buffer> <localleader>zl \mathbb{Z}_{\leq 0}
inoremap <buffer> <localleader>z> \mathbb{Z}_{>0}
inoremap <buffer> <localleader>z< \mathbb{Z}_{<0}
inoremap <buffer> <localleader>pz \mathbb{Z}_+
inoremap <buffer> <localleader>mz \mathbb{Z}_-
inoremap <buffer> <localleader>z \mathbb{Z}
inoremap <buffer> <localleader>zz \mathbb{Z}^2
inoremap <buffer> <localleader>zn \mathbb{Z}^{n}
inoremap <buffer> <localleader>zm \mathbb{Z}^{m}
inoremap <buffer> <localleader>zd \mathbb{Z}^{d}

"}}}
" Rational numbers{{{

inoremap <buffer> <localleader>q \mathbb{Q}
inoremap <buffer> <localleader>qq \mathbb{Q}^2
inoremap <buffer> <localleader>qn \mathbb{Q}^{n}
inoremap <buffer> <localleader>qm \mathbb{Q}^{m}

"}}}
" Complex numbers{{{

inoremap <buffer> <localleader>c \mathbb{C}
inoremap <buffer> <localleader>cc \mathbb{C}^2
inoremap <buffer> <localleader>cn \mathbb{C}^{n}
inoremap <buffer> <localleader>cm \mathbb{C}^{m}

"}}}
" p-adic numbers{{{

inoremap <buffer> <localleader>qp \mathbb{Q}_p
inoremap <buffer> <localleader>qqp {\mathbb{Q}_p}^2
inoremap <buffer> <localleader>qpqp {\mathbb{Q}_p}^2
inoremap <buffer> <localleader>qpn {\mathbb{Q}_p}^{n}
inoremap <buffer> <localleader>qpm {\mathbb{Q}_p}^{m}

"}}}
" p-adic Integers{{{

inoremap <buffer> <localleader>zp \mathbb{Z}_p
inoremap <buffer> <localleader>zzp {\mathbb{Z}_p}^2
inoremap <buffer> <localleader>zpzp {\mathbb{Z}_p}^2
inoremap <buffer> <localleader>zpn {\mathbb{Z}_p}^{n}
inoremap <buffer> <localleader>zpm {\mathbb{Z}_p}^{m}

"}}}
" Adele{{{

inoremap <buffer> <localleader>a \mathbb{A}
inoremap <buffer> <localleader>aa \mathbb{A}^2
inoremap <buffer> <localleader>an \mathbb{A}^{n}
inoremap <buffer> <localleader>am \mathbb{A}^{m}

"}}}
" Tori{{{

inoremap <buffer> <localleader>t \mathbb{T}
inoremap <buffer> <localleader>tt \mathbb{T}^2
inoremap <buffer> <localleader>tn \mathbb{T}^{n}
inoremap <buffer> <localleader>tm \mathbb{T}^{m}

"}}}

"}}}
" Outside math mode{{{
"-------------------------------------------------------------------

inoremap <buffer> r<Space><Space> $\mathbb{R}$

inoremap <buffer> n<Space><Space> $\mathbb{N}$

inoremap <buffer> z<Space><Space> $\mathbb{Z}$

inoremap <buffer> c<Space><Space> $\mathbb{C}$

inoremap <buffer> a<Space><Space> $\mathbb{A}$

inoremap <buffer> q<Space><Space> $\mathbb{Q}$

inoremap <buffer> t<Space><Space> $\mathbb{T}$

"}}}

"}}}
" Matrix Groups{{{
"-------------------------------------------------------------------

" M{{{

inoremap <buffer> <localleader>mmn \mathrm{M}_{m \times n}()<esc>i

inoremap <buffer> <localleader>mn \mathrm{M}(n, )<esc>i
inoremap <buffer> <localleader>mm \mathrm{M}(m, )<esc>i

inoremap <buffer> <localleader>mmnr \mathrm{M}_{m \times n}(\mathbb{R})
inoremap <buffer> <localleader>mnr \mathrm{M}(n,\mathbb{R})
inoremap <buffer> <localleader>mmr \mathrm{M}(m,\mathbb{R})

inoremap <buffer> <localleader>mmnc \mathrm{M}_{m \times n}(\mathbb{C})
inoremap <buffer> <localleader>mnc \mathrm{M}(n,\mathbb{C})
inoremap <buffer> <localleader>mmc \mathrm{M}(m,\mathbb{C})

inoremap <buffer> <localleader>mnqp \mathrm{M}(n,\mathbb{Q}_p)
inoremap <buffer> <localleader>mmqp \mathrm{M}(m,\mathbb{Q}_p)

"}}}
" GL{{{

inoremap <buffer> <localleader>gl \mathrm{GL}()<esc>i
inoremap <buffer> <localleader>gln \mathrm{GL}(n, )<esc>i
inoremap <buffer> <localleader>glm \mathrm{GL}(m, )<esc>i
inoremap <buffer> <localleader>glpn \mathrm{GL}^+(n, )<esc>i
inoremap <buffer> <localleader>glpm \mathrm{GL}^+(m, )<esc>i

inoremap <buffer> <localleader>glnr \mathrm{GL}(n,\mathbb{R})
inoremap <buffer> <localleader>glmr \mathrm{GL}(m,\mathbb{R})
inoremap <buffer> <localleader>glpnr \mathrm{GL}^+(n,\mathbb{R})
inoremap <buffer> <localleader>glpmr \mathrm{GL}^+(m,\mathbb{R})

inoremap <buffer> <localleader>glnc \mathrm{GL}(n,\mathbb{C})
inoremap <buffer> <localleader>glmc \mathrm{GL}(m,\mathbb{C})

inoremap <buffer> <localleader>glnqp \mathrm{GL}(n,\mathbb{Q}_p)
inoremap <buffer> <localleader>glmqp \mathrm{GL}(m,\mathbb{Q}_p)

inoremap <buffer> <localleader>gln \mathrm{GL}(n,\mathbb{Z}_p)
inoremap <buffer> <localleader>glm \mathrm{GL}(m,\mathbb{Z}_p)

inoremap <buffer> <localleader>gln \mathrm{GL}(n,\mathbb{A})
inoremap <buffer> <localleader>glm \mathrm{GL}(m,\mathbb{A})

"}}}
" SL{{{

inoremap <buffer> <localleader>sl \mathrm{SL}()<esc>i
inoremap <buffer> <localleader>sln \mathrm{SL}(n, )<esc>i
inoremap <buffer> <localleader>slm \mathrm{SL}(m, )<esc>i

inoremap <buffer> <localleader>slnq \mathrm{SL}(n,\mathbb{Q})
inoremap <buffer> <localleader>slmq \mathrm{SL}(m,\mathbb{Q})

inoremap <buffer> <localleader>slnr \mathrm{SL}(n,\mathbb{R})
inoremap <buffer> <localleader>slmr \mathrm{SL}(m,\mathbb{R})
inoremap <buffer> <localleader>sl2r \mathrm{SL}(2,\mathbb{R})
inoremap <buffer> <localleader>sl3r \mathrm{SL}(3,\mathbb{R})

inoremap <buffer> <localleader>slnc \mathrm{SL}(n,\mathbb{C})
inoremap <buffer> <localleader>slmc \mathrm{SL}(m,\mathbb{C})

inoremap <buffer> <localleader>slnz \mathrm{SL}(n,\mathbb{Z})
inoremap <buffer> <localleader>slmz \mathrm{SL}(m,\mathbb{Z})
inoremap <buffer> <localleader>sl2z \mathrm{SL}(2,\mathbb{Z})
inoremap <buffer> <localleader>sl3z \mathrm{SL}(3,\mathbb{Z})

inoremap <buffer> <localleader>slnqp \mathrm{SL}(n,\mathbb{Q}_p)
inoremap <buffer> <localleader>slmqp \mathrm{SL}(m,\mathbb{Q}_p)

inoremap <buffer> <localleader>slnzp \mathrm{SL}(n,\mathbb{Z}_p)
inoremap <buffer> <localleader>slmzp \mathrm{SL}(m,\mathbb{Z}_p)

inoremap <buffer> <localleader>slna \mathrm{SL}(n,\mathbb{A})
inoremap <buffer> <localleader>slma \mathrm{SL}(m,\mathbb{A})

inoremap <buffer> <localleader>slnrz \mathrm{SL}(n,\mathbb{R})/\mathrm{SL}(n,\mathbb{Z})
inoremap <buffer> <localleader>slmrz \mathrm{SL}(m,\mathbb{R})/\mathrm{SL}(m,\mathbb{Z})
inoremap <buffer> <localleader>sl2rz \mathrm{SL}(2,\mathbb{R})/\mathrm{SL}(2,\mathbb{Z})
inoremap <buffer> <localleader>sl3rz \mathrm{SL}(3,\mathbb{R})/\mathrm{SL}(3,\mathbb{Z})

"}}}
" PSL{{{

inoremap <buffer> <localleader>psl \mathrm{PSL}()<esc>i
inoremap <buffer> <localleader>psln \mathrm{PSL}(n, )<esc>i
inoremap <buffer> <localleader>pslm \mathrm{PSL}(m, )<esc>i

inoremap <buffer> <localleader>pslnr \mathrm{PSL}(n,\mathbb{R})
inoremap <buffer> <localleader>pslmr \mathrm{PSL}(m,\mathbb{R})
inoremap <buffer> <localleader>psl2r \mathrm{PSL}(2,\mathbb{R})
inoremap <buffer> <localleader>psl3r \mathrm{PSL}(3,\mathbb{R})

"}}}
" O{{{

inoremap <buffer> <localleader>o \mathrm{O}()<esc>i
inoremap <buffer> <localleader>on \mathrm{O}(n, )<esc>i
inoremap <buffer> <localleader>om \mathrm{O}(m, )<esc>i

inoremap <buffer> <localleader>onr \mathrm{O}(n,\mathbb{R})
inoremap <buffer> <localleader>omr \mathrm{O}(m,\mathbb{R})

inoremap <buffer> <localleader>onc \mathrm{O}(n,\mathbb{C})
inoremap <buffer> <localleader>omc \mathrm{O}(m,\mathbb{C})

"}}}
" SO{{{

inoremap <buffer> <localleader>so \mathrm{SO}()<esc>i
inoremap <buffer> <localleader>son \mathrm{SO}(n, )<esc>i
inoremap <buffer> <localleader>som \mathrm{SO}(m, )<esc>i

inoremap <buffer> <localleader>sonr \mathrm{SO}(n,\mathbb{R})
inoremap <buffer> <localleader>somr \mathrm{SO}(m,\mathbb{R})

inoremap <buffer> <localleader>sonc \mathrm{SO}(n,\mathbb{C})
inoremap <buffer> <localleader>somc \mathrm{SO}(m,\mathbb{C})

"}}}
" U{{{

inoremap <buffer> <localleader>u \mathrm{U}()<esc>i
inoremap <buffer> <localleader>un \mathrm{U}(n)
inoremap <buffer> <localleader>um \mathrm{U}(m)

inoremap <buffer> <localleader>unc \mathrm{U}(n,\mathbb{C})
inoremap <buffer> <localleader>umc \mathrm{U}(m,\mathbb{C})

"}}}
" SU{{{

inoremap <buffer> <localleader>su \mathrm{SU}()<esc>i

inoremap <buffer> <localleader>sun \mathrm{SU}(n)
inoremap <buffer> <localleader>sum \mathrm{SU}(m)

inoremap <buffer> <localleader>sunc \mathrm{SU}(n,\mathbb{C})
inoremap <buffer> <localleader>sumc \mathrm{SU}(m,\mathbb{C})

"}}}

"}}}
" times, tilde, hat, accent, bar, over/uline, power"{{{
"-------------------------------------------------------------------

inoremap <buffer> <localleader>x \times
inoremap <buffer> <localleader>o \circ
inoremap <buffer> <localleader>/ \frac{}{}<esc>F}i

inoremap <buffer> <localleader>n \norm{}<esc>i
inoremap <buffer> <localleader>p \partial

inoremap <buffer> <localleader>wt \widetilde{}<esc>i
inoremap <buffer> <localleader>~ \widetilde{}<esc>i
inoremap <buffer> <localleader>jt \tilde{}<esc>i

inoremap <buffer> <localleader>h \widehat{}<esc>i
inoremap <buffer> `6 \widehat{}<esc>i
inoremap <buffer> <localleader>- \bar{}<esc>i
inoremap <buffer> <localleader>bar \bar{}<esc>i
inoremap <buffer> <localleader>ol \overline{}<esc>i
inoremap <buffer> <localleader>ul \uline{}<esc>i
inoremap <buffer> <localleader>. \dot{}<esc>i
inoremap <buffer> <localleader>bm \bm{}<esc>i

inoremap <buffer> ^^ ^{}<esc>i
inoremap <buffer> <localleader>^ {}^{}<esc>hF}i

inoremap <buffer> __ _{}<esc>i
inoremap <buffer> <localleader>_ {}_{}<esc>hF}i

inoremap <buffer> ^_ {}^{}_{}<esc>F};i
inoremap <buffer> _^ {}_{}^{}<esc>F};i

"}}}
" lim, int, sum"{{{
"-------------------------------------------------------------------

inoremap <buffer> <localleader>l \lim_{ \to }<esc>F{a
inoremap <buffer> <localleader>li \liminf_{ \to }<esc>F{a
inoremap <buffer> <localleader>ls \limsup_{ \to }<esc>F{a
inoremap <buffer> <localleader>ll \lim\limits_{ \to }<esc>F{a
inoremap <buffer> <localleader>lil \liminf\limits_{ \to }<esc>F{a
inoremap <buffer> <localleader>lsl \limsup\limits_{ \to }<esc>F{a

inoremap <buffer> ;I \int
inoremap <buffer> :I \int
inoremap <buffer> <localleader>I \int
inoremap <buffer> ;dI \displaystyle\int
inoremap <buffer> :dI \displaystyle\int
inoremap <buffer> ;DI \displaystyle\int
inoremap <buffer> :DI \displaystyle\int
inoremap <buffer> <localleader>dI \displaystyle\int
inoremap <buffer> <localleader>DI \displaystyle\int
inoremap <buffer> ;i \int_{}<esc>i
inoremap <buffer> <localleader>i \int_{}^{}<esc>F}i
inoremap <buffer> ;il \int\limits_{}<esc>i
inoremap <buffer> <localleader>il \int\limits_{}^{}<esc>F}i
inoremap <buffer> ;di \displaystyle\int_{}<esc>i
inoremap <buffer> <localleader>di \displaystyle\int_{}^{}<esc>F}i
inoremap <buffer> ;dil \displaystyle\int\limits_{}<esc>i
inoremap <buffer> <localleader>dil \displaystyle\int\limits_{}^{}<esc>F}i

inoremap <buffer> ;d \, \mathrm{d}
inoremap <buffer> <localleader>d \displaystyle

inoremap <buffer> ;S \sum
inoremap <buffer> :S \sum
inoremap <buffer> <localleader>S \sum
inoremap <buffer> ;s \sum_{}<esc>i
inoremap <buffer> <localleader>s \sum_{}^{}<esc>F}i
inoremap <buffer> ;sl \sum\limits_{}<esc>i
inoremap <buffer> ;ds \displaystyle\sum_{}<esc>i
inoremap <buffer> <localleader>sl \sum\limits_{}^{}<esc>F}i
inoremap <buffer> <localleader>ds \displaystyle\sum_{}^{}<esc>F}i

"}}}
" Big bracket, less/greater than"{{{
"-------------------------------------------------------------------

inoremap <buffer> ;1 \big
inoremap <buffer> ;2 \Big
inoremap <buffer> ;3 \bigg
inoremap <buffer> ;4 \Bigg
inoremap <buffer> <localleader>8 \infty
inoremap <buffer> <localleader>< \leq
inoremap <buffer> <localleader>> \geq
inoremap <buffer> n= \neq 
inoremap <buffer> == \equiv
inoremap <buffer> `= \cong

"}}}
" Arrows"{{{
"-------------------------------------------------------------------

inoremap <buffer> <localleader>ra \rightarrow
inoremap <buffer> <localleader>la \leftarrow
inoremap <buffer> <localleader>rra \rightrightarrow
inoremap <buffer> <localleader>lla \leftleftarrow
inoremap <buffer> <localleader>xra \xrightarrow
inoremap <buffer> <localleader>xla \xleftarrow
inoremap <buffer> <localleader>thra \twoheadrightarrow
inoremap <buffer> <localleader>thla \twoheadleftarrow
inoremap <buffer> <localleader>rat \rightarrowtail
inoremap <buffer> <localleader>lat \leftarrowtail
inoremap <buffer> <localleader>rsa \rightsquigarrow
inoremap <buffer> <localleader>lsa \leftsquigarrow
inoremap <buffer> <localleader>da \downarrow
inoremap <buffer> <localleader>ua \uparrow
inoremap <buffer> <localleader>dda \downdownarrow
inoremap <buffer> <localleader>uua \upuparrow
inoremap <buffer> <localleader>hra \hookrightarrow
inoremap <buffer> <localleader>hla \hookleftarrow
inoremap <buffer> <localleader>car \curvearrowright
inoremap <buffer> <localleader>cal \curvearrowleft
inoremap <buffer> <localleader>ciar \circlearrowright
inoremap <buffer> <localleader>cial \circlearrowleft
inoremap <buffer> <localleader>lciar \lcirclearrowright
inoremap <buffer> <localleader>rciar \rcirclearrowright
inoremap <buffer> <localleader>rcial \rcirclearrowleft
inoremap <buffer> <localleader>lcial \lcirclearrowleft
inoremap <buffer> <localleader>to \to
inoremap <buffer> <localleader>lto \leadsto
inoremap <buffer> <localleader>mto \mapsto
inoremap <buffer> <localleader>lmto \longmapsto

"}}}
" Misc{{{
"-------------------------------------------------------------------

inoremap <buffer> <localleader>st \substack{ \\ }<esc>F{a
inoremap <buffer> <localleader>opn \operatorname{}<esc>i


inoremap <buffer> <localleader>w \wedge
inoremap <buffer> <localleader>N \nabla

inoremap <buffer> <localleader><C-E> \exp\left(\right)<esc>F(a

"-------------------------------------------------------------------
" Dollar to \[\]
"-------------------------------------------------------------------

nnoremap <buffer> <localleader>dtb lvt$yhdf$o\[<cr>\]<esc>O<esc>"0p

"-------------------------------------------------------------------
" Environment Completion
"-------------------------------------------------------------------

inoremap <buffer> <F3> <esc>F{vf}"ay$a<CR><CR>\end<esc>"apka<C-i>

"-------------------------------------------------------------------
" Referencing Theorem, Citation etc.
"-------------------------------------------------------------------

inoremap <buffer> <localleader>ref <esc>hmmlx`ma~\ref{}<esc>i
inoremap <buffer> <localleader>cit <esc>hmmlx`ma~\cite{}<esc>i

"}}}

"}}}

" Greek Alphabets{{{
"-------------------------------------------------------------------

inoremap <buffer> ;al \alpha
inoremap <buffer> ;be \beta
inoremap <buffer> ;ga \gamma
inoremap <buffer> ;de \delta
inoremap <buffer> ;ep \epsilon
inoremap <buffer> ;vep \varepsilon
inoremap <buffer> ;ze \zeta
inoremap <buffer> ;et \eta
inoremap <buffer> ;th \theta
inoremap <buffer> ;vth \vartheta
inoremap <buffer> ;io \iota
inoremap <buffer> ;ka \kappa
inoremap <buffer> ;la \lambda
inoremap <buffer> ;mu \mu
inoremap <buffer> ;nu \nu
inoremap <buffer> ;xi \xi
inoremap <buffer> ;pi \pi
inoremap <buffer> ;rh \rho
inoremap <buffer> ;si \sigma
inoremap <buffer> ;ta \tau
inoremap <buffer> ;ph \phi
inoremap <buffer> ;vph \varphi
inoremap <buffer> ;ch \chi
inoremap <buffer> ;mch \mychi
inoremap <buffer> ;ps \psi
inoremap <buffer> ;om \omega


inoremap <buffer> ;GA \Gamma
inoremap <buffer> ;Ga \Gamma
inoremap <buffer> ;DE \Delta
inoremap <buffer> ;De \Delta
inoremap <buffer> ;TH \Theta
inoremap <buffer> ;Th \Theta
inoremap <buffer> ;LA \Lambda
inoremap <buffer> ;La \Lambda
inoremap <buffer> ;Xi \Xi
inoremap <buffer> ;XI \Xi
inoremap <buffer> ;PI \Pi
inoremap <buffer> ;Pi \Pi
inoremap <buffer> ;SI \Sigma
inoremap <buffer> ;Si \Sigma
inoremap <buffer> ;PH \Phi
inoremap <buffer> ;Ph \Phi
inoremap <buffer> ;PS \Psi
inoremap <buffer> ;Ps \Psi
inoremap <buffer> ;OM \Omega
inoremap <buffer> ;Om \Omega

"}}}

" Compilation and Stuff{{{
"-------------------------------------------------------------------

" inoremap <buffer> <F5> <esc>:w!<CR>:!pdflatex %:r.tex<CR><CR>a
" nnoremap <buffer> <F5> :w!<CR>:!pdflatex %:r.tex<CR><CR>
inoremap <buffer> <F5> <esc>:w!<CR>:!latexmk -pdf %:r.tex<CR><CR>zza
nnoremap <buffer> <F5> :w!<CR>:!latexmk -pdf %:r.tex<CR><CR>zz
inoremap <buffer> <F8> <esc>:w!<CR>:!latexmk -pdf -bibtex -pdf %:r.tex<CR><CR>:w!<CR>:!latexmk -pdf -bibtex -pdf %:r.tex<CR><CR>zza
nnoremap <buffer> <F8> :w!<CR>:!latexmk -pdf -bibtex -pdf %:r.tex<CR><CR>:w!<CR>:!latexmk -pdf -bibtex -pdf %:r.tex<CR><CR>zz
inoremap <buffer> <F9> <esc>:w!<CR>:!latexmk -pdf -bibtex -pdf %:r.tex<CR><CR>:w!<CR>:!latexmk -pdf -bibtex -pdf %:r.tex<CR><CR>:w!<CR>:!latexmk -pdf -bibtex -pdf %:r.tex<CR><CR>zza
nnoremap <buffer> <F9> :w!<CR>:!latexmk -pdf -bibtex -pdf %:r.tex<CR><CR>:w!<CR>:!latexmk -pdf -bibtex -pdf %:r.tex<CR><CR>:w!<CR>:!latexmk -pdf -bibtex -pdf %:r.tex<CR><CR>zz
" inoremap <buffer> <F7> <esc>maG0lv$"ry:w<CR>:!pdflatex <C-R>r<CR>'a
" inoremap <buffer> <F6> <esc>mcG0lv$"by:w<CR>:!latexmk -pdf -bibtex <C-R>b<CR>'c

"}}}

" Highlighting{{{
"-------------------------------------------------------------------

" Chapter, Section, Subsection, Subsubsection, label"{{{2

highlight ChapterGroup ctermbg=092 ctermfg=yellow
let m = matchadd("ChapterGroup",'\\chapter{.\{-}}')


highlight SectionGroup ctermbg=39 ctermfg=Black
let m = matchadd("SectionGroup",'\\section{.\{-}}')

highlight SubsectionGroup ctermbg=198 ctermfg=Black
let m = matchadd("SubsectionGroup",'\\subsection{.\{-}}')

highlight SubsubsectionGroup ctermbg=143 ctermfg=Black
let m = matchadd("SubsubsectionGroup",'\\subsubsection{.\{-}}')


highlight Label ctermbg=Red ctermfg=black
let m = matchadd("Label",'\\label{.\{-}}')

"2}}}
" MarkerGroup, BoldGroup"{{{2

highlight Abstract ctermbg=92 ctermfg=yellow

let m = matchadd("Abstract",'% Abstract')

highlight MarkerGroup ctermbg=White ctermfg=Black

let m = matchadd("MarkerGroup",'% Notation')
let m = matchadd("MarkerGroup",'% Definition')
let m = matchadd("MarkerGroup",'% UnnumberedDefinition')
let m = matchadd("MarkerGroup",'% Theorem')
let m = matchadd("MarkerGroup",'% UnnumberedTheorem')
let m = matchadd("MarkerGroup",'% Lemma')
let m = matchadd("MarkerGroup",'% Proposition')
let m = matchadd("MarkerGroup",'% Corollary')
let m = matchadd("MarkerGroup",'% UnnumberedCorollary')
let m = matchadd("MarkerGroup",'% Problem')
let m = matchadd("MarkerGroup",'% Proof')
let m = matchadd("MarkerGroup",'% Remark')
let m = matchadd("MarkerGroup",'% UnnumberedRemark')
let m = matchadd("MarkerGroup",'% Example')
let m = matchadd("MarkerGroup",'% Exercise')
let m = matchadd("MarkerGroup",'% Bibliography')
let m = matchadd("MarkerGroup",'% Frame')
let m = matchadd("MarkerGroup",'% Claim')

highlight YellowMarkerGroup ctermbg=yellow ctermfg=black

let m = matchadd("YellowMarkerGroup",'% Equation')
let m = matchadd("YellowMarkerGroup",'% UnnumberedEquation')
let m = matchadd("YellowMarkerGroup",'% Align')
let m = matchadd("YellowMarkerGroup",'% UnnumberedAlign')
let m = matchadd("YellowMarkerGroup",'% AlignedEquation')
let m = matchadd("YellowMarkerGroup",'% UnnumberedAlignedEquation')
let m = matchadd("YellowMarkerGroup",'% Gather')
let m = matchadd("YellowMarkerGroup",'% UnnumberedGather')
let m = matchadd("YellowMarkerGroup",'% Center')
let m = matchadd("YellowMarkerGroup",'% Enumerate')
let m = matchadd("YellowMarkerGroup",'% Itemize')
let m = matchadd("YellowMarkerGroup",'% figure')
let m = matchadd("YellowMarkerGroup",'% diary')
let m = matchadd("YellowMarkerGroup",'\\bibliographystyle')
let m = matchadd("YellowMarkerGroup",'\\bibitem')
let m = matchadd("YellowMarkerGroup",'\\item')

highlight SalmonMarkerGroup ctermbg=209 ctermfg=black

let m = matchadd("SalmonMarkerGroup",'% Array')
let m = matchadd("SalmonMarkerGroup",'% Matrix')
let m = matchadd("SalmonMarkerGroup",'% Bmatrix')
let m = matchadd("SalmonMarkerGroup",'% Pmatrix')

highlight BoldGroup ctermfg=154 cterm=bold

let m = matchadd("BoldGroup",'&')

highlight BoldRedGroup ctermfg=red cterm=bold

let m = matchadd("BoldRedGroup",'\\todo')

"2}}}
" Abstract, Theorem, Equation"{{{2

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
let m = matchadd("TheoremGroup",'\\begin{remark}')
let m = matchadd("TheoremGroup",'\\end{remark}')
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
let m = matchadd("EquationGroup",'\\begin{center}')
let m = matchadd("EquationGroup",'\\end{center}')
let m = matchadd("EquationGroup",'\\begin{gather}')
let m = matchadd("EquationGroup",'\\end{gather}')
let m = matchadd("EquationGroup",'\\begin{gather\*}')
let m = matchadd("EquationGroup",'\\end{gather\*}')
let m = matchadd("EquationGroup",'\\begin{cases}')
let m = matchadd("EquationGroup",'\\end{cases}')
let m = matchadd("EquationGroup",'\\begin{enumerate}')
let m = matchadd("EquationGroup",'\\end{enumerate}')
let m = matchadd("EquationGroup",'\\begin{itemize}')
let m = matchadd("EquationGroup",'\\end{itemize}')
let m = matchadd("EquationGroup",'\\begin{thebibliography}')
let m = matchadd("EquationGroup",'\\end{thebibliography}')

highlight ArrayMatrixGroup ctermbg=209 ctermfg=Black

let m = matchadd("ArrayMatrixGroup",'\\begin{array}')
let m = matchadd("ArrayMatrixGroup",'\\end{array}')
let m = matchadd("ArrayMatrixGroup",'\\begin{matrix}')
let m = matchadd("ArrayMatrixGroup",'\\end{matrix}')
let m = matchadd("ArrayMatrixGroup",'\\begin{bmatrix}')
let m = matchadd("ArrayMatrixGroup",'\\end{bmatrix}')
let m = matchadd("ArrayMatrixGroup",'\\begin{pmatrix}')
let m = matchadd("ArrayMatrixGroup",'\\end{pmatrix}')

highlight asterisk ctermbg=164 ctermfg=black

let m = matchadd("asterisk",'\*')

"2}}}

"}}}

" Useful or useless{{{
"-------------------------------------------------------------------

" Correct Labelling
"-------------------------------------------------------------------

" function! CorrectLabelling()
" 	call search('\<\|\u', 'W')
" 	normal i 
" 	normal l
" endfunction

" nnoremap <C-Right> :call CorrectLabelling()<CR>

" Convert The TeX File To Markdown File Because Pandoc is of No Use
"-------------------------------------------------------------------

" function! ConvertTeXToMarkdown()
" 	source ~/Desktop/Blog/TeXToMarkdownPackage.tex
" 	call DegradeEnv()
" 	call DegradeLabelsAndRefs()
" 	call FixInequalities()
" 	call FixAsterisks()
" 	call FixDefineMacro()
" 	call NumberingEnvironments()
" 	call Referencing()
" 	w
" 	silent !pandoc -s %:r.tex -o %:r.markdown
" 	redraw!
" 	new %:r.markdown
" 	call FixLaTeXEnv()
" 	call ReplaceThisWithThat('\\<', '<')
" 	call ReplaceThisWithThat('\\>', '>')
" endfunction




" highlight BoldGroup ctermfg=grey cterm=bold
" let m = matchadd("BoldGroup",'\\begin{.\{-}}')
" let m = matchadd("BoldGroup",'\\end{.\{-}}')

" highlight IndexGroup ctermbg=Gray ctermfg=Black
" let m = matchadd("IndexGroup",'\\index{.\{-}}')

"}}}

"-------------------------------------------------------------------
" Comments
"-------------------------------------------------------------------

" Use ; before a letter for specific use of that letter

