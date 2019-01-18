
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
inoremap <buffer> <localleader>8 \infty
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
inoremap <buffer> "" ``''<esc>hi

inoremap <buffer> ;b1 \mathbbm{1}

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
inoremap <buffer> ;NN \bigcap_{}<esc>i
inoremap <buffer> <localleader>UU \bigcup_{}^{}<esc>F}i
inoremap <buffer> <localleader>NN \bigcap_{}^{}<esc>F}i
inoremap <buffer> ;UUl \bigcup\limits_{}<esc>i
inoremap <buffer> ;UUL \bigcup\limits_{}<esc>i
inoremap <buffer> ;NNl \bigcap\limits_{}<esc>i
inoremap <buffer> ;NNL \bigcap\limits_{}<esc>i
inoremap <buffer> <localleader>UUl \bigcup\limits_{}^{}<esc>F}i
inoremap <buffer> <localleader>UUL \bigcup\limits_{}^{}<esc>F}i
inoremap <buffer> <localleader>NNl \bigcap\limits_{}^{}<esc>F}i
inoremap <buffer> <localleader>NNL \bigcap\limits_{}^{}<esc>F}i

inoremap <buffer> ;squu \sqcup_{}<esc>i
inoremap <buffer> <localleader>squu \sqcup_{}^{}<esc>F}i
inoremap <buffer> ;squul \sqcup\limits_{}<esc>i
inoremap <buffer> <localleader>squul \sqcup\limits_{}^{}<esc>F}i

inoremap <buffer> ;sqUU \bigsqcup_{}<esc>i
inoremap <buffer> <localleader>sqUU \bigsqcup_{}^{}<esc>F}i
inoremap <buffer> ;sqUUl \bigsqcup\limits_{}<esc>i
inoremap <buffer> ;sqUUL \bigsqcup\limits_{}<esc>i
inoremap <buffer> <localleader>sqUUl \bigsqcup\limits_{}^{}<esc>F}i
inoremap <buffer> <localleader>sqUUL \bigsqcup\limits_{}^{}<esc>F}i

"}}}
" Math set symbols{{{
"-------------------------------------------------------------------

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
inoremap <buffer> <localleader>mf \mathfrak{}<esc>i

"}}}
" Real numbers{{{

inoremap <buffer> <localleader>rge \mathbb{R}_{\geq 0}
inoremap <buffer> <localleader>rle \mathbb{R}_{\leq 0}
inoremap <buffer> <localleader>r> \mathbb{R}_{>0}
inoremap <buffer> <localleader>r< \mathbb{R}_{<0}
inoremap <buffer> <localleader>r \mathbb{R}
inoremap <buffer> <localleader>rr \mathbb{R}^2
inoremap <buffer> <localleader>rn \mathbb{R}^{n}
inoremap <buffer> <localleader>rm \mathbb{R}^{m}
inoremap <buffer> <localleader>rd \mathbb{R}^{d}
inoremap <buffer> <localleader>rk \mathbb{R}^{k}
inoremap <buffer> <localleader>rnk \mathbb{R}^{nk}
inoremap <buffer> <localleader>rnl \mathbb{R}^{n\ell}
inoremap <buffer> <localleader>rmn \mathbb{R}^{mn}
inoremap <buffer> <localleader>rnm \mathbb{R}^{nm}
inoremap <buffer> <localleader>rnn \mathbb{R}^{n^2}
inoremap <buffer> <localleader>rx \mathbb{R}^{\times}
inoremap <buffer> <localleader>r. \mathbb{R}^{}<esc>i

"}}}
" Natural numbers{{{

inoremap <buffer> <localleader>n \mathbb{N}
inoremap <buffer> <localleader>nn \mathbb{N}^2
inoremap <buffer> <localleader>nm \mathbb{N}^{m}
inoremap <buffer> <localleader>nd \mathbb{N}^{d}
inoremap <buffer> <localleader>nk \mathbb{N}^{k}
inoremap <buffer> <localleader>n. \mathbb{N}^{}<esc>i

"}}}
" Integers{{{

inoremap <buffer> <localleader>zge \mathbb{Z}_{\geq 0}
inoremap <buffer> <localleader>zle \mathbb{Z}_{\leq 0}
inoremap <buffer> <localleader>z> \mathbb{Z}_{>0}
inoremap <buffer> <localleader>z< \mathbb{Z}_{<0}
inoremap <buffer> <localleader>pz \mathbb{Z}_+
inoremap <buffer> <localleader>mz \mathbb{Z}_-
inoremap <buffer> <localleader>z \mathbb{Z}
inoremap <buffer> <localleader>zz \mathbb{Z}^2
inoremap <buffer> <localleader>zn \mathbb{Z}^{n}
inoremap <buffer> <localleader>zm \mathbb{Z}^{m}
inoremap <buffer> <localleader>zd \mathbb{Z}^{d}
inoremap <buffer> <localleader>zk \mathbb{Z}^{k}
inoremap <buffer> <localleader>zx \mathbb{Z}^{\times}
inoremap <buffer> <localleader>z. \mathbb{Z}^{}<esc>i

"}}}
" Rational numbers{{{

inoremap <buffer> <localleader>qge \mathbb{Q}_{\geq 0}
inoremap <buffer> <localleader>qle \mathbb{Q}_{\leq 0}
inoremap <buffer> <localleader>q> \mathbb{Q}_{>0}
inoremap <buffer> <localleader>q< \mathbb{Q}_{<0}
inoremap <buffer> <localleader>q \mathbb{Q}
inoremap <buffer> <localleader>qq \mathbb{Q}^2
inoremap <buffer> <localleader>qn \mathbb{Q}^{n}
inoremap <buffer> <localleader>qm \mathbb{Q}^{m}
inoremap <buffer> <localleader>qd \mathbb{Q}^{d}
inoremap <buffer> <localleader>qk \mathbb{Q}^{k}
inoremap <buffer> <localleader>qx \mathbb{Q}^{\times}
inoremap <buffer> <localleader>q. \mathbb{Q}^{}<esc>i

"}}}
" Complex numbers{{{

inoremap <buffer> <localleader>c \mathbb{C}
inoremap <buffer> <localleader>cc \mathbb{C}^2
inoremap <buffer> <localleader>cn \mathbb{C}^{n}
inoremap <buffer> <localleader>cm \mathbb{C}^{m}
inoremap <buffer> <localleader>cd \mathbb{C}^{d}
inoremap <buffer> <localleader>ck \mathbb{C}^{k}
inoremap <buffer> <localleader>cx \mathbb{C}^{\times}
inoremap <buffer> <localleader>c. \mathbb{C}^{}<esc>i

"}}}
" p-adic numbers{{{

inoremap <buffer> <localleader>qp \mathbb{Q}_p
inoremap <buffer> <localleader>qpp {\mathbb{Q}_p}^2
inoremap <buffer> <localleader>qpn {\mathbb{Q}_p}^{n}
inoremap <buffer> <localleader>qpm {\mathbb{Q}_p}^{m}
inoremap <buffer> <localleader>qpd {\mathbb{Q}_p}^{d}
inoremap <buffer> <localleader>qpk {\mathbb{Q}_p}^{k}
inoremap <buffer> <localleader>qpx {\mathbb{Q}_p}^{\times}
inoremap <buffer> <localleader>qp. {\mathbb{Q}_p}^{}<esc>i

"}}}
" p-adic Integers{{{

inoremap <buffer> <localleader>zp \mathbb{Z}_p
inoremap <buffer> <localleader>zpp {\mathbb{Z}_p}^2
inoremap <buffer> <localleader>zpn {\mathbb{Z}_p}^{n}
inoremap <buffer> <localleader>zpm {\mathbb{Z}_p}^{m}
inoremap <buffer> <localleader>zpd {\mathbb{Z}_p}^{d}
inoremap <buffer> <localleader>zpk {\mathbb{Z}_p}^{k}
inoremap <buffer> <localleader>zpx {\mathbb{Z}_p}^{\times}
inoremap <buffer> <localleader>zp. {\mathbb{Z}_p}^{}<esc>i

"}}}
" Other fields{{{

inoremap <buffer> <localleader>k \mathbb{K}
inoremap <buffer> <localleader>kk \mathbb{K}^2
inoremap <buffer> <localleader>kn \mathbb{K}^{n}
inoremap <buffer> <localleader>km \mathbb{K}^{m}
inoremap <buffer> <localleader>kd \mathbb{K}^{d}
inoremap <buffer> <localleader>kx \mathbb{K}^{\times}
inoremap <buffer> <localleader>k. \mathbb{K}^{}<esc>i

inoremap <buffer> <localleader>ks K_S
inoremap <buffer> <localleader>kss K_S^2
inoremap <buffer> <localleader>ksn K_S^{n}
inoremap <buffer> <localleader>ksm K_S^{m}
inoremap <buffer> <localleader>ksd K_S^{d}
inoremap <buffer> <localleader>ksk K_S^{k}
inoremap <buffer> <localleader>ksx K_S^{\times}
inoremap <buffer> <localleader>ks. K_S^{}<esc>i

"}}}
" Ring of integers{{{

inoremap <buffer> <localleader>ok \mathcal{O}_K
inoremap <buffer> <localleader>okk \mathcal{O}_K^2
inoremap <buffer> <localleader>okn \mathcal{O}_K^{n}
inoremap <buffer> <localleader>okm \mathcal{O}_K^{m}
inoremap <buffer> <localleader>okd \mathcal{O}_K^{d}
inoremap <buffer> <localleader>okx \mathcal{O}_K^{\times}
inoremap <buffer> <localleader>ok. \mathcal{O}_K^{}<esc>i

"}}}
" Adele{{{

inoremap <buffer> <localleader>a \mathbb{A}
inoremap <buffer> <localleader>aa \mathbb{A}^2
inoremap <buffer> <localleader>an \mathbb{A}^{n}
inoremap <buffer> <localleader>am \mathbb{A}^{m}
inoremap <buffer> <localleader>ad \mathbb{A}^{d}
inoremap <buffer> <localleader>ak \mathbb{A}^{k}
inoremap <buffer> <localleader>a. \mathbb{A}^{}<esc>i

"}}}
" Tori{{{

inoremap <buffer> <localleader>t \mathbb{T}
inoremap <buffer> <localleader>tt \mathbb{T}^2
inoremap <buffer> <localleader>tn \mathbb{T}^{n}
inoremap <buffer> <localleader>tm \mathbb{T}^{m}
inoremap <buffer> <localleader>td \mathbb{T}^{d}
inoremap <buffer> <localleader>tk \mathbb{T}^{k}
inoremap <buffer> <localleader>t. \mathbb{T}^{}<esc>i

"}}}
"Hyperbolic space{{{

inoremap <buffer> <localleader>h \mathbb{H}
inoremap <buffer> <localleader>hh \mathbb{H}^2
inoremap <buffer> <localleader>hn \mathbb{H}^{n}
inoremap <buffer> <localleader>hm \mathbb{H}^{m}
inoremap <buffer> <localleader>hd \mathbb{H}^{d}
inoremap <buffer> <localleader>hk \mathbb{H}^{k}
inoremap <buffer> <localleader>h. \mathbb{H}^{}<esc>i

"}}}

"}}}
" Outside math mode{{{
"-------------------------------------------------------------------

inoremap <buffer> r<Space><Space> $\mathbb{R}$

inoremap <buffer> n<Space><Space> $\mathbb{N}$

inoremap <buffer> z<Space><Space> $\mathbb{Z}$

inoremap <buffer> q<Space><Space> $\mathbb{Q}$

inoremap <buffer> c<Space><Space> $\mathbb{C}$

inoremap <buffer> k<Space><Space> $\mathbb{K}$

inoremap <buffer> a<Space><Space> $\mathbb{A}$

inoremap <buffer> t<Space><Space> $\mathbb{T}$

inoremap <buffer> h<Space><Space> $\mathbb{H}$

"}}}

inoremap <buffer> <localleader>Cc C_c()<esc>i
inoremap <buffer> <localleader>Ccx C_c(X)
inoremap <buffer> <localleader>Cci C_c^{\infty}()<esc>i
inoremap <buffer> <localleader>Ccix C_c^{\infty}(X)

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
        inoremap <buffer> <leader>mk \mathrm{M}_{k}
        inoremap <buffer> <leader>m2 \mathrm{M}_{2}
        inoremap <buffer> <leader>m3 \mathrm{M}_{3}
        inoremap <buffer> <leader>m. \mathrm{M}_{}<esc>i

        inoremap <buffer> <localleader>mmn \mathrm{M}_{m \times n}()<esc>i
        inoremap <buffer> <localleader>m.. \mathrm{M}_{}()<esc>F}i
        inoremap <buffer> <localleader>m \mathrm{M}()<esc>i

        inoremap <buffer> <localleader>mn \mathrm{M}(n,)<esc>i
        inoremap <buffer> <localleader>mm \mathrm{M}(m,)<esc>i
        inoremap <buffer> <localleader>md \mathrm{M}(d,)<esc>i
        inoremap <buffer> <localleader>mk \mathrm{M}(k,)<esc>i
        inoremap <buffer> <localleader>m2 \mathrm{M}(2,)<esc>i
        inoremap <buffer> <localleader>m3 \mathrm{M}(3,)<esc>i
        inoremap <buffer> <localleader>m. \mathrm{M}(,)<esc>F,i

        inoremap <buffer> <localleader>mmnz \mathrm{M}_{m \times n}(\mathbb{Z})
        inoremap <buffer> <localleader>m..z \mathrm{M}_{}(\mathbb{Z})<esc>F};i
        inoremap <buffer> <localleader>mnz \mathrm{M}(n,\mathbb{Z})
        inoremap <buffer> <localleader>mmz \mathrm{M}(m,\mathbb{Z})
        inoremap <buffer> <localleader>mdz \mathrm{M}(d,\mathbb{Z})
        inoremap <buffer> <localleader>mkz \mathrm{M}(k,\mathbb{Z})
        inoremap <buffer> <localleader>m2z \mathrm{M}(2,\mathbb{Z})
        inoremap <buffer> <localleader>m3z \mathrm{M}(3,\mathbb{Z})
        inoremap <buffer> <localleader>m.z \mathrm{M}(,\mathbb{Z})<esc>F,i

        inoremap <buffer> <localleader>mmnq \mathrm{M}_{m \times n}(\mathbb{Q})
        inoremap <buffer> <localleader>m..q \mathrm{M}_{}(\mathbb{Q})<esc>F};i
        inoremap <buffer> <localleader>mnq \mathrm{M}(n,\mathbb{Q})
        inoremap <buffer> <localleader>mmq \mathrm{M}(m,\mathbb{Q})
        inoremap <buffer> <localleader>mdq \mathrm{M}(d,\mathbb{Q})
        inoremap <buffer> <localleader>mkq \mathrm{M}(k,\mathbb{Q})
        inoremap <buffer> <localleader>m2q \mathrm{M}(2,\mathbb{Q})
        inoremap <buffer> <localleader>m3q \mathrm{M}(3,\mathbb{Q})
        inoremap <buffer> <localleader>m.q \mathrm{M}(,\mathbb{Q})<esc>F,i

        inoremap <buffer> <localleader>mmnr \mathrm{M}_{m \times n}(\mathbb{R})
        inoremap <buffer> <localleader>m..r \mathrm{M}_{}(\mathbb{R})<esc>F};i
        inoremap <buffer> <localleader>mnr \mathrm{M}(n,\mathbb{R})
        inoremap <buffer> <localleader>mmr \mathrm{M}(m,\mathbb{R})
        inoremap <buffer> <localleader>mdr \mathrm{M}(d,\mathbb{R})
        inoremap <buffer> <localleader>mkr \mathrm{M}(k,\mathbb{R})
        inoremap <buffer> <localleader>m2r \mathrm{M}(2,\mathbb{R})
        inoremap <buffer> <localleader>m3r \mathrm{M}(3,\mathbb{R})
        inoremap <buffer> <localleader>m.r \mathrm{M}(,\mathbb{R})<esc>F,i

        inoremap <buffer> <localleader>mmnc \mathrm{M}_{m \times n}(\mathbb{C})
        inoremap <buffer> <localleader>m..c \mathrm{M}_{}(\mathbb{C})<esc>F};i
        inoremap <buffer> <localleader>mnc \mathrm{M}(n,\mathbb{C})
        inoremap <buffer> <localleader>mmc \mathrm{M}(m,\mathbb{C})
        inoremap <buffer> <localleader>mdc \mathrm{M}(d,\mathbb{C})
        inoremap <buffer> <localleader>mkc \mathrm{M}(k,\mathbb{C})
        inoremap <buffer> <localleader>m2c \mathrm{M}(2,\mathbb{C})
        inoremap <buffer> <localleader>m3c \mathrm{M}(3,\mathbb{C})
        inoremap <buffer> <localleader>m.c \mathrm{M}(,\mathbb{C})<esc>F,i

        inoremap <buffer> <localleader>mmnzp \mathrm{M}_{m \times n}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>m..zp \mathrm{M}_{}(\mathbb{Z}_p)<esc>F};i
        inoremap <buffer> <localleader>mnzp \mathrm{M}(n,\mathbb{Z}_p)
        inoremap <buffer> <localleader>mmzp \mathrm{M}(m,\mathbb{Z}_p)
        inoremap <buffer> <localleader>mdzp \mathrm{M}(d,\mathbb{Z}_p)
        inoremap <buffer> <localleader>mkzp \mathrm{M}(k,\mathbb{Z}_p)
        inoremap <buffer> <localleader>m2zp \mathrm{M}(2,\mathbb{Z}_p)
        inoremap <buffer> <localleader>m3zp \mathrm{M}(3,\mathbb{Z}_p)
        inoremap <buffer> <localleader>m.zp \mathrm{M}(,\mathbb{Z}_p)<esc>F,i

        inoremap <buffer> <localleader>mmnqp \mathrm{M}_{m \times n}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>m..qp \mathrm{M}_{}(\mathbb{Q}_p)<esc>F};i
        inoremap <buffer> <localleader>mnqp \mathrm{M}(n,\mathbb{Q}_p)
        inoremap <buffer> <localleader>mmqp \mathrm{M}(m,\mathbb{Q}_p)
        inoremap <buffer> <localleader>mdqp \mathrm{M}(d,\mathbb{Q}_p)
        inoremap <buffer> <localleader>mkqp \mathrm{M}(k,\mathbb{Q}_p)
        inoremap <buffer> <localleader>m2qp \mathrm{M}(2,\mathbb{Q}_p)
        inoremap <buffer> <localleader>m3qp \mathrm{M}(3,\mathbb{Q}_p)
        inoremap <buffer> <localleader>m.qp \mathrm{M}(,\mathbb{Q}_p)<esc>F,i

        inoremap <buffer> <localleader>mmnk \mathrm{M}_{m \times n}(\mathbb{K})
        inoremap <buffer> <localleader>m..k \mathrm{M}_{}(\mathbb{K})<esc>F};i
        inoremap <buffer> <localleader>mnk \mathrm{M}(n,\mathbb{K})
        inoremap <buffer> <localleader>mmk \mathrm{M}(m,\mathbb{K})
        inoremap <buffer> <localleader>mdk \mathrm{M}(d,\mathbb{K})
        inoremap <buffer> <localleader>mkk \mathrm{M}(k,\mathbb{K})
        inoremap <buffer> <localleader>m2k \mathrm{M}(2,\mathbb{K})
        inoremap <buffer> <localleader>m3k \mathrm{M}(3,\mathbb{K})
        inoremap <buffer> <localleader>m.k \mathrm{M}(,\mathbb{K})<esc>F,i

        inoremap <buffer> <localleader>mmna \mathrm{M}_{m \times n}(\mathbb{A})
        inoremap <buffer> <localleader>m..a \mathrm{M}_{}(\mathbb{A})<esc>F};i
        inoremap <buffer> <localleader>mna \mathrm{M}(n,\mathbb{A})
        inoremap <buffer> <localleader>mma \mathrm{M}(m,\mathbb{A})
        inoremap <buffer> <localleader>mda \mathrm{M}(d,\mathbb{A})
        inoremap <buffer> <localleader>mka \mathrm{M}(k,\mathbb{A})
        inoremap <buffer> <localleader>m2a \mathrm{M}(2,\mathbb{A})
        inoremap <buffer> <localleader>m3a \mathrm{M}(3,\mathbb{A})
        inoremap <buffer> <localleader>m.a \mathrm{M}(,\mathbb{A})<esc>F,i

        inoremap <buffer> <localleader>mmnok \mathrm{M}_{m \times n}(\mathcal{O}_K)
        inoremap <buffer> <localleader>m..ok \mathrm{M}_{}(\mathcal{O}_K)<esc>F};i
        inoremap <buffer> <localleader>mnok \mathrm{M}(n,\mathcal{O}_K)
        inoremap <buffer> <localleader>mmok \mathrm{M}(m,\mathcal{O}_K)
        inoremap <buffer> <localleader>mdok \mathrm{M}(d,\mathcal{O}_K)
        inoremap <buffer> <localleader>mkok \mathrm{M}(k,\mathcal{O}_K)
        inoremap <buffer> <localleader>m2ok \mathrm{M}(2,\mathcal{O}_K)
        inoremap <buffer> <localleader>m3ok \mathrm{M}(3,\mathcal{O}_K)
        inoremap <buffer> <localleader>m.ok \mathrm{M}(,\mathcal{O}_K)<esc>F,i

        inoremap <buffer> <localleader>mmnjk \mathrm{M}_{m \times n}(K)
        inoremap <buffer> <localleader>m..jk \mathrm{M}_{}(K)<esc>F}i
        inoremap <buffer> <localleader>mnjk \mathrm{M}(n,K)
        inoremap <buffer> <localleader>mmjk \mathrm{M}(m,K)
        inoremap <buffer> <localleader>mdjk \mathrm{M}(d,K)
        inoremap <buffer> <localleader>mkjk \mathrm{M}(k,K)
        inoremap <buffer> <localleader>m2jk \mathrm{M}(2,K)
        inoremap <buffer> <localleader>m3jk \mathrm{M}(3,K)
        inoremap <buffer> <localleader>m.jk \mathrm{M}(,K)<esc>F,i

        inoremap <buffer> <localleader>mmnks \mathrm{M}_{m \times n}(K_S)
        inoremap <buffer> <localleader>m..ks \mathrm{M}_{}(K_S)<esc>F}i
        inoremap <buffer> <localleader>mnks \mathrm{M}(n,K_S)
        inoremap <buffer> <localleader>mmks \mathrm{M}(m,K_S)
        inoremap <buffer> <localleader>mdks \mathrm{M}(d,K_S)
        inoremap <buffer> <localleader>mkks \mathrm{M}(k,K_S)
        inoremap <buffer> <localleader>m2ks \mathrm{M}(2,K_S)
        inoremap <buffer> <localleader>m3ks \mathrm{M}(3,K_S)
        inoremap <buffer> <localleader>m.ks \mathrm{M}(,K_S)<esc>F,i

        "}}}
        " GL{{{

        inoremap <buffer> <leader>gl \mathrm{GL}
        inoremap <buffer> <leader>gln \mathrm{GL}_{n}
        inoremap <buffer> <leader>glm \mathrm{GL}_{m}
        inoremap <buffer> <leader>gld \mathrm{GL}_{d}
        inoremap <buffer> <leader>glk \mathrm{GL}_{k}
        inoremap <buffer> <leader>gl2 \mathrm{GL}_{2}
        inoremap <buffer> <leader>gl3 \mathrm{GL}_{3}
        inoremap <buffer> <leader>gl. \mathrm{GL}_{}<esc>i

        inoremap <buffer> <localleader>gl \mathrm{GL}()<esc>i

        inoremap <buffer> <localleader>gln \mathrm{GL}(n,)<esc>i
        inoremap <buffer> <localleader>glm \mathrm{GL}(m,)<esc>i
        inoremap <buffer> <localleader>gld \mathrm{GL}(d,)<esc>i
        inoremap <buffer> <localleader>glk \mathrm{GL}(k,)<esc>i
        inoremap <buffer> <localleader>gl2 \mathrm{GL}(2,)<esc>i
        inoremap <buffer> <localleader>gl3 \mathrm{GL}(3,)<esc>i
        inoremap <buffer> <localleader>gl. \mathrm{GL}(,)<esc>F,i
        inoremap <buffer> <localleader>glpn \mathrm{GL}^+(n,)<esc>i
        inoremap <buffer> <localleader>glpm \mathrm{GL}^+(m,)<esc>i
        inoremap <buffer> <localleader>glpd \mathrm{GL}^+(d,)<esc>i
        inoremap <buffer> <localleader>glp2 \mathrm{GL}^+(2,)<esc>i
        inoremap <buffer> <localleader>glp3 \mathrm{GL}^+(3,)<esc>i
        inoremap <buffer> <localleader>glp. \mathrm{GL}^+(,)<esc>F,i

        inoremap <buffer> <localleader>glnz \mathrm{GL}(n,\mathbb{Z})
        inoremap <buffer> <localleader>glmz \mathrm{GL}(m,\mathbb{Z})
        inoremap <buffer> <localleader>gldz \mathrm{GL}(d,\mathbb{Z})
        inoremap <buffer> <localleader>glkz \mathrm{GL}(k,\mathbb{Z})
        inoremap <buffer> <localleader>gl2z \mathrm{GL}(2,\mathbb{Z})
        inoremap <buffer> <localleader>gl3z \mathrm{GL}(3,\mathbb{Z})
        inoremap <buffer> <localleader>gl.z \mathrm{GL}(,\mathbb{Z})<esc>F,i
        inoremap <buffer> <localleader>glpnz \mathrm{GL}^+(n,\mathbb{Z})
        inoremap <buffer> <localleader>glpmz \mathrm{GL}^+(m,\mathbb{Z})
        inoremap <buffer> <localleader>glpdz \mathrm{GL}^+(d,\mathbb{Z})
        inoremap <buffer> <localleader>glp2z \mathrm{GL}^+(2,\mathbb{Z})
        inoremap <buffer> <localleader>glp3z \mathrm{GL}^+(3,\mathbb{Z})
        inoremap <buffer> <localleader>glp.z \mathrm{GL}^+(,\mathbb{Z})<esc>F,i

        inoremap <buffer> <localleader>glnq \mathrm{GL}(n,\mathbb{Q})
        inoremap <buffer> <localleader>glmq \mathrm{GL}(m,\mathbb{Q})
        inoremap <buffer> <localleader>gldq \mathrm{GL}(d,\mathbb{Q})
        inoremap <buffer> <localleader>glkq \mathrm{GL}(k,\mathbb{Q})
        inoremap <buffer> <localleader>gl2q \mathrm{GL}(2,\mathbb{Q})
        inoremap <buffer> <localleader>gl3q \mathrm{GL}(3,\mathbb{Q})
        inoremap <buffer> <localleader>gl.q \mathrm{GL}(,\mathbb{Q})<esc>F,i
        inoremap <buffer> <localleader>glpnq \mathrm{GL}^+(n,\mathbb{Q})
        inoremap <buffer> <localleader>glpmq \mathrm{GL}^+(m,\mathbb{Q})
        inoremap <buffer> <localleader>glpdq \mathrm{GL}^+(d,\mathbb{Q})
        inoremap <buffer> <localleader>glpkq \mathrm{GL}^+(k,\mathbb{Q})
        inoremap <buffer> <localleader>glp2q \mathrm{GL}^+(2,\mathbb{Q})
        inoremap <buffer> <localleader>glp3q \mathrm{GL}^+(3,\mathbb{Q})
        inoremap <buffer> <localleader>glp.q \mathrm{GL}^+(,\mathbb{Q})<esc>F,i

        inoremap <buffer> <localleader>glnr \mathrm{GL}(n,\mathbb{R})
        inoremap <buffer> <localleader>glmr \mathrm{GL}(m,\mathbb{R})
        inoremap <buffer> <localleader>gldr \mathrm{GL}(d,\mathbb{R})
        inoremap <buffer> <localleader>glkr \mathrm{GL}(k,\mathbb{R})
        inoremap <buffer> <localleader>gl2r \mathrm{GL}(2,\mathbb{R})
        inoremap <buffer> <localleader>gl3r \mathrm{GL}(3,\mathbb{R})
        inoremap <buffer> <localleader>gl.r \mathrm{GL}(,\mathbb{R})<esc>F,i
        inoremap <buffer> <localleader>glpnr \mathrm{GL}^+(n,\mathbb{R})
        inoremap <buffer> <localleader>glpmr \mathrm{GL}^+(m,\mathbb{R})
        inoremap <buffer> <localleader>glpdr \mathrm{GL}^+(d,\mathbb{R})
        inoremap <buffer> <localleader>glpkr \mathrm{GL}^+(k,\mathbb{R})
        inoremap <buffer> <localleader>glp2r \mathrm{GL}^+(2,\mathbb{R})
        inoremap <buffer> <localleader>glp3r \mathrm{GL}^+(3,\mathbb{R})
        inoremap <buffer> <localleader>glp.r \mathrm{GL}^+(,\mathbb{R})<esc>F,i

        inoremap <buffer> <localleader>glnc \mathrm{GL}(n,\mathbb{C})
        inoremap <buffer> <localleader>glmc \mathrm{GL}(m,\mathbb{C})
        inoremap <buffer> <localleader>gldc \mathrm{GL}(d,\mathbb{C})
        inoremap <buffer> <localleader>glkc \mathrm{GL}(k,\mathbb{C})
        inoremap <buffer> <localleader>gl2c \mathrm{GL}(2,\mathbb{C})
        inoremap <buffer> <localleader>gl3c \mathrm{GL}(3,\mathbb{C})
        inoremap <buffer> <localleader>gl.c \mathrm{GL}(,\mathbb{C})<esc>F,i

        inoremap <buffer> <localleader>glnzp \mathrm{GL}(n,\mathbb{Z}_p)
        inoremap <buffer> <localleader>glmzp \mathrm{GL}(m,\mathbb{Z}_p)
        inoremap <buffer> <localleader>gldzp \mathrm{GL}(d,\mathbb{Z}_p)
        inoremap <buffer> <localleader>glkzp \mathrm{GL}(k,\mathbb{Z}_p)
        inoremap <buffer> <localleader>gl2zp \mathrm{GL}(2,\mathbb{Z}_p)
        inoremap <buffer> <localleader>gl3zp \mathrm{GL}(3,\mathbb{Z}_p)
        inoremap <buffer> <localleader>gl.zp \mathrm{GL}(,\mathbb{Z}_p)<esc>F,i

        inoremap <buffer> <localleader>glnqp \mathrm{GL}(n,\mathbb{Q}_p)
        inoremap <buffer> <localleader>glmqp \mathrm{GL}(m,\mathbb{Q}_p)
        inoremap <buffer> <localleader>gldqp \mathrm{GL}(d,\mathbb{Q}_p)
        inoremap <buffer> <localleader>glkqp \mathrm{GL}(k,\mathbb{Q}_p)
        inoremap <buffer> <localleader>gl2qp \mathrm{GL}(2,\mathbb{Q}_p)
        inoremap <buffer> <localleader>gl3qp \mathrm{GL}(3,\mathbb{Q}_p)
        inoremap <buffer> <localleader>gl.qp \mathrm{GL}(,\mathbb{Q}_p)<esc>F,i

        inoremap <buffer> <localleader>glnk \mathrm{GL}(n,\mathbb{K})
        inoremap <buffer> <localleader>glmk \mathrm{GL}(m,\mathbb{K})
        inoremap <buffer> <localleader>gldk \mathrm{GL}(d,\mathbb{K})
        inoremap <buffer> <localleader>glkk \mathrm{GL}(k,\mathbb{K})
        inoremap <buffer> <localleader>gl2k \mathrm{GL}(2,\mathbb{K})
        inoremap <buffer> <localleader>gl3k \mathrm{GL}(3,\mathbb{K})
        inoremap <buffer> <localleader>gl.k \mathrm{GL}(,\mathbb{K})<esc>F,i

        inoremap <buffer> <localleader>glna \mathrm{GL}(n,\mathbb{A})
        inoremap <buffer> <localleader>glma \mathrm{GL}(m,\mathbb{A})
        inoremap <buffer> <localleader>glda \mathrm{GL}(d,\mathbb{A})
        inoremap <buffer> <localleader>glka \mathrm{GL}(k,\mathbb{A})
        inoremap <buffer> <localleader>gl2a \mathrm{GL}(2,\mathbb{A})
        inoremap <buffer> <localleader>gl3a \mathrm{GL}(3,\mathbb{A})
        inoremap <buffer> <localleader>gl.a \mathrm{GL}(,\mathbb{A})<esc>F,i

        inoremap <buffer> <localleader>glnok \mathrm{GL}(n,\mathcal{O}_K)
        inoremap <buffer> <localleader>glmok \mathrm{GL}(m,\mathcal{O}_K)
        inoremap <buffer> <localleader>gldok \mathrm{GL}(d,\mathcal{O}_K)
        inoremap <buffer> <localleader>glkok \mathrm{GL}(k,\mathcal{O}_K)
        inoremap <buffer> <localleader>gl2ok \mathrm{GL}(2,\mathcal{O}_K)
        inoremap <buffer> <localleader>gl3ok \mathrm{GL}(3,\mathcal{O}_K)
        inoremap <buffer> <localleader>gl.ok \mathrm{GL}(,\mathcal{O}_K)<esc>F,i

        inoremap <buffer> <localleader>glnjk \mathrm{GL}(n,K)
        inoremap <buffer> <localleader>glmjk \mathrm{GL}(m,K)
        inoremap <buffer> <localleader>gldjk \mathrm{GL}(d,K)
        inoremap <buffer> <localleader>glkjk \mathrm{GL}(k,K)
        inoremap <buffer> <localleader>gl2jk \mathrm{GL}(2,K)
        inoremap <buffer> <localleader>gl3jk \mathrm{GL}(3,K)
        inoremap <buffer> <localleader>gl.jk \mathrm{GL}(,K)<esc>F,i

        inoremap <buffer> <localleader>glnks \mathrm{GL}(n,K_S)
        inoremap <buffer> <localleader>glmks \mathrm{GL}(m,K_S)
        inoremap <buffer> <localleader>gldks \mathrm{GL}(d,K_S)
        inoremap <buffer> <localleader>glkks \mathrm{GL}(k,K_S)
        inoremap <buffer> <localleader>gl2ks \mathrm{GL}(2,K_S)
        inoremap <buffer> <localleader>gl3ks \mathrm{GL}(3,K_S)
        inoremap <buffer> <localleader>gl.ks \mathrm{GL}(,K_S)<esc>F,i

        "}}}
        " SL{{{

        inoremap <buffer> <leader>sl \mathrm{SL}
        inoremap <buffer> <leader>sln \mathrm{SL}_{n}
        inoremap <buffer> <leader>slm \mathrm{SL}_{m}
        inoremap <buffer> <leader>sld \mathrm{SL}_{d}
        inoremap <buffer> <leader>slk \mathrm{SL}_{k}
        inoremap <buffer> <leader>sl2 \mathrm{SL}_{2}
        inoremap <buffer> <leader>sl3 \mathrm{SL}_{3}
        inoremap <buffer> <leader>sl. \mathrm{SL}_{}<esc>i

        inoremap <buffer> <localleader>sl \mathrm{SL}()<esc>i

        inoremap <buffer> <localleader>sln \mathrm{SL}(n,)<esc>i
        inoremap <buffer> <localleader>slm \mathrm{SL}(m,)<esc>i
        inoremap <buffer> <localleader>sld \mathrm{SL}(d,)<esc>i
        inoremap <buffer> <localleader>slk \mathrm{SL}(k,)<esc>i
        inoremap <buffer> <localleader>sl2 \mathrm{SL}(2,)<esc>i
        inoremap <buffer> <localleader>sl3 \mathrm{SL}(3,)<esc>i
        inoremap <buffer> <localleader>sl. \mathrm{SL}(,)<esc>F,i

        inoremap <buffer> <localleader>slnz \mathrm{SL}(n,\mathbb{Z})
        inoremap <buffer> <localleader>slmz \mathrm{SL}(m,\mathbb{Z})
        inoremap <buffer> <localleader>sldz \mathrm{SL}(d,\mathbb{Z})
        inoremap <buffer> <localleader>slkz \mathrm{SL}(k,\mathbb{Z})
        inoremap <buffer> <localleader>sl2z \mathrm{SL}(2,\mathbb{Z})
        inoremap <buffer> <localleader>sl3z \mathrm{SL}(3,\mathbb{Z})
        inoremap <buffer> <localleader>sl.z \mathrm{SL}(,\mathbb{Z})<esc>F,i

        inoremap <buffer> <localleader>slnq \mathrm{SL}(n,\mathbb{Q})
        inoremap <buffer> <localleader>slmq \mathrm{SL}(m,\mathbb{Q})
        inoremap <buffer> <localleader>sldq \mathrm{SL}(d,\mathbb{Q})
        inoremap <buffer> <localleader>slkq \mathrm{SL}(k,\mathbb{Q})
        inoremap <buffer> <localleader>sl2q \mathrm{SL}(2,\mathbb{Q})
        inoremap <buffer> <localleader>sl3q \mathrm{SL}(3,\mathbb{Q})
        inoremap <buffer> <localleader>sl.q \mathrm{SL}(,\mathbb{Q})<esc>F,i

        inoremap <buffer> <localleader>slnr \mathrm{SL}(n,\mathbb{R})
        inoremap <buffer> <localleader>slmr \mathrm{SL}(m,\mathbb{R})
        inoremap <buffer> <localleader>sldr \mathrm{SL}(d,\mathbb{R})
        inoremap <buffer> <localleader>slkr \mathrm{SL}(k,\mathbb{R})
        inoremap <buffer> <localleader>sl2r \mathrm{SL}(2,\mathbb{R})
        inoremap <buffer> <localleader>sl3r \mathrm{SL}(3,\mathbb{R})
        inoremap <buffer> <localleader>sl.r \mathrm{SL}(,\mathbb{R})<esc>F,i

        inoremap <buffer> <localleader>slnc \mathrm{SL}(n,\mathbb{C})
        inoremap <buffer> <localleader>slmc \mathrm{SL}(m,\mathbb{C})
        inoremap <buffer> <localleader>sldc \mathrm{SL}(d,\mathbb{C})
        inoremap <buffer> <localleader>slkc \mathrm{SL}(k,\mathbb{C})
        inoremap <buffer> <localleader>sl2c \mathrm{SL}(2,\mathbb{C})
        inoremap <buffer> <localleader>sl3c \mathrm{SL}(3,\mathbb{C})
        inoremap <buffer> <localleader>sl.c \mathrm{SL}(,\mathbb{C})<esc>F,i

        inoremap <buffer> <localleader>slnzp \mathrm{SL}(n,\mathbb{Z}_p)
        inoremap <buffer> <localleader>slmzp \mathrm{SL}(m,\mathbb{Z}_p)
        inoremap <buffer> <localleader>sldzp \mathrm{SL}(d,\mathbb{Z}_p)
        inoremap <buffer> <localleader>slkzp \mathrm{SL}(k,\mathbb{Z}_p)
        inoremap <buffer> <localleader>sl2zp \mathrm{SL}(2,\mathbb{Z}_p)
        inoremap <buffer> <localleader>sl3zp \mathrm{SL}(3,\mathbb{Z}_p)
        inoremap <buffer> <localleader>sl.zp \mathrm{SL}(,\mathbb{Z}_p)<esc>F,i

        inoremap <buffer> <localleader>slnqp \mathrm{SL}(n,\mathbb{Q}_p)
        inoremap <buffer> <localleader>slmqp \mathrm{SL}(m,\mathbb{Q}_p)
        inoremap <buffer> <localleader>sldqp \mathrm{SL}(d,\mathbb{Q}_p)
        inoremap <buffer> <localleader>slkqp \mathrm{SL}(k,\mathbb{Q}_p)
        inoremap <buffer> <localleader>sl2qp \mathrm{SL}(2,\mathbb{Q}_p)
        inoremap <buffer> <localleader>sl3qp \mathrm{SL}(3,\mathbb{Q}_p)
        inoremap <buffer> <localleader>sl.qp \mathrm{SL}(,\mathbb{Q}_p)<esc>F,i

        inoremap <buffer> <localleader>slnk \mathrm{SL}(n,\mathbb{K})
        inoremap <buffer> <localleader>slmk \mathrm{SL}(m,\mathbb{K})
        inoremap <buffer> <localleader>sldk \mathrm{SL}(d,\mathbb{K})
        inoremap <buffer> <localleader>slkk \mathrm{SL}(k,\mathbb{K})
        inoremap <buffer> <localleader>sl2k \mathrm{SL}(2,\mathbb{K})
        inoremap <buffer> <localleader>sl3k \mathrm{SL}(3,\mathbb{K})
        inoremap <buffer> <localleader>sl.k \mathrm{SL}(,\mathbb{K})<esc>F,i

        inoremap <buffer> <localleader>slna \mathrm{SL}(n,\mathbb{A})
        inoremap <buffer> <localleader>slma \mathrm{SL}(m,\mathbb{A})
        inoremap <buffer> <localleader>slda \mathrm{SL}(d,\mathbb{A})
        inoremap <buffer> <localleader>slka \mathrm{SL}(k,\mathbb{A})
        inoremap <buffer> <localleader>sl2a \mathrm{SL}(2,\mathbb{A})
        inoremap <buffer> <localleader>sl3a \mathrm{SL}(3,\mathbb{A})
        inoremap <buffer> <localleader>sl.a \mathrm{SL}(,\mathbb{A})<esc>F,i

        inoremap <buffer> <localleader>slnok \mathrm{SL}(n,\mathcal{O}_K)
        inoremap <buffer> <localleader>slmok \mathrm{SL}(m,\mathcal{O}_K)
        inoremap <buffer> <localleader>sldok \mathrm{SL}(d,\mathcal{O}_K)
        inoremap <buffer> <localleader>slkok \mathrm{SL}(k,\mathcal{O}_K)
        inoremap <buffer> <localleader>sl2ok \mathrm{SL}(2,\mathcal{O}_K)
        inoremap <buffer> <localleader>sl3ok \mathrm{SL}(3,\mathcal{O}_K)
        inoremap <buffer> <localleader>sl.ok \mathrm{SL}(,\mathcal{O}_K)<esc>F,i

        inoremap <buffer> <localleader>slnjk \mathrm{SL}(n,K)
        inoremap <buffer> <localleader>slmjk \mathrm{SL}(m,K)
        inoremap <buffer> <localleader>sldjk \mathrm{SL}(d,K)
        inoremap <buffer> <localleader>slkjk \mathrm{SL}(k,K)
        inoremap <buffer> <localleader>sl2jk \mathrm{SL}(2,K)
        inoremap <buffer> <localleader>sl3jk \mathrm{SL}(3,K)
        inoremap <buffer> <localleader>sl.jk \mathrm{SL}(,K)<esc>F,i

        inoremap <buffer> <localleader>slnks \mathrm{SL}(n,K_S)
        inoremap <buffer> <localleader>slmks \mathrm{SL}(m,K_S)
        inoremap <buffer> <localleader>sldks \mathrm{SL}(d,K_S)
        inoremap <buffer> <localleader>slkks \mathrm{SL}(k,K_S)
        inoremap <buffer> <localleader>sl2ks \mathrm{SL}(2,K_S)
        inoremap <buffer> <localleader>sl3ks \mathrm{SL}(3,K_S)
        inoremap <buffer> <localleader>sl.ks \mathrm{SL}(,K_S)<esc>F,i

        inoremap <buffer> <localleader>slnrz \mathrm{SL}(n,\mathbb{R})/\mathrm{SL}(n,\mathbb{Z})
        inoremap <buffer> <localleader>slmrz \mathrm{SL}(m,\mathbb{R})/\mathrm{SL}(m,\mathbb{Z})
        inoremap <buffer> <localleader>sldrz \mathrm{SL}(d,\mathbb{R})/\mathrm{SL}(d,\mathbb{Z})
        inoremap <buffer> <localleader>slkrz \mathrm{SL}(k,\mathbb{R})/\mathrm{SL}(k,\mathbb{Z})
        inoremap <buffer> <localleader>sl2rz \mathrm{SL}(2,\mathbb{R})/\mathrm{SL}(2,\mathbb{Z})
        inoremap <buffer> <localleader>sl3rz \mathrm{SL}(3,\mathbb{R})/\mathrm{SL}(3,\mathbb{Z})
        inoremap <buffer> <localleader>sl.rz \mathrm{SL}(,\mathbb{R})/\mathrm{SL}(,\mathbb{Z})<esc>F,i

        inoremap <buffer> <localleader>slnzr \mathrm{SL}(n,\mathbb{Z}) \backslash \mathrm{SL}(n,\mathbb{R})
        inoremap <buffer> <localleader>slmzr \mathrm{SL}(m,\mathbb{Z}) \backslash \mathrm{SL}(m,\mathbb{R})
        inoremap <buffer> <localleader>sldzr \mathrm{SL}(d,\mathbb{Z}) \backslash \mathrm{SL}(d,\mathbb{R})
        inoremap <buffer> <localleader>slkzr \mathrm{SL}(k,\mathbb{Z}) \backslash \mathrm{SL}(k,\mathbb{R})
        inoremap <buffer> <localleader>sl2zr \mathrm{SL}(2,\mathbb{Z}) \backslash \mathrm{SL}(2,\mathbb{R})
        inoremap <buffer> <localleader>sl3zr \mathrm{SL}(3,\mathbb{Z}) \backslash \mathrm{SL}(3,\mathbb{R})
        inoremap <buffer> <localleader>sl.zr \mathrm{SL}(,\mathbb{Z}) \backslash \mathrm{SL}(,\mathbb{R})<esc>F,i

        inoremap <buffer> <localleader>slnksok \mathrm{SL}(n,K_S)/\mathrm{SL}(n,\mathcal{O}_K)
        inoremap <buffer> <localleader>slmksok \mathrm{SL}(m,K_S)/\mathrm{SL}(m,\mathcal{O}_K)
        inoremap <buffer> <localleader>sldksok \mathrm{SL}(d,K_S)/\mathrm{SL}(d,\mathcal{O}_K)
        inoremap <buffer> <localleader>slkksok \mathrm{SL}(k,K_S)/\mathrm{SL}(k,\mathcal{O}_K)
        inoremap <buffer> <localleader>sl2ksok \mathrm{SL}(2,K_S)/\mathrm{SL}(2,\mathcal{O}_K)
        inoremap <buffer> <localleader>sl3ksok \mathrm{SL}(3,K_S)/\mathrm{SL}(3,\mathcal{O}_K)
        inoremap <buffer> <localleader>sl.ksok \mathrm{SL}(,K_S)/\mathrm{SL}(,\mathcal{O}_K)<esc>F,i

        inoremap <buffer> <localleader>slnokks \mathrm{SL}(n,\mathcal{O}_K) \backslash \mathrm{SL}(n,K_S)
        inoremap <buffer> <localleader>slmokks \mathrm{SL}(m,\mathcal{O}_K) \backslash \mathrm{SL}(m,K_S)
        inoremap <buffer> <localleader>sldokks \mathrm{SL}(d,\mathcal{O}_K) \backslash \mathrm{SL}(d,K_S)
        inoremap <buffer> <localleader>slkokks \mathrm{SL}(k,\mathcal{O}_K) \backslash \mathrm{SL}(k,K_S)
        inoremap <buffer> <localleader>sl2okks \mathrm{SL}(2,\mathcal{O}_K) \backslash \mathrm{SL}(2,K_S)
        inoremap <buffer> <localleader>sl3okks \mathrm{SL}(3,\mathcal{O}_K) \backslash \mathrm{SL}(3,K_S)
        inoremap <buffer> <localleader>sl.okks \mathrm{SL}(,\mathcal{O}_K) \backslash \mathrm{SL}(,K_S)<esc>F,i

        "}}}
        " PSL{{{

        inoremap <buffer> <leader>psl \mathrm{PSL}
        inoremap <buffer> <leader>psln \mathrm{PSL}_{n}
        inoremap <buffer> <leader>pslm \mathrm{PSL}_{m}
        inoremap <buffer> <leader>psld \mathrm{PSL}_{d}
        inoremap <buffer> <leader>pslk \mathrm{PSL}_{k}
        inoremap <buffer> <leader>psl2 \mathrm{PSL}_{2}
        inoremap <buffer> <leader>psl3 \mathrm{PSL}_{3}
        inoremap <buffer> <leader>psl. \mathrm{PSL}_{}<esc>i

        inoremap <buffer> <localleader>psl \mathrm{PSL}()<esc>i

        inoremap <buffer> <localleader>psln \mathrm{PSL}(n,)<esc>i
        inoremap <buffer> <localleader>pslm \mathrm{PSL}(m,)<esc>i
        inoremap <buffer> <localleader>psld \mathrm{PSL}(d,)<esc>i
        inoremap <buffer> <localleader>pslk \mathrm{PSL}(k,)<esc>i
        inoremap <buffer> <localleader>psl2 \mathrm{PSL}(2,)<esc>i
        inoremap <buffer> <localleader>psl3 \mathrm{PSL}(3,)<esc>i
        inoremap <buffer> <localleader>psl. \mathrm{PSL}(,)<esc>F,i

        inoremap <buffer> <localleader>pslnr \mathrm{PSL}(n,\mathbb{R})
        inoremap <buffer> <localleader>pslmr \mathrm{PSL}(m,\mathbb{R})
        inoremap <buffer> <localleader>psldr \mathrm{PSL}(d,\mathbb{R})
        inoremap <buffer> <localleader>pslkr \mathrm{PSL}(k,\mathbb{R})
        inoremap <buffer> <localleader>psl2r \mathrm{PSL}(2,\mathbb{R})
        inoremap <buffer> <localleader>psl3r \mathrm{PSL}(3,\mathbb{R})
        inoremap <buffer> <localleader>psl.r \mathrm{PSL}(,\mathbb{R})<esc>F,i

        "}}}
        " O{{{

        inoremap <buffer> <leader>on \mathrm{O}_{n}
        inoremap <buffer> <leader>om \mathrm{O}_{m}
        inoremap <buffer> <leader>od \mathrm{O}_{d}
        inoremap <buffer> <leader>o2 \mathrm{O}_{2}
        inoremap <buffer> <leader>o3 \mathrm{O}_{3}
        inoremap <buffer> <leader>o. \mathrm{O}_{}<esc>i

        inoremap <buffer> <localleader>o \mathrm{O}()<esc>i

        inoremap <buffer> <localleader>on \mathrm{O}(n,)<esc>i
        inoremap <buffer> <localleader>om \mathrm{O}(m,)<esc>i
        inoremap <buffer> <localleader>od \mathrm{O}(d,)<esc>i
        inoremap <buffer> <localleader>o2 \mathrm{O}(2,)<esc>i
        inoremap <buffer> <localleader>o3 \mathrm{O}(3,)<esc>i
        inoremap <buffer> <localleader>o. \mathrm{O}(,)<esc>F,i

        inoremap <buffer> <localleader>onr \mathrm{O}(n,\mathbb{R})
        inoremap <buffer> <localleader>omr \mathrm{O}(m,\mathbb{R})
        inoremap <buffer> <localleader>odr \mathrm{O}(d,\mathbb{R})
        inoremap <buffer> <localleader>okr \mathrm{O}(k,\mathbb{R})
        inoremap <buffer> <localleader>o2r \mathrm{O}(2,\mathbb{R})
        inoremap <buffer> <localleader>o3r \mathrm{O}(3,\mathbb{R})
        inoremap <buffer> <localleader>o.r \mathrm{O}(,\mathbb{R})<esc>F,i

        inoremap <buffer> <localleader>onc \mathrm{O}(n,\mathbb{C})
        inoremap <buffer> <localleader>omc \mathrm{O}(m,\mathbb{C})
        inoremap <buffer> <localleader>odc \mathrm{O}(d,\mathbb{C})
        inoremap <buffer> <localleader>okc \mathrm{O}(k,\mathbb{C})
        inoremap <buffer> <localleader>o2c \mathrm{O}(2,\mathbb{C})
        inoremap <buffer> <localleader>o3c \mathrm{O}(3,\mathbb{C})
        inoremap <buffer> <localleader>o.c \mathrm{O}(,\mathbb{C})<esc>F,i

        "}}}
        " SO{{{

        inoremap <buffer> <leader>so \mathrm{SO}
        inoremap <buffer> <leader>son \mathrm{SO}_{n}
        inoremap <buffer> <leader>som \mathrm{SO}_{m}
        inoremap <buffer> <leader>sod \mathrm{SO}_{d}
        inoremap <buffer> <leader>sok \mathrm{SO}_{k}
        inoremap <buffer> <leader>so2 \mathrm{SO}_{2}
        inoremap <buffer> <leader>so3 \mathrm{SO}_{3}
        inoremap <buffer> <leader>so. \mathrm{SO}_{}<esc>i

        inoremap <buffer> <localleader>so \mathrm{SO}()<esc>i

        inoremap <buffer> <localleader>son \mathrm{SO}(n,)<esc>i
        inoremap <buffer> <localleader>som \mathrm{SO}(m,)<esc>i
        inoremap <buffer> <localleader>sod \mathrm{SO}(d,)<esc>i
        inoremap <buffer> <localleader>sok \mathrm{SO}(k,)<esc>i
        inoremap <buffer> <localleader>so2 \mathrm{SO}(2,)<esc>i
        inoremap <buffer> <localleader>so3 \mathrm{SO}(3,)<esc>i
        inoremap <buffer> <localleader>so. \mathrm{SO}(,)<esc>F,i

        inoremap <buffer> <localleader>sonr \mathrm{SO}(n,\mathbb{R})
        inoremap <buffer> <localleader>somr \mathrm{SO}(m,\mathbb{R})
        inoremap <buffer> <localleader>sodr \mathrm{SO}(d,\mathbb{R})
        inoremap <buffer> <localleader>sokr \mathrm{SO}(k,\mathbb{R})
        inoremap <buffer> <localleader>so2r \mathrm{SO}(2,\mathbb{R})
        inoremap <buffer> <localleader>so3r \mathrm{SO}(3,\mathbb{R})
        inoremap <buffer> <localleader>so.r \mathrm{SO}(,\mathbb{R})<esc>F,i

        inoremap <buffer> <localleader>sonc \mathrm{SO}(n,\mathbb{C})
        inoremap <buffer> <localleader>somc \mathrm{SO}(m,\mathbb{C})
        inoremap <buffer> <localleader>sodc \mathrm{SO}(d,\mathbb{C})
        inoremap <buffer> <localleader>sokc \mathrm{SO}(k,\mathbb{C})
        inoremap <buffer> <localleader>so2c \mathrm{SO}(2,\mathbb{C})
        inoremap <buffer> <localleader>so3c \mathrm{SO}(3,\mathbb{C})
        inoremap <buffer> <localleader>so.c \mathrm{SO}(,\mathbb{C})<esc>F,i

        "}}}
        " U{{{

        inoremap <buffer> <leader>un \mathrm{U}_{n}
        inoremap <buffer> <leader>um \mathrm{U}_{m}
        inoremap <buffer> <leader>ud \mathrm{U}_{d}
        inoremap <buffer> <leader>uk \mathrm{U}_{k}
        inoremap <buffer> <leader>u2 \mathrm{U}_{2}
        inoremap <buffer> <leader>u3 \mathrm{U}_{3}
        inoremap <buffer> <leader>u. \mathrm{U}_{}<esc>i

        inoremap <buffer> <localleader>u \mathrm{U}()<esc>i

        inoremap <buffer> <localleader>un \mathrm{U}(n)
        inoremap <buffer> <localleader>um \mathrm{U}(m)
        inoremap <buffer> <localleader>ud \mathrm{U}(d)
        inoremap <buffer> <localleader>uk \mathrm{U}(k)
        inoremap <buffer> <localleader>u2 \mathrm{U}(2)
        inoremap <buffer> <localleader>u3 \mathrm{U}(3)
        inoremap <buffer> <localleader>u. \mathrm{U}()<esc>i

        inoremap <buffer> <localleader>unc \mathrm{U}(n,\mathbb{C})
        inoremap <buffer> <localleader>umc \mathrm{U}(m,\mathbb{C})
        inoremap <buffer> <localleader>udc \mathrm{U}(d,\mathbb{C})
        inoremap <buffer> <localleader>ukc \mathrm{U}(k,\mathbb{C})
        inoremap <buffer> <localleader>u2c \mathrm{U}(2,\mathbb{C})
        inoremap <buffer> <localleader>u3c \mathrm{U}(3,\mathbb{C})
        inoremap <buffer> <localleader>u.c \mathrm{U}(,\mathbb{C})<esc>F,i

        "}}}
        " SU{{{

        inoremap <buffer> <leader>su \mathrm{SU}
        inoremap <buffer> <leader>sun \mathrm{SU}_{n}
        inoremap <buffer> <leader>sum \mathrm{SU}_{m}
        inoremap <buffer> <leader>sud \mathrm{SU}_{d}
        inoremap <buffer> <leader>suk \mathrm{SU}_{k}
        inoremap <buffer> <leader>su2 \mathrm{SU}_{2}
        inoremap <buffer> <leader>su3 \mathrm{SU}_{3}
        inoremap <buffer> <leader>su. \mathrm{SU}_{}<esc>i

        inoremap <buffer> <localleader>su \mathrm{SU}()<esc>i

        inoremap <buffer> <localleader>sun \mathrm{SU}(n)
        inoremap <buffer> <localleader>sum \mathrm{SU}(m)
        inoremap <buffer> <localleader>sud \mathrm{SU}(d)
        inoremap <buffer> <localleader>suk \mathrm{SU}(k)
        inoremap <buffer> <localleader>su2 \mathrm{SU}(2)
        inoremap <buffer> <localleader>su3 \mathrm{SU}(3)
        inoremap <buffer> <localleader>su. \mathrm{SU}()<esc>i

        inoremap <buffer> <localleader>sunc \mathrm{SU}(n,\mathbb{C})
        inoremap <buffer> <localleader>sumc \mathrm{SU}(m,\mathbb{C})
        inoremap <buffer> <localleader>sudc \mathrm{SU}(d,\mathbb{C})
        inoremap <buffer> <localleader>sukc \mathrm{SU}(k,\mathbb{C})
        inoremap <buffer> <localleader>su2c \mathrm{SU}(2,\mathbb{C})
        inoremap <buffer> <localleader>su3c \mathrm{SU}(3,\mathbb{C})
        inoremap <buffer> <localleader>su.c \mathrm{SU}(,\mathbb{C})<esc>F,i

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
        inoremap <buffer> <leader>m. \mathrm{M}_{}<esc>i

        inoremap <buffer> <localleader>mmn \mathrm{M}_{m \times n}()<esc>i
        inoremap <buffer> <localleader>m.. \mathrm{M}_{}()<esc>F}i
        inoremap <buffer> <localleader>m \mathrm{M}_{}()<esc>F}i

        inoremap <buffer> <localleader>mn \mathrm{M}_{n}()<esc>i
        inoremap <buffer> <localleader>mm \mathrm{M}_{m}()<esc>i
        inoremap <buffer> <localleader>md \mathrm{M}_{d}()<esc>i
        inoremap <buffer> <localleader>m2 \mathrm{M}_{2}()<esc>i
        inoremap <buffer> <localleader>m3 \mathrm{M}_{3}()<esc>i
        inoremap <buffer> <localleader>m. \mathrm{M}_{}()<esc>F}i

        inoremap <buffer> <localleader>mmnz \mathrm{M}_{m \times n}(\mathbb{Z})
        inoremap <buffer> <localleader>m..z \mathrm{M}_{}(\mathbb{Z})<esc>F};i
        inoremap <buffer> <localleader>mnz \mathrm{M}_{n}(\mathbb{Z})
        inoremap <buffer> <localleader>mmz \mathrm{M}_{m}(\mathbb{Z})
        inoremap <buffer> <localleader>mdz \mathrm{M}_{d}(\mathbb{Z})
        inoremap <buffer> <localleader>m2z \mathrm{M}_{2}(\mathbb{Z})
        inoremap <buffer> <localleader>m3z \mathrm{M}_{3}(\mathbb{Z})
        inoremap <buffer> <localleader>m.z \mathrm{M}_{}(\mathbb{Z})<esc>F};i

        inoremap <buffer> <localleader>mmnq \mathrm{M}_{m \times n}(\mathbb{Q})
        inoremap <buffer> <localleader>m..q \mathrm{M}_{}(\mathbb{Q})<esc>F};i
        inoremap <buffer> <localleader>mnq \mathrm{M}_{n}(\mathbb{Q})
        inoremap <buffer> <localleader>mmq \mathrm{M}_{m}(\mathbb{Q})
        inoremap <buffer> <localleader>mdq \mathrm{M}_{d}(\mathbb{Q})
        inoremap <buffer> <localleader>m2q \mathrm{M}_{2}(\mathbb{Q})
        inoremap <buffer> <localleader>m3q \mathrm{M}_{3}(\mathbb{Q})
        inoremap <buffer> <localleader>m.q \mathrm{M}_{}(\mathbb{Q})<esc>F};i

        inoremap <buffer> <localleader>mmnr \mathrm{M}_{m \times n}(\mathbb{R})
        inoremap <buffer> <localleader>m..r \mathrm{M}_{}(\mathbb{R})<esc>F};i
        inoremap <buffer> <localleader>mnr \mathrm{M}_{n}(\mathbb{R})
        inoremap <buffer> <localleader>mmr \mathrm{M}_{m}(\mathbb{R})
        inoremap <buffer> <localleader>mdr \mathrm{M}_{d}(\mathbb{R})
        inoremap <buffer> <localleader>m2r \mathrm{M}_{2}(\mathbb{R})
        inoremap <buffer> <localleader>m3r \mathrm{M}_{3}(\mathbb{R})
        inoremap <buffer> <localleader>m.r \mathrm{M}_{}(\mathbb{R})<esc>F};i

        inoremap <buffer> <localleader>mmnc \mathrm{M}_{m \times n}(\mathbb{C})
        inoremap <buffer> <localleader>m..c \mathrm{M}_{}(\mathbb{C})<esc>F};i
        inoremap <buffer> <localleader>mnc \mathrm{M}_{n}(\mathbb{C})
        inoremap <buffer> <localleader>mmc \mathrm{M}_{m}(\mathbb{C})
        inoremap <buffer> <localleader>mdc \mathrm{M}_{d}(\mathbb{C})
        inoremap <buffer> <localleader>m2c \mathrm{M}_{2}(\mathbb{C})
        inoremap <buffer> <localleader>m3c \mathrm{M}_{3}(\mathbb{C})
        inoremap <buffer> <localleader>m.c \mathrm{M}_{}(\mathbb{C})<esc>F};i

        inoremap <buffer> <localleader>mmnzp \mathrm{M}_{m \times n}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>m..zp \mathrm{M}_{}(\mathbb{Z}_p)<esc>F};i
        inoremap <buffer> <localleader>mnzp \mathrm{M}_{n}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>mmzp \mathrm{M}_{m}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>mdzp \mathrm{M}_{d}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>m2zp \mathrm{M}_{2}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>m3zp \mathrm{M}_{3}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>m.zp \mathrm{M}_{}(\mathbb{Z}_p)<esc>F};i

        inoremap <buffer> <localleader>mmnqp \mathrm{M}_{m \times n}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>m..qp \mathrm{M}_{}(\mathbb{Q}_p)<esc>F};i
        inoremap <buffer> <localleader>mnqp \mathrm{M}_{n}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>mmqp \mathrm{M}_{m}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>mdqp \mathrm{M}_{d}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>m2qp \mathrm{M}_{2}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>m3qp \mathrm{M}_{3}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>m.qp \mathrm{M}_{}(\mathbb{Q}_p)<esc>F};i

        inoremap <buffer> <localleader>mmnk \mathrm{M}_{m \times n}(\mathbb{K})
        inoremap <buffer> <localleader>m..k \mathrm{M}_{}(\mathbb{K})<esc>F};i
        inoremap <buffer> <localleader>mnk \mathrm{M}_{n}(\mathbb{K})
        inoremap <buffer> <localleader>mmk \mathrm{M}_{m}(\mathbb{K})
        inoremap <buffer> <localleader>mdk \mathrm{M}_{d}(\mathbb{K})
        inoremap <buffer> <localleader>m2k \mathrm{M}_{2}(\mathbb{K})
        inoremap <buffer> <localleader>m3k \mathrm{M}_{3}(\mathbb{K})
        inoremap <buffer> <localleader>m.k \mathrm{M}_{}(\mathbb{K})<esc>F};i

        inoremap <buffer> <localleader>mmna \mathrm{M}_{m \times n}(\mathbb{A})
        inoremap <buffer> <localleader>m..a \mathrm{M}_{}(\mathbb{A})<esc>F};i
        inoremap <buffer> <localleader>mna \mathrm{M}_{n}(\mathbb{A})
        inoremap <buffer> <localleader>mma \mathrm{M}_{m}(\mathbb{A})
        inoremap <buffer> <localleader>mda \mathrm{M}_{d}(\mathbb{A})
        inoremap <buffer> <localleader>m2a \mathrm{M}_{2}(\mathbb{A})
        inoremap <buffer> <localleader>m3a \mathrm{M}_{3}(\mathbb{A})
        inoremap <buffer> <localleader>m.a \mathrm{M}_{}(\mathbb{A})<esc>F};i

        inoremap <buffer> <localleader>mmnok \mathrm{M}_{m \times n}(\mathcal{O}_K)
        inoremap <buffer> <localleader>m..ok \mathrm{M}_{}(\mathcal{O}_K)<esc>F};i
        inoremap <buffer> <localleader>mnok \mathrm{M}_{n}(\mathcal{O}_K)
        inoremap <buffer> <localleader>mmok \mathrm{M}_{m}(\mathcal{O}_K)
        inoremap <buffer> <localleader>mdok \mathrm{M}_{d}(\mathcal{O}_K)
        inoremap <buffer> <localleader>m2ok \mathrm{M}_{2}(\mathcal{O}_K)
        inoremap <buffer> <localleader>m3ok \mathrm{M}_{3}(\mathcal{O}_K)
        inoremap <buffer> <localleader>m.ok \mathrm{M}_{}(\mathcal{O}_K)<esc>F};i

        inoremap <buffer> <localleader>mmnjk \mathrm{M}_{m \times n}(K)
        inoremap <buffer> <localleader>m..jk \mathrm{M}_{}(K)<esc>F}i
        inoremap <buffer> <localleader>mnjk \mathrm{M}_{n}(K)
        inoremap <buffer> <localleader>mmjk \mathrm{M}_{m}(K)
        inoremap <buffer> <localleader>mdjk \mathrm{M}_{d}(K)
        inoremap <buffer> <localleader>m2jk \mathrm{M}_{2}(K)
        inoremap <buffer> <localleader>m3jk \mathrm{M}_{3}(K)
        inoremap <buffer> <localleader>m.jk \mathrm{M}_{}(K)<esc>F};i

        inoremap <buffer> <localleader>mmnks \mathrm{M}_{m \times n}(K_S)
        inoremap <buffer> <localleader>m..ks \mathrm{M}_{}(K_S)<esc>F}i
        inoremap <buffer> <localleader>mnks \mathrm{M}_{n}(K_S)
        inoremap <buffer> <localleader>mmks \mathrm{M}_{m}(K_S)
        inoremap <buffer> <localleader>mdks \mathrm{M}_{d}(K_S)
        inoremap <buffer> <localleader>m2ks \mathrm{M}_{2}(K_S)
        inoremap <buffer> <localleader>m3ks \mathrm{M}_{3}(K_S)
        inoremap <buffer> <localleader>m.ks \mathrm{M}_{}(K_S)<esc>F}i

        "}}}
        " GL{{{

        inoremap <buffer> <leader>gl \mathrm{GL}
        inoremap <buffer> <leader>gln \mathrm{GL}_{n}
        inoremap <buffer> <leader>glm \mathrm{GL}_{m}
        inoremap <buffer> <leader>gld \mathrm{GL}_{d}
        inoremap <buffer> <leader>gl2 \mathrm{GL}_{2}
        inoremap <buffer> <leader>gl3 \mathrm{GL}_{3}
        inoremap <buffer> <leader>gl. \mathrm{GL}_{}<esc>i

        inoremap <buffer> <localleader>gl \mathrm{GL}_{}()<esc>F}i

        inoremap <buffer> <localleader>gln \mathrm{GL}_{n}()<esc>i
        inoremap <buffer> <localleader>glm \mathrm{GL}_{m}()<esc>i
        inoremap <buffer> <localleader>gld \mathrm{GL}_{d}()<esc>i
        inoremap <buffer> <localleader>gl2 \mathrm{GL}_{2}()<esc>i
        inoremap <buffer> <localleader>gl3 \mathrm{GL}_{3}()<esc>i
        inoremap <buffer> <localleader>gl. \mathrm{GL}_{}()<esc>F}i
        inoremap <buffer> <localleader>glnp \mathrm{GL}_{n}^+()<esc>i
        inoremap <buffer> <localleader>glmp \mathrm{GL}_{m}^+()<esc>i
        inoremap <buffer> <localleader>gldp \mathrm{GL}_{d}^+()<esc>i
        inoremap <buffer> <localleader>gl2p \mathrm{GL}_{2}^+()<esc>i
        inoremap <buffer> <localleader>gl3p \mathrm{GL}_{3}^+()<esc>i
        inoremap <buffer> <localleader>gl.p \mathrm{GL}_{}^+()<esc>F}i

        inoremap <buffer> <localleader>glnz \mathrm{GL}_{n}(\mathbb{Z})
        inoremap <buffer> <localleader>glmz \mathrm{GL}_{m}(\mathbb{Z})
        inoremap <buffer> <localleader>gldz \mathrm{GL}_{d}(\mathbb{Z})
        inoremap <buffer> <localleader>gl2z \mathrm{GL}_{2}(\mathbb{Z})
        inoremap <buffer> <localleader>gl3z \mathrm{GL}_{3}(\mathbb{Z})
        inoremap <buffer> <localleader>gl.z \mathrm{GL}_{}(\mathbb{Z})<esc>F};i
        inoremap <buffer> <localleader>glnpz \mathrm{GL}_{n}^+(\mathbb{Z})
        inoremap <buffer> <localleader>glmpz \mathrm{GL}_{m}^+(\mathbb{Z})
        inoremap <buffer> <localleader>gldpz \mathrm{GL}_{d}^+(\mathbb{Z})
        inoremap <buffer> <localleader>gl2pz \mathrm{GL}_{2}^+(\mathbb{Z})
        inoremap <buffer> <localleader>gl3pz \mathrm{GL}_{3}^+(\mathbb{Z})
        inoremap <buffer> <localleader>gl.pz \mathrm{GL}_{}^+(\mathbb{Z})<esc>F};i

        inoremap <buffer> <localleader>glnq \mathrm{GL}_{n}(\mathbb{Q})
        inoremap <buffer> <localleader>glmq \mathrm{GL}_{m}(\mathbb{Q})
        inoremap <buffer> <localleader>gldq \mathrm{GL}_{d}(\mathbb{Q})
        inoremap <buffer> <localleader>gl2q \mathrm{GL}_{2}(\mathbb{Q})
        inoremap <buffer> <localleader>gl3q \mathrm{GL}_{3}(\mathbb{Q})
        inoremap <buffer> <localleader>gl.q \mathrm{GL}_{}(\mathbb{Q})<esc>F};i
        inoremap <buffer> <localleader>glnpq \mathrm{GL}_{n}^+(\mathbb{Q})
        inoremap <buffer> <localleader>glmpq \mathrm{GL}_{m}^+(\mathbb{Q})
        inoremap <buffer> <localleader>gldpq \mathrm{GL}_{d}^+(\mathbb{Q})
        inoremap <buffer> <localleader>gl2pq \mathrm{GL}_{2}^+(\mathbb{Q})
        inoremap <buffer> <localleader>gl3pq \mathrm{GL}_{3}^+(\mathbb{Q})
        inoremap <buffer> <localleader>gl.pq \mathrm{GL}_{}^+(\mathbb{Q})<esc>F};i

        inoremap <buffer> <localleader>glnr \mathrm{GL}_{n}(\mathbb{R})
        inoremap <buffer> <localleader>glmr \mathrm{GL}_{m}(\mathbb{R})
        inoremap <buffer> <localleader>gldr \mathrm{GL}_{d}(\mathbb{R})
        inoremap <buffer> <localleader>gl2r \mathrm{GL}_{2}(\mathbb{R})
        inoremap <buffer> <localleader>gl3r \mathrm{GL}_{3}(\mathbb{R})
        inoremap <buffer> <localleader>gl.r \mathrm{GL}_{}(\mathbb{R})<esc>F};i
        inoremap <buffer> <localleader>glnpr \mathrm{GL}_{n}^+(\mathbb{R})
        inoremap <buffer> <localleader>glmpr \mathrm{GL}_{m}^+(\mathbb{R})
        inoremap <buffer> <localleader>gldpr \mathrm{GL}_{d}^+(\mathbb{R})
        inoremap <buffer> <localleader>gl2pr \mathrm{GL}_{2}^+(\mathbb{R})
        inoremap <buffer> <localleader>gl3pr \mathrm{GL}_{3}^+(\mathbb{R})
        inoremap <buffer> <localleader>gl.pr \mathrm{GL}_{}^+(\mathbb{R})<esc>F};i

        inoremap <buffer> <localleader>glnc \mathrm{GL}_{n}(\mathbb{C})
        inoremap <buffer> <localleader>glmc \mathrm{GL}_{m}(\mathbb{C})
        inoremap <buffer> <localleader>gldc \mathrm{GL}_{d}(\mathbb{C})
        inoremap <buffer> <localleader>gl2c \mathrm{GL}_{2}(\mathbb{C})
        inoremap <buffer> <localleader>gl3c \mathrm{GL}_{3}(\mathbb{C})
        inoremap <buffer> <localleader>gl.c \mathrm{GL}_{}(\mathbb{C})<esc>F};i

        inoremap <buffer> <localleader>glnzp \mathrm{GL}_{n}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>glmzp \mathrm{GL}_{m}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>gldzp \mathrm{GL}_{d}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>gl2zp \mathrm{GL}_{2}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>gl3zp \mathrm{GL}_{3}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>gl.zp \mathrm{GL}_{}(\mathbb{Z}_p)<esc>F};i

        inoremap <buffer> <localleader>glnqp \mathrm{GL}_{n}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>glmqp \mathrm{GL}_{m}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>gldqp \mathrm{GL}_{d}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>gl2qp \mathrm{GL}_{2}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>gl3qp \mathrm{GL}_{3}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>gl.qp \mathrm{GL}_{}(\mathbb{Q}_p)<esc>F};i

        inoremap <buffer> <localleader>glnk \mathrm{GL}_{n}(\mathbb{K})
        inoremap <buffer> <localleader>glmk \mathrm{GL}_{m}(\mathbb{K})
        inoremap <buffer> <localleader>gldk \mathrm{GL}_{d}(\mathbb{K})
        inoremap <buffer> <localleader>gl2k \mathrm{GL}_{2}(\mathbb{K})
        inoremap <buffer> <localleader>gl3k \mathrm{GL}_{3}(\mathbb{K})
        inoremap <buffer> <localleader>gl.k \mathrm{GL}_{}(\mathbb{K})<esc>F};i

        inoremap <buffer> <localleader>glna \mathrm{GL}_{n}(\mathbb{A})
        inoremap <buffer> <localleader>glma \mathrm{GL}_{m}(\mathbb{A})
        inoremap <buffer> <localleader>glda \mathrm{GL}_{d}(\mathbb{A})
        inoremap <buffer> <localleader>gl2a \mathrm{GL}_{2}(\mathbb{A})
        inoremap <buffer> <localleader>gl3a \mathrm{GL}_{3}(\mathbb{A})
        inoremap <buffer> <localleader>gl.a \mathrm{GL}_{}(\mathbb{A})<esc>F};i

        inoremap <buffer> <localleader>glnok \mathrm{GL}_{n}(\mathcal{O}_K)
        inoremap <buffer> <localleader>glmok \mathrm{GL}_{m}(\mathcal{O}_K)
        inoremap <buffer> <localleader>gldok \mathrm{GL}_{d}(\mathcal{O}_K)
        inoremap <buffer> <localleader>gl2ok \mathrm{GL}_{2}(\mathcal{O}_K)
        inoremap <buffer> <localleader>gl3ok \mathrm{GL}_{3}(\mathcal{O}_K)
        inoremap <buffer> <localleader>gl.ok \mathrm{GL}_{}(\mathcal{O}_K)<esc>F};i

        inoremap <buffer> <localleader>glnjk \mathrm{GL}_{n}(K)
        inoremap <buffer> <localleader>glmjk \mathrm{GL}_{m}(K)
        inoremap <buffer> <localleader>gldjk \mathrm{GL}_{d}(K)
        inoremap <buffer> <localleader>gl2jk \mathrm{GL}_{2}(K)
        inoremap <buffer> <localleader>gl3jk \mathrm{GL}_{3}(K)
        inoremap <buffer> <localleader>gl.jk \mathrm{GL}_{}(K)<esc>F}i

        inoremap <buffer> <localleader>glnks \mathrm{GL}_{n}(K_S)
        inoremap <buffer> <localleader>glmks \mathrm{GL}_{m}(K_S)
        inoremap <buffer> <localleader>gldks \mathrm{GL}_{d}(K_S)
        inoremap <buffer> <localleader>gl2ks \mathrm{GL}_{2}(K_S)
        inoremap <buffer> <localleader>gl3ks \mathrm{GL}_{3}(K_S)
        inoremap <buffer> <localleader>gl.ks \mathrm{GL}_{}(K_S)<esc>F}i

        "}}}
        " SL{{{

        inoremap <buffer> <leader>sl \mathrm{SL}
        inoremap <buffer> <leader>sln \mathrm{SL}_{n}
        inoremap <buffer> <leader>slm \mathrm{SL}_{m}
        inoremap <buffer> <leader>sld \mathrm{SL}_{d}
        inoremap <buffer> <leader>slk \mathrm{SL}_{k}
        inoremap <buffer> <leader>sl2 \mathrm{SL}_{2}
        inoremap <buffer> <leader>sl3 \mathrm{SL}_{3}
        inoremap <buffer> <leader>sl. \mathrm{SL}_{}<esc>i

        inoremap <buffer> <localleader>sl \mathrm{SL}_{}()<esc>F}i

        inoremap <buffer> <localleader>sln \mathrm{SL}_{n}()<esc>i
        inoremap <buffer> <localleader>slm \mathrm{SL}_{m}()<esc>i
        inoremap <buffer> <localleader>sld \mathrm{SL}_{d}()<esc>i
        inoremap <buffer> <localleader>slk \mathrm{SL}_{k}()<esc>i
        inoremap <buffer> <localleader>sl2 \mathrm{SL}_{2}()<esc>i
        inoremap <buffer> <localleader>sl3 \mathrm{SL}_{3}()<esc>i
        inoremap <buffer> <localleader>sl. \mathrm{SL}_{}()<esc>F}i

        inoremap <buffer> <localleader>slnz \mathrm{SL}_{n}(\mathbb{Z})
        inoremap <buffer> <localleader>slmz \mathrm{SL}_{m}(\mathbb{Z})
        inoremap <buffer> <localleader>sldz \mathrm{SL}_{d}(\mathbb{Z})
        inoremap <buffer> <localleader>slkz \mathrm{SL}_{k}(\mathbb{Z})
        inoremap <buffer> <localleader>sl2z \mathrm{SL}_{2}(\mathbb{Z})
        inoremap <buffer> <localleader>sl3z \mathrm{SL}_{3}(\mathbb{Z})
        inoremap <buffer> <localleader>sl.z \mathrm{SL}_{}(\mathbb{Z})<esc>F};i

        inoremap <buffer> <localleader>slnq \mathrm{SL}_{n}(\mathbb{Q})
        inoremap <buffer> <localleader>slmq \mathrm{SL}_{m}(\mathbb{Q})
        inoremap <buffer> <localleader>sldq \mathrm{SL}_{d}(\mathbb{Q})
        inoremap <buffer> <localleader>slkq \mathrm{SL}_{k}(\mathbb{Q})
        inoremap <buffer> <localleader>sl2q \mathrm{SL}_{2}(\mathbb{Q})
        inoremap <buffer> <localleader>sl3q \mathrm{SL}_{3}(\mathbb{Q})
        inoremap <buffer> <localleader>sl.q \mathrm{SL}_{}(\mathbb{Q})<esc>F};i

        inoremap <buffer> <localleader>slnr \mathrm{SL}_{n}(\mathbb{R})
        inoremap <buffer> <localleader>slmr \mathrm{SL}_{m}(\mathbb{R})
        inoremap <buffer> <localleader>sldr \mathrm{SL}_{d}(\mathbb{R})
        inoremap <buffer> <localleader>slkr \mathrm{SL}_{k}(\mathbb{R})
        inoremap <buffer> <localleader>sl2r \mathrm{SL}_{2}(\mathbb{R})
        inoremap <buffer> <localleader>sl3r \mathrm{SL}_{3}(\mathbb{R})
        inoremap <buffer> <localleader>sl.r \mathrm{SL}_{}(\mathbb{R})<esc>F};i

        inoremap <buffer> <localleader>slnc \mathrm{SL}_{n}(\mathbb{C})
        inoremap <buffer> <localleader>slmc \mathrm{SL}_{m}(\mathbb{C})
        inoremap <buffer> <localleader>sldc \mathrm{SL}_{d}(\mathbb{C})
        inoremap <buffer> <localleader>slkc \mathrm{SL}_{k}(\mathbb{C})
        inoremap <buffer> <localleader>sl2c \mathrm{SL}_{2}(\mathbb{C})
        inoremap <buffer> <localleader>sl3c \mathrm{SL}_{3}(\mathbb{C})
        inoremap <buffer> <localleader>sl.c \mathrm{SL}_{}(\mathbb{C})<esc>F};i

        inoremap <buffer> <localleader>slnzp \mathrm{SL}_{n}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>slmzp \mathrm{SL}_{m}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>sldzp \mathrm{SL}_{d}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>slkzp \mathrm{SL}_{k}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>sl2zp \mathrm{SL}_{2}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>sl3zp \mathrm{SL}_{3}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>sl.zp \mathrm{SL}_{}(\mathbb{Z}_p)<esc>F};i

        inoremap <buffer> <localleader>slnqp \mathrm{SL}_{n}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>slmqp \mathrm{SL}_{m}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>sldqp \mathrm{SL}_{d}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>slkqp \mathrm{SL}_{k}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>sl2qp \mathrm{SL}_{2}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>sl3qp \mathrm{SL}_{3}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>sl.qp \mathrm{SL}_{}(\mathbb{Q}_p)<esc>F};i

        inoremap <buffer> <localleader>slnk \mathrm{SL}_{n}(\mathbb{K})
        inoremap <buffer> <localleader>slmk \mathrm{SL}_{m}(\mathbb{K})
        inoremap <buffer> <localleader>sldk \mathrm{SL}_{d}(\mathbb{K})
        inoremap <buffer> <localleader>slkk \mathrm{SL}_{k}(\mathbb{K})
        inoremap <buffer> <localleader>sl2k \mathrm{SL}_{2}(\mathbb{K})
        inoremap <buffer> <localleader>sl3k \mathrm{SL}_{3}(\mathbb{K})
        inoremap <buffer> <localleader>sl.k \mathrm{SL}_{}(\mathbb{K})<esc>F};i

        inoremap <buffer> <localleader>slna \mathrm{SL}_{n}(\mathbb{A})
        inoremap <buffer> <localleader>slma \mathrm{SL}_{m}(\mathbb{A})
        inoremap <buffer> <localleader>slda \mathrm{SL}_{d}(\mathbb{A})
        inoremap <buffer> <localleader>slka \mathrm{SL}_{k}(\mathbb{A})
        inoremap <buffer> <localleader>sl2a \mathrm{SL}_{2}(\mathbb{A})
        inoremap <buffer> <localleader>sl3a \mathrm{SL}_{3}(\mathbb{A})
        inoremap <buffer> <localleader>sl.a \mathrm{SL}_{}(\mathbb{A})<esc>F};i

        inoremap <buffer> <localleader>slnok \mathrm{SL}_{n}(\mathcal{O}_K)
        inoremap <buffer> <localleader>slmok \mathrm{SL}_{m}(\mathcal{O}_K)
        inoremap <buffer> <localleader>sldok \mathrm{SL}_{d}(\mathcal{O}_K)
        inoremap <buffer> <localleader>slkok \mathrm{SL}_{k}(\mathcal{O}_K)
        inoremap <buffer> <localleader>sl2ok \mathrm{SL}_{2}(\mathcal{O}_K)
        inoremap <buffer> <localleader>sl3ok \mathrm{SL}_{3}(\mathcal{O}_K)
        inoremap <buffer> <localleader>sl.ok \mathrm{SL}_{}(\mathcal{O}_K)<esc>F};i

        inoremap <buffer> <localleader>slnjk \mathrm{SL}_{n}(K)
        inoremap <buffer> <localleader>slmjk \mathrm{SL}_{m}(K)
        inoremap <buffer> <localleader>sldjk \mathrm{SL}_{d}(K)
        inoremap <buffer> <localleader>slkjk \mathrm{SL}_{k}(K)
        inoremap <buffer> <localleader>sl2jk \mathrm{SL}_{2}(K)
        inoremap <buffer> <localleader>sl3jk \mathrm{SL}_{3}(K)
        inoremap <buffer> <localleader>sl.jk \mathrm{SL}_{}(K)<esc>F}i

        inoremap <buffer> <localleader>slnks \mathrm{SL}_{n}(K_S)
        inoremap <buffer> <localleader>slmks \mathrm{SL}_{m}(K_S)
        inoremap <buffer> <localleader>sldks \mathrm{SL}_{d}(K_S)
        inoremap <buffer> <localleader>slkks \mathrm{SL}_{k}(K_S)
        inoremap <buffer> <localleader>sl2ks \mathrm{SL}_{2}(K_S)
        inoremap <buffer> <localleader>sl3ks \mathrm{SL}_{3}(K_S)
        inoremap <buffer> <localleader>sl.ks \mathrm{SL}_{}(K_S)<esc>F}i

        inoremap <buffer> <localleader>slnrz \mathrm{SL}_{n}(\mathbb{R})/\mathrm{SL}_{n}(\mathbb{Z})
        inoremap <buffer> <localleader>slmrz \mathrm{SL}_{m}(\mathbb{R})/\mathrm{SL}_{m}(\mathbb{Z})
        inoremap <buffer> <localleader>sldrz \mathrm{SL}_{d}(\mathbb{R})/\mathrm{SL}_{d}(\mathbb{Z})
        inoremap <buffer> <localleader>slkrz \mathrm{SL}_{k}(\mathbb{R})/\mathrm{SL}_{k}(\mathbb{Z})
        inoremap <buffer> <localleader>sl2rz \mathrm{SL}_{2}(\mathbb{R})/\mathrm{SL}_{2}(\mathbb{Z})
        inoremap <buffer> <localleader>sl3rz \mathrm{SL}_{3}(\mathbb{R})/\mathrm{SL}_{3}(\mathbb{Z})
        inoremap <buffer> <localleader>sl.rz \mathrm{SL}_{}(\mathbb{R})/\mathrm{SL}_{}(\mathbb{Z})<esc>F};i

        inoremap <buffer> <localleader>slnzr \mathrm{SL}_{n}(\mathbb{Z}) \backslash \mathrm{SL}_{n}(\mathbb{R})
        inoremap <buffer> <localleader>slmzr \mathrm{SL}_{m}(\mathbb{Z}) \backslash \mathrm{SL}_{m}(\mathbb{R})
        inoremap <buffer> <localleader>sldzr \mathrm{SL}_{d}(\mathbb{Z}) \backslash \mathrm{SL}_{d}(\mathbb{R})
        inoremap <buffer> <localleader>slkzr \mathrm{SL}_{k}(\mathbb{Z}) \backslash \mathrm{SL}_{k}(\mathbb{R})
        inoremap <buffer> <localleader>sl2zr \mathrm{SL}_{2}(\mathbb{Z}) \backslash \mathrm{SL}_{2}(\mathbb{R})
        inoremap <buffer> <localleader>sl3zr \mathrm{SL}_{3}(\mathbb{Z}) \backslash \mathrm{SL}_{3}(\mathbb{R})
        inoremap <buffer> <localleader>sl.zr \mathrm{SL}_{}(\mathbb{Z}) \backslash \mathrm{SL}_{}(\mathbb{R})<esc>F};i

        inoremap <buffer> <localleader>slnksok \mathrm{SL}_{n}(K_S)/\mathrm{SL}_{n}(\mathcal{O}_K)
        inoremap <buffer> <localleader>slmksok \mathrm{SL}_{m}(K_S)/\mathrm{SL}_{m}(\mathcal{O}_K)
        inoremap <buffer> <localleader>sldksok \mathrm{SL}_{d}(K_S)/\mathrm{SL}_{d}(\mathcal{O}_K)
        inoremap <buffer> <localleader>slkksok \mathrm{SL}_{k}(K_S)/\mathrm{SL}_{k}(\mathcal{O}_K)
        inoremap <buffer> <localleader>sl2ksok \mathrm{SL}_{2}(K_S)/\mathrm{SL}_{2}(\mathcal{O}_K)
        inoremap <buffer> <localleader>sl3ksok \mathrm{SL}_{3}(K_S)/\mathrm{SL}_{3}(\mathcal{O}_K)
        inoremap <buffer> <localleader>sl.ksok \mathrm{SL}_{}(K_S)/\mathrm{SL}_{}(\mathcal{O}_K)<esc>F};i

        inoremap <buffer> <localleader>slnokks \mathrm{SL}_{n}(\mathcal{O}_K) \backslash \mathrm{SL}_{n}(K_S)
        inoremap <buffer> <localleader>slmokks \mathrm{SL}_{m}(\mathcal{O}_K) \backslash \mathrm{SL}_{m}(K_S)
        inoremap <buffer> <localleader>sldokks \mathrm{SL}_{d}(\mathcal{O}_K) \backslash \mathrm{SL}_{d}(K_S)
        inoremap <buffer> <localleader>slkokks \mathrm{SL}_{k}(\mathcal{O}_K) \backslash \mathrm{SL}_{k}(K_S)
        inoremap <buffer> <localleader>sl2okks \mathrm{SL}_{2}(\mathcal{O}_K) \backslash \mathrm{SL}_{2}(K_S)
        inoremap <buffer> <localleader>sl3okks \mathrm{SL}_{3}(\mathcal{O}_K) \backslash \mathrm{SL}_{3}(K_S)
        inoremap <buffer> <localleader>sl.okks \mathrm{SL}_{}(\mathcal{O}_K) \backslash \mathrm{SL}_{}(K_S)<esc>F};i

        "}}}
        " PSL{{{

        inoremap <buffer> <leader>psl \mathrm{PSL}
        inoremap <buffer> <leader>psln \mathrm{PSL}_{n}
        inoremap <buffer> <leader>pslm \mathrm{PSL}_{m}
        inoremap <buffer> <leader>psld \mathrm{PSL}_{d}
        inoremap <buffer> <leader>pslk \mathrm{PSL}_{k}
        inoremap <buffer> <leader>psl2 \mathrm{PSL}_{2}
        inoremap <buffer> <leader>psl3 \mathrm{PSL}_{3}
        inoremap <buffer> <leader>psl. \mathrm{PSL}_{}<esc>i

        inoremap <buffer> <localleader>psl \mathrm{PSL}_{}()<esc>F}i

        inoremap <buffer> <localleader>psln \mathrm{PSL}_{n}()<esc>i
        inoremap <buffer> <localleader>pslm \mathrm{PSL}_{m}()<esc>i
        inoremap <buffer> <localleader>psld \mathrm{PSL}_{d}()<esc>i
        inoremap <buffer> <localleader>pslk \mathrm{PSL}_{k}()<esc>i
        inoremap <buffer> <localleader>psl2 \mathrm{PSL}_{2}()<esc>i
        inoremap <buffer> <localleader>psl3 \mathrm{PSL}_{3}()<esc>i
        inoremap <buffer> <localleader>psl. \mathrm{PSL}_{}()<esc>F}i

        inoremap <buffer> <localleader>pslnr \mathrm{PSL}_{n}(\mathbb{R})
        inoremap <buffer> <localleader>pslmr \mathrm{PSL}_{m}(\mathbb{R})
        inoremap <buffer> <localleader>pslmd \mathrm{PSL}_{m}(\mathbb{d})
        inoremap <buffer> <localleader>psl2r \mathrm{PSL}_{2}(\mathbb{R})
        inoremap <buffer> <localleader>psl3r \mathrm{PSL}_{3}(\mathbb{R})
        inoremap <buffer> <localleader>psl.r \mathrm{PSL}_{}(\mathbb{R})<esc>F};i

        "}}}
        " O{{{

        inoremap <buffer> <leader>on \mathrm{O}_{n}
        inoremap <buffer> <leader>om \mathrm{O}_{m}
        inoremap <buffer> <leader>od \mathrm{O}_{d}
        inoremap <buffer> <leader>o2 \mathrm{O}_{2}
        inoremap <buffer> <leader>o3 \mathrm{O}_{3}
        inoremap <buffer> <leader>o. \mathrm{O}_{}<esc>i

        inoremap <buffer> <localleader>o \mathrm{O}_{}()<esc>F}i

        inoremap <buffer> <localleader>on \mathrm{O}_{n}()<esc>i
        inoremap <buffer> <localleader>om \mathrm{O}_{m}()<esc>i
        inoremap <buffer> <localleader>od \mathrm{O}_{d}()<esc>i
        inoremap <buffer> <localleader>o2 \mathrm{O}_{2}()<esc>i
        inoremap <buffer> <localleader>o3 \mathrm{O}_{3}()<esc>i
        inoremap <buffer> <localleader>o. \mathrm{O}_{}()<esc>F}i

        inoremap <buffer> <localleader>onr \mathrm{O}_{n}(\mathbb{R})
        inoremap <buffer> <localleader>omr \mathrm{O}_{m}(\mathbb{R})
        inoremap <buffer> <localleader>odr \mathrm{O}_{d}(\mathbb{R})
        inoremap <buffer> <localleader>okr \mathrm{O}_{k}(\mathbb{R})
        inoremap <buffer> <localleader>o2r \mathrm{O}_{2}(\mathbb{R})
        inoremap <buffer> <localleader>o3r \mathrm{O}_{3}(\mathbb{R})
        inoremap <buffer> <localleader>o.r \mathrm{O}_{}(\mathbb{R})<esc>F};i

        inoremap <buffer> <localleader>onc \mathrm{O}_{n}(\mathbb{C})
        inoremap <buffer> <localleader>omc \mathrm{O}_{m}(\mathbb{C})
        inoremap <buffer> <localleader>odc \mathrm{O}_{d}(\mathbb{C})
        inoremap <buffer> <localleader>okc \mathrm{O}_{k}(\mathbb{C})
        inoremap <buffer> <localleader>o2c \mathrm{O}_{2}(\mathbb{C})
        inoremap <buffer> <localleader>o3c \mathrm{O}_{3}(\mathbb{C})
        inoremap <buffer> <localleader>o.c \mathrm{O}_{}(\mathbb{C})<esc>F};i

        "}}}
        " SO{{{

        inoremap <buffer> <leader>so \mathrm{SO}
        inoremap <buffer> <leader>son \mathrm{SO}_{n}
        inoremap <buffer> <leader>som \mathrm{SO}_{m}
        inoremap <buffer> <leader>sod \mathrm{SO}_{d}
        inoremap <buffer> <leader>sok \mathrm{SO}_{k}
        inoremap <buffer> <leader>so2 \mathrm{SO}_{2}
        inoremap <buffer> <leader>so3 \mathrm{SO}_{3}
        inoremap <buffer> <leader>so. \mathrm{SO}_{}<esc>i

        inoremap <buffer> <localleader>so \mathrm{SO}_{}()<esc>F}i

        inoremap <buffer> <localleader>son \mathrm{SO}_{n}()<esc>i
        inoremap <buffer> <localleader>som \mathrm{SO}_{m}()<esc>i
        inoremap <buffer> <localleader>sod \mathrm{SO}_{d}()<esc>i
        inoremap <buffer> <localleader>sok \mathrm{SO}_{k}()<esc>i
        inoremap <buffer> <localleader>so2 \mathrm{SO}_{2}()<esc>i
        inoremap <buffer> <localleader>so3 \mathrm{SO}_{3}()<esc>i
        inoremap <buffer> <localleader>so. \mathrm{SO}_{}()<esc>F}i

        inoremap <buffer> <localleader>sonr \mathrm{SO}_{n}(\mathbb{R})
        inoremap <buffer> <localleader>somr \mathrm{SO}_{m}(\mathbb{R})
        inoremap <buffer> <localleader>sodr \mathrm{SO}_{d}(\mathbb{R})
        inoremap <buffer> <localleader>sokr \mathrm{SO}_{k}(\mathbb{R})
        inoremap <buffer> <localleader>so2r \mathrm{SO}_{2}(\mathbb{R})
        inoremap <buffer> <localleader>so3r \mathrm{SO}_{3}(\mathbb{R})
        inoremap <buffer> <localleader>so.r \mathrm{SO}_{}(\mathbb{R})<esc>F};i

        inoremap <buffer> <localleader>sonc \mathrm{SO}_{n}(\mathbb{C})
        inoremap <buffer> <localleader>somc \mathrm{SO}_{m}(\mathbb{C})
        inoremap <buffer> <localleader>sodc \mathrm{SO}_{d}(\mathbb{C})
        inoremap <buffer> <localleader>sokc \mathrm{SO}_{k}(\mathbb{C})
        inoremap <buffer> <localleader>so2c \mathrm{SO}_{2}(\mathbb{C})
        inoremap <buffer> <localleader>so3c \mathrm{SO}_{3}(\mathbb{C})
        inoremap <buffer> <localleader>so.c \mathrm{SO}_{}(\mathbb{C})<esc>F};i

        "}}}
        " U{{{

        inoremap <buffer> <leader>un \mathrm{U}_{n}
        inoremap <buffer> <leader>um \mathrm{U}_{m}
        inoremap <buffer> <leader>ud \mathrm{U}_{d}
        inoremap <buffer> <leader>uk \mathrm{U}_{k}
        inoremap <buffer> <leader>u2 \mathrm{U}_{2}
        inoremap <buffer> <leader>u3 \mathrm{U}_{3}
        inoremap <buffer> <leader>u. \mathrm{U}_{}<esc>i

        inoremap <buffer> <localleader>u \mathrm{U}_{}()<esc>F}i

        inoremap <buffer> <localleader>unc \mathrm{U}_{n}(\mathbb{C})
        inoremap <buffer> <localleader>umc \mathrm{U}_{m}(\mathbb{C})
        inoremap <buffer> <localleader>udc \mathrm{U}_{d}(\mathbb{C})
        inoremap <buffer> <localleader>ukc \mathrm{U}_{k}(\mathbb{C})
        inoremap <buffer> <localleader>u2c \mathrm{U}_{2}(\mathbb{C})
        inoremap <buffer> <localleader>u3c \mathrm{U}_{3}(\mathbb{C})
        inoremap <buffer> <localleader>u.c \mathrm{U}_{}(\mathbb{C})<esc>F};i

        "}}}
        " SU{{{

        inoremap <buffer> <leader>su \mathrm{SU}
        inoremap <buffer> <leader>sun \mathrm{SU}_{n}
        inoremap <buffer> <leader>sum \mathrm{SU}_{m}
        inoremap <buffer> <leader>sud \mathrm{SU}_{d}
        inoremap <buffer> <leader>suk \mathrm{SU}_{k}
        inoremap <buffer> <leader>su2 \mathrm{SU}_{2}
        inoremap <buffer> <leader>su3 \mathrm{SU}_{3}
        inoremap <buffer> <leader>su. \mathrm{SU}_{}<esc>i

        inoremap <buffer> <localleader>su \mathrm{SU}_{}()<esc>F}i

        inoremap <buffer> <localleader>sunc \mathrm{SU}_{n}(\mathbb{C})
        inoremap <buffer> <localleader>sumc \mathrm{SU}_{m}(\mathbb{C})
        inoremap <buffer> <localleader>sudc \mathrm{SU}_{d}(\mathbb{C})
        inoremap <buffer> <localleader>sukc \mathrm{SU}_{k}(\mathbb{C})
        inoremap <buffer> <localleader>su2c \mathrm{SU}_{2}(\mathbb{C})
        inoremap <buffer> <localleader>su3c \mathrm{SU}_{3}(\mathbb{C})
        inoremap <buffer> <localleader>su.c \mathrm{SU}_{}(\mathbb{C})<esc>F};i

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

inoremap <buffer> ;-1 ^{-1}
inoremap <buffer> ;-. ^{-}<esc>i

inoremap <buffer> ^^ ^{}<esc>i
inoremap <buffer> ;^ {}^{}<esc>hF}i

inoremap <buffer> __ _{}<esc>i
inoremap <buffer> ;_ {}_{}<esc>hF}i

inoremap <buffer> ^_ ^{}_{}<esc>F^i
inoremap <buffer> _^ _{}^{}<esc>F_i
inoremap <buffer> ^__ {}^{}_{}<esc>F};i
inoremap <buffer> _^^ {}_{}^{}<esc>F};i

"}}}
" lim, int, sum, operators{{{
"-------------------------------------------------------------------

inoremap <buffer> <localleader>l \lim_{ \to }<esc>F{a
inoremap <buffer> <localleader>li \liminf_{ \to }<esc>F{a
inoremap <buffer> <localleader>ls \limsup_{ \to }<esc>F{a
inoremap <buffer> <localleader>ll \lim\limits_{ \to }<esc>F{a
inoremap <buffer> <localleader>lil \liminf\limits_{ \to }<esc>F{a
inoremap <buffer> <localleader>lsl \limsup\limits_{ \to }<esc>F{a

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

inoremap <buffer> ;s \sum_{}<esc>i
inoremap <buffer> <localleader>s \sum_{}^{}<esc>F}i
inoremap <buffer> ;sl \sum\limits_{}<esc>i
inoremap <buffer> ;ds \displaystyle\sum_{}<esc>i
inoremap <buffer> <localleader>slim \sum\limits_{}^{}<esc>F}i
inoremap <buffer> <localleader>ds \displaystyle\sum_{}^{}<esc>F}i

inoremap <buffer> ;p \prod_{}<esc>i
inoremap <buffer> <localleader>p \prod_{}^{}<esc>F}i
inoremap <buffer> ;pl \prod\limits_{}<esc>i
inoremap <buffer> ;dp \displaystyle\prod_{}<esc>i
inoremap <buffer> <localleader>pl \prod\limits_{}^{}<esc>F}i
inoremap <buffer> <localleader>dp \displaystyle\prod_{}^{}<esc>F}i

inoremap <buffer> ;cp \coprod_{}<esc>i
inoremap <buffer> <localleader>cp \coprod_{}^{}<esc>F}i
inoremap <buffer> ;cpl \coprod\limits_{}<esc>i
inoremap <buffer> ;dcp \displaystyle\coprod_{}<esc>i
inoremap <buffer> <localleader>cpl \coprod\limits_{}^{}<esc>F}i
inoremap <buffer> <localleader>dcp \displaystyle\coprod_{}^{}<esc>F}i

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

inoremap <buffer> ;1( {\big({}\big)}<esc>F{a
inoremap <buffer> ;2( {\Big({}\Big)}<esc>F{a
inoremap <buffer> ;3( {\bigg({}\bigg)}<esc>F{a
inoremap <buffer> ;4( {\Bigg({}\Bigg)}<esc>F{a
inoremap <buffer> ;5( {\left({}\right)}<esc>F{a

inoremap <buffer> ;1{ {\big\{{}\big\}}<esc>F{a
inoremap <buffer> ;2{ {\Big\{{}\Big\}}<esc>F{a
inoremap <buffer> ;3{ {\bigg\{{}\bigg\}}<esc>F{a
inoremap <buffer> ;4{ {\Bigg\{{}\Bigg\}}<esc>F{a
inoremap <buffer> ;5{ {\left\{{}\right\}}<esc>F{a

inoremap <buffer> ;1[ {\big[{}\big]}<esc>F{a
inoremap <buffer> ;2[ {\Big[{}\Big]}<esc>F{a
inoremap <buffer> ;3[ {\bigg[{}\bigg]}<esc>F{a
inoremap <buffer> ;4[ {\Bigg[{}\Bigg]}<esc>F{a
inoremap <buffer> ;5[ {\left[{}\right]}<esc>F{a

inoremap <buffer> ;5\| {\left\|{}\right\|}<esc>F{a

inoremap <buffer> <localleader>fl \fl{}<esc>i
inoremap <buffer> ;1fl \bigfl{}<esc>i
inoremap <buffer> ;2fl \Bigfl{}<esc>i
inoremap <buffer> ;3fl \biggfl{}<esc>i
inoremap <buffer> ;4fl \Biggfl{}<esc>i
inoremap <buffer> ;5fl \lrfl{}<esc>i

inoremap <buffer> <localleader>ce \ce{}<esc>i
inoremap <buffer> ;1ce \bigce{}<esc>i
inoremap <buffer> ;2ce \Bigce{}<esc>i
inoremap <buffer> ;3ce \biggce{}<esc>i
inoremap <buffer> ;4ce \Biggce{}<esc>i
inoremap <buffer> ;5ce \lrce{}<esc>i

inoremap <buffer> <localleader>lrab {\left\langle{}\right\rangle}<esc>F{a

inoremap <buffer> <localleader>< \leq
inoremap <buffer> <localleader>> \geq
inoremap <buffer> << \ll
inoremap <buffer> >> \gg
inoremap <buffer> n= \neq
inoremap <buffer> == \equiv
inoremap <buffer> <localleader>= \cong

"}}}
" Arrows and vectors"{{{
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

inoremap <buffer> <localleader>vv \vv{}<esc>i

"}}}
" Others{{{
"-------------------------------------------------------------------

inoremap <buffer> ;l \ell

inoremap <buffer> <localleader>em \emph{}<esc>i

inoremap <buffer> <localleader>bm \bm{}<esc>i

inoremap <buffer> /, \,
inoremap <buffer> <localleader>st \substack{ \\ }<esc>F{a
inoremap <buffer> <localleader>op \operatorname{}<esc>i
inoremap <buffer> <localleader>op* \operatorname*{}<esc>i

inoremap <buffer> <localleader>w \wedge
inoremap <buffer> <localleader>N \nabla

inoremap <buffer> <localleader><C-E> \exp\left(\right)<esc>F(a

"}}}

"}}}

" Changing environments, referencing, TOC and folding tex files{{{
"-------------------------------------------------------------------

" Dollar to \[\]
function! DollarToBracket()
    :execute ":normal! F$hxdf$o\\\[\<cr>\\\]\<esc>O\<C-R>\"\<esc>^xg_x"
endfunction

nnoremap <buffer> <localleader>db :call DollarToBracket()<cr>

" \[\] to Align
function! BracketToAlign()
    :execute ":normal! /\\\]\<cr>mm?\\\[\<cr>V`mdO% Align\<cr>\\begin{align}\\label{}\<cr>\\end{align}\<esc>mnkpdd`nkdd?label\<cr>$"

endfunction

nnoremap <buffer> <localleader>bal :call BracketToAlign()<cr>

" \[\] to Unnumbered Align
function! BracketToUnnumAlign()
    :execute ":normal! /\\\]\<cr>mm?\\\[\<cr>V`mdO% UnnumberedAlign\<cr>\\begin{align*}\<cr>\\end{align*}\<esc>mnkpdd`nkddk$"

endfunction

nnoremap <buffer> <localleader>bual :call BracketToUnnumAlign()<cr>

" \[\] to Equation
function! BracketToEq()
    :execute ":normal! /\\\]\<cr>mm?\\\[\<cr>V`mdO% Equation\<cr>\\begin{equation}\\label{}\<cr>\\end{equation}\<esc>mnkpdd`nkdd?label\<cr>$"

endfunction

nnoremap <buffer> <localleader>beq :call BracketToEq()<cr>

" \[\] to Unnumbered Equation
function! BracketToUnnumEq()
    :execute ":normal! /\\\]\<cr>mm?\\\[\<cr>V`mdO% UnnumberedEquation\<cr>\\begin{equation*}\<cr>\\end{equation*}\<esc>mnkpdd`nkddk$"

endfunction

nnoremap <buffer> <localleader>bueq :call BracketToUnnumEq()<cr>

" \[\] to Aligned Equation
function! BracketToAlignedEq()
    :execute ":normal! /\\\]\<cr>mm?\\\[\<cr>V`mdO% AlignedEquation\<cr>\\begin{equation}\\label{}\<cr>\\begin{split}\<cr>\\end{split}\<cr>\\end{equation}\<esc>mn2kpdd`n2kdd?label\<cr>$"

endfunction

nnoremap <buffer> <localleader>baleq :call BracketToAlignedEq()<cr>

" \[\] to Unnumbered Aligned Equation
function! BracketToUnnumAlignedEq()
    :execute ":normal! /\\\]\<cr>mm?\\\[\<cr>V`mdO% UnnumberedAlignedEquation\<cr>\\begin{equation*}\<cr>\\begin{split}\<cr>\\end{split}\<cr>\\end{equation*}\<esc>mn2kpdd`n2kdd$"

endfunction

nnoremap <buffer> <localleader>bualeq :call BracketToUnnumAlignedEq()<cr>

" \[\] to Gathered Equation
function! BracketToGatherEq()
    :execute ":normal! /\\\]\<cr>mm?\\\[\<cr>V`mdO% GatheredEquation\<cr>\\begin{equation}\\label{}\<cr>\\begin{gathered}\<cr>\\end{gathered}\<cr>\\end{equation}\<esc>mn2kpdd`n2kdd?label\<cr>$"

endfunction

nnoremap <buffer> <localleader>bgaeq :call BracketToGatherEq()<cr>

" \[\] to Unnumbered Gathered Equation
function! BracketToUnnumGatherEq()
    :execute ":normal! /\\\]\<cr>mm?\\\[\<cr>V`mdO% UnnumberedGatheredEquation\<cr>\\begin{equation*}\<cr>\\begin{gathered}\<cr>\\end{gathered}\<cr>\\end{equation*}\<esc>mn2kpdd`n2kdd$"

endfunction

nnoremap <buffer> <localleader>bugaeq :call BracketToUnnumGatherEq()<cr>

" \[\] to Gather
function! BracketToGather()
    :execute ":normal! /\\\]\<cr>mm?\\\[\<cr>V`mdO% Gather\<cr>\\begin{gather}\\label{}\<cr>\\end{gather}\<esc>mnkpdd`nkdd?label\<cr>$"

endfunction

nnoremap <buffer> <localleader>bga :call BracketToGather()<cr>

" \[\] to Unnumbered Gather
function! BracketToUnnumGather()
    :execute ":normal! /\\\]\<cr>mm?\\\[\<cr>V`mdO% UnnumberedGather\<cr>\\begin{gather*}\<cr>\\end{gather*}\<esc>mnkpdd`nkddk$"

endfunction

nnoremap <buffer> <localleader>buga :call BracketToUnnumGather()<cr>

" Referencing Theorem, Citation etc.
function! ReferencingAndCiting(code)
    if a:code == "ref"
        :execute ":normal! hmmlx`ma~\\ref{\<esc>"
    elseif a:code == "jref"
        :execute ":normal! a\\ref{\<esc>"
    elseif a:code == "eqref"
        :execute ":normal! a\\eqref{\<esc>"
    elseif a:code == "cit"
        :execute ":normal! a\\cite{\<esc>"
    endif

endfunction

inoremap <buffer> <localleader>ref <esc>:call ReferencingAndCiting("ref")<cr>a
inoremap <buffer> <localleader>jref <esc>:call ReferencingAndCiting("jref")<cr>a
inoremap <buffer> <localleader>eqref <esc>:call ReferencingAndCiting("eqref")<cr>a
inoremap <buffer> <localleader>cit <esc>:call ReferencingAndCiting("cit")<cr>a

" LaTeX table of contents
nnoremap <buffer> <localleader>toc :LatexTOC<cr>

" Folding in foldmethod marker (Incomplete)
function! FoldTexfile()
    :execute ":normal! /\\documentclass\<cr>ma"
    let line = getline()
    if line =~ '^\s*\zs.\{-}\ze%{{'
        :execute ":normal! zC"
    else
        :execute ":normal! /\\begin{document}\<cr>O\<cr>\<cr>mb`azf`b"
    endif

    :execute ":normal! /\\section\<cr>ma"
    let line = getline()
    if line =~ '^\s*\zs.\{-}\ze%{{'
        :execute ":normal! zC"
    else
        :execute ":normal! /\\section\<cr>O\<cr>\<cr>mb`azf`b"
    endif

endfunction

nnoremap <buffer> <localleader>ft :call FoldTexfile()<cr>


"}}}

" Alphabets{{{

" Bold english alphabets{{{

inoremap <buffer> ;ba  \bm{a}
inoremap <buffer> ;bb  \bm{b}
inoremap <buffer> ;bc  \bm{c}
inoremap <buffer> ;bd  \bm{d}
inoremap <buffer> ;bee \bm{e}
inoremap <buffer> ;bf  \bm{f}
inoremap <buffer> ;bg  \bm{g}
inoremap <buffer> ;bh  \bm{h}
inoremap <buffer> ;bi  \bm{i}
inoremap <buffer> ;bj  \bm{j}
inoremap <buffer> ;bk  \bm{k}
inoremap <buffer> ;bl  \bm{l}
inoremap <buffer> ;bm  \bm{m}
inoremap <buffer> ;bn  \bm{n}
inoremap <buffer> ;bo  \bm{o}
inoremap <buffer> ;bp  \bm{p}
inoremap <buffer> ;bq  \bm{q}
inoremap <buffer> ;br  \bm{r}
inoremap <buffer> ;bs  \bm{s}
inoremap <buffer> ;bt  \bm{t}
inoremap <buffer> ;bu  \bm{u}
inoremap <buffer> ;bv  \bm{v}
inoremap <buffer> ;bw  \bm{w}
inoremap <buffer> ;bx  \bm{x}
inoremap <buffer> ;by  \bm{y}
inoremap <buffer> ;bz  \bm{z}

inoremap <buffer> ;bA  \bm{A}
inoremap <buffer> ;bB  \bm{B}
inoremap <buffer> ;bC  \bm{C}
inoremap <buffer> ;bD  \bm{D}
inoremap <buffer> ;bE  \bm{E}
inoremap <buffer> ;bF  \bm{F}
inoremap <buffer> ;bG  \bm{G}
inoremap <buffer> ;bH  \bm{H}
inoremap <buffer> ;bI  \bm{I}
inoremap <buffer> ;bJ  \bm{J}
inoremap <buffer> ;bK  \bm{K}
inoremap <buffer> ;bL  \bm{L}
inoremap <buffer> ;bM  \bm{M}
inoremap <buffer> ;bN  \bm{N}
inoremap <buffer> ;bO  \bm{O}
inoremap <buffer> ;bP  \bm{P}
inoremap <buffer> ;bQ  \bm{Q}
inoremap <buffer> ;bR  \bm{R}
inoremap <buffer> ;bS  \bm{S}
inoremap <buffer> ;bT  \bm{T}
inoremap <buffer> ;bU  \bm{U}
inoremap <buffer> ;bV  \bm{V}
inoremap <buffer> ;bW  \bm{W}
inoremap <buffer> ;bX  \bm{X}
inoremap <buffer> ;bY  \bm{Y}
inoremap <buffer> ;bZ  \bm{Z}

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

"}}}

"-------------------------------------------------------------------
" Comments
"-------------------------------------------------------------------

" Use ; before a letter for specific use of that letter

