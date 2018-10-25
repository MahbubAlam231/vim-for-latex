
"-------------------------------------------------------------------
" Mahbub's TeXKeyBindings
"-------------------------------------------------------------------

" Numbers, Braces and Some symbols{{{
"-------------------------------------------------------------------

" Numbers"{{{
"-------------------------------------------------------------------

inoremap <buffer> 1 <esc>A
inoremap <buffer> 11 1
" Open all references for tex
inoremap <buffer> <localleader>1 <c-x><c-o>

inoremap <buffer> 2 <esc>lf$i
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

inoremap <buffer> '' `'<esc>i
inoremap <buffer> "" ``"<esc>i

"}}}

" Math Symbols{{{
"-------------------------------------------------------------------

" Set theory and Logic"{{{
"-------------------------------------------------------------------

inoremap <buffer> <localleader>fa \forall
inoremap <buffer> <localleader>E \exists
inoremap <buffer> <localleader>e \in
inoremap <buffer> <localleader>e, \ni
inoremap <buffer> <localleader>ne \notin
inoremap <buffer> <localleader>0 \varnothing
inoremap <buffer> ;uu \cup_{}<esc>i
inoremap <buffer> ;nn \cap_{}<esc>i
inoremap <buffer> <localleader>uu \cup_{}^{}<esc>F}i
inoremap <buffer> <localleader>nn \cap_{}^{}<esc>F}i
inoremap <buffer> ;uul \cup\limits_{}<esc>i
inoremap <buffer> ;nnl \cap\limits_{}<esc>i
inoremap <buffer> <localleader>uul \cup\limits_{}^{}<esc>F}i
inoremap <buffer> <localleader>nnl \cap\limits_{}^{}<esc>F}i
inoremap <buffer> ;UU \bigcup_{}<esc>i
inoremap <buffer> ;UU \bigcup_{}<esc>i
inoremap <buffer> ;NN \bigcap_{}<esc>i
inoremap <buffer> ;NN \bigcap_{}<esc>i
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
inoremap <buffer> <localleader>n. \mathbb{N}^{n}<esc>i
inoremap <buffer> <localleader>nm \mathbb{N}^{m}<esc>i

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

" Toggle Matrix groups writing style
let s:Matrix_group_toggle = 1

function! MatrixGroupToggle()
    if s:Matrix_group_toggle
        " Parenthesis style
        " M{{{

        inoremap <buffer> <leader>mmn \mathrm{M}_{m \times n}
        inoremap <buffer> <leader>mn \mathrm{M}_{n}
        inoremap <buffer> <leader>mm \mathrm{M}_{m}
        inoremap <buffer> <leader>md \mathrm{M}_{d}
        inoremap <buffer> <leader>m2 \mathrm{M}_{2}
        inoremap <buffer> <leader>m3 \mathrm{M}_{3}

        inoremap <buffer> <localleader>mmn \mathrm{M}_{m \times n}()<esc>i
        inoremap <buffer> <localleader>m \mathrm{M}()<esc>F}i

        inoremap <buffer> <localleader>mn \mathrm{M}(n,)<esc>i
        inoremap <buffer> <localleader>mm \mathrm{M}(m,)<esc>i
        inoremap <buffer> <localleader>md \mathrm{M}(d,)<esc>i
        inoremap <buffer> <localleader>m2 \mathrm{M}(2,)<esc>i
        inoremap <buffer> <localleader>m3 \mathrm{M}(3,)<esc>i

        inoremap <buffer> <localleader>mmnz \mathrm{M}_{m \times n}(\mathbb{Z})
        inoremap <buffer> <localleader>mnz \mathrm{M}(n,\mathbb{Z})
        inoremap <buffer> <localleader>mmz \mathrm{M}(m,\mathbb{Z})
        inoremap <buffer> <localleader>mdz \mathrm{M}(d,\mathbb{Z})
        inoremap <buffer> <localleader>m2z \mathrm{M}(2,\mathbb{Z})
        inoremap <buffer> <localleader>m3z \mathrm{M}(3,\mathbb{Z})

        inoremap <buffer> <localleader>mmnq \mathrm{M}_{m \times n}(\mathbb{Q})
        inoremap <buffer> <localleader>mnq \mathrm{M}(n,\mathbb{Q})
        inoremap <buffer> <localleader>mmq \mathrm{M}(m,\mathbb{Q})
        inoremap <buffer> <localleader>mdq \mathrm{M}(d,\mathbb{Q})
        inoremap <buffer> <localleader>m2q \mathrm{M}(2,\mathbb{Q})
        inoremap <buffer> <localleader>m3q \mathrm{M}(3,\mathbb{Q})

        inoremap <buffer> <localleader>mmnr \mathrm{M}_{m \times n}(\mathbb{R})
        inoremap <buffer> <localleader>mnr \mathrm{M}(n,\mathbb{R})
        inoremap <buffer> <localleader>mmr \mathrm{M}(m,\mathbb{R})
        inoremap <buffer> <localleader>mdr \mathrm{M}(d,\mathbb{R})
        inoremap <buffer> <localleader>m2r \mathrm{M}(2,\mathbb{R})
        inoremap <buffer> <localleader>m3r \mathrm{M}(3,\mathbb{R})

        inoremap <buffer> <localleader>mmnc \mathrm{M}_{m \times n}(\mathbb{C})
        inoremap <buffer> <localleader>mnc \mathrm{M}(n,\mathbb{C})
        inoremap <buffer> <localleader>mmc \mathrm{M}(m,\mathbb{C})
        inoremap <buffer> <localleader>mdc \mathrm{M}(d,\mathbb{C})
        inoremap <buffer> <localleader>m2c \mathrm{M}(2,\mathbb{C})
        inoremap <buffer> <localleader>m3c \mathrm{M}(3,\mathbb{C})

        inoremap <buffer> <localleader>mmnzp \mathrm{M}_{m \times n}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>mnzp \mathrm{M}(n,\mathbb{Z}_p)
        inoremap <buffer> <localleader>mmzp \mathrm{M}(m,\mathbb{Z}_p)
        inoremap <buffer> <localleader>mdzp \mathrm{M}(d,\mathbb{Z}_p)
        inoremap <buffer> <localleader>m2zp \mathrm{M}(2,\mathbb{Z}_p)
        inoremap <buffer> <localleader>m3zp \mathrm{M}(3,\mathbb{Z}_p)

        inoremap <buffer> <localleader>mmnqp \mathrm{M}_{m \times n}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>mnqp \mathrm{M}(n,\mathbb{Q}_p)
        inoremap <buffer> <localleader>mmqp \mathrm{M}(m,\mathbb{Q}_p)
        inoremap <buffer> <localleader>mdqp \mathrm{M}(d,\mathbb{Q}_p)
        inoremap <buffer> <localleader>m2qp \mathrm{M}(2,\mathbb{Q}_p)
        inoremap <buffer> <localleader>m3qp \mathrm{M}(3,\mathbb{Q}_p)

        inoremap <buffer> <localleader>mmnk \mathrm{M}_{m \times n}(\mathbb{K})
        inoremap <buffer> <localleader>mnk \mathrm{M}(n,\mathbb{K})
        inoremap <buffer> <localleader>mmk \mathrm{M}(m,\mathbb{K})
        inoremap <buffer> <localleader>mdk \mathrm{M}(d,\mathbb{K})
        inoremap <buffer> <localleader>m2k \mathrm{M}(2,\mathbb{K})
        inoremap <buffer> <localleader>m3k \mathrm{M}(3,\mathbb{K})

        inoremap <buffer> <localleader>mmna \mathrm{M}_{m \times n}(\mathbb{A})
        inoremap <buffer> <localleader>mna \mathrm{M}(n,\mathbb{A})
        inoremap <buffer> <localleader>mma \mathrm{M}(m,\mathbb{A})
        inoremap <buffer> <localleader>mda \mathrm{M}(d,\mathbb{A})
        inoremap <buffer> <localleader>m2a \mathrm{M}(2,\mathbb{A})
        inoremap <buffer> <localleader>m3a \mathrm{M}(3,\mathbb{A})

        inoremap <buffer> <localleader>mmnok \mathrm{M}_{m \times n}(\mathcal{O}_K)
        inoremap <buffer> <localleader>mnok \mathrm{M}(n,\mathcal{O}_K)
        inoremap <buffer> <localleader>mmok \mathrm{M}(m,\mathcal{O}_K)
        inoremap <buffer> <localleader>mdok \mathrm{M}(d,\mathcal{O}_K)
        inoremap <buffer> <localleader>m2ok \mathrm{M}(2,\mathcal{O}_K)
        inoremap <buffer> <localleader>m3ok \mathrm{M}(3,\mathcal{O}_K)

        inoremap <buffer> <localleader>mmnjk \mathrm{M}_{m \times n}(K)
        inoremap <buffer> <localleader>mnjk \mathrm{M}(n,K)
        inoremap <buffer> <localleader>mmjk \mathrm{M}(m,K)
        inoremap <buffer> <localleader>mdjk \mathrm{M}(d,K)
        inoremap <buffer> <localleader>m2jk \mathrm{M}(2,K)
        inoremap <buffer> <localleader>m3jk \mathrm{M}(3,K)

        inoremap <buffer> <localleader>mmnks \mathrm{M}_{m \times n}(K_S)
        inoremap <buffer> <localleader>mnks \mathrm{M}(n,K_S)
        inoremap <buffer> <localleader>mmks \mathrm{M}(m,K_S)
        inoremap <buffer> <localleader>mdks \mathrm{M}(d,K_S)
        inoremap <buffer> <localleader>m2ks \mathrm{M}(2,K_S)
        inoremap <buffer> <localleader>m3ks \mathrm{M}(3,K_S)

        "}}}
        " GL{{{

        inoremap <buffer> <leader>gl \mathrm{GL}
        inoremap <buffer> <leader>gln \mathrm{GL}_{n}
        inoremap <buffer> <leader>glm \mathrm{GL}_{m}
        inoremap <buffer> <leader>gld \mathrm{GL}_{d}
        inoremap <buffer> <leader>gl2 \mathrm{GL}_{2}
        inoremap <buffer> <leader>gl3 \mathrm{GL}_{3}

        inoremap <buffer> <localleader>gl \mathrm{GL}()<esc>i

        inoremap <buffer> <localleader>gln \mathrm{GL}(n,)<esc>i
        inoremap <buffer> <localleader>glm \mathrm{GL}(m,)<esc>i
        inoremap <buffer> <localleader>gld \mathrm{GL}(d,)<esc>i
        inoremap <buffer> <localleader>gl2 \mathrm{GL}(2,)<esc>i
        inoremap <buffer> <localleader>gl3 \mathrm{GL}(3,)<esc>i
        inoremap <buffer> <localleader>glpn \mathrm{GL}^+(n,)<esc>i
        inoremap <buffer> <localleader>glpm \mathrm{GL}^+(m,)<esc>i
        inoremap <buffer> <localleader>glpd \mathrm{GL}^+(d,)<esc>i
        inoremap <buffer> <localleader>glp2 \mathrm{GL}^+(2,)<esc>i
        inoremap <buffer> <localleader>glp3 \mathrm{GL}^+(3,)<esc>i

        inoremap <buffer> <localleader>glnz \mathrm{GL}(n,\mathbb{Z})
        inoremap <buffer> <localleader>glmz \mathrm{GL}(m,\mathbb{Z})
        inoremap <buffer> <localleader>gldz \mathrm{GL}(d,\mathbb{Z})
        inoremap <buffer> <localleader>gl2z \mathrm{GL}(2,\mathbb{Z})
        inoremap <buffer> <localleader>gl3z \mathrm{GL}(3,\mathbb{Z})
        inoremap <buffer> <localleader>glpnz \mathrm{GL}^+(n,\mathbb{Z})
        inoremap <buffer> <localleader>glpmz \mathrm{GL}^+(m,\mathbb{Z})
        inoremap <buffer> <localleader>glpdz \mathrm{GL}^+(d,\mathbb{Z})
        inoremap <buffer> <localleader>glp2z \mathrm{GL}^+(2,\mathbb{Z})
        inoremap <buffer> <localleader>glp3z \mathrm{GL}^+(3,\mathbb{Z})

        inoremap <buffer> <localleader>glnq \mathrm{GL}(n,\mathbb{Q})
        inoremap <buffer> <localleader>glmq \mathrm{GL}(m,\mathbb{Q})
        inoremap <buffer> <localleader>gldq \mathrm{GL}(d,\mathbb{Q})
        inoremap <buffer> <localleader>gl2q \mathrm{GL}(2,\mathbb{Q})
        inoremap <buffer> <localleader>gl3q \mathrm{GL}(3,\mathbb{Q})
        inoremap <buffer> <localleader>glpnq \mathrm{GL}^+(n,\mathbb{Q})
        inoremap <buffer> <localleader>glpmq \mathrm{GL}^+(m,\mathbb{Q})
        inoremap <buffer> <localleader>glpdq \mathrm{GL}^+(d,\mathbb{Q})
        inoremap <buffer> <localleader>glp2q \mathrm{GL}^+(2,\mathbb{Q})
        inoremap <buffer> <localleader>glp3q \mathrm{GL}^+(3,\mathbb{Q})

        inoremap <buffer> <localleader>glnr \mathrm{GL}(n,\mathbb{R})
        inoremap <buffer> <localleader>glmr \mathrm{GL}(m,\mathbb{R})
        inoremap <buffer> <localleader>gldr \mathrm{GL}(d,\mathbb{R})
        inoremap <buffer> <localleader>gl2r \mathrm{GL}(2,\mathbb{R})
        inoremap <buffer> <localleader>gl3r \mathrm{GL}(3,\mathbb{R})
        inoremap <buffer> <localleader>glpnr \mathrm{GL}^+(n,\mathbb{R})
        inoremap <buffer> <localleader>glpmr \mathrm{GL}^+(m,\mathbb{R})
        inoremap <buffer> <localleader>glpdr \mathrm{GL}^+(d,\mathbb{R})
        inoremap <buffer> <localleader>glp2r \mathrm{GL}^+(2,\mathbb{R})
        inoremap <buffer> <localleader>glp3r \mathrm{GL}^+(3,\mathbb{R})

        inoremap <buffer> <localleader>glnc \mathrm{GL}(n,\mathbb{C})
        inoremap <buffer> <localleader>glmc \mathrm{GL}(m,\mathbb{C})
        inoremap <buffer> <localleader>gldc \mathrm{GL}(d,\mathbb{C})
        inoremap <buffer> <localleader>gl2c \mathrm{GL}(2,\mathbb{C})
        inoremap <buffer> <localleader>gl3c \mathrm{GL}(3,\mathbb{C})

        inoremap <buffer> <localleader>glnzp \mathrm{GL}(n,\mathbb{Z}_p)
        inoremap <buffer> <localleader>glmzp \mathrm{GL}(m,\mathbb{Z}_p)
        inoremap <buffer> <localleader>gldzp \mathrm{GL}(d,\mathbb{Z}_p)
        inoremap <buffer> <localleader>gl2zp \mathrm{GL}(2,\mathbb{Z}_p)
        inoremap <buffer> <localleader>gl3zp \mathrm{GL}(3,\mathbb{Z}_p)

        inoremap <buffer> <localleader>glnqp \mathrm{GL}(n,\mathbb{Q}_p)
        inoremap <buffer> <localleader>glmqp \mathrm{GL}(m,\mathbb{Q}_p)
        inoremap <buffer> <localleader>gldqp \mathrm{GL}(d,\mathbb{Q}_p)
        inoremap <buffer> <localleader>gl2qp \mathrm{GL}(2,\mathbb{Q}_p)
        inoremap <buffer> <localleader>gl3qp \mathrm{GL}(3,\mathbb{Q}_p)

        inoremap <buffer> <localleader>glnk \mathrm{GL}(n,\mathbb{K})
        inoremap <buffer> <localleader>glmk \mathrm{GL}(m,\mathbb{K})
        inoremap <buffer> <localleader>gldk \mathrm{GL}(d,\mathbb{K})
        inoremap <buffer> <localleader>gl2k \mathrm{GL}(2,\mathbb{K})
        inoremap <buffer> <localleader>gl3k \mathrm{GL}(3,\mathbb{K})

        inoremap <buffer> <localleader>glna \mathrm{GL}(n,\mathbb{A})
        inoremap <buffer> <localleader>glma \mathrm{GL}(m,\mathbb{A})
        inoremap <buffer> <localleader>glda \mathrm{GL}(d,\mathbb{A})
        inoremap <buffer> <localleader>gl2a \mathrm{GL}(2,\mathbb{A})
        inoremap <buffer> <localleader>gl3a \mathrm{GL}(3,\mathbb{A})

        inoremap <buffer> <localleader>glnok \mathrm{GL}(n,\mathcal{O}_K)
        inoremap <buffer> <localleader>glmok \mathrm{GL}(m,\mathcal{O}_K)
        inoremap <buffer> <localleader>gldok \mathrm{GL}(d,\mathcal{O}_K)
        inoremap <buffer> <localleader>gl2ok \mathrm{GL}(2,\mathcal{O}_K)
        inoremap <buffer> <localleader>gl3ok \mathrm{GL}(3,\mathcal{O}_K)

        inoremap <buffer> <localleader>glnjk \mathrm{GL}(n,K)
        inoremap <buffer> <localleader>glmjk \mathrm{GL}(m,K)
        inoremap <buffer> <localleader>gldjk \mathrm{GL}(d,K)
        inoremap <buffer> <localleader>gl2jk \mathrm{GL}(2,K)
        inoremap <buffer> <localleader>gl3jk \mathrm{GL}(3,K)

        inoremap <buffer> <localleader>glnks \mathrm{GL}(n,K_S)
        inoremap <buffer> <localleader>glmks \mathrm{GL}(m,K_S)
        inoremap <buffer> <localleader>gldks \mathrm{GL}(d,K_S)
        inoremap <buffer> <localleader>gl2ks \mathrm{GL}(2,K_S)
        inoremap <buffer> <localleader>gl3ks \mathrm{GL}(3,K_S)

        "}}}
        " SL{{{

        inoremap <buffer> <leader>sl \mathrm{SL}
        inoremap <buffer> <leader>sln \mathrm{SL}_{n}
        inoremap <buffer> <leader>slm \mathrm{SL}_{m}
        inoremap <buffer> <leader>sld \mathrm{SL}_{d}
        inoremap <buffer> <leader>sl2 \mathrm{SL}_{2}
        inoremap <buffer> <leader>sl3 \mathrm{SL}_{3}

        inoremap <buffer> <localleader>sl \mathrm{SL}()<esc>i

        inoremap <buffer> <localleader>sln \mathrm{SL}(n,)<esc>i
        inoremap <buffer> <localleader>slm \mathrm{SL}(m,)<esc>i
        inoremap <buffer> <localleader>sld \mathrm{SL}(d,)<esc>i
        inoremap <buffer> <localleader>sl2 \mathrm{SL}(2,)<esc>i
        inoremap <buffer> <localleader>sl3 \mathrm{SL}(3,)<esc>i

        inoremap <buffer> <localleader>slnz \mathrm{SL}(n,\mathbb{Z})
        inoremap <buffer> <localleader>slmz \mathrm{SL}(m,\mathbb{Z})
        inoremap <buffer> <localleader>sldz \mathrm{SL}(d,\mathbb{Z})
        inoremap <buffer> <localleader>sl2z \mathrm{SL}(2,\mathbb{Z})
        inoremap <buffer> <localleader>sl3z \mathrm{SL}(3,\mathbb{Z})

        inoremap <buffer> <localleader>slnq \mathrm{SL}(n,\mathbb{Q})
        inoremap <buffer> <localleader>slmq \mathrm{SL}(m,\mathbb{Q})
        inoremap <buffer> <localleader>sldq \mathrm{SL}(d,\mathbb{Q})
        inoremap <buffer> <localleader>sl2q \mathrm{SL}(2,\mathbb{Q})
        inoremap <buffer> <localleader>sl3q \mathrm{SL}(3,\mathbb{Q})

        inoremap <buffer> <localleader>slnr \mathrm{SL}(n,\mathbb{R})
        inoremap <buffer> <localleader>slmr \mathrm{SL}(m,\mathbb{R})
        inoremap <buffer> <localleader>sldr \mathrm{SL}(d,\mathbb{R})
        inoremap <buffer> <localleader>sl2r \mathrm{SL}(2,\mathbb{R})
        inoremap <buffer> <localleader>sl3r \mathrm{SL}(3,\mathbb{R})

        inoremap <buffer> <localleader>slnc \mathrm{SL}(n,\mathbb{C})
        inoremap <buffer> <localleader>slmc \mathrm{SL}(m,\mathbb{C})
        inoremap <buffer> <localleader>sldc \mathrm{SL}(d,\mathbb{C})
        inoremap <buffer> <localleader>sl2c \mathrm{SL}(2,\mathbb{C})
        inoremap <buffer> <localleader>sl3c \mathrm{SL}(3,\mathbb{C})

        inoremap <buffer> <localleader>slnzp \mathrm{SL}(n,\mathbb{Z}_p)
        inoremap <buffer> <localleader>slmzp \mathrm{SL}(m,\mathbb{Z}_p)
        inoremap <buffer> <localleader>sldzp \mathrm{SL}(d,\mathbb{Z}_p)
        inoremap <buffer> <localleader>sl2zp \mathrm{SL}(2,\mathbb{Z}_p)
        inoremap <buffer> <localleader>sl3zp \mathrm{SL}(3,\mathbb{Z}_p)

        inoremap <buffer> <localleader>slnqp \mathrm{SL}(n,\mathbb{Q}_p)
        inoremap <buffer> <localleader>slmqp \mathrm{SL}(m,\mathbb{Q}_p)
        inoremap <buffer> <localleader>sldqp \mathrm{SL}(d,\mathbb{Q}_p)
        inoremap <buffer> <localleader>sl2qp \mathrm{SL}(2,\mathbb{Q}_p)
        inoremap <buffer> <localleader>sl3qp \mathrm{SL}(3,\mathbb{Q}_p)

        inoremap <buffer> <localleader>slnk \mathrm{SL}(n,\mathbb{K})
        inoremap <buffer> <localleader>slmk \mathrm{SL}(m,\mathbb{K})
        inoremap <buffer> <localleader>sldk \mathrm{SL}(d,\mathbb{K})
        inoremap <buffer> <localleader>sl2k \mathrm{SL}(2,\mathbb{K})
        inoremap <buffer> <localleader>sl3k \mathrm{SL}(3,\mathbb{K})

        inoremap <buffer> <localleader>slna \mathrm{SL}(n,\mathbb{A})
        inoremap <buffer> <localleader>slma \mathrm{SL}(m,\mathbb{A})
        inoremap <buffer> <localleader>slda \mathrm{SL}(d,\mathbb{A})
        inoremap <buffer> <localleader>sl2a \mathrm{SL}(2,\mathbb{A})
        inoremap <buffer> <localleader>sl3a \mathrm{SL}(3,\mathbb{A})

        inoremap <buffer> <localleader>slnok \mathrm{SL}(n,\mathcal{O}_K)
        inoremap <buffer> <localleader>slmok \mathrm{SL}(m,\mathcal{O}_K)
        inoremap <buffer> <localleader>sldok \mathrm{SL}(d,\mathcal{O}_K)
        inoremap <buffer> <localleader>sl2ok \mathrm{SL}(2,\mathcal{O}_K)
        inoremap <buffer> <localleader>sl3ok \mathrm{SL}(3,\mathcal{O}_K)

        inoremap <buffer> <localleader>slnjk \mathrm{SL}(n,K)
        inoremap <buffer> <localleader>slmjk \mathrm{SL}(m,K)
        inoremap <buffer> <localleader>sldjk \mathrm{SL}(d,K)
        inoremap <buffer> <localleader>sl2jk \mathrm{SL}(2,K)
        inoremap <buffer> <localleader>sl3jk \mathrm{SL}(3,K)

        inoremap <buffer> <localleader>slnks \mathrm{SL}(n,K_S)
        inoremap <buffer> <localleader>slmks \mathrm{SL}(m,K_S)
        inoremap <buffer> <localleader>sldks \mathrm{SL}(d,K_S)
        inoremap <buffer> <localleader>sl2ks \mathrm{SL}(2,K_S)
        inoremap <buffer> <localleader>sl3ks \mathrm{SL}(3,K_S)

        inoremap <buffer> <localleader>slnrz \mathrm{SL}(n,\mathbb{R})/\mathrm{SL}(n,\mathbb{Z})
        inoremap <buffer> <localleader>slmrz \mathrm{SL}(m,\mathbb{R})/\mathrm{SL}(m,\mathbb{Z})
        inoremap <buffer> <localleader>sldrz \mathrm{SL}(d,\mathbb{R})/\mathrm{SL}(d,\mathbb{Z})
        inoremap <buffer> <localleader>sl2rz \mathrm{SL}(2,\mathbb{R})/\mathrm{SL}(2,\mathbb{Z})
        inoremap <buffer> <localleader>sl3rz \mathrm{SL}(3,\mathbb{R})/\mathrm{SL}(3,\mathbb{Z})

        inoremap <buffer> <localleader>slnzr \mathrm{SL}(n,\mathbb{Z}) \backslash \mathrm{SL}(n,\mathbb{R})
        inoremap <buffer> <localleader>slmzr \mathrm{SL}(m,\mathbb{Z}) \backslash \mathrm{SL}(m,\mathbb{R})
        inoremap <buffer> <localleader>sldzr \mathrm{SL}(d,\mathbb{Z}) \backslash \mathrm{SL}(d,\mathbb{R})
        inoremap <buffer> <localleader>sl2zr \mathrm{SL}(2,\mathbb{Z}) \backslash \mathrm{SL}(2,\mathbb{R})
        inoremap <buffer> <localleader>sl3zr \mathrm{SL}(3,\mathbb{Z}) \backslash \mathrm{SL}(3,\mathbb{R})

        inoremap <buffer> <localleader>slnksok \mathrm{SL}(n,K_S)/\mathrm{SL}(n,\mathcal{O}_K)
        inoremap <buffer> <localleader>slmksok \mathrm{SL}(m,K_S)/\mathrm{SL}(m,\mathcal{O}_K)
        inoremap <buffer> <localleader>sldksok \mathrm{SL}(d,K_S)/\mathrm{SL}(d,\mathcal{O}_K)
        inoremap <buffer> <localleader>sl2ksok \mathrm{SL}(2,K_S)/\mathrm{SL}(2,\mathcal{O}_K)
        inoremap <buffer> <localleader>sl3ksok \mathrm{SL}(3,K_S)/\mathrm{SL}(3,\mathcal{O}_K)

        inoremap <buffer> <localleader>slnokks \mathrm{SL}(n,\mathcal{O}_K) \backslash \mathrm{SL}(n,K_S)
        inoremap <buffer> <localleader>slmokks \mathrm{SL}(m,\mathcal{O}_K) \backslash \mathrm{SL}(m,K_S)
        inoremap <buffer> <localleader>sldokks \mathrm{SL}(d,\mathcal{O}_K) \backslash \mathrm{SL}(d,K_S)
        inoremap <buffer> <localleader>sl2okks \mathrm{SL}(2,\mathcal{O}_K) \backslash \mathrm{SL}(2,K_S)
        inoremap <buffer> <localleader>sl3okks \mathrm{SL}(3,\mathcal{O}_K) \backslash \mathrm{SL}(3,K_S)

        "}}}
        " PSL{{{

        inoremap <buffer> <leader>psl \mathrm{PSL}
        inoremap <buffer> <leader>psln \mathrm{PSL}_{n}
        inoremap <buffer> <leader>pslm \mathrm{PSL}_{m}
        inoremap <buffer> <leader>psld \mathrm{PSL}_{d}
        inoremap <buffer> <leader>psl2 \mathrm{PSL}_{2}
        inoremap <buffer> <leader>psl3 \mathrm{PSL}_{3}

        inoremap <buffer> <localleader>psl \mathrm{PSL}()<esc>i

        inoremap <buffer> <localleader>psln \mathrm{PSL}(n,)<esc>i
        inoremap <buffer> <localleader>pslm \mathrm{PSL}(m,)<esc>i
        inoremap <buffer> <localleader>psld \mathrm{PSL}(d,)<esc>i
        inoremap <buffer> <localleader>psl2 \mathrm{PSL}(2,)<esc>i
        inoremap <buffer> <localleader>psl3 \mathrm{PSL}(3,)<esc>i

        inoremap <buffer> <localleader>pslnr \mathrm{PSL}(n,\mathbb{R})
        inoremap <buffer> <localleader>pslmr \mathrm{PSL}(m,\mathbb{R})
        inoremap <buffer> <localleader>psldr \mathrm{PSL}(d,\mathbb{R})
        inoremap <buffer> <localleader>psl2r \mathrm{PSL}(2,\mathbb{R})
        inoremap <buffer> <localleader>psl3r \mathrm{PSL}(3,\mathbb{R})

        "}}}
        " O{{{

        inoremap <buffer> <leader>o \mathrm{O}
        inoremap <buffer> <leader>on \mathrm{O}_{n}
        inoremap <buffer> <leader>om \mathrm{O}_{m}
        inoremap <buffer> <leader>od \mathrm{O}_{d}
        inoremap <buffer> <leader>o2 \mathrm{O}_{2}
        inoremap <buffer> <leader>o3 \mathrm{O}_{3}

        inoremap <buffer> <localleader>o \mathrm{O}()<esc>i

        inoremap <buffer> <localleader>on \mathrm{O}(n,)<esc>i
        inoremap <buffer> <localleader>om \mathrm{O}(m,)<esc>i
        inoremap <buffer> <localleader>od \mathrm{O}(d,)<esc>i
        inoremap <buffer> <localleader>o2 \mathrm{O}(2,)<esc>i
        inoremap <buffer> <localleader>o3 \mathrm{O}(3,)<esc>i

        inoremap <buffer> <localleader>onr \mathrm{O}(n,\mathbb{R})
        inoremap <buffer> <localleader>omr \mathrm{O}(m,\mathbb{R})
        inoremap <buffer> <localleader>odr \mathrm{O}(d,\mathbb{R})
        inoremap <buffer> <localleader>o2r \mathrm{O}(2,\mathbb{R})
        inoremap <buffer> <localleader>o3r \mathrm{O}(3,\mathbb{R})

        inoremap <buffer> <localleader>onc \mathrm{O}(n,\mathbb{C})
        inoremap <buffer> <localleader>omc \mathrm{O}(m,\mathbb{C})
        inoremap <buffer> <localleader>odc \mathrm{O}(d,\mathbb{C})
        inoremap <buffer> <localleader>o2c \mathrm{O}(2,\mathbb{C})
        inoremap <buffer> <localleader>o3c \mathrm{O}(3,\mathbb{C})

        "}}}
        " SO{{{

        inoremap <buffer> <leader>so \mathrm{SO}
        inoremap <buffer> <leader>son \mathrm{SO}_{n}
        inoremap <buffer> <leader>som \mathrm{SO}_{m}
        inoremap <buffer> <leader>sod \mathrm{SO}_{d}
        inoremap <buffer> <leader>so2 \mathrm{SO}_{2}
        inoremap <buffer> <leader>so3 \mathrm{SO}_{3}

        inoremap <buffer> <localleader>so \mathrm{SO}()<esc>i

        inoremap <buffer> <localleader>son \mathrm{SO}(n,)<esc>i
        inoremap <buffer> <localleader>som \mathrm{SO}(m,)<esc>i
        inoremap <buffer> <localleader>sod \mathrm{SO}(d,)<esc>i
        inoremap <buffer> <localleader>so2 \mathrm{SO}(2,)<esc>i
        inoremap <buffer> <localleader>so3 \mathrm{SO}(3,)<esc>i

        inoremap <buffer> <localleader>sonr \mathrm{SO}(n,\mathbb{R})
        inoremap <buffer> <localleader>somr \mathrm{SO}(m,\mathbb{R})
        inoremap <buffer> <localleader>sodr \mathrm{SO}(d,\mathbb{R})
        inoremap <buffer> <localleader>so2r \mathrm{SO}(2,\mathbb{R})
        inoremap <buffer> <localleader>so3r \mathrm{SO}(3,\mathbb{R})

        inoremap <buffer> <localleader>sonc \mathrm{SO}(n,\mathbb{C})
        inoremap <buffer> <localleader>somc \mathrm{SO}(m,\mathbb{C})
        inoremap <buffer> <localleader>sodc \mathrm{SO}(d,\mathbb{C})
        inoremap <buffer> <localleader>so2c \mathrm{SO}(2,\mathbb{C})
        inoremap <buffer> <localleader>so3c \mathrm{SO}(3,\mathbb{C})

        "}}}
        " U{{{

        inoremap <buffer> <leader>u \mathrm{U}
        inoremap <buffer> <leader>un \mathrm{U}_{n}
        inoremap <buffer> <leader>um \mathrm{U}_{m}
        inoremap <buffer> <leader>ud \mathrm{U}_{d}
        inoremap <buffer> <leader>u2 \mathrm{U}_{2}
        inoremap <buffer> <leader>u3 \mathrm{U}_{3}

        inoremap <buffer> <localleader>u \mathrm{U}()<esc>i

        inoremap <buffer> <localleader>un \mathrm{U}(n)
        inoremap <buffer> <localleader>um \mathrm{U}(m)
        inoremap <buffer> <localleader>ud \mathrm{U}(d)
        inoremap <buffer> <localleader>u2 \mathrm{U}(2)
        inoremap <buffer> <localleader>u3 \mathrm{U}(3)

        inoremap <buffer> <localleader>unc \mathrm{U}(n,\mathbb{C})
        inoremap <buffer> <localleader>umc \mathrm{U}(m,\mathbb{C})
        inoremap <buffer> <localleader>udc \mathrm{U}(d,\mathbb{C})
        inoremap <buffer> <localleader>u2c \mathrm{U}(2,\mathbb{C})
        inoremap <buffer> <localleader>u3c \mathrm{U}(3,\mathbb{C})

        "}}}
        " SU{{{

        inoremap <buffer> <leader>su \mathrm{SU}
        inoremap <buffer> <leader>sun \mathrm{SU}_{n}
        inoremap <buffer> <leader>sum \mathrm{SU}_{m}
        inoremap <buffer> <leader>sud \mathrm{SU}_{d}
        inoremap <buffer> <leader>su2 \mathrm{SU}_{2}
        inoremap <buffer> <leader>su3 \mathrm{SU}_{3}

        inoremap <buffer> <localleader>su \mathrm{SU}()<esc>i

        inoremap <buffer> <localleader>sun \mathrm{SU}(n)
        inoremap <buffer> <localleader>sum \mathrm{SU}(m)
        inoremap <buffer> <localleader>sud \mathrm{SU}(d)
        inoremap <buffer> <localleader>su2 \mathrm{SU}(2)
        inoremap <buffer> <localleader>su3 \mathrm{SU}(3)

        inoremap <buffer> <localleader>sunc \mathrm{SU}(n,\mathbb{C})
        inoremap <buffer> <localleader>sumc \mathrm{SU}(m,\mathbb{C})
        inoremap <buffer> <localleader>sudc \mathrm{SU}(d,\mathbb{C})
        inoremap <buffer> <localleader>su2c \mathrm{SU}(2,\mathbb{C})
        inoremap <buffer> <localleader>su3c \mathrm{SU}(3,\mathbb{C})

        "}}}
        let s:Matrix_group_toggle = 0
    else
        " Underscore style
        " M{{{

        inoremap <buffer> <leader>mmn \mathrm{M}_{m \times n}
        inoremap <buffer> <leader>mn \mathrm{M}_{n}
        inoremap <buffer> <leader>mm \mathrm{M}_{m}
        inoremap <buffer> <leader>md \mathrm{M}_{d}
        inoremap <buffer> <leader>m2 \mathrm{M}_{2}
        inoremap <buffer> <leader>m3 \mathrm{M}_{3}

        inoremap <buffer> <localleader>mmn \mathrm{M}_{m \times n}()<esc>i
        inoremap <buffer> <localleader>m \mathrm{M}_{}()<esc>F}i

        inoremap <buffer> <localleader>mn \mathrm{M}_{n}()<esc>i
        inoremap <buffer> <localleader>mm \mathrm{M}_{m}()<esc>i
        inoremap <buffer> <localleader>md \mathrm{M}_{d}()<esc>i
        inoremap <buffer> <localleader>m2 \mathrm{M}_{2}()<esc>i
        inoremap <buffer> <localleader>m3 \mathrm{M}_{3}()<esc>i

        inoremap <buffer> <localleader>mmnz \mathrm{M}_{m \times n}(\mathbb{Z})
        inoremap <buffer> <localleader>mnz \mathrm{M}_{n}(\mathbb{Z})
        inoremap <buffer> <localleader>mmz \mathrm{M}_{m}(\mathbb{Z})
        inoremap <buffer> <localleader>mdz \mathrm{M}_{d}(\mathbb{Z})
        inoremap <buffer> <localleader>m2z \mathrm{M}_{2}(\mathbb{Z})
        inoremap <buffer> <localleader>m3z \mathrm{M}_{3}(\mathbb{Z})

        inoremap <buffer> <localleader>mmnq \mathrm{M}_{m \times n}(\mathbb{Q})
        inoremap <buffer> <localleader>mnq \mathrm{M}_{n}(\mathbb{Q})
        inoremap <buffer> <localleader>mmq \mathrm{M}_{m}(\mathbb{Q})
        inoremap <buffer> <localleader>mdq \mathrm{M}_{d}(\mathbb{Q})
        inoremap <buffer> <localleader>m2q \mathrm{M}_{2}(\mathbb{Q})
        inoremap <buffer> <localleader>m3q \mathrm{M}_{3}(\mathbb{Q})

        inoremap <buffer> <localleader>mmnr \mathrm{M}_{m \times n}(\mathbb{R})
        inoremap <buffer> <localleader>mnr \mathrm{M}_{n}(\mathbb{R})
        inoremap <buffer> <localleader>mmr \mathrm{M}_{m}(\mathbb{R})
        inoremap <buffer> <localleader>mdr \mathrm{M}_{d}(\mathbb{R})
        inoremap <buffer> <localleader>m2r \mathrm{M}_{2}(\mathbb{R})
        inoremap <buffer> <localleader>m3r \mathrm{M}_{3}(\mathbb{R})

        inoremap <buffer> <localleader>mmnc \mathrm{M}_{m \times n}(\mathbb{C})
        inoremap <buffer> <localleader>mnc \mathrm{M}_{n}(\mathbb{C})
        inoremap <buffer> <localleader>mmc \mathrm{M}_{m}(\mathbb{C})
        inoremap <buffer> <localleader>mdc \mathrm{M}_{d}(\mathbb{C})
        inoremap <buffer> <localleader>m2c \mathrm{M}_{2}(\mathbb{C})
        inoremap <buffer> <localleader>m3c \mathrm{M}_{3}(\mathbb{C})

        inoremap <buffer> <localleader>mmnzp \mathrm{M}_{m \times n}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>mnzp \mathrm{M}_{n}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>mmzp \mathrm{M}_{m}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>mdzp \mathrm{M}_{d}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>m2zp \mathrm{M}_{2}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>m3zp \mathrm{M}_{3}(\mathbb{Z}_p)

        inoremap <buffer> <localleader>mmnqp \mathrm{M}_{m \times n}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>mnqp \mathrm{M}_{n}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>mmqp \mathrm{M}_{m}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>mdqp \mathrm{M}_{d}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>m2qp \mathrm{M}_{2}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>m3qp \mathrm{M}_{3}(\mathbb{Q}_p)

        inoremap <buffer> <localleader>mmnk \mathrm{M}_{m \times n}(\mathbb{K})
        inoremap <buffer> <localleader>mnk \mathrm{M}_{n}(\mathbb{K})
        inoremap <buffer> <localleader>mmk \mathrm{M}_{m}(\mathbb{K})
        inoremap <buffer> <localleader>mdk \mathrm{M}_{d}(\mathbb{K})
        inoremap <buffer> <localleader>m2k \mathrm{M}_{2}(\mathbb{K})
        inoremap <buffer> <localleader>m3k \mathrm{M}_{3}(\mathbb{K})

        inoremap <buffer> <localleader>mmna \mathrm{M}_{m \times n}(\mathbb{A})
        inoremap <buffer> <localleader>mna \mathrm{M}_{n}(\mathbb{A})
        inoremap <buffer> <localleader>mma \mathrm{M}_{m}(\mathbb{A})
        inoremap <buffer> <localleader>mda \mathrm{M}_{d}(\mathbb{A})
        inoremap <buffer> <localleader>m2a \mathrm{M}_{2}(\mathbb{A})
        inoremap <buffer> <localleader>m3a \mathrm{M}_{3}(\mathbb{A})

        inoremap <buffer> <localleader>mmnok \mathrm{M}_{m \times n}(\mathcal{O}_K)
        inoremap <buffer> <localleader>mnok \mathrm{M}_{n}(\mathcal{O}_K)
        inoremap <buffer> <localleader>mmok \mathrm{M}_{m}(\mathcal{O}_K)
        inoremap <buffer> <localleader>mdok \mathrm{M}_{d}(\mathcal{O}_K)
        inoremap <buffer> <localleader>m2ok \mathrm{M}_{2}(\mathcal{O}_K)
        inoremap <buffer> <localleader>m3ok \mathrm{M}_{3}(\mathcal{O}_K)

        inoremap <buffer> <localleader>mmnjk \mathrm{M}_{m \times n}(K)
        inoremap <buffer> <localleader>mnjk \mathrm{M}_{n}(K)
        inoremap <buffer> <localleader>mmjk \mathrm{M}_{m}(K)
        inoremap <buffer> <localleader>mdjk \mathrm{M}_{d}(K)
        inoremap <buffer> <localleader>m2jk \mathrm{M}_{2}(K)
        inoremap <buffer> <localleader>m3jk \mathrm{M}_{3}(K)

        inoremap <buffer> <localleader>mmnks \mathrm{M}_{m \times n}(K_S)
        inoremap <buffer> <localleader>mnks \mathrm{M}_{n}(K_S)
        inoremap <buffer> <localleader>mmks \mathrm{M}_{m}(K_S)
        inoremap <buffer> <localleader>mdks \mathrm{M}_{d}(K_S)
        inoremap <buffer> <localleader>m2ks \mathrm{M}_{2}(K_S)
        inoremap <buffer> <localleader>m3ks \mathrm{M}_{3}(K_S)

        "}}}
        " GL{{{

        inoremap <buffer> <leader>gl \mathrm{GL}
        inoremap <buffer> <leader>gln \mathrm{GL}_{n}
        inoremap <buffer> <leader>glm \mathrm{GL}_{m}
        inoremap <buffer> <leader>gld \mathrm{GL}_{d}
        inoremap <buffer> <leader>gl2 \mathrm{GL}_{2}
        inoremap <buffer> <leader>gl3 \mathrm{GL}_{3}

        inoremap <buffer> <localleader>gl \mathrm{GL}_{}()<esc>F}i

        inoremap <buffer> <localleader>gln \mathrm{GL}_{n}()<esc>i
        inoremap <buffer> <localleader>glm \mathrm{GL}_{m}()<esc>i
        inoremap <buffer> <localleader>gld \mathrm{GL}_{d}()<esc>i
        inoremap <buffer> <localleader>gl2 \mathrm{GL}_{2}()<esc>i
        inoremap <buffer> <localleader>gl3 \mathrm{GL}_{3}()<esc>i
        inoremap <buffer> <localleader>glnp \mathrm{GL}_{n}^+()<esc>i
        inoremap <buffer> <localleader>glmp \mathrm{GL}_{m}^+()<esc>i
        inoremap <buffer> <localleader>gldp \mathrm{GL}_{d}^+()<esc>i
        inoremap <buffer> <localleader>gl2p \mathrm{GL}_{2}^+()<esc>i
        inoremap <buffer> <localleader>gl3p \mathrm{GL}_{3}^+()<esc>i

        inoremap <buffer> <localleader>glnz \mathrm{GL}_{n}(\mathbb{Z})
        inoremap <buffer> <localleader>glmz \mathrm{GL}_{m}(\mathbb{Z})
        inoremap <buffer> <localleader>gldz \mathrm{GL}_{d}(\mathbb{Z})
        inoremap <buffer> <localleader>gl2z \mathrm{GL}_{2}(\mathbb{Z})
        inoremap <buffer> <localleader>gl3z \mathrm{GL}_{3}(\mathbb{Z})
        inoremap <buffer> <localleader>glnpz \mathrm{GL}_{n}^+(\mathbb{Z})
        inoremap <buffer> <localleader>glmpz \mathrm{GL}_{m}^+(\mathbb{Z})
        inoremap <buffer> <localleader>gldpz \mathrm{GL}_{d}^+(\mathbb{Z})
        inoremap <buffer> <localleader>gl2pz \mathrm{GL}_{2}^+(\mathbb{Z})
        inoremap <buffer> <localleader>gl3pz \mathrm{GL}_{3}^+(\mathbb{Z})

        inoremap <buffer> <localleader>glnq \mathrm{GL}_{n}(\mathbb{Q})
        inoremap <buffer> <localleader>glmq \mathrm{GL}_{m}(\mathbb{Q})
        inoremap <buffer> <localleader>gldq \mathrm{GL}_{d}(\mathbb{Q})
        inoremap <buffer> <localleader>gl2q \mathrm{GL}_{2}(\mathbb{Q})
        inoremap <buffer> <localleader>gl3q \mathrm{GL}_{3}(\mathbb{Q})
        inoremap <buffer> <localleader>glnpq \mathrm{GL}_{n}^+(\mathbb{Q})
        inoremap <buffer> <localleader>glmpq \mathrm{GL}_{m}^+(\mathbb{Q})
        inoremap <buffer> <localleader>gldpq \mathrm{GL}_{d}^+(\mathbb{Q})
        inoremap <buffer> <localleader>gl2pq \mathrm{GL}_{2}^+(\mathbb{Q})
        inoremap <buffer> <localleader>gl3pq \mathrm{GL}_{3}^+(\mathbb{Q})

        inoremap <buffer> <localleader>glnr \mathrm{GL}_{n}(\mathbb{R})
        inoremap <buffer> <localleader>glmr \mathrm{GL}_{m}(\mathbb{R})
        inoremap <buffer> <localleader>gldr \mathrm{GL}_{d}(\mathbb{R})
        inoremap <buffer> <localleader>gl2r \mathrm{GL}_{2}(\mathbb{R})
        inoremap <buffer> <localleader>gl3r \mathrm{GL}_{3}(\mathbb{R})
        inoremap <buffer> <localleader>glnpr \mathrm{GL}_{n}^+(\mathbb{R})
        inoremap <buffer> <localleader>glmpr \mathrm{GL}_{m}^+(\mathbb{R})
        inoremap <buffer> <localleader>gldpr \mathrm{GL}_{d}^+(\mathbb{R})
        inoremap <buffer> <localleader>gl2pr \mathrm{GL}_{2}^+(\mathbb{R})
        inoremap <buffer> <localleader>gl3pr \mathrm{GL}_{3}^+(\mathbb{R})

        inoremap <buffer> <localleader>glnc \mathrm{GL}_{n}(\mathbb{C})
        inoremap <buffer> <localleader>glmc \mathrm{GL}_{m}(\mathbb{C})
        inoremap <buffer> <localleader>gldc \mathrm{GL}_{d}(\mathbb{C})
        inoremap <buffer> <localleader>gl2c \mathrm{GL}_{2}(\mathbb{C})
        inoremap <buffer> <localleader>gl3c \mathrm{GL}_{3}(\mathbb{C})

        inoremap <buffer> <localleader>glnzp \mathrm{GL}_{n}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>glmzp \mathrm{GL}_{m}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>gldzp \mathrm{GL}_{d}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>gl2zp \mathrm{GL}_{2}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>gl3zp \mathrm{GL}_{3}(\mathbb{Z}_p)

        inoremap <buffer> <localleader>glnqp \mathrm{GL}_{n}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>glmqp \mathrm{GL}_{m}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>gldqp \mathrm{GL}_{d}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>gl2qp \mathrm{GL}_{2}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>gl3qp \mathrm{GL}_{3}(\mathbb{Q}_p)

        inoremap <buffer> <localleader>glnk \mathrm{GL}_{n}(\mathbb{K})
        inoremap <buffer> <localleader>glmk \mathrm{GL}_{m}(\mathbb{K})
        inoremap <buffer> <localleader>gldk \mathrm{GL}_{d}(\mathbb{K})
        inoremap <buffer> <localleader>gl2k \mathrm{GL}_{2}(\mathbb{K})
        inoremap <buffer> <localleader>gl3k \mathrm{GL}_{3}(\mathbb{K})

        inoremap <buffer> <localleader>glna \mathrm{GL}_{n}(\mathbb{A})
        inoremap <buffer> <localleader>glma \mathrm{GL}_{m}(\mathbb{A})
        inoremap <buffer> <localleader>glda \mathrm{GL}_{d}(\mathbb{A})
        inoremap <buffer> <localleader>gl2a \mathrm{GL}_{2}(\mathbb{A})
        inoremap <buffer> <localleader>gl3a \mathrm{GL}_{3}(\mathbb{A})

        inoremap <buffer> <localleader>glnok \mathrm{GL}_{n}(\mathcal{O}_K)
        inoremap <buffer> <localleader>glmok \mathrm{GL}_{m}(\mathcal{O}_K)
        inoremap <buffer> <localleader>gldok \mathrm{GL}_{d}(\mathcal{O}_K)
        inoremap <buffer> <localleader>gl2ok \mathrm{GL}_{2}(\mathcal{O}_K)
        inoremap <buffer> <localleader>gl3ok \mathrm{GL}_{3}(\mathcal{O}_K)

        inoremap <buffer> <localleader>glnjk \mathrm{GL}_{n}(K)
        inoremap <buffer> <localleader>glmjk \mathrm{GL}_{m}(K)
        inoremap <buffer> <localleader>gldjk \mathrm{GL}_{d}(K)
        inoremap <buffer> <localleader>gl2jk \mathrm{GL}_{2}(K)
        inoremap <buffer> <localleader>gl3jk \mathrm{GL}_{3}(K)

        inoremap <buffer> <localleader>glnks \mathrm{GL}_{n}(K_S)
        inoremap <buffer> <localleader>glmks \mathrm{GL}_{m}(K_S)
        inoremap <buffer> <localleader>gldks \mathrm{GL}_{d}(K_S)
        inoremap <buffer> <localleader>gl2ks \mathrm{GL}_{2}(K_S)
        inoremap <buffer> <localleader>gl3ks \mathrm{GL}_{3}(K_S)

        "}}}
        " SL{{{

        inoremap <buffer> <leader>sl \mathrm{SL}
        inoremap <buffer> <leader>sln \mathrm{SL}_{n}
        inoremap <buffer> <leader>slm \mathrm{SL}_{m}
        inoremap <buffer> <leader>sld \mathrm{SL}_{d}
        inoremap <buffer> <leader>sl2 \mathrm{SL}_{2}
        inoremap <buffer> <leader>sl3 \mathrm{SL}_{3}

        inoremap <buffer> <localleader>sl \mathrm{SL}_{}()<esc>F}i

        inoremap <buffer> <localleader>sln \mathrm{SL}_{n}()<esc>i
        inoremap <buffer> <localleader>slm \mathrm{SL}_{m}()<esc>i
        inoremap <buffer> <localleader>sld \mathrm{SL}_{d}()<esc>i
        inoremap <buffer> <localleader>sl2 \mathrm{SL}_{2}()<esc>i
        inoremap <buffer> <localleader>sl3 \mathrm{SL}_{3}()<esc>i

        inoremap <buffer> <localleader>slnz \mathrm{SL}_{n}(\mathbb{Z})
        inoremap <buffer> <localleader>slmz \mathrm{SL}_{m}(\mathbb{Z})
        inoremap <buffer> <localleader>sldz \mathrm{SL}_{d}(\mathbb{Z})
        inoremap <buffer> <localleader>sl2z \mathrm{SL}_{2}(\mathbb{Z})
        inoremap <buffer> <localleader>sl3z \mathrm{SL}_{3}(\mathbb{Z})

        inoremap <buffer> <localleader>slnq \mathrm{SL}_{n}(\mathbb{Q})
        inoremap <buffer> <localleader>slmq \mathrm{SL}_{m}(\mathbb{Q})
        inoremap <buffer> <localleader>sldq \mathrm{SL}_{d}(\mathbb{Q})
        inoremap <buffer> <localleader>sl2q \mathrm{SL}_{2}(\mathbb{Q})
        inoremap <buffer> <localleader>sl3q \mathrm{SL}_{3}(\mathbb{Q})

        inoremap <buffer> <localleader>slnr \mathrm{SL}_{n}(\mathbb{R})
        inoremap <buffer> <localleader>slmr \mathrm{SL}_{m}(\mathbb{R})
        inoremap <buffer> <localleader>sldr \mathrm{SL}_{d}(\mathbb{R})
        inoremap <buffer> <localleader>sl2r \mathrm{SL}_{2}(\mathbb{R})
        inoremap <buffer> <localleader>sl3r \mathrm{SL}_{3}(\mathbb{R})

        inoremap <buffer> <localleader>slnc \mathrm{SL}_{n}(\mathbb{C})
        inoremap <buffer> <localleader>slmc \mathrm{SL}_{m}(\mathbb{C})
        inoremap <buffer> <localleader>sldc \mathrm{SL}_{d}(\mathbb{C})
        inoremap <buffer> <localleader>sl2c \mathrm{SL}_{2}(\mathbb{C})
        inoremap <buffer> <localleader>sl3c \mathrm{SL}_{3}(\mathbb{C})

        inoremap <buffer> <localleader>slnzp \mathrm{SL}_{n}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>slmzp \mathrm{SL}_{m}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>sldzp \mathrm{SL}_{d}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>sl2zp \mathrm{SL}_{2}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>sl3zp \mathrm{SL}_{3}(\mathbb{Z}_p)

        inoremap <buffer> <localleader>slnqp \mathrm{SL}_{n}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>slmqp \mathrm{SL}_{m}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>sldqp \mathrm{SL}_{d}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>sl2qp \mathrm{SL}_{2}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>sl3qp \mathrm{SL}_{3}(\mathbb{Q}_p)

        inoremap <buffer> <localleader>slnk \mathrm{SL}_{n}(\mathbb{K})
        inoremap <buffer> <localleader>slmk \mathrm{SL}_{m}(\mathbb{K})
        inoremap <buffer> <localleader>sldk \mathrm{SL}_{d}(\mathbb{K})
        inoremap <buffer> <localleader>sl2k \mathrm{SL}_{2}(\mathbb{K})
        inoremap <buffer> <localleader>sl3k \mathrm{SL}_{3}(\mathbb{K})

        inoremap <buffer> <localleader>slna \mathrm{SL}_{n}(\mathbb{A})
        inoremap <buffer> <localleader>slma \mathrm{SL}_{m}(\mathbb{A})
        inoremap <buffer> <localleader>slda \mathrm{SL}_{d}(\mathbb{A})
        inoremap <buffer> <localleader>sl2a \mathrm{SL}_{2}(\mathbb{A})
        inoremap <buffer> <localleader>sl3a \mathrm{SL}_{3}(\mathbb{A})

        inoremap <buffer> <localleader>slnok \mathrm{SL}_{n}(\mathcal{O}_K)
        inoremap <buffer> <localleader>slmok \mathrm{SL}_{m}(\mathcal{O}_K)
        inoremap <buffer> <localleader>sldok \mathrm{SL}_{d}(\mathcal{O}_K)
        inoremap <buffer> <localleader>sl2ok \mathrm{SL}_{2}(\mathcal{O}_K)
        inoremap <buffer> <localleader>sl3ok \mathrm{SL}_{3}(\mathcal{O}_K)

        inoremap <buffer> <localleader>slnjk \mathrm{SL}_{n}(K)
        inoremap <buffer> <localleader>slmjk \mathrm{SL}_{m}(K)
        inoremap <buffer> <localleader>sldjk \mathrm{SL}_{d}(K)
        inoremap <buffer> <localleader>sl2jk \mathrm{SL}_{2}(K)
        inoremap <buffer> <localleader>sl3jk \mathrm{SL}_{3}(K)

        inoremap <buffer> <localleader>slnks \mathrm{SL}_{n}(K_S)
        inoremap <buffer> <localleader>slmks \mathrm{SL}_{m}(K_S)
        inoremap <buffer> <localleader>sldks \mathrm{SL}_{d}(K_S)
        inoremap <buffer> <localleader>sl2ks \mathrm{SL}_{2}(K_S)
        inoremap <buffer> <localleader>sl3ks \mathrm{SL}_{3}(K_S)

        inoremap <buffer> <localleader>slnrz \mathrm{SL}_{n}(\mathbb{R})/\mathrm{SL}_{n}(\mathbb{Z})
        inoremap <buffer> <localleader>slmrz \mathrm{SL}_{m}(\mathbb{R})/\mathrm{SL}_{m}(\mathbb{Z})
        inoremap <buffer> <localleader>sldrz \mathrm{SL}_{d}(\mathbb{R})/\mathrm{SL}_{d}(\mathbb{Z})
        inoremap <buffer> <localleader>sl2rz \mathrm{SL}_{2}(\mathbb{R})/\mathrm{SL}_{2}(\mathbb{Z})
        inoremap <buffer> <localleader>sl3rz \mathrm{SL}_{3}(\mathbb{R})/\mathrm{SL}_{3}(\mathbb{Z})

        inoremap <buffer> <localleader>slnzr \mathrm{SL}_{n}(\mathbb{Z}) \backslash \mathrm{SL}_{n}(\mathbb{R})
        inoremap <buffer> <localleader>slmzr \mathrm{SL}_{m}(\mathbb{Z}) \backslash \mathrm{SL}_{m}(\mathbb{R})
        inoremap <buffer> <localleader>sldzr \mathrm{SL}_{d}(\mathbb{Z}) \backslash \mathrm{SL}_{d}(\mathbb{R})
        inoremap <buffer> <localleader>sl2zr \mathrm{SL}_{2}(\mathbb{Z}) \backslash \mathrm{SL}_{2}(\mathbb{R})
        inoremap <buffer> <localleader>sl3zr \mathrm{SL}_{3}(\mathbb{Z}) \backslash \mathrm{SL}_{3}(\mathbb{R})

        inoremap <buffer> <localleader>slnksok \mathrm{SL}_{n}(K_S)/\mathrm{SL}_{n}(\mathcal{O}_K)
        inoremap <buffer> <localleader>slmksok \mathrm{SL}_{m}(K_S)/\mathrm{SL}_{m}(\mathcal{O}_K)
        inoremap <buffer> <localleader>sldksok \mathrm{SL}_{d}(K_S)/\mathrm{SL}_{d}(\mathcal{O}_K)
        inoremap <buffer> <localleader>sl2ksok \mathrm{SL}_{2}(K_S)/\mathrm{SL}_{2}(\mathcal{O}_K)
        inoremap <buffer> <localleader>sl3ksok \mathrm{SL}_{3}(K_S)/\mathrm{SL}_{3}(\mathcal{O}_K)

        inoremap <buffer> <localleader>slnokks \mathrm{SL}_{n}(\mathcal{O}_K) \backslash \mathrm{SL}_{n}(K_S)
        inoremap <buffer> <localleader>slmokks \mathrm{SL}_{m}(\mathcal{O}_K) \backslash \mathrm{SL}_{m}(K_S)
        inoremap <buffer> <localleader>sldokks \mathrm{SL}_{d}(\mathcal{O}_K) \backslash \mathrm{SL}_{d}(K_S)
        inoremap <buffer> <localleader>sl2okks \mathrm{SL}_{2}(\mathcal{O}_K) \backslash \mathrm{SL}_{2}(K_S)
        inoremap <buffer> <localleader>sl3okks \mathrm{SL}_{3}(\mathcal{O}_K) \backslash \mathrm{SL}_{3}(K_S)

        "}}}
        " PSL{{{

        inoremap <buffer> <leader>psl \mathrm{PSL}
        inoremap <buffer> <leader>psln \mathrm{PSL}_{n}
        inoremap <buffer> <leader>pslm \mathrm{PSL}_{m}
        inoremap <buffer> <leader>psld \mathrm{PSL}_{d}
        inoremap <buffer> <leader>psl2 \mathrm{PSL}_{2}
        inoremap <buffer> <leader>psl3 \mathrm{PSL}_{3}

        inoremap <buffer> <localleader>psl \mathrm{PSL}_{}()<esc>F}i

        inoremap <buffer> <localleader>psln \mathrm{PSL}_{n}()<esc>i
        inoremap <buffer> <localleader>pslm \mathrm{PSL}_{m}()<esc>i
        inoremap <buffer> <localleader>psld \mathrm{PSL}_{d}()<esc>i
        inoremap <buffer> <localleader>psl2 \mathrm{PSL}_{2}()<esc>i
        inoremap <buffer> <localleader>psl3 \mathrm{PSL}_{3}()<esc>i

        inoremap <buffer> <localleader>pslnr \mathrm{PSL}_{n}(\mathbb{R})
        inoremap <buffer> <localleader>pslmr \mathrm{PSL}_{m}(\mathbb{R})
        inoremap <buffer> <localleader>pslmd \mathrm{PSL}_{m}(\mathbb{d})
        inoremap <buffer> <localleader>psl2r \mathrm{PSL}_{2}(\mathbb{R})
        inoremap <buffer> <localleader>psl3r \mathrm{PSL}_{3}(\mathbb{R})

        "}}}
        " O{{{

        inoremap <buffer> <leader>o \mathrm{O}
        inoremap <buffer> <leader>on \mathrm{O}_{n}
        inoremap <buffer> <leader>om \mathrm{O}_{m}
        inoremap <buffer> <leader>od \mathrm{O}_{d}
        inoremap <buffer> <leader>o2 \mathrm{O}_{2}
        inoremap <buffer> <leader>o3 \mathrm{O}_{3}

        inoremap <buffer> <localleader>o \mathrm{O}_{}()<esc>F}i

        inoremap <buffer> <localleader>on \mathrm{O}_{n}()<esc>i
        inoremap <buffer> <localleader>om \mathrm{O}_{m}()<esc>i
        inoremap <buffer> <localleader>od \mathrm{O}_{d}()<esc>i
        inoremap <buffer> <localleader>o2 \mathrm{O}_{2}()<esc>i
        inoremap <buffer> <localleader>o3 \mathrm{O}_{3}()<esc>i

        inoremap <buffer> <localleader>onr \mathrm{O}_{n}(\mathbb{R})
        inoremap <buffer> <localleader>omr \mathrm{O}_{m}(\mathbb{R})
        inoremap <buffer> <localleader>odr \mathrm{O}_{d}(\mathbb{R})
        inoremap <buffer> <localleader>o2r \mathrm{O}_{2}(\mathbb{R})
        inoremap <buffer> <localleader>o3r \mathrm{O}_{3}(\mathbb{R})

        inoremap <buffer> <localleader>onc \mathrm{O}_{n}(\mathbb{C})
        inoremap <buffer> <localleader>omc \mathrm{O}_{m}(\mathbb{C})
        inoremap <buffer> <localleader>odc \mathrm{O}_{d}(\mathbb{C})
        inoremap <buffer> <localleader>o2c \mathrm{O}_{2}(\mathbb{C})
        inoremap <buffer> <localleader>o3c \mathrm{O}_{3}(\mathbb{C})

        "}}}
        " SO{{{

        inoremap <buffer> <leader>so \mathrm{SO}
        inoremap <buffer> <leader>son \mathrm{SO}_{n}
        inoremap <buffer> <leader>som \mathrm{SO}_{m}
        inoremap <buffer> <leader>sod \mathrm{SO}_{d}
        inoremap <buffer> <leader>so2 \mathrm{SO}_{2}
        inoremap <buffer> <leader>so3 \mathrm{SO}_{3}

        inoremap <buffer> <localleader>so \mathrm{SO}_{}()<esc>F}i

        inoremap <buffer> <localleader>son \mathrm{SO}_{n}()<esc>i
        inoremap <buffer> <localleader>som \mathrm{SO}_{m}()<esc>i
        inoremap <buffer> <localleader>sod \mathrm{SO}_{d}()<esc>i
        inoremap <buffer> <localleader>so2 \mathrm{SO}_{2}()<esc>i
        inoremap <buffer> <localleader>so3 \mathrm{SO}_{3}()<esc>i

        inoremap <buffer> <localleader>sonr \mathrm{SO}_{n}(\mathbb{R})
        inoremap <buffer> <localleader>somr \mathrm{SO}_{m}(\mathbb{R})
        inoremap <buffer> <localleader>sodr \mathrm{SO}_{d}(\mathbb{R})
        inoremap <buffer> <localleader>so2r \mathrm{SO}_{2}(\mathbb{R})
        inoremap <buffer> <localleader>so3r \mathrm{SO}_{3}(\mathbb{R})

        inoremap <buffer> <localleader>sonc \mathrm{SO}_{n}(\mathbb{C})
        inoremap <buffer> <localleader>somc \mathrm{SO}_{m}(\mathbb{C})
        inoremap <buffer> <localleader>sodc \mathrm{SO}_{d}(\mathbb{C})
        inoremap <buffer> <localleader>so2c \mathrm{SO}_{2}(\mathbb{C})
        inoremap <buffer> <localleader>so3c \mathrm{SO}_{3}(\mathbb{C})

        "}}}
        " U{{{

        inoremap <buffer> <leader>u \mathrm{U}
        inoremap <buffer> <leader>un \mathrm{U}_{n}
        inoremap <buffer> <leader>um \mathrm{U}_{m}
        inoremap <buffer> <leader>ud \mathrm{U}_{d}
        inoremap <buffer> <leader>u2 \mathrm{U}_{2}
        inoremap <buffer> <leader>u3 \mathrm{U}_{3}

        inoremap <buffer> <localleader>u \mathrm{U}_{}()<esc>F}i

        inoremap <buffer> <localleader>unc \mathrm{U}_{n}(\mathbb{C})
        inoremap <buffer> <localleader>umc \mathrm{U}_{m}(\mathbb{C})
        inoremap <buffer> <localleader>udc \mathrm{U}_{d}(\mathbb{C})
        inoremap <buffer> <localleader>u2c \mathrm{U}_{2}(\mathbb{C})
        inoremap <buffer> <localleader>u3c \mathrm{U}_{3}(\mathbb{C})

        "}}}
        " SU{{{

        inoremap <buffer> <leader>su \mathrm{SU}
        inoremap <buffer> <leader>sun \mathrm{SU}_{n}
        inoremap <buffer> <leader>sum \mathrm{SU}_{m}
        inoremap <buffer> <leader>sud \mathrm{SU}_{d}
        inoremap <buffer> <leader>su2 \mathrm{SU}_{2}
        inoremap <buffer> <leader>su3 \mathrm{SU}_{3}

        inoremap <buffer> <localleader>su \mathrm{SU}_{}()<esc>F}i

        inoremap <buffer> <localleader>sunc \mathrm{SU}_{n}(\mathbb{C})
        inoremap <buffer> <localleader>sumc \mathrm{SU}_{m}(\mathbb{C})
        inoremap <buffer> <localleader>sudc \mathrm{SU}_{d}(\mathbb{C})
        inoremap <buffer> <localleader>su2c \mathrm{SU}_{2}(\mathbb{C})
        inoremap <buffer> <localleader>su3c \mathrm{SU}_{3}(\mathbb{C})

        "}}}
        let s:Matrix_group_toggle = 1
    endif
endfunction

nnoremap <buffer> <localleader>mgt :call MatrixGroupToggle()<cr>:echo<cr>
inoremap <buffer> <localleader>mgt <esc>:call MatrixGroupToggle()<cr>:echo<cr>a

"}}}
" times, tilde, hat, accent, bar, over/uline, power"{{{
"-------------------------------------------------------------------

inoremap <buffer> <localleader>x \times
inoremap <buffer> <localleader>circ \circ
inoremap <buffer> <localleader>/ \frac{}{}<esc>F}i

inoremap <buffer> <localleader>no \norm{}<esc>i

inoremap <buffer> <localleader>wt \widetilde{}<esc>i
inoremap <buffer> <localleader>~ \widetilde{}<esc>i
inoremap <buffer> <localleader>jt \tilde{}<esc>i

inoremap <buffer> <localleader>wh \widehat{}<esc>i
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
" lim, int, sum, operators{{{
"-------------------------------------------------------------------

inoremap <buffer> <localleader>l \lim_{ \to }<esc>F{a
inoremap <buffer> <localleader>li \liminf_{ \to }<esc>F{a
inoremap <buffer> <localleader>ls \limsup_{ \to }<esc>F{a
inoremap <buffer> <localleader>ll \lim\limits_{ \to }<esc>F{a
inoremap <buffer> <localleader>lil \liminf\limits_{ \to }<esc>F{a
inoremap <buffer> <localleader>lsl \limsup\limits_{ \to }<esc>F{a

inoremap <buffer> ;I \int
inoremap <buffer> ;dI \displaystyle\int
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
inoremap <buffer> ;dS \displaystyle\sum
inoremap <buffer> ;s \sum_{}<esc>i
inoremap <buffer> <localleader>s \sum_{}^{}<esc>F}i
inoremap <buffer> ;sl \sum\limits_{}<esc>i
inoremap <buffer> ;ds \displaystyle\sum_{}<esc>i
inoremap <buffer> <localleader>slim \sum\limits_{}^{}<esc>F}i
inoremap <buffer> <localleader>ds \displaystyle\sum_{}^{}<esc>F}i

inoremap <buffer> ;P \prod
inoremap <buffer> ;dP \displaystyle\prod
inoremap <buffer> ;p \prod_{}<esc>i
inoremap <buffer> <localleader>p \prod_{}^{}<esc>F}i
inoremap <buffer> ;pl \prod\limits_{}<esc>i
inoremap <buffer> ;dp \displaystyle\prod_{}<esc>i
inoremap <buffer> <localleader>pl \prod\limits_{}^{}<esc>F}i
inoremap <buffer> <localleader>dp \displaystyle\prod_{}^{}<esc>F}i

inoremap <buffer> ;mn \min_{}<esc>i
inoremap <buffer> ;mnl \min\limits_{}<esc>i
inoremap <buffer> ;mx \max_{}<esc>i
inoremap <buffer> ;mxl \max\limits_{}<esc>i

inoremap <buffer> ;in \inf_{}<esc>i
inoremap <buffer> ;inl \inf\limits_{}<esc>i
inoremap <buffer> ;sp \sup_{}<esc>i
inoremap <buffer> ;spl \sup\limits_{}<esc>i

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
inoremap <buffer> <localleader>= \cong

"}}}
" Arrows"{{{
"-------------------------------------------------------------------

inoremap <buffer> <localleader>ra \rightarrow
inoremap <buffer> <localleader>la \leftarrow
inoremap <buffer> <localleader>Ra \Rightarrow
inoremap <buffer> <localleader>La \Leftarrow
inoremap <buffer> <localleader>Lra \Longrightarrow
inoremap <buffer> <localleader>Lla \Longleftarrow
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
" Others{{{
"-------------------------------------------------------------------

inoremap <buffer> /, \,
inoremap <buffer> <localleader>st \substack{ \\ }<esc>F{a
inoremap <buffer> <localleader>op \operatorname{}<esc>i

inoremap <buffer> <localleader>w \wedge
inoremap <buffer> <localleader>N \nabla

inoremap <buffer> <localleader><C-E> \exp\left(\right)<esc>F(a

"}}}

"}}}

" Changing environments, referencing and table of contents{{{
"-------------------------------------------------------------------

" Dollar to \[\]
function! DollarToBracket()
    :execute ":normal! F$hxdf$o\\[\<cr>\\]\<esc>O\<C-R>\"\<esc>^xg_x"
endfunction

nnoremap <buffer> <localleader>db :call DollarToBracket()<cr>

" \[\] to Align
function! BracketToAlign()
    :execute ":normal! /\\]\<cr>mm?\\[\<cr>V`mdO% Align\<cr>\\begin{align}\\label{}\<cr>\\end{align}\<esc>mnkpdd`nkdd?label\<cr>$"

endfunction

nnoremap <buffer> <localleader>bal :call BracketToAlign()<cr>

" \[\] to Unnumbered Align
function! BracketToUnnumAlign()
    :execute ":normal! /\\]\<cr>mm?\\[\<cr>V`mdO% UnnumberedAlign\<cr>\\begin{align*}\<cr>\\end{align*}\<esc>mnkpdd`nkddk$"

endfunction

nnoremap <buffer> <localleader>bual :call BracketToUnnumAlign()<cr>

" \[\] to Equation
function! BracketToEq()
    :execute ":normal! /\\]\<cr>mm?\\[\<cr>V`mdO% Equation\<cr>\\begin{equation}\\label{}\<cr>\\end{equation}\<esc>mnkpdd`nkdd?label\<cr>$"

endfunction

nnoremap <buffer> <localleader>beq :call BracketToEq()<cr>

" \[\] to Unnumbered Equation
function! BracketToUnnumEq()
    :execute ":normal! /\\]\<cr>mm?\\[\<cr>V`mdO% UnnumberedEquation\<cr>\\begin{equation*}\<cr>\\end{equation*}\<esc>mnkpdd`nkddk$"

endfunction

nnoremap <buffer> <localleader>bueq :call BracketToUnnumEq()<cr>

" \[\] to Aligned Equation
function! BracketToAlignedEq()
    :execute ":normal! /\\]\<cr>mm?\\[\<cr>V`mdO% Equation\<cr>\\begin{equation}\\label{}\<cr>\\begin{split}\<cr>\\end{split}\<cr>\\end{equation}\<esc>mn2kpdd`n2kdd?label\<cr>$"

endfunction

nnoremap <buffer> <localleader>baleq :call BracketToAlignedEq()<cr>

" \[\] to Unnumbered Aligned Equation
function! BracketToUnnumAlignedEq()
    :execute ":normal! /\\]\<cr>mm?\\[\<cr>V`mdO% UnnumberedEquation\<cr>\\begin{equation*}\<cr>\\begin{split}\<cr>\\end{split}\<cr>\\end{equation*}\<esc>mn2kpdd`n2kddk$"

endfunction

nnoremap <buffer> <localleader>bualeq :call BracketToUnnumAlignedEq()<cr>

" \[\] to Gather
function! BracketToGather()
    :execute ":normal! /\\]\<cr>mm?\\[\<cr>V`mdO% Gather\<cr>\\begin{gather}\\label{}\<cr>\\end{gather}\<esc>mnkpdd`nkdd?label\<cr>$"

endfunction

nnoremap <buffer> <localleader>bga :call BracketToGather()<cr>

" \[\] to Unnumbered Gather
function! BracketToUnnumGather()
    :execute ":normal! /\\]\<cr>mm?\\[\<cr>V`mdO% UnnumberedGather\<cr>\\begin{gather*}\<cr>\\end{gather*}\<esc>mnkpdd`nkddk$"

endfunction

nnoremap <buffer> <localleader>buga :call BracketToUnnumGather()<cr>

" Referencing Theorem, Citation etc.
function! ReferencingAndCiting(code)
    if a:code == "ref"
        :execute ":normal! hmmlx`ma~\\ref{\<esc>"
    elseif a:code == "cit"
        :execute ":normal! hmmlx`ma~\\cite{\<esc>"
    elseif a:code == "jref"
        :execute ":normal! a\\ref{\<esc>"
    elseif a:code == "jcit"
        :execute ":normal! a\\cite{\<esc>"
    endif

endfunction

inoremap <buffer> <localleader>jref <esc>:call ReferencingAndCiting("jref")<cr>a
inoremap <buffer> <localleader>jcit <esc>:call ReferencingAndCiting("jcit")<cr>a
inoremap <buffer> <localleader>ref <esc>:call ReferencingAndCiting("ref")<cr>a
inoremap <buffer> <localleader>cit <esc>:call ReferencingAndCiting("cit")<cr>a

" LaTeX table of contents
nnoremap <buffer> <localleader>toc :LatexTOC<cr>

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

"}}}

" Highlighting{{{
"-------------------------------------------------------------------

" Chapter, Section, Subsection, Subsubsection, label"{{{2

highlight ChapterGroup ctermbg=092 ctermfg=yellow
let m = matchadd("ChapterGroup",'\\chapter{.\{}}')


highlight SectionGroup ctermbg=39 ctermfg=Black
let m = matchadd("SectionGroup",'\\section{.\{}}')

highlight SubsectionGroup ctermbg=198 ctermfg=Black
let m = matchadd("SubsectionGroup",'\\subsection{.\{}}')

highlight SubsubsectionGroup ctermbg=143 ctermfg=Black
let m = matchadd("SubsubsectionGroup",'\\subsubsection{.\{}}')


highlight Label ctermbg=Red ctermfg=black
let m = matchadd("Label",'\\label{.\{}}')

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

highlight ImpliesMarkerGroup ctermbg=208 ctermfg=black

let m = matchadd("ImpliesMarkerGroup",'($\\Longrightarrow$)')
let m = matchadd("ImpliesMarkerGroup",'($\\Longleftarrow$)')

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
let m = matchadd("EquationGroup",'\\begin{landscape}')
let m = matchadd("EquationGroup",'\\end{landscape}')
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

