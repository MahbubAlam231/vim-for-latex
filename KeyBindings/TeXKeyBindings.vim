
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
inoremap <buffer> <localleader>ms \mathscr{}<esc>i
inoremap <buffer> <localleader>mi \mathit{}<esc>i
inoremap <buffer> <localleader>mf \mathfrak{}<esc>i
inoremap <buffer> <localleader>ff \frakfamily{}<esc>i

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
inoremap <buffer> <localleader>qpp \mathbb{Q}_p^2
inoremap <buffer> <localleader>qpn \mathbb{Q}_p^{n}
inoremap <buffer> <localleader>qpm \mathbb{Q}_p^{m}
inoremap <buffer> <localleader>qpd \mathbb{Q}_p^{d}
inoremap <buffer> <localleader>qpk \mathbb{Q}_p^{k}
inoremap <buffer> <localleader>qpx \mathbb{Q}_p^{\times}
inoremap <buffer> <localleader>qp. \mathbb{Q}_p^{}<esc>i

"}}}
" p-adic Integers{{{

inoremap <buffer> <localleader>zp \mathbb{Z}_p
inoremap <buffer> <localleader>zpp \mathbb{Z}_p^2
inoremap <buffer> <localleader>zpn \mathbb{Z}_p^{n}
inoremap <buffer> <localleader>zpm \mathbb{Z}_p^{m}
inoremap <buffer> <localleader>zpd \mathbb{Z}_p^{d}
inoremap <buffer> <localleader>zpk \mathbb{Z}_p^{k}
inoremap <buffer> <localleader>zpx \mathbb{Z}_p^{\times}
inoremap <buffer> <localleader>zp. \mathbb{Z}_p^{}<esc>i

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

inoremap <buffer> <localleader>co \mathcal{O}
inoremap <buffer> <localleader>coo \mathcal{O}^2
inoremap <buffer> <localleader>con \mathcal{O}^{n}
inoremap <buffer> <localleader>com \mathcal{O}^{m}
inoremap <buffer> <localleader>cod \mathcal{O}^{d}
inoremap <buffer> <localleader>cok \mathcal{O}^{k}
inoremap <buffer> <localleader>cox \mathcal{O}^{\times}
inoremap <buffer> <localleader>co, \mathcal{O}_{}<esc>i
inoremap <buffer> <localleader>co. \mathcal{O}^{}<esc>i
inoremap <buffer> <localleader>co,. \mathcal{O}_{}^{}<esc>F}i

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

inoremap <buffer> <localleader>Ci C^{\infty}()<esc>i

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
        inoremap <buffer> <localleader>mnz \mathrm{M}(n, \mathbb{Z})
        inoremap <buffer> <localleader>mmz \mathrm{M}(m, \mathbb{Z})
        inoremap <buffer> <localleader>mdz \mathrm{M}(d, \mathbb{Z})
        inoremap <buffer> <localleader>mkz \mathrm{M}(k, \mathbb{Z})
        inoremap <buffer> <localleader>m2z \mathrm{M}(2, \mathbb{Z})
        inoremap <buffer> <localleader>m3z \mathrm{M}(3, \mathbb{Z})
        inoremap <buffer> <localleader>m.z \mathrm{M}(, \mathbb{Z})<esc>F,i

        inoremap <buffer> <localleader>mmnq \mathrm{M}_{m \times n}(\mathbb{Q})
        inoremap <buffer> <localleader>m..q \mathrm{M}_{}(\mathbb{Q})<esc>F};i
        inoremap <buffer> <localleader>mnq \mathrm{M}(n, \mathbb{Q})
        inoremap <buffer> <localleader>mmq \mathrm{M}(m, \mathbb{Q})
        inoremap <buffer> <localleader>mdq \mathrm{M}(d, \mathbb{Q})
        inoremap <buffer> <localleader>mkq \mathrm{M}(k, \mathbb{Q})
        inoremap <buffer> <localleader>m2q \mathrm{M}(2, \mathbb{Q})
        inoremap <buffer> <localleader>m3q \mathrm{M}(3, \mathbb{Q})
        inoremap <buffer> <localleader>m.q \mathrm{M}(, \mathbb{Q})<esc>F,i

        inoremap <buffer> <localleader>mmnr \mathrm{M}_{m \times n}(\mathbb{R})
        inoremap <buffer> <localleader>m..r \mathrm{M}_{}(\mathbb{R})<esc>F};i
        inoremap <buffer> <localleader>mnr \mathrm{M}(n, \mathbb{R})
        inoremap <buffer> <localleader>mmr \mathrm{M}(m, \mathbb{R})
        inoremap <buffer> <localleader>mdr \mathrm{M}(d, \mathbb{R})
        inoremap <buffer> <localleader>mkr \mathrm{M}(k, \mathbb{R})
        inoremap <buffer> <localleader>m2r \mathrm{M}(2, \mathbb{R})
        inoremap <buffer> <localleader>m3r \mathrm{M}(3, \mathbb{R})
        inoremap <buffer> <localleader>m.r \mathrm{M}(, \mathbb{R})<esc>F,i

        inoremap <buffer> <localleader>mmnc \mathrm{M}_{m \times n}(\mathbb{C})
        inoremap <buffer> <localleader>m..c \mathrm{M}_{}(\mathbb{C})<esc>F};i
        inoremap <buffer> <localleader>mnc \mathrm{M}(n, \mathbb{C})
        inoremap <buffer> <localleader>mmc \mathrm{M}(m, \mathbb{C})
        inoremap <buffer> <localleader>mdc \mathrm{M}(d, \mathbb{C})
        inoremap <buffer> <localleader>mkc \mathrm{M}(k, \mathbb{C})
        inoremap <buffer> <localleader>m2c \mathrm{M}(2, \mathbb{C})
        inoremap <buffer> <localleader>m3c \mathrm{M}(3, \mathbb{C})
        inoremap <buffer> <localleader>m.c \mathrm{M}(, \mathbb{C})<esc>F,i

        inoremap <buffer> <localleader>mmnzp \mathrm{M}_{m \times n}(\mathbb{Z}_p)
        inoremap <buffer> <localleader>m..zp \mathrm{M}_{}(\mathbb{Z}_p)<esc>F};i
        inoremap <buffer> <localleader>mnzp \mathrm{M}(n, \mathbb{Z}_p)
        inoremap <buffer> <localleader>mmzp \mathrm{M}(m, \mathbb{Z}_p)
        inoremap <buffer> <localleader>mdzp \mathrm{M}(d, \mathbb{Z}_p)
        inoremap <buffer> <localleader>mkzp \mathrm{M}(k, \mathbb{Z}_p)
        inoremap <buffer> <localleader>m2zp \mathrm{M}(2, \mathbb{Z}_p)
        inoremap <buffer> <localleader>m3zp \mathrm{M}(3, \mathbb{Z}_p)
        inoremap <buffer> <localleader>m.zp \mathrm{M}(, \mathbb{Z}_p)<esc>F,i

        inoremap <buffer> <localleader>mmnqp \mathrm{M}_{m \times n}(\mathbb{Q}_p)
        inoremap <buffer> <localleader>m..qp \mathrm{M}_{}(\mathbb{Q}_p)<esc>F};i
        inoremap <buffer> <localleader>mnqp \mathrm{M}(n, \mathbb{Q}_p)
        inoremap <buffer> <localleader>mmqp \mathrm{M}(m, \mathbb{Q}_p)
        inoremap <buffer> <localleader>mdqp \mathrm{M}(d, \mathbb{Q}_p)
        inoremap <buffer> <localleader>mkqp \mathrm{M}(k, \mathbb{Q}_p)
        inoremap <buffer> <localleader>m2qp \mathrm{M}(2, \mathbb{Q}_p)
        inoremap <buffer> <localleader>m3qp \mathrm{M}(3, \mathbb{Q}_p)
        inoremap <buffer> <localleader>m.qp \mathrm{M}(, \mathbb{Q}_p)<esc>F,i

        inoremap <buffer> <localleader>mmnk \mathrm{M}_{m \times n}(\mathbb{K})
        inoremap <buffer> <localleader>m..k \mathrm{M}_{}(\mathbb{K})<esc>F};i
        inoremap <buffer> <localleader>mnk \mathrm{M}(n, \mathbb{K})
        inoremap <buffer> <localleader>mmk \mathrm{M}(m, \mathbb{K})
        inoremap <buffer> <localleader>mdk \mathrm{M}(d, \mathbb{K})
        inoremap <buffer> <localleader>mkk \mathrm{M}(k, \mathbb{K})
        inoremap <buffer> <localleader>m2k \mathrm{M}(2, \mathbb{K})
        inoremap <buffer> <localleader>m3k \mathrm{M}(3, \mathbb{K})
        inoremap <buffer> <localleader>m.k \mathrm{M}(, \mathbb{K})<esc>F,i

        inoremap <buffer> <localleader>mmna \mathrm{M}_{m \times n}(\mathbb{A})
        inoremap <buffer> <localleader>m..a \mathrm{M}_{}(\mathbb{A})<esc>F};i
        inoremap <buffer> <localleader>mna \mathrm{M}(n, \mathbb{A})
        inoremap <buffer> <localleader>mma \mathrm{M}(m, \mathbb{A})
        inoremap <buffer> <localleader>mda \mathrm{M}(d, \mathbb{A})
        inoremap <buffer> <localleader>mka \mathrm{M}(k, \mathbb{A})
        inoremap <buffer> <localleader>m2a \mathrm{M}(2, \mathbb{A})
        inoremap <buffer> <localleader>m3a \mathrm{M}(3, \mathbb{A})
        inoremap <buffer> <localleader>m.a \mathrm{M}(, \mathbb{A})<esc>F,i

        inoremap <buffer> <localleader>mmnok \mathrm{M}_{m \times n}(\mathcal{O}_K)
        inoremap <buffer> <localleader>m..ok \mathrm{M}_{}(\mathcal{O}_K)<esc>F};i
        inoremap <buffer> <localleader>mnok \mathrm{M}(n, \mathcal{O}_K)
        inoremap <buffer> <localleader>mmok \mathrm{M}(m, \mathcal{O}_K)
        inoremap <buffer> <localleader>mdok \mathrm{M}(d, \mathcal{O}_K)
        inoremap <buffer> <localleader>mkok \mathrm{M}(k, \mathcal{O}_K)
        inoremap <buffer> <localleader>m2ok \mathrm{M}(2, \mathcal{O}_K)
        inoremap <buffer> <localleader>m3ok \mathrm{M}(3, \mathcal{O}_K)
        inoremap <buffer> <localleader>m.ok \mathrm{M}(, \mathcal{O}_K)<esc>F,i

        inoremap <buffer> <localleader>mmnco \mathrm{M}_{m \times n}(\mathcal{O})
        inoremap <buffer> <localleader>m..co \mathrm{M}_{}(\mathcal{O})<esc>F};i
        inoremap <buffer> <localleader>mnco \mathrm{M}(n, \mathcal{O})
        inoremap <buffer> <localleader>mmco \mathrm{M}(m, \mathcal{O})
        inoremap <buffer> <localleader>mdco \mathrm{M}(d, \mathcal{O})
        inoremap <buffer> <localleader>mkco \mathrm{M}(k, \mathcal{O})
        inoremap <buffer> <localleader>m2co \mathrm{M}(2, \mathcal{O})
        inoremap <buffer> <localleader>m3co \mathrm{M}(3, \mathcal{O})
        inoremap <buffer> <localleader>m.co \mathrm{M}(, \mathcal{O})<esc>F,i

        inoremap <buffer> <localleader>mmnjk \mathrm{M}_{m \times n}(K)
        inoremap <buffer> <localleader>m..jk \mathrm{M}_{}(K)<esc>F}i
        inoremap <buffer> <localleader>mnjk \mathrm{M}(n, K)
        inoremap <buffer> <localleader>mmjk \mathrm{M}(m, K)
        inoremap <buffer> <localleader>mdjk \mathrm{M}(d, K)
        inoremap <buffer> <localleader>mkjk \mathrm{M}(k, K)
        inoremap <buffer> <localleader>m2jk \mathrm{M}(2, K)
        inoremap <buffer> <localleader>m3jk \mathrm{M}(3, K)
        inoremap <buffer> <localleader>m.jk \mathrm{M}(, K)<esc>F,i

        inoremap <buffer> <localleader>mmnks \mathrm{M}_{m \times n}(K_S)
        inoremap <buffer> <localleader>m..ks \mathrm{M}_{}(K_S)<esc>F}i
        inoremap <buffer> <localleader>mnks \mathrm{M}(n, K_S)
        inoremap <buffer> <localleader>mmks \mathrm{M}(m, K_S)
        inoremap <buffer> <localleader>mdks \mathrm{M}(d, K_S)
        inoremap <buffer> <localleader>mkks \mathrm{M}(k, K_S)
        inoremap <buffer> <localleader>m2ks \mathrm{M}(2, K_S)
        inoremap <buffer> <localleader>m3ks \mathrm{M}(3, K_S)
        inoremap <buffer> <localleader>m.ks \mathrm{M}(, K_S)<esc>F,i

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

        inoremap <buffer> <localleader>glnz \mathrm{GL}(n, \mathbb{Z})
        inoremap <buffer> <localleader>glmz \mathrm{GL}(m, \mathbb{Z})
        inoremap <buffer> <localleader>gldz \mathrm{GL}(d, \mathbb{Z})
        inoremap <buffer> <localleader>glkz \mathrm{GL}(k, \mathbb{Z})
        inoremap <buffer> <localleader>gl2z \mathrm{GL}(2, \mathbb{Z})
        inoremap <buffer> <localleader>gl3z \mathrm{GL}(3, \mathbb{Z})
        inoremap <buffer> <localleader>gl.z \mathrm{GL}(, \mathbb{Z})<esc>F,i
        inoremap <buffer> <localleader>glpnz \mathrm{GL}^+(n, \mathbb{Z})
        inoremap <buffer> <localleader>glpmz \mathrm{GL}^+(m, \mathbb{Z})
        inoremap <buffer> <localleader>glpdz \mathrm{GL}^+(d, \mathbb{Z})
        inoremap <buffer> <localleader>glp2z \mathrm{GL}^+(2, \mathbb{Z})
        inoremap <buffer> <localleader>glp3z \mathrm{GL}^+(3, \mathbb{Z})
        inoremap <buffer> <localleader>glp.z \mathrm{GL}^+(, \mathbb{Z})<esc>F,i

        inoremap <buffer> <localleader>glnq \mathrm{GL}(n, \mathbb{Q})
        inoremap <buffer> <localleader>glmq \mathrm{GL}(m, \mathbb{Q})
        inoremap <buffer> <localleader>gldq \mathrm{GL}(d, \mathbb{Q})
        inoremap <buffer> <localleader>glkq \mathrm{GL}(k, \mathbb{Q})
        inoremap <buffer> <localleader>gl2q \mathrm{GL}(2, \mathbb{Q})
        inoremap <buffer> <localleader>gl3q \mathrm{GL}(3, \mathbb{Q})
        inoremap <buffer> <localleader>gl.q \mathrm{GL}(, \mathbb{Q})<esc>F,i
        inoremap <buffer> <localleader>glpnq \mathrm{GL}^+(n, \mathbb{Q})
        inoremap <buffer> <localleader>glpmq \mathrm{GL}^+(m, \mathbb{Q})
        inoremap <buffer> <localleader>glpdq \mathrm{GL}^+(d, \mathbb{Q})
        inoremap <buffer> <localleader>glpkq \mathrm{GL}^+(k, \mathbb{Q})
        inoremap <buffer> <localleader>glp2q \mathrm{GL}^+(2, \mathbb{Q})
        inoremap <buffer> <localleader>glp3q \mathrm{GL}^+(3, \mathbb{Q})
        inoremap <buffer> <localleader>glp.q \mathrm{GL}^+(, \mathbb{Q})<esc>F,i

        inoremap <buffer> <localleader>glnr \mathrm{GL}(n, \mathbb{R})
        inoremap <buffer> <localleader>glmr \mathrm{GL}(m, \mathbb{R})
        inoremap <buffer> <localleader>gldr \mathrm{GL}(d, \mathbb{R})
        inoremap <buffer> <localleader>glkr \mathrm{GL}(k, \mathbb{R})
        inoremap <buffer> <localleader>gl2r \mathrm{GL}(2, \mathbb{R})
        inoremap <buffer> <localleader>gl3r \mathrm{GL}(3, \mathbb{R})
        inoremap <buffer> <localleader>gl.r \mathrm{GL}(, \mathbb{R})<esc>F,i
        inoremap <buffer> <localleader>glpnr \mathrm{GL}^+(n, \mathbb{R})
        inoremap <buffer> <localleader>glpmr \mathrm{GL}^+(m, \mathbb{R})
        inoremap <buffer> <localleader>glpdr \mathrm{GL}^+(d, \mathbb{R})
        inoremap <buffer> <localleader>glpkr \mathrm{GL}^+(k, \mathbb{R})
        inoremap <buffer> <localleader>glp2r \mathrm{GL}^+(2, \mathbb{R})
        inoremap <buffer> <localleader>glp3r \mathrm{GL}^+(3, \mathbb{R})
        inoremap <buffer> <localleader>glp.r \mathrm{GL}^+(, \mathbb{R})<esc>F,i

        inoremap <buffer> <localleader>glnc \mathrm{GL}(n, \mathbb{C})
        inoremap <buffer> <localleader>glmc \mathrm{GL}(m, \mathbb{C})
        inoremap <buffer> <localleader>gldc \mathrm{GL}(d, \mathbb{C})
        inoremap <buffer> <localleader>glkc \mathrm{GL}(k, \mathbb{C})
        inoremap <buffer> <localleader>gl2c \mathrm{GL}(2, \mathbb{C})
        inoremap <buffer> <localleader>gl3c \mathrm{GL}(3, \mathbb{C})
        inoremap <buffer> <localleader>gl.c \mathrm{GL}(, \mathbb{C})<esc>F,i

        inoremap <buffer> <localleader>glnzp \mathrm{GL}(n, \mathbb{Z}_p)
        inoremap <buffer> <localleader>glmzp \mathrm{GL}(m, \mathbb{Z}_p)
        inoremap <buffer> <localleader>gldzp \mathrm{GL}(d, \mathbb{Z}_p)
        inoremap <buffer> <localleader>glkzp \mathrm{GL}(k, \mathbb{Z}_p)
        inoremap <buffer> <localleader>gl2zp \mathrm{GL}(2, \mathbb{Z}_p)
        inoremap <buffer> <localleader>gl3zp \mathrm{GL}(3, \mathbb{Z}_p)
        inoremap <buffer> <localleader>gl.zp \mathrm{GL}(, \mathbb{Z}_p)<esc>F,i

        inoremap <buffer> <localleader>glnqp \mathrm{GL}(n, \mathbb{Q}_p)
        inoremap <buffer> <localleader>glmqp \mathrm{GL}(m, \mathbb{Q}_p)
        inoremap <buffer> <localleader>gldqp \mathrm{GL}(d, \mathbb{Q}_p)
        inoremap <buffer> <localleader>glkqp \mathrm{GL}(k, \mathbb{Q}_p)
        inoremap <buffer> <localleader>gl2qp \mathrm{GL}(2, \mathbb{Q}_p)
        inoremap <buffer> <localleader>gl3qp \mathrm{GL}(3, \mathbb{Q}_p)
        inoremap <buffer> <localleader>gl.qp \mathrm{GL}(, \mathbb{Q}_p)<esc>F,i

        inoremap <buffer> <localleader>glnk \mathrm{GL}(n, \mathbb{K})
        inoremap <buffer> <localleader>glmk \mathrm{GL}(m, \mathbb{K})
        inoremap <buffer> <localleader>gldk \mathrm{GL}(d, \mathbb{K})
        inoremap <buffer> <localleader>glkk \mathrm{GL}(k, \mathbb{K})
        inoremap <buffer> <localleader>gl2k \mathrm{GL}(2, \mathbb{K})
        inoremap <buffer> <localleader>gl3k \mathrm{GL}(3, \mathbb{K})
        inoremap <buffer> <localleader>gl.k \mathrm{GL}(, \mathbb{K})<esc>F,i

        inoremap <buffer> <localleader>glna \mathrm{GL}(n, \mathbb{A})
        inoremap <buffer> <localleader>glma \mathrm{GL}(m, \mathbb{A})
        inoremap <buffer> <localleader>glda \mathrm{GL}(d, \mathbb{A})
        inoremap <buffer> <localleader>glka \mathrm{GL}(k, \mathbb{A})
        inoremap <buffer> <localleader>gl2a \mathrm{GL}(2, \mathbb{A})
        inoremap <buffer> <localleader>gl3a \mathrm{GL}(3, \mathbb{A})
        inoremap <buffer> <localleader>gl.a \mathrm{GL}(, \mathbb{A})<esc>F,i

        inoremap <buffer> <localleader>glnok \mathrm{GL}(n, \mathcal{O}_K)
        inoremap <buffer> <localleader>glmok \mathrm{GL}(m, \mathcal{O}_K)
        inoremap <buffer> <localleader>gldok \mathrm{GL}(d, \mathcal{O}_K)
        inoremap <buffer> <localleader>glkok \mathrm{GL}(k, \mathcal{O}_K)
        inoremap <buffer> <localleader>gl2ok \mathrm{GL}(2, \mathcal{O}_K)
        inoremap <buffer> <localleader>gl3ok \mathrm{GL}(3, \mathcal{O}_K)
        inoremap <buffer> <localleader>gl.ok \mathrm{GL}(, \mathcal{O}_K)<esc>F,i

        inoremap <buffer> <localleader>glnco \mathrm{GL}(n, \mathcal{O})
        inoremap <buffer> <localleader>glmco \mathrm{GL}(m, \mathcal{O})
        inoremap <buffer> <localleader>gldco \mathrm{GL}(d, \mathcal{O})
        inoremap <buffer> <localleader>glkco \mathrm{GL}(k, \mathcal{O})
        inoremap <buffer> <localleader>gl2co \mathrm{GL}(2, \mathcal{O})
        inoremap <buffer> <localleader>gl3co \mathrm{GL}(3, \mathcal{O})
        inoremap <buffer> <localleader>gl.co \mathrm{GL}(, \mathcal{O})<esc>F,i

        inoremap <buffer> <localleader>glnjk \mathrm{GL}(n, K)
        inoremap <buffer> <localleader>glmjk \mathrm{GL}(m, K)
        inoremap <buffer> <localleader>gldjk \mathrm{GL}(d, K)
        inoremap <buffer> <localleader>glkjk \mathrm{GL}(k, K)
        inoremap <buffer> <localleader>gl2jk \mathrm{GL}(2, K)
        inoremap <buffer> <localleader>gl3jk \mathrm{GL}(3, K)
        inoremap <buffer> <localleader>gl.jk \mathrm{GL}(, K)<esc>F,i

        inoremap <buffer> <localleader>glnks \mathrm{GL}(n, K_S)
        inoremap <buffer> <localleader>glmks \mathrm{GL}(m, K_S)
        inoremap <buffer> <localleader>gldks \mathrm{GL}(d, K_S)
        inoremap <buffer> <localleader>glkks \mathrm{GL}(k, K_S)
        inoremap <buffer> <localleader>gl2ks \mathrm{GL}(2, K_S)
        inoremap <buffer> <localleader>gl3ks \mathrm{GL}(3, K_S)
        inoremap <buffer> <localleader>gl.ks \mathrm{GL}(, K_S)<esc>F,i

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

        inoremap <buffer> <localleader>slnz \mathrm{SL}(n, \mathbb{Z})
        inoremap <buffer> <localleader>slmz \mathrm{SL}(m, \mathbb{Z})
        inoremap <buffer> <localleader>sldz \mathrm{SL}(d, \mathbb{Z})
        inoremap <buffer> <localleader>slkz \mathrm{SL}(k, \mathbb{Z})
        inoremap <buffer> <localleader>sl2z \mathrm{SL}(2, \mathbb{Z})
        inoremap <buffer> <localleader>sl3z \mathrm{SL}(3, \mathbb{Z})
        inoremap <buffer> <localleader>sl.z \mathrm{SL}(, \mathbb{Z})<esc>F,i

        inoremap <buffer> <localleader>slnq \mathrm{SL}(n, \mathbb{Q})
        inoremap <buffer> <localleader>slmq \mathrm{SL}(m, \mathbb{Q})
        inoremap <buffer> <localleader>sldq \mathrm{SL}(d, \mathbb{Q})
        inoremap <buffer> <localleader>slkq \mathrm{SL}(k, \mathbb{Q})
        inoremap <buffer> <localleader>sl2q \mathrm{SL}(2, \mathbb{Q})
        inoremap <buffer> <localleader>sl3q \mathrm{SL}(3, \mathbb{Q})
        inoremap <buffer> <localleader>sl.q \mathrm{SL}(, \mathbb{Q})<esc>F,i

        inoremap <buffer> <localleader>slnr \mathrm{SL}(n, \mathbb{R})
        inoremap <buffer> <localleader>slmr \mathrm{SL}(m, \mathbb{R})
        inoremap <buffer> <localleader>sldr \mathrm{SL}(d, \mathbb{R})
        inoremap <buffer> <localleader>slkr \mathrm{SL}(k, \mathbb{R})
        inoremap <buffer> <localleader>sl2r \mathrm{SL}(2, \mathbb{R})
        inoremap <buffer> <localleader>sl3r \mathrm{SL}(3, \mathbb{R})
        inoremap <buffer> <localleader>sl.r \mathrm{SL}(, \mathbb{R})<esc>F,i

        inoremap <buffer> <localleader>slnc \mathrm{SL}(n, \mathbb{C})
        inoremap <buffer> <localleader>slmc \mathrm{SL}(m, \mathbb{C})
        inoremap <buffer> <localleader>sldc \mathrm{SL}(d, \mathbb{C})
        inoremap <buffer> <localleader>slkc \mathrm{SL}(k, \mathbb{C})
        inoremap <buffer> <localleader>sl2c \mathrm{SL}(2, \mathbb{C})
        inoremap <buffer> <localleader>sl3c \mathrm{SL}(3, \mathbb{C})
        inoremap <buffer> <localleader>sl.c \mathrm{SL}(, \mathbb{C})<esc>F,i

        inoremap <buffer> <localleader>slnzp \mathrm{SL}(n, \mathbb{Z}_p)
        inoremap <buffer> <localleader>slmzp \mathrm{SL}(m, \mathbb{Z}_p)
        inoremap <buffer> <localleader>sldzp \mathrm{SL}(d, \mathbb{Z}_p)
        inoremap <buffer> <localleader>slkzp \mathrm{SL}(k, \mathbb{Z}_p)
        inoremap <buffer> <localleader>sl2zp \mathrm{SL}(2, \mathbb{Z}_p)
        inoremap <buffer> <localleader>sl3zp \mathrm{SL}(3, \mathbb{Z}_p)
        inoremap <buffer> <localleader>sl.zp \mathrm{SL}(, \mathbb{Z}_p)<esc>F,i

        inoremap <buffer> <localleader>slnqp \mathrm{SL}(n, \mathbb{Q}_p)
        inoremap <buffer> <localleader>slmqp \mathrm{SL}(m, \mathbb{Q}_p)
        inoremap <buffer> <localleader>sldqp \mathrm{SL}(d, \mathbb{Q}_p)
        inoremap <buffer> <localleader>slkqp \mathrm{SL}(k, \mathbb{Q}_p)
        inoremap <buffer> <localleader>sl2qp \mathrm{SL}(2, \mathbb{Q}_p)
        inoremap <buffer> <localleader>sl3qp \mathrm{SL}(3, \mathbb{Q}_p)
        inoremap <buffer> <localleader>sl.qp \mathrm{SL}(, \mathbb{Q}_p)<esc>F,i

        inoremap <buffer> <localleader>slnk \mathrm{SL}(n, \mathbb{K})
        inoremap <buffer> <localleader>slmk \mathrm{SL}(m, \mathbb{K})
        inoremap <buffer> <localleader>sldk \mathrm{SL}(d, \mathbb{K})
        inoremap <buffer> <localleader>slkk \mathrm{SL}(k, \mathbb{K})
        inoremap <buffer> <localleader>sl2k \mathrm{SL}(2, \mathbb{K})
        inoremap <buffer> <localleader>sl3k \mathrm{SL}(3, \mathbb{K})
        inoremap <buffer> <localleader>sl.k \mathrm{SL}(, \mathbb{K})<esc>F,i

        inoremap <buffer> <localleader>slna \mathrm{SL}(n, \mathbb{A})
        inoremap <buffer> <localleader>slma \mathrm{SL}(m, \mathbb{A})
        inoremap <buffer> <localleader>slda \mathrm{SL}(d, \mathbb{A})
        inoremap <buffer> <localleader>slka \mathrm{SL}(k, \mathbb{A})
        inoremap <buffer> <localleader>sl2a \mathrm{SL}(2, \mathbb{A})
        inoremap <buffer> <localleader>sl3a \mathrm{SL}(3, \mathbb{A})
        inoremap <buffer> <localleader>sl.a \mathrm{SL}(, \mathbb{A})<esc>F,i

        inoremap <buffer> <localleader>slnok \mathrm{SL}(n, \mathcal{O}_K)
        inoremap <buffer> <localleader>slmok \mathrm{SL}(m, \mathcal{O}_K)
        inoremap <buffer> <localleader>sldok \mathrm{SL}(d, \mathcal{O}_K)
        inoremap <buffer> <localleader>slkok \mathrm{SL}(k, \mathcal{O}_K)
        inoremap <buffer> <localleader>sl2ok \mathrm{SL}(2, \mathcal{O}_K)
        inoremap <buffer> <localleader>sl3ok \mathrm{SL}(3, \mathcal{O}_K)
        inoremap <buffer> <localleader>sl.ok \mathrm{SL}(, \mathcal{O}_K)<esc>F,i

        inoremap <buffer> <localleader>slnco \mathrm{SL}(n, \mathcal{O})
        inoremap <buffer> <localleader>slmco \mathrm{SL}(m, \mathcal{O})
        inoremap <buffer> <localleader>sldco \mathrm{SL}(d, \mathcal{O})
        inoremap <buffer> <localleader>slkco \mathrm{SL}(k, \mathcal{O})
        inoremap <buffer> <localleader>sl2co \mathrm{SL}(2, \mathcal{O})
        inoremap <buffer> <localleader>sl3co \mathrm{SL}(3, \mathcal{O})
        inoremap <buffer> <localleader>sl.co \mathrm{SL}(, \mathcal{O})<esc>F,i

        inoremap <buffer> <localleader>slnjk \mathrm{SL}(n, K)
        inoremap <buffer> <localleader>slmjk \mathrm{SL}(m, K)
        inoremap <buffer> <localleader>sldjk \mathrm{SL}(d, K)
        inoremap <buffer> <localleader>slkjk \mathrm{SL}(k, K)
        inoremap <buffer> <localleader>sl2jk \mathrm{SL}(2, K)
        inoremap <buffer> <localleader>sl3jk \mathrm{SL}(3, K)
        inoremap <buffer> <localleader>sl.jk \mathrm{SL}(, K)<esc>F,i

        inoremap <buffer> <localleader>slnks \mathrm{SL}(n, K_S)
        inoremap <buffer> <localleader>slmks \mathrm{SL}(m, K_S)
        inoremap <buffer> <localleader>sldks \mathrm{SL}(d, K_S)
        inoremap <buffer> <localleader>slkks \mathrm{SL}(k, K_S)
        inoremap <buffer> <localleader>sl2ks \mathrm{SL}(2, K_S)
        inoremap <buffer> <localleader>sl3ks \mathrm{SL}(3, K_S)
        inoremap <buffer> <localleader>sl.ks \mathrm{SL}(, K_S)<esc>F,i

        inoremap <buffer> <localleader>slnrz \mathrm{SL}(n, \mathbb{R})/\mathrm{SL}(n, \mathbb{Z})
        inoremap <buffer> <localleader>slmrz \mathrm{SL}(m, \mathbb{R})/\mathrm{SL}(m, \mathbb{Z})
        inoremap <buffer> <localleader>sldrz \mathrm{SL}(d, \mathbb{R})/\mathrm{SL}(d, \mathbb{Z})
        inoremap <buffer> <localleader>slkrz \mathrm{SL}(k, \mathbb{R})/\mathrm{SL}(k, \mathbb{Z})
        inoremap <buffer> <localleader>sl2rz \mathrm{SL}(2, \mathbb{R})/\mathrm{SL}(2, \mathbb{Z})
        inoremap <buffer> <localleader>sl3rz \mathrm{SL}(3, \mathbb{R})/\mathrm{SL}(3, \mathbb{Z})
        inoremap <buffer> <localleader>sl.rz \mathrm{SL}(, \mathbb{R})/\mathrm{SL}(, \mathbb{Z})<esc>F,i

        inoremap <buffer> <localleader>slnzr \mathrm{SL}(n, \mathbb{Z}) \backslash \mathrm{SL}(n, \mathbb{R})
        inoremap <buffer> <localleader>slmzr \mathrm{SL}(m, \mathbb{Z}) \backslash \mathrm{SL}(m, \mathbb{R})
        inoremap <buffer> <localleader>sldzr \mathrm{SL}(d, \mathbb{Z}) \backslash \mathrm{SL}(d, \mathbb{R})
        inoremap <buffer> <localleader>slkzr \mathrm{SL}(k, \mathbb{Z}) \backslash \mathrm{SL}(k, \mathbb{R})
        inoremap <buffer> <localleader>sl2zr \mathrm{SL}(2, \mathbb{Z}) \backslash \mathrm{SL}(2, \mathbb{R})
        inoremap <buffer> <localleader>sl3zr \mathrm{SL}(3, \mathbb{Z}) \backslash \mathrm{SL}(3, \mathbb{R})
        inoremap <buffer> <localleader>sl.zr \mathrm{SL}(, \mathbb{Z}) \backslash \mathrm{SL}(, \mathbb{R})<esc>F,i

        inoremap <buffer> <localleader>slnksok \mathrm{SL}(n, K_S)/\mathrm{SL}(n, \mathcal{O}_K)
        inoremap <buffer> <localleader>slmksok \mathrm{SL}(m, K_S)/\mathrm{SL}(m, \mathcal{O}_K)
        inoremap <buffer> <localleader>sldksok \mathrm{SL}(d, K_S)/\mathrm{SL}(d, \mathcal{O}_K)
        inoremap <buffer> <localleader>slkksok \mathrm{SL}(k, K_S)/\mathrm{SL}(k, \mathcal{O}_K)
        inoremap <buffer> <localleader>sl2ksok \mathrm{SL}(2, K_S)/\mathrm{SL}(2, \mathcal{O}_K)
        inoremap <buffer> <localleader>sl3ksok \mathrm{SL}(3, K_S)/\mathrm{SL}(3, \mathcal{O}_K)
        inoremap <buffer> <localleader>sl.ksok \mathrm{SL}(, K_S)/\mathrm{SL}(, \mathcal{O}_K)<esc>F,i

        inoremap <buffer> <localleader>slnokks \mathrm{SL}(n, \mathcal{O}_K) \backslash \mathrm{SL}(n, K_S)
        inoremap <buffer> <localleader>slmokks \mathrm{SL}(m, \mathcal{O}_K) \backslash \mathrm{SL}(m, K_S)
        inoremap <buffer> <localleader>sldokks \mathrm{SL}(d, \mathcal{O}_K) \backslash \mathrm{SL}(d, K_S)
        inoremap <buffer> <localleader>slkokks \mathrm{SL}(k, \mathcal{O}_K) \backslash \mathrm{SL}(k, K_S)
        inoremap <buffer> <localleader>sl2okks \mathrm{SL}(2, \mathcal{O}_K) \backslash \mathrm{SL}(2, K_S)
        inoremap <buffer> <localleader>sl3okks \mathrm{SL}(3, \mathcal{O}_K) \backslash \mathrm{SL}(3, K_S)
        inoremap <buffer> <localleader>sl.okks \mathrm{SL}(, \mathcal{O}_K) \backslash \mathrm{SL}(, K_S)<esc>F,i

        inoremap <buffer> <localleader>slnksco \mathrm{SL}(n, K_S)/\mathrm{SL}(n, \mathcal{O})
        inoremap <buffer> <localleader>slmksco \mathrm{SL}(m, K_S)/\mathrm{SL}(m, \mathcal{O})
        inoremap <buffer> <localleader>sldksco \mathrm{SL}(d, K_S)/\mathrm{SL}(d, \mathcal{O})
        inoremap <buffer> <localleader>slkksco \mathrm{SL}(k, K_S)/\mathrm{SL}(k, \mathcal{O})
        inoremap <buffer> <localleader>sl2ksco \mathrm{SL}(2, K_S)/\mathrm{SL}(2, \mathcal{O})
        inoremap <buffer> <localleader>sl3ksco \mathrm{SL}(3, K_S)/\mathrm{SL}(3, \mathcal{O})
        inoremap <buffer> <localleader>sl.ksco \mathrm{SL}(, K_S)/\mathrm{SL}(, \mathcal{O})<esc>F,i

        inoremap <buffer> <localleader>slncoks \mathrm{SL}(n, \mathcal{O}) \backslash \mathrm{SL}(n, K_S)
        inoremap <buffer> <localleader>slmcoks \mathrm{SL}(m, \mathcal{O}) \backslash \mathrm{SL}(m, K_S)
        inoremap <buffer> <localleader>sldcoks \mathrm{SL}(d, \mathcal{O}) \backslash \mathrm{SL}(d, K_S)
        inoremap <buffer> <localleader>slkcoks \mathrm{SL}(k, \mathcal{O}) \backslash \mathrm{SL}(k, K_S)
        inoremap <buffer> <localleader>sl2coks \mathrm{SL}(2, \mathcal{O}) \backslash \mathrm{SL}(2, K_S)
        inoremap <buffer> <localleader>sl3coks \mathrm{SL}(3, \mathcal{O}) \backslash \mathrm{SL}(3, K_S)
        inoremap <buffer> <localleader>sl.coks \mathrm{SL}(, \mathcal{O}) \backslash \mathrm{SL}(, K_S)<esc>F,i

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

        inoremap <buffer> <localleader>pslnr \mathrm{PSL}(n, \mathbb{R})
        inoremap <buffer> <localleader>pslmr \mathrm{PSL}(m, \mathbb{R})
        inoremap <buffer> <localleader>psldr \mathrm{PSL}(d, \mathbb{R})
        inoremap <buffer> <localleader>pslkr \mathrm{PSL}(k, \mathbb{R})
        inoremap <buffer> <localleader>psl2r \mathrm{PSL}(2, \mathbb{R})
        inoremap <buffer> <localleader>psl3r \mathrm{PSL}(3, \mathbb{R})
        inoremap <buffer> <localleader>psl.r \mathrm{PSL}(, \mathbb{R})<esc>F,i

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

        inoremap <buffer> <localleader>onr \mathrm{O}(n, \mathbb{R})
        inoremap <buffer> <localleader>omr \mathrm{O}(m, \mathbb{R})
        inoremap <buffer> <localleader>odr \mathrm{O}(d, \mathbb{R})
        inoremap <buffer> <localleader>okr \mathrm{O}(k, \mathbb{R})
        inoremap <buffer> <localleader>o2r \mathrm{O}(2, \mathbb{R})
        inoremap <buffer> <localleader>o3r \mathrm{O}(3, \mathbb{R})
        inoremap <buffer> <localleader>o.r \mathrm{O}(, \mathbb{R})<esc>F,i

        inoremap <buffer> <localleader>onc \mathrm{O}(n, \mathbb{C})
        inoremap <buffer> <localleader>omc \mathrm{O}(m, \mathbb{C})
        inoremap <buffer> <localleader>odc \mathrm{O}(d, \mathbb{C})
        inoremap <buffer> <localleader>okc \mathrm{O}(k, \mathbb{C})
        inoremap <buffer> <localleader>o2c \mathrm{O}(2, \mathbb{C})
        inoremap <buffer> <localleader>o3c \mathrm{O}(3, \mathbb{C})
        inoremap <buffer> <localleader>o.c \mathrm{O}(, \mathbb{C})<esc>F,i

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

        inoremap <buffer> <localleader>sonr \mathrm{SO}(n, \mathbb{R})
        inoremap <buffer> <localleader>somr \mathrm{SO}(m, \mathbb{R})
        inoremap <buffer> <localleader>sodr \mathrm{SO}(d, \mathbb{R})
        inoremap <buffer> <localleader>sokr \mathrm{SO}(k, \mathbb{R})
        inoremap <buffer> <localleader>so2r \mathrm{SO}(2, \mathbb{R})
        inoremap <buffer> <localleader>so3r \mathrm{SO}(3, \mathbb{R})
        inoremap <buffer> <localleader>so.r \mathrm{SO}(, \mathbb{R})<esc>F,i

        inoremap <buffer> <localleader>sonc \mathrm{SO}(n, \mathbb{C})
        inoremap <buffer> <localleader>somc \mathrm{SO}(m, \mathbb{C})
        inoremap <buffer> <localleader>sodc \mathrm{SO}(d, \mathbb{C})
        inoremap <buffer> <localleader>sokc \mathrm{SO}(k, \mathbb{C})
        inoremap <buffer> <localleader>so2c \mathrm{SO}(2, \mathbb{C})
        inoremap <buffer> <localleader>so3c \mathrm{SO}(3, \mathbb{C})
        inoremap <buffer> <localleader>so.c \mathrm{SO}(, \mathbb{C})<esc>F,i

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

        inoremap <buffer> <localleader>unc \mathrm{U}(n, \mathbb{C})
        inoremap <buffer> <localleader>umc \mathrm{U}(m, \mathbb{C})
        inoremap <buffer> <localleader>udc \mathrm{U}(d, \mathbb{C})
        inoremap <buffer> <localleader>ukc \mathrm{U}(k, \mathbb{C})
        inoremap <buffer> <localleader>u2c \mathrm{U}(2, \mathbb{C})
        inoremap <buffer> <localleader>u3c \mathrm{U}(3, \mathbb{C})
        inoremap <buffer> <localleader>u.c \mathrm{U}(, \mathbb{C})<esc>F,i

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

        inoremap <buffer> <localleader>sunc \mathrm{SU}(n, \mathbb{C})
        inoremap <buffer> <localleader>sumc \mathrm{SU}(m, \mathbb{C})
        inoremap <buffer> <localleader>sudc \mathrm{SU}(d, \mathbb{C})
        inoremap <buffer> <localleader>sukc \mathrm{SU}(k, \mathbb{C})
        inoremap <buffer> <localleader>su2c \mathrm{SU}(2, \mathbb{C})
        inoremap <buffer> <localleader>su3c \mathrm{SU}(3, \mathbb{C})
        inoremap <buffer> <localleader>su.c \mathrm{SU}(, \mathbb{C})<esc>F,i

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

        inoremap <buffer> <localleader>mmnco \mathrm{M}_{m \times n}(\mathcal{O})
        inoremap <buffer> <localleader>m..co \mathrm{M}_{}(\mathcal{O})<esc>F};i
        inoremap <buffer> <localleader>mnco \mathrm{M}_{n}(\mathcal{O})
        inoremap <buffer> <localleader>mmco \mathrm{M}_{m}(\mathcal{O})
        inoremap <buffer> <localleader>mdco \mathrm{M}_{d}(\mathcal{O})
        inoremap <buffer> <localleader>m2co \mathrm{M}_{2}(\mathcal{O})
        inoremap <buffer> <localleader>m3co \mathrm{M}_{3}(\mathcal{O})
        inoremap <buffer> <localleader>m.co \mathrm{M}_{}(\mathcal{O})<esc>F};i

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

        inoremap <buffer> <localleader>glnco \mathrm{GL}_{n}(\mathcal{O})
        inoremap <buffer> <localleader>glmco \mathrm{GL}_{m}(\mathcal{O})
        inoremap <buffer> <localleader>gldco \mathrm{GL}_{d}(\mathcal{O})
        inoremap <buffer> <localleader>gl2co \mathrm{GL}_{2}(\mathcal{O})
        inoremap <buffer> <localleader>gl3co \mathrm{GL}_{3}(\mathcal{O})
        inoremap <buffer> <localleader>gl.co \mathrm{GL}_{}(\mathcal{O})<esc>F};i

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

        inoremap <buffer> <localleader>slnco \mathrm{SL}_{n}(\mathcal{O})
        inoremap <buffer> <localleader>slmco \mathrm{SL}_{m}(\mathcal{O})
        inoremap <buffer> <localleader>sldco \mathrm{SL}_{d}(\mathcal{O})
        inoremap <buffer> <localleader>slkco \mathrm{SL}_{k}(\mathcal{O})
        inoremap <buffer> <localleader>sl2co \mathrm{SL}_{2}(\mathcal{O})
        inoremap <buffer> <localleader>sl3co \mathrm{SL}_{3}(\mathcal{O})
        inoremap <buffer> <localleader>sl.co \mathrm{SL}_{}(\mathcal{O})<esc>F};i

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

        inoremap <buffer> <localleader>slnksco \mathrm{SL}_{n}(K_S)/\mathrm{SL}_{n}(\mathcal{O})
        inoremap <buffer> <localleader>slmksco \mathrm{SL}_{m}(K_S)/\mathrm{SL}_{m}(\mathcal{O})
        inoremap <buffer> <localleader>sldksco \mathrm{SL}_{d}(K_S)/\mathrm{SL}_{d}(\mathcal{O})
        inoremap <buffer> <localleader>slkksco \mathrm{SL}_{k}(K_S)/\mathrm{SL}_{k}(\mathcal{O})
        inoremap <buffer> <localleader>sl2ksco \mathrm{SL}_{2}(K_S)/\mathrm{SL}_{2}(\mathcal{O})
        inoremap <buffer> <localleader>sl3ksco \mathrm{SL}_{3}(K_S)/\mathrm{SL}_{3}(\mathcal{O})
        inoremap <buffer> <localleader>sl.ksco \mathrm{SL}_{}(K_S)/\mathrm{SL}_{}(\mathcal{O})<esc>F};i

        inoremap <buffer> <localleader>slncoks \mathrm{SL}_{n}(\mathcal{O}) \backslash \mathrm{SL}_{n}(K_S)
        inoremap <buffer> <localleader>slmcoks \mathrm{SL}_{m}(\mathcal{O}) \backslash \mathrm{SL}_{m}(K_S)
        inoremap <buffer> <localleader>sldcoks \mathrm{SL}_{d}(\mathcal{O}) \backslash \mathrm{SL}_{d}(K_S)
        inoremap <buffer> <localleader>slkcoks \mathrm{SL}_{k}(\mathcal{O}) \backslash \mathrm{SL}_{k}(K_S)
        inoremap <buffer> <localleader>sl2coks \mathrm{SL}_{2}(\mathcal{O}) \backslash \mathrm{SL}_{2}(K_S)
        inoremap <buffer> <localleader>sl3coks \mathrm{SL}_{3}(\mathcal{O}) \backslash \mathrm{SL}_{3}(K_S)
        inoremap <buffer> <localleader>sl.coks \mathrm{SL}_{}(\mathcal{O}) \backslash \mathrm{SL}_{}(K_S)<esc>F};i

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
"" Macro Matrix Groups{{{
""-------------------------------------------------------------------

"" Toggle Matrix groups writing style
"let s:Matrix_group_toggle = 1

"function! MatrixGroupToggle()
"    if s:Matrix_group_toggle
"        " Parenthesis style
"        " M{{{

"        inoremap <buffer> <leader>mmn \M_{m \times n}
"        inoremap <buffer> <leader>mn \M_{n}
"        inoremap <buffer> <leader>mm \M_{m}
"        inoremap <buffer> <leader>md \M_{d}
"        inoremap <buffer> <leader>mk \M_{k}
"        inoremap <buffer> <leader>m2 \M_{2}
"        inoremap <buffer> <leader>m3 \M_{3}
"        inoremap <buffer> <leader>m. \M_{}<esc>i

"        inoremap <buffer> <localleader>mmn \M_{m \times n}()<esc>i
"        inoremap <buffer> <localleader>m.. \M_{}()<esc>F}i
"        inoremap <buffer> <localleader>m \M()<esc>i

"        inoremap <buffer> <localleader>mn \M(n,)<esc>i
"        inoremap <buffer> <localleader>mm \M(m,)<esc>i
"        inoremap <buffer> <localleader>md \M(d,)<esc>i
"        inoremap <buffer> <localleader>mk \M(k,)<esc>i
"        inoremap <buffer> <localleader>m2 \M(2,)<esc>i
"        inoremap <buffer> <localleader>m3 \M(3,)<esc>i
"        inoremap <buffer> <localleader>m. \M(,)<esc>F,i

"        inoremap <buffer> <localleader>mmnz \M_{m \times n}(\mathbb{Z})
"        inoremap <buffer> <localleader>m..z \M_{}(\mathbb{Z})<esc>F};i
"        inoremap <buffer> <localleader>mnz \M(n, \mathbb{Z})
"        inoremap <buffer> <localleader>mmz \M(m, \mathbb{Z})
"        inoremap <buffer> <localleader>mdz \M(d, \mathbb{Z})
"        inoremap <buffer> <localleader>mkz \M(k, \mathbb{Z})
"        inoremap <buffer> <localleader>m2z \M(2, \mathbb{Z})
"        inoremap <buffer> <localleader>m3z \M(3, \mathbb{Z})
"        inoremap <buffer> <localleader>m.z \M(, \mathbb{Z})<esc>F,i

"        inoremap <buffer> <localleader>mmnq \M_{m \times n}(\mathbb{Q})
"        inoremap <buffer> <localleader>m..q \M_{}(\mathbb{Q})<esc>F};i
"        inoremap <buffer> <localleader>mnq \M(n, \mathbb{Q})
"        inoremap <buffer> <localleader>mmq \M(m, \mathbb{Q})
"        inoremap <buffer> <localleader>mdq \M(d, \mathbb{Q})
"        inoremap <buffer> <localleader>mkq \M(k, \mathbb{Q})
"        inoremap <buffer> <localleader>m2q \M(2, \mathbb{Q})
"        inoremap <buffer> <localleader>m3q \M(3, \mathbb{Q})
"        inoremap <buffer> <localleader>m.q \M(, \mathbb{Q})<esc>F,i

"        inoremap <buffer> <localleader>mmnr \M_{m \times n}(\mathbb{R})
"        inoremap <buffer> <localleader>m..r \M_{}(\mathbb{R})<esc>F};i
"        inoremap <buffer> <localleader>mnr \M(n, \mathbb{R})
"        inoremap <buffer> <localleader>mmr \M(m, \mathbb{R})
"        inoremap <buffer> <localleader>mdr \M(d, \mathbb{R})
"        inoremap <buffer> <localleader>mkr \M(k, \mathbb{R})
"        inoremap <buffer> <localleader>m2r \M(2, \mathbb{R})
"        inoremap <buffer> <localleader>m3r \M(3, \mathbb{R})
"        inoremap <buffer> <localleader>m.r \M(, \mathbb{R})<esc>F,i

"        inoremap <buffer> <localleader>mmnc \M_{m \times n}(\mathbb{C})
"        inoremap <buffer> <localleader>m..c \M_{}(\mathbb{C})<esc>F};i
"        inoremap <buffer> <localleader>mnc \M(n, \mathbb{C})
"        inoremap <buffer> <localleader>mmc \M(m, \mathbb{C})
"        inoremap <buffer> <localleader>mdc \M(d, \mathbb{C})
"        inoremap <buffer> <localleader>mkc \M(k, \mathbb{C})
"        inoremap <buffer> <localleader>m2c \M(2, \mathbb{C})
"        inoremap <buffer> <localleader>m3c \M(3, \mathbb{C})
"        inoremap <buffer> <localleader>m.c \M(, \mathbb{C})<esc>F,i

"        inoremap <buffer> <localleader>mmnzp \M_{m \times n}(\mathbb{Z}_p)
"        inoremap <buffer> <localleader>m..zp \M_{}(\mathbb{Z}_p)<esc>F};i
"        inoremap <buffer> <localleader>mnzp \M(n, \mathbb{Z}_p)
"        inoremap <buffer> <localleader>mmzp \M(m, \mathbb{Z}_p)
"        inoremap <buffer> <localleader>mdzp \M(d, \mathbb{Z}_p)
"        inoremap <buffer> <localleader>mkzp \M(k, \mathbb{Z}_p)
"        inoremap <buffer> <localleader>m2zp \M(2, \mathbb{Z}_p)
"        inoremap <buffer> <localleader>m3zp \M(3, \mathbb{Z}_p)
"        inoremap <buffer> <localleader>m.zp \M(, \mathbb{Z}_p)<esc>F,i

"        inoremap <buffer> <localleader>mmnqp \M_{m \times n}(\mathbb{Q}_p)
"        inoremap <buffer> <localleader>m..qp \M_{}(\mathbb{Q}_p)<esc>F};i
"        inoremap <buffer> <localleader>mnqp \M(n, \mathbb{Q}_p)
"        inoremap <buffer> <localleader>mmqp \M(m, \mathbb{Q}_p)
"        inoremap <buffer> <localleader>mdqp \M(d, \mathbb{Q}_p)
"        inoremap <buffer> <localleader>mkqp \M(k, \mathbb{Q}_p)
"        inoremap <buffer> <localleader>m2qp \M(2, \mathbb{Q}_p)
"        inoremap <buffer> <localleader>m3qp \M(3, \mathbb{Q}_p)
"        inoremap <buffer> <localleader>m.qp \M(, \mathbb{Q}_p)<esc>F,i

"        inoremap <buffer> <localleader>mmnk \M_{m \times n}(\mathbb{K})
"        inoremap <buffer> <localleader>m..k \M_{}(\mathbb{K})<esc>F};i
"        inoremap <buffer> <localleader>mnk \M(n, \mathbb{K})
"        inoremap <buffer> <localleader>mmk \M(m, \mathbb{K})
"        inoremap <buffer> <localleader>mdk \M(d, \mathbb{K})
"        inoremap <buffer> <localleader>mkk \M(k, \mathbb{K})
"        inoremap <buffer> <localleader>m2k \M(2, \mathbb{K})
"        inoremap <buffer> <localleader>m3k \M(3, \mathbb{K})
"        inoremap <buffer> <localleader>m.k \M(, \mathbb{K})<esc>F,i

"        inoremap <buffer> <localleader>mmna \M_{m \times n}(\mathbb{A})
"        inoremap <buffer> <localleader>m..a \M_{}(\mathbb{A})<esc>F};i
"        inoremap <buffer> <localleader>mna \M(n, \mathbb{A})
"        inoremap <buffer> <localleader>mma \M(m, \mathbb{A})
"        inoremap <buffer> <localleader>mda \M(d, \mathbb{A})
"        inoremap <buffer> <localleader>mka \M(k, \mathbb{A})
"        inoremap <buffer> <localleader>m2a \M(2, \mathbb{A})
"        inoremap <buffer> <localleader>m3a \M(3, \mathbb{A})
"        inoremap <buffer> <localleader>m.a \M(, \mathbb{A})<esc>F,i

"        inoremap <buffer> <localleader>mmnok \M_{m \times n}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>m..ok \M_{}(\mathcal{O}_K)<esc>F};i
"        inoremap <buffer> <localleader>mnok \M(n, \mathcal{O}_K)
"        inoremap <buffer> <localleader>mmok \M(m, \mathcal{O}_K)
"        inoremap <buffer> <localleader>mdok \M(d, \mathcal{O}_K)
"        inoremap <buffer> <localleader>mkok \M(k, \mathcal{O}_K)
"        inoremap <buffer> <localleader>m2ok \M(2, \mathcal{O}_K)
"        inoremap <buffer> <localleader>m3ok \M(3, \mathcal{O}_K)
"        inoremap <buffer> <localleader>m.ok \M(, \mathcal{O}_K)<esc>F,i

"        inoremap <buffer> <localleader>mmnco \M_{m \times n}(\mathcal{O})
"        inoremap <buffer> <localleader>m..co \M_{}(\mathcal{O})<esc>F};i
"        inoremap <buffer> <localleader>mnco \M(n, \mathcal{O})
"        inoremap <buffer> <localleader>mmco \M(m, \mathcal{O})
"        inoremap <buffer> <localleader>mdco \M(d, \mathcal{O})
"        inoremap <buffer> <localleader>mkco \M(k, \mathcal{O})
"        inoremap <buffer> <localleader>m2co \M(2, \mathcal{O})
"        inoremap <buffer> <localleader>m3co \M(3, \mathcal{O})
"        inoremap <buffer> <localleader>m.co \M(, \mathcal{O})<esc>F,i

"        inoremap <buffer> <localleader>mmnjk \M_{m \times n}(K)
"        inoremap <buffer> <localleader>m..jk \M_{}(K)<esc>F}i
"        inoremap <buffer> <localleader>mnjk \M(n, K)
"        inoremap <buffer> <localleader>mmjk \M(m, K)
"        inoremap <buffer> <localleader>mdjk \M(d, K)
"        inoremap <buffer> <localleader>mkjk \M(k, K)
"        inoremap <buffer> <localleader>m2jk \M(2, K)
"        inoremap <buffer> <localleader>m3jk \M(3, K)
"        inoremap <buffer> <localleader>m.jk \M(, K)<esc>F,i

"        inoremap <buffer> <localleader>mmnks \M_{m \times n}(K_S)
"        inoremap <buffer> <localleader>m..ks \M_{}(K_S)<esc>F}i
"        inoremap <buffer> <localleader>mnks \M(n, K_S)
"        inoremap <buffer> <localleader>mmks \M(m, K_S)
"        inoremap <buffer> <localleader>mdks \M(d, K_S)
"        inoremap <buffer> <localleader>mkks \M(k, K_S)
"        inoremap <buffer> <localleader>m2ks \M(2, K_S)
"        inoremap <buffer> <localleader>m3ks \M(3, K_S)
"        inoremap <buffer> <localleader>m.ks \M(, K_S)<esc>F,i

"        "}}}
"        " GL{{{

"        inoremap <buffer> <leader>gl \GL
"        inoremap <buffer> <leader>gln \GL_{n}
"        inoremap <buffer> <leader>glm \GL_{m}
"        inoremap <buffer> <leader>gld \GL_{d}
"        inoremap <buffer> <leader>glk \GL_{k}
"        inoremap <buffer> <leader>gl2 \GL_{2}
"        inoremap <buffer> <leader>gl3 \GL_{3}
"        inoremap <buffer> <leader>gl. \GL_{}<esc>i

"        inoremap <buffer> <localleader>gl \GL()<esc>i

"        inoremap <buffer> <localleader>gln \GL(n,)<esc>i
"        inoremap <buffer> <localleader>glm \GL(m,)<esc>i
"        inoremap <buffer> <localleader>gld \GL(d,)<esc>i
"        inoremap <buffer> <localleader>glk \GL(k,)<esc>i
"        inoremap <buffer> <localleader>gl2 \GL(2,)<esc>i
"        inoremap <buffer> <localleader>gl3 \GL(3,)<esc>i
"        inoremap <buffer> <localleader>gl. \GL(,)<esc>F,i
"        inoremap <buffer> <localleader>glpn \GL^+(n,)<esc>i
"        inoremap <buffer> <localleader>glpm \GL^+(m,)<esc>i
"        inoremap <buffer> <localleader>glpd \GL^+(d,)<esc>i
"        inoremap <buffer> <localleader>glp2 \GL^+(2,)<esc>i
"        inoremap <buffer> <localleader>glp3 \GL^+(3,)<esc>i
"        inoremap <buffer> <localleader>glp. \GL^+(,)<esc>F,i

"        inoremap <buffer> <localleader>glnz \GL(n, \mathbb{Z})
"        inoremap <buffer> <localleader>glmz \GL(m, \mathbb{Z})
"        inoremap <buffer> <localleader>gldz \GL(d, \mathbb{Z})
"        inoremap <buffer> <localleader>glkz \GL(k, \mathbb{Z})
"        inoremap <buffer> <localleader>gl2z \GL(2, \mathbb{Z})
"        inoremap <buffer> <localleader>gl3z \GL(3, \mathbb{Z})
"        inoremap <buffer> <localleader>gl.z \GL(, \mathbb{Z})<esc>F,i
"        inoremap <buffer> <localleader>glpnz \GL^+(n, \mathbb{Z})
"        inoremap <buffer> <localleader>glpmz \GL^+(m, \mathbb{Z})
"        inoremap <buffer> <localleader>glpdz \GL^+(d, \mathbb{Z})
"        inoremap <buffer> <localleader>glp2z \GL^+(2, \mathbb{Z})
"        inoremap <buffer> <localleader>glp3z \GL^+(3, \mathbb{Z})
"        inoremap <buffer> <localleader>glp.z \GL^+(, \mathbb{Z})<esc>F,i

"        inoremap <buffer> <localleader>glnq \GL(n, \mathbb{Q})
"        inoremap <buffer> <localleader>glmq \GL(m, \mathbb{Q})
"        inoremap <buffer> <localleader>gldq \GL(d, \mathbb{Q})
"        inoremap <buffer> <localleader>glkq \GL(k, \mathbb{Q})
"        inoremap <buffer> <localleader>gl2q \GL(2, \mathbb{Q})
"        inoremap <buffer> <localleader>gl3q \GL(3, \mathbb{Q})
"        inoremap <buffer> <localleader>gl.q \GL(, \mathbb{Q})<esc>F,i
"        inoremap <buffer> <localleader>glpnq \GL^+(n, \mathbb{Q})
"        inoremap <buffer> <localleader>glpmq \GL^+(m, \mathbb{Q})
"        inoremap <buffer> <localleader>glpdq \GL^+(d, \mathbb{Q})
"        inoremap <buffer> <localleader>glpkq \GL^+(k, \mathbb{Q})
"        inoremap <buffer> <localleader>glp2q \GL^+(2, \mathbb{Q})
"        inoremap <buffer> <localleader>glp3q \GL^+(3, \mathbb{Q})
"        inoremap <buffer> <localleader>glp.q \GL^+(, \mathbb{Q})<esc>F,i

"        inoremap <buffer> <localleader>glnr \GL(n, \mathbb{R})
"        inoremap <buffer> <localleader>glmr \GL(m, \mathbb{R})
"        inoremap <buffer> <localleader>gldr \GL(d, \mathbb{R})
"        inoremap <buffer> <localleader>glkr \GL(k, \mathbb{R})
"        inoremap <buffer> <localleader>gl2r \GL(2, \mathbb{R})
"        inoremap <buffer> <localleader>gl3r \GL(3, \mathbb{R})
"        inoremap <buffer> <localleader>gl.r \GL(, \mathbb{R})<esc>F,i
"        inoremap <buffer> <localleader>glpnr \GL^+(n, \mathbb{R})
"        inoremap <buffer> <localleader>glpmr \GL^+(m, \mathbb{R})
"        inoremap <buffer> <localleader>glpdr \GL^+(d, \mathbb{R})
"        inoremap <buffer> <localleader>glpkr \GL^+(k, \mathbb{R})
"        inoremap <buffer> <localleader>glp2r \GL^+(2, \mathbb{R})
"        inoremap <buffer> <localleader>glp3r \GL^+(3, \mathbb{R})
"        inoremap <buffer> <localleader>glp.r \GL^+(, \mathbb{R})<esc>F,i

"        inoremap <buffer> <localleader>glnc \GL(n, \mathbb{C})
"        inoremap <buffer> <localleader>glmc \GL(m, \mathbb{C})
"        inoremap <buffer> <localleader>gldc \GL(d, \mathbb{C})
"        inoremap <buffer> <localleader>glkc \GL(k, \mathbb{C})
"        inoremap <buffer> <localleader>gl2c \GL(2, \mathbb{C})
"        inoremap <buffer> <localleader>gl3c \GL(3, \mathbb{C})
"        inoremap <buffer> <localleader>gl.c \GL(, \mathbb{C})<esc>F,i

"        inoremap <buffer> <localleader>glnzp \GL(n, \mathbb{Z}_p)
"        inoremap <buffer> <localleader>glmzp \GL(m, \mathbb{Z}_p)
"        inoremap <buffer> <localleader>gldzp \GL(d, \mathbb{Z}_p)
"        inoremap <buffer> <localleader>glkzp \GL(k, \mathbb{Z}_p)
"        inoremap <buffer> <localleader>gl2zp \GL(2, \mathbb{Z}_p)
"        inoremap <buffer> <localleader>gl3zp \GL(3, \mathbb{Z}_p)
"        inoremap <buffer> <localleader>gl.zp \GL(, \mathbb{Z}_p)<esc>F,i

"        inoremap <buffer> <localleader>glnqp \GL(n, \mathbb{Q}_p)
"        inoremap <buffer> <localleader>glmqp \GL(m, \mathbb{Q}_p)
"        inoremap <buffer> <localleader>gldqp \GL(d, \mathbb{Q}_p)
"        inoremap <buffer> <localleader>glkqp \GL(k, \mathbb{Q}_p)
"        inoremap <buffer> <localleader>gl2qp \GL(2, \mathbb{Q}_p)
"        inoremap <buffer> <localleader>gl3qp \GL(3, \mathbb{Q}_p)
"        inoremap <buffer> <localleader>gl.qp \GL(, \mathbb{Q}_p)<esc>F,i

"        inoremap <buffer> <localleader>glnk \GL(n, \mathbb{K})
"        inoremap <buffer> <localleader>glmk \GL(m, \mathbb{K})
"        inoremap <buffer> <localleader>gldk \GL(d, \mathbb{K})
"        inoremap <buffer> <localleader>glkk \GL(k, \mathbb{K})
"        inoremap <buffer> <localleader>gl2k \GL(2, \mathbb{K})
"        inoremap <buffer> <localleader>gl3k \GL(3, \mathbb{K})
"        inoremap <buffer> <localleader>gl.k \GL(, \mathbb{K})<esc>F,i

"        inoremap <buffer> <localleader>glna \GL(n, \mathbb{A})
"        inoremap <buffer> <localleader>glma \GL(m, \mathbb{A})
"        inoremap <buffer> <localleader>glda \GL(d, \mathbb{A})
"        inoremap <buffer> <localleader>glka \GL(k, \mathbb{A})
"        inoremap <buffer> <localleader>gl2a \GL(2, \mathbb{A})
"        inoremap <buffer> <localleader>gl3a \GL(3, \mathbb{A})
"        inoremap <buffer> <localleader>gl.a \GL(, \mathbb{A})<esc>F,i

"        inoremap <buffer> <localleader>glnok \GL(n, \mathcal{O}_K)
"        inoremap <buffer> <localleader>glmok \GL(m, \mathcal{O}_K)
"        inoremap <buffer> <localleader>gldok \GL(d, \mathcal{O}_K)
"        inoremap <buffer> <localleader>glkok \GL(k, \mathcal{O}_K)
"        inoremap <buffer> <localleader>gl2ok \GL(2, \mathcal{O}_K)
"        inoremap <buffer> <localleader>gl3ok \GL(3, \mathcal{O}_K)
"        inoremap <buffer> <localleader>gl.ok \GL(, \mathcal{O}_K)<esc>F,i

"        inoremap <buffer> <localleader>glnco \GL(n, \mathcal{O})
"        inoremap <buffer> <localleader>glmco \GL(m, \mathcal{O})
"        inoremap <buffer> <localleader>gldco \GL(d, \mathcal{O})
"        inoremap <buffer> <localleader>glkco \GL(k, \mathcal{O})
"        inoremap <buffer> <localleader>gl2co \GL(2, \mathcal{O})
"        inoremap <buffer> <localleader>gl3co \GL(3, \mathcal{O})
"        inoremap <buffer> <localleader>gl.co \GL(, \mathcal{O})<esc>F,i

"        inoremap <buffer> <localleader>glnjk \GL(n, K)
"        inoremap <buffer> <localleader>glmjk \GL(m, K)
"        inoremap <buffer> <localleader>gldjk \GL(d, K)
"        inoremap <buffer> <localleader>glkjk \GL(k, K)
"        inoremap <buffer> <localleader>gl2jk \GL(2, K)
"        inoremap <buffer> <localleader>gl3jk \GL(3, K)
"        inoremap <buffer> <localleader>gl.jk \GL(, K)<esc>F,i

"        inoremap <buffer> <localleader>glnks \GL(n, K_S)
"        inoremap <buffer> <localleader>glmks \GL(m, K_S)
"        inoremap <buffer> <localleader>gldks \GL(d, K_S)
"        inoremap <buffer> <localleader>glkks \GL(k, K_S)
"        inoremap <buffer> <localleader>gl2ks \GL(2, K_S)
"        inoremap <buffer> <localleader>gl3ks \GL(3, K_S)
"        inoremap <buffer> <localleader>gl.ks \GL(, K_S)<esc>F,i

"        "}}}
"        " SL{{{

"        inoremap <buffer> <leader>sl \SL
"        inoremap <buffer> <leader>sln \SL_{n}
"        inoremap <buffer> <leader>slm \SL_{m}
"        inoremap <buffer> <leader>sld \SL_{d}
"        inoremap <buffer> <leader>slk \SL_{k}
"        inoremap <buffer> <leader>sl2 \SL_{2}
"        inoremap <buffer> <leader>sl3 \SL_{3}
"        inoremap <buffer> <leader>sl. \SL_{}<esc>i

"        inoremap <buffer> <localleader>sl \SL()<esc>i

"        inoremap <buffer> <localleader>sln \SL(n,)<esc>i
"        inoremap <buffer> <localleader>slm \SL(m,)<esc>i
"        inoremap <buffer> <localleader>sld \SL(d,)<esc>i
"        inoremap <buffer> <localleader>slk \SL(k,)<esc>i
"        inoremap <buffer> <localleader>sl2 \SL(2,)<esc>i
"        inoremap <buffer> <localleader>sl3 \SL(3,)<esc>i
"        inoremap <buffer> <localleader>sl. \SL(,)<esc>F,i

"        inoremap <buffer> <localleader>slnz \SL(n, \mathbb{Z})
"        inoremap <buffer> <localleader>slmz \SL(m, \mathbb{Z})
"        inoremap <buffer> <localleader>sldz \SL(d, \mathbb{Z})
"        inoremap <buffer> <localleader>slkz \SL(k, \mathbb{Z})
"        inoremap <buffer> <localleader>sl2z \SL(2, \mathbb{Z})
"        inoremap <buffer> <localleader>sl3z \SL(3, \mathbb{Z})
"        inoremap <buffer> <localleader>sl.z \SL(, \mathbb{Z})<esc>F,i

"        inoremap <buffer> <localleader>slnq \SL(n, \mathbb{Q})
"        inoremap <buffer> <localleader>slmq \SL(m, \mathbb{Q})
"        inoremap <buffer> <localleader>sldq \SL(d, \mathbb{Q})
"        inoremap <buffer> <localleader>slkq \SL(k, \mathbb{Q})
"        inoremap <buffer> <localleader>sl2q \SL(2, \mathbb{Q})
"        inoremap <buffer> <localleader>sl3q \SL(3, \mathbb{Q})
"        inoremap <buffer> <localleader>sl.q \SL(, \mathbb{Q})<esc>F,i

"        inoremap <buffer> <localleader>slnr \SL(n, \mathbb{R})
"        inoremap <buffer> <localleader>slmr \SL(m, \mathbb{R})
"        inoremap <buffer> <localleader>sldr \SL(d, \mathbb{R})
"        inoremap <buffer> <localleader>slkr \SL(k, \mathbb{R})
"        inoremap <buffer> <localleader>sl2r \SL(2, \mathbb{R})
"        inoremap <buffer> <localleader>sl3r \SL(3, \mathbb{R})
"        inoremap <buffer> <localleader>sl.r \SL(, \mathbb{R})<esc>F,i

"        inoremap <buffer> <localleader>slnc \SL(n, \mathbb{C})
"        inoremap <buffer> <localleader>slmc \SL(m, \mathbb{C})
"        inoremap <buffer> <localleader>sldc \SL(d, \mathbb{C})
"        inoremap <buffer> <localleader>slkc \SL(k, \mathbb{C})
"        inoremap <buffer> <localleader>sl2c \SL(2, \mathbb{C})
"        inoremap <buffer> <localleader>sl3c \SL(3, \mathbb{C})
"        inoremap <buffer> <localleader>sl.c \SL(, \mathbb{C})<esc>F,i

"        inoremap <buffer> <localleader>slnzp \SL(n, \mathbb{Z}_p)
"        inoremap <buffer> <localleader>slmzp \SL(m, \mathbb{Z}_p)
"        inoremap <buffer> <localleader>sldzp \SL(d, \mathbb{Z}_p)
"        inoremap <buffer> <localleader>slkzp \SL(k, \mathbb{Z}_p)
"        inoremap <buffer> <localleader>sl2zp \SL(2, \mathbb{Z}_p)
"        inoremap <buffer> <localleader>sl3zp \SL(3, \mathbb{Z}_p)
"        inoremap <buffer> <localleader>sl.zp \SL(, \mathbb{Z}_p)<esc>F,i

"        inoremap <buffer> <localleader>slnqp \SL(n, \mathbb{Q}_p)
"        inoremap <buffer> <localleader>slmqp \SL(m, \mathbb{Q}_p)
"        inoremap <buffer> <localleader>sldqp \SL(d, \mathbb{Q}_p)
"        inoremap <buffer> <localleader>slkqp \SL(k, \mathbb{Q}_p)
"        inoremap <buffer> <localleader>sl2qp \SL(2, \mathbb{Q}_p)
"        inoremap <buffer> <localleader>sl3qp \SL(3, \mathbb{Q}_p)
"        inoremap <buffer> <localleader>sl.qp \SL(, \mathbb{Q}_p)<esc>F,i

"        inoremap <buffer> <localleader>slnk \SL(n, \mathbb{K})
"        inoremap <buffer> <localleader>slmk \SL(m, \mathbb{K})
"        inoremap <buffer> <localleader>sldk \SL(d, \mathbb{K})
"        inoremap <buffer> <localleader>slkk \SL(k, \mathbb{K})
"        inoremap <buffer> <localleader>sl2k \SL(2, \mathbb{K})
"        inoremap <buffer> <localleader>sl3k \SL(3, \mathbb{K})
"        inoremap <buffer> <localleader>sl.k \SL(, \mathbb{K})<esc>F,i

"        inoremap <buffer> <localleader>slna \SL(n, \mathbb{A})
"        inoremap <buffer> <localleader>slma \SL(m, \mathbb{A})
"        inoremap <buffer> <localleader>slda \SL(d, \mathbb{A})
"        inoremap <buffer> <localleader>slka \SL(k, \mathbb{A})
"        inoremap <buffer> <localleader>sl2a \SL(2, \mathbb{A})
"        inoremap <buffer> <localleader>sl3a \SL(3, \mathbb{A})
"        inoremap <buffer> <localleader>sl.a \SL(, \mathbb{A})<esc>F,i

"        inoremap <buffer> <localleader>slnok \SL(n, \mathcal{O}_K)
"        inoremap <buffer> <localleader>slmok \SL(m, \mathcal{O}_K)
"        inoremap <buffer> <localleader>sldok \SL(d, \mathcal{O}_K)
"        inoremap <buffer> <localleader>slkok \SL(k, \mathcal{O}_K)
"        inoremap <buffer> <localleader>sl2ok \SL(2, \mathcal{O}_K)
"        inoremap <buffer> <localleader>sl3ok \SL(3, \mathcal{O}_K)
"        inoremap <buffer> <localleader>sl.ok \SL(, \mathcal{O}_K)<esc>F,i

"        inoremap <buffer> <localleader>slnco \SL(n, \mathcal{O})
"        inoremap <buffer> <localleader>slmco \SL(m, \mathcal{O})
"        inoremap <buffer> <localleader>sldco \SL(d, \mathcal{O})
"        inoremap <buffer> <localleader>slkco \SL(k, \mathcal{O})
"        inoremap <buffer> <localleader>sl2co \SL(2, \mathcal{O})
"        inoremap <buffer> <localleader>sl3co \SL(3, \mathcal{O})
"        inoremap <buffer> <localleader>sl.co \SL(, \mathcal{O})<esc>F,i

"        inoremap <buffer> <localleader>slnjk \SL(n, K)
"        inoremap <buffer> <localleader>slmjk \SL(m, K)
"        inoremap <buffer> <localleader>sldjk \SL(d, K)
"        inoremap <buffer> <localleader>slkjk \SL(k, K)
"        inoremap <buffer> <localleader>sl2jk \SL(2, K)
"        inoremap <buffer> <localleader>sl3jk \SL(3, K)
"        inoremap <buffer> <localleader>sl.jk \SL(, K)<esc>F,i

"        inoremap <buffer> <localleader>slnks \SL(n, K_S)
"        inoremap <buffer> <localleader>slmks \SL(m, K_S)
"        inoremap <buffer> <localleader>sldks \SL(d, K_S)
"        inoremap <buffer> <localleader>slkks \SL(k, K_S)
"        inoremap <buffer> <localleader>sl2ks \SL(2, K_S)
"        inoremap <buffer> <localleader>sl3ks \SL(3, K_S)
"        inoremap <buffer> <localleader>sl.ks \SL(, K_S)<esc>F,i

"        inoremap <buffer> <localleader>slnrz \SL(n, \mathbb{R})/\SL(n, \mathbb{Z})
"        inoremap <buffer> <localleader>slmrz \SL(m, \mathbb{R})/\SL(m, \mathbb{Z})
"        inoremap <buffer> <localleader>sldrz \SL(d, \mathbb{R})/\SL(d, \mathbb{Z})
"        inoremap <buffer> <localleader>slkrz \SL(k, \mathbb{R})/\SL(k, \mathbb{Z})
"        inoremap <buffer> <localleader>sl2rz \SL(2, \mathbb{R})/\SL(2, \mathbb{Z})
"        inoremap <buffer> <localleader>sl3rz \SL(3, \mathbb{R})/\SL(3, \mathbb{Z})
"        inoremap <buffer> <localleader>sl.rz \SL(, \mathbb{R})/\SL(, \mathbb{Z})<esc>F,i

"        inoremap <buffer> <localleader>slnzr \SL(n, \mathbb{Z}) \backslash \SL(n, \mathbb{R})
"        inoremap <buffer> <localleader>slmzr \SL(m, \mathbb{Z}) \backslash \SL(m, \mathbb{R})
"        inoremap <buffer> <localleader>sldzr \SL(d, \mathbb{Z}) \backslash \SL(d, \mathbb{R})
"        inoremap <buffer> <localleader>slkzr \SL(k, \mathbb{Z}) \backslash \SL(k, \mathbb{R})
"        inoremap <buffer> <localleader>sl2zr \SL(2, \mathbb{Z}) \backslash \SL(2, \mathbb{R})
"        inoremap <buffer> <localleader>sl3zr \SL(3, \mathbb{Z}) \backslash \SL(3, \mathbb{R})
"        inoremap <buffer> <localleader>sl.zr \SL(, \mathbb{Z}) \backslash \SL(, \mathbb{R})<esc>F,i

"        inoremap <buffer> <localleader>slnksok \SL(n, K_S)/\SL(n, \mathcal{O}_K)
"        inoremap <buffer> <localleader>slmksok \SL(m, K_S)/\SL(m, \mathcal{O}_K)
"        inoremap <buffer> <localleader>sldksok \SL(d, K_S)/\SL(d, \mathcal{O}_K)
"        inoremap <buffer> <localleader>slkksok \SL(k, K_S)/\SL(k, \mathcal{O}_K)
"        inoremap <buffer> <localleader>sl2ksok \SL(2, K_S)/\SL(2, \mathcal{O}_K)
"        inoremap <buffer> <localleader>sl3ksok \SL(3, K_S)/\SL(3, \mathcal{O}_K)
"        inoremap <buffer> <localleader>sl.ksok \SL(, K_S)/\SL(, \mathcal{O}_K)<esc>F,i

"        inoremap <buffer> <localleader>slnokks \SL(n, \mathcal{O}_K) \backslash \SL(n, K_S)
"        inoremap <buffer> <localleader>slmokks \SL(m, \mathcal{O}_K) \backslash \SL(m, K_S)
"        inoremap <buffer> <localleader>sldokks \SL(d, \mathcal{O}_K) \backslash \SL(d, K_S)
"        inoremap <buffer> <localleader>slkokks \SL(k, \mathcal{O}_K) \backslash \SL(k, K_S)
"        inoremap <buffer> <localleader>sl2okks \SL(2, \mathcal{O}_K) \backslash \SL(2, K_S)
"        inoremap <buffer> <localleader>sl3okks \SL(3, \mathcal{O}_K) \backslash \SL(3, K_S)
"        inoremap <buffer> <localleader>sl.okks \SL(, \mathcal{O}_K) \backslash \SL(, K_S)<esc>F,i

"        inoremap <buffer> <localleader>slnksco \SL(n, K_S)/\SL(n, \mathcal{O})
"        inoremap <buffer> <localleader>slmksco \SL(m, K_S)/\SL(m, \mathcal{O})
"        inoremap <buffer> <localleader>sldksco \SL(d, K_S)/\SL(d, \mathcal{O})
"        inoremap <buffer> <localleader>slkksco \SL(k, K_S)/\SL(k, \mathcal{O})
"        inoremap <buffer> <localleader>sl2ksco \SL(2, K_S)/\SL(2, \mathcal{O})
"        inoremap <buffer> <localleader>sl3ksco \SL(3, K_S)/\SL(3, \mathcal{O})
"        inoremap <buffer> <localleader>sl.ksco \SL(, K_S)/\SL(, \mathcal{O})<esc>F,i

"        inoremap <buffer> <localleader>slncoks \SL(n, \mathcal{O}) \backslash \SL(n, K_S)
"        inoremap <buffer> <localleader>slmcoks \SL(m, \mathcal{O}) \backslash \SL(m, K_S)
"        inoremap <buffer> <localleader>sldcoks \SL(d, \mathcal{O}) \backslash \SL(d, K_S)
"        inoremap <buffer> <localleader>slkcoks \SL(k, \mathcal{O}) \backslash \SL(k, K_S)
"        inoremap <buffer> <localleader>sl2coks \SL(2, \mathcal{O}) \backslash \SL(2, K_S)
"        inoremap <buffer> <localleader>sl3coks \SL(3, \mathcal{O}) \backslash \SL(3, K_S)
"        inoremap <buffer> <localleader>sl.coks \SL(, \mathcal{O}) \backslash \SL(, K_S)<esc>F,i

"        "}}}
"        " PSL{{{

"        inoremap <buffer> <leader>psl \PSL
"        inoremap <buffer> <leader>psln \PSL_{n}
"        inoremap <buffer> <leader>pslm \PSL_{m}
"        inoremap <buffer> <leader>psld \PSL_{d}
"        inoremap <buffer> <leader>pslk \PSL_{k}
"        inoremap <buffer> <leader>psl2 \PSL_{2}
"        inoremap <buffer> <leader>psl3 \PSL_{3}
"        inoremap <buffer> <leader>psl. \PSL_{}<esc>i

"        inoremap <buffer> <localleader>psl \PSL()<esc>i

"        inoremap <buffer> <localleader>psln \PSL(n,)<esc>i
"        inoremap <buffer> <localleader>pslm \PSL(m,)<esc>i
"        inoremap <buffer> <localleader>psld \PSL(d,)<esc>i
"        inoremap <buffer> <localleader>pslk \PSL(k,)<esc>i
"        inoremap <buffer> <localleader>psl2 \PSL(2,)<esc>i
"        inoremap <buffer> <localleader>psl3 \PSL(3,)<esc>i
"        inoremap <buffer> <localleader>psl. \PSL(,)<esc>F,i

"        inoremap <buffer> <localleader>pslnr \PSL(n, \mathbb{R})
"        inoremap <buffer> <localleader>pslmr \PSL(m, \mathbb{R})
"        inoremap <buffer> <localleader>psldr \PSL(d, \mathbb{R})
"        inoremap <buffer> <localleader>pslkr \PSL(k, \mathbb{R})
"        inoremap <buffer> <localleader>psl2r \PSL(2, \mathbb{R})
"        inoremap <buffer> <localleader>psl3r \PSL(3, \mathbb{R})
"        inoremap <buffer> <localleader>psl.r \PSL(, \mathbb{R})<esc>F,i

"        "}}}
"        " O{{{

"        inoremap <buffer> <leader>on \O_{n}
"        inoremap <buffer> <leader>om \O_{m}
"        inoremap <buffer> <leader>od \O_{d}
"        inoremap <buffer> <leader>o2 \O_{2}
"        inoremap <buffer> <leader>o3 \O_{3}
"        inoremap <buffer> <leader>o. \O_{}<esc>i

"        inoremap <buffer> <localleader>o \O()<esc>i

"        inoremap <buffer> <localleader>on \O(n,)<esc>i
"        inoremap <buffer> <localleader>om \O(m,)<esc>i
"        inoremap <buffer> <localleader>od \O(d,)<esc>i
"        inoremap <buffer> <localleader>o2 \O(2,)<esc>i
"        inoremap <buffer> <localleader>o3 \O(3,)<esc>i
"        inoremap <buffer> <localleader>o. \O(,)<esc>F,i

"        inoremap <buffer> <localleader>onr \O(n, \mathbb{R})
"        inoremap <buffer> <localleader>omr \O(m, \mathbb{R})
"        inoremap <buffer> <localleader>odr \O(d, \mathbb{R})
"        inoremap <buffer> <localleader>okr \O(k, \mathbb{R})
"        inoremap <buffer> <localleader>o2r \O(2, \mathbb{R})
"        inoremap <buffer> <localleader>o3r \O(3, \mathbb{R})
"        inoremap <buffer> <localleader>o.r \O(, \mathbb{R})<esc>F,i

"        inoremap <buffer> <localleader>onc \O(n, \mathbb{C})
"        inoremap <buffer> <localleader>omc \O(m, \mathbb{C})
"        inoremap <buffer> <localleader>odc \O(d, \mathbb{C})
"        inoremap <buffer> <localleader>okc \O(k, \mathbb{C})
"        inoremap <buffer> <localleader>o2c \O(2, \mathbb{C})
"        inoremap <buffer> <localleader>o3c \O(3, \mathbb{C})
"        inoremap <buffer> <localleader>o.c \O(, \mathbb{C})<esc>F,i

"        "}}}
"        " SO{{{

"        inoremap <buffer> <leader>so \SO
"        inoremap <buffer> <leader>son \SO_{n}
"        inoremap <buffer> <leader>som \SO_{m}
"        inoremap <buffer> <leader>sod \SO_{d}
"        inoremap <buffer> <leader>sok \SO_{k}
"        inoremap <buffer> <leader>so2 \SO_{2}
"        inoremap <buffer> <leader>so3 \SO_{3}
"        inoremap <buffer> <leader>so. \SO_{}<esc>i

"        inoremap <buffer> <localleader>so \SO()<esc>i

"        inoremap <buffer> <localleader>son \SO(n,)<esc>i
"        inoremap <buffer> <localleader>som \SO(m,)<esc>i
"        inoremap <buffer> <localleader>sod \SO(d,)<esc>i
"        inoremap <buffer> <localleader>sok \SO(k,)<esc>i
"        inoremap <buffer> <localleader>so2 \SO(2,)<esc>i
"        inoremap <buffer> <localleader>so3 \SO(3,)<esc>i
"        inoremap <buffer> <localleader>so. \SO(,)<esc>F,i

"        inoremap <buffer> <localleader>sonr \SO(n, \mathbb{R})
"        inoremap <buffer> <localleader>somr \SO(m, \mathbb{R})
"        inoremap <buffer> <localleader>sodr \SO(d, \mathbb{R})
"        inoremap <buffer> <localleader>sokr \SO(k, \mathbb{R})
"        inoremap <buffer> <localleader>so2r \SO(2, \mathbb{R})
"        inoremap <buffer> <localleader>so3r \SO(3, \mathbb{R})
"        inoremap <buffer> <localleader>so.r \SO(, \mathbb{R})<esc>F,i

"        inoremap <buffer> <localleader>sonc \SO(n, \mathbb{C})
"        inoremap <buffer> <localleader>somc \SO(m, \mathbb{C})
"        inoremap <buffer> <localleader>sodc \SO(d, \mathbb{C})
"        inoremap <buffer> <localleader>sokc \SO(k, \mathbb{C})
"        inoremap <buffer> <localleader>so2c \SO(2, \mathbb{C})
"        inoremap <buffer> <localleader>so3c \SO(3, \mathbb{C})
"        inoremap <buffer> <localleader>so.c \SO(, \mathbb{C})<esc>F,i

"        "}}}
"        " U{{{

"        inoremap <buffer> <leader>un \U_{n}
"        inoremap <buffer> <leader>um \U_{m}
"        inoremap <buffer> <leader>ud \U_{d}
"        inoremap <buffer> <leader>uk \U_{k}
"        inoremap <buffer> <leader>u2 \U_{2}
"        inoremap <buffer> <leader>u3 \U_{3}
"        inoremap <buffer> <leader>u. \U_{}<esc>i

"        inoremap <buffer> <localleader>u \U()<esc>i

"        inoremap <buffer> <localleader>un \U(n)
"        inoremap <buffer> <localleader>um \U(m)
"        inoremap <buffer> <localleader>ud \U(d)
"        inoremap <buffer> <localleader>uk \U(k)
"        inoremap <buffer> <localleader>u2 \U(2)
"        inoremap <buffer> <localleader>u3 \U(3)
"        inoremap <buffer> <localleader>u. \U()<esc>i

"        inoremap <buffer> <localleader>unc \U(n, \mathbb{C})
"        inoremap <buffer> <localleader>umc \U(m, \mathbb{C})
"        inoremap <buffer> <localleader>udc \U(d, \mathbb{C})
"        inoremap <buffer> <localleader>ukc \U(k, \mathbb{C})
"        inoremap <buffer> <localleader>u2c \U(2, \mathbb{C})
"        inoremap <buffer> <localleader>u3c \U(3, \mathbb{C})
"        inoremap <buffer> <localleader>u.c \U(, \mathbb{C})<esc>F,i

"        "}}}
"        " SU{{{

"        inoremap <buffer> <leader>su \SU
"        inoremap <buffer> <leader>sun \SU_{n}
"        inoremap <buffer> <leader>sum \SU_{m}
"        inoremap <buffer> <leader>sud \SU_{d}
"        inoremap <buffer> <leader>suk \SU_{k}
"        inoremap <buffer> <leader>su2 \SU_{2}
"        inoremap <buffer> <leader>su3 \SU_{3}
"        inoremap <buffer> <leader>su. \SU_{}<esc>i

"        inoremap <buffer> <localleader>su \SU()<esc>i

"        inoremap <buffer> <localleader>sun \SU(n)
"        inoremap <buffer> <localleader>sum \SU(m)
"        inoremap <buffer> <localleader>sud \SU(d)
"        inoremap <buffer> <localleader>suk \SU(k)
"        inoremap <buffer> <localleader>su2 \SU(2)
"        inoremap <buffer> <localleader>su3 \SU(3)
"        inoremap <buffer> <localleader>su. \SU()<esc>i

"        inoremap <buffer> <localleader>sunc \SU(n, \mathbb{C})
"        inoremap <buffer> <localleader>sumc \SU(m, \mathbb{C})
"        inoremap <buffer> <localleader>sudc \SU(d, \mathbb{C})
"        inoremap <buffer> <localleader>sukc \SU(k, \mathbb{C})
"        inoremap <buffer> <localleader>su2c \SU(2, \mathbb{C})
"        inoremap <buffer> <localleader>su3c \SU(3, \mathbb{C})
"        inoremap <buffer> <localleader>su.c \SU(, \mathbb{C})<esc>F,i

"        "}}}
"        let s:Matrix_group_toggle = 0
"    else
"        " Underscore style
"        " M{{{

"        inoremap <buffer> <leader>mmn \M_{m \times n}
"        inoremap <buffer> <leader>mn \M_{n}
"        inoremap <buffer> <leader>mm \M_{m}
"        inoremap <buffer> <leader>md \M_{d}
"        inoremap <buffer> <leader>m2 \M_{2}
"        inoremap <buffer> <leader>m3 \M_{3}
"        inoremap <buffer> <leader>m. \M_{}<esc>i

"        inoremap <buffer> <localleader>mmn \M_{m \times n}()<esc>i
"        inoremap <buffer> <localleader>m.. \M_{}()<esc>F}i
"        inoremap <buffer> <localleader>m \M_{}()<esc>F}i

"        inoremap <buffer> <localleader>mn \M_{n}()<esc>i
"        inoremap <buffer> <localleader>mm \M_{m}()<esc>i
"        inoremap <buffer> <localleader>md \M_{d}()<esc>i
"        inoremap <buffer> <localleader>m2 \M_{2}()<esc>i
"        inoremap <buffer> <localleader>m3 \M_{3}()<esc>i
"        inoremap <buffer> <localleader>m. \M_{}()<esc>F}i

"        inoremap <buffer> <localleader>mmnz \M_{m \times n}(\mathbb{Z})
"        inoremap <buffer> <localleader>m..z \M_{}(\mathbb{Z})<esc>F};i
"        inoremap <buffer> <localleader>mnz \M_{n}(\mathbb{Z})
"        inoremap <buffer> <localleader>mmz \M_{m}(\mathbb{Z})
"        inoremap <buffer> <localleader>mdz \M_{d}(\mathbb{Z})
"        inoremap <buffer> <localleader>m2z \M_{2}(\mathbb{Z})
"        inoremap <buffer> <localleader>m3z \M_{3}(\mathbb{Z})
"        inoremap <buffer> <localleader>m.z \M_{}(\mathbb{Z})<esc>F};i

"        inoremap <buffer> <localleader>mmnq \M_{m \times n}(\mathbb{Q})
"        inoremap <buffer> <localleader>m..q \M_{}(\mathbb{Q})<esc>F};i
"        inoremap <buffer> <localleader>mnq \M_{n}(\mathbb{Q})
"        inoremap <buffer> <localleader>mmq \M_{m}(\mathbb{Q})
"        inoremap <buffer> <localleader>mdq \M_{d}(\mathbb{Q})
"        inoremap <buffer> <localleader>m2q \M_{2}(\mathbb{Q})
"        inoremap <buffer> <localleader>m3q \M_{3}(\mathbb{Q})
"        inoremap <buffer> <localleader>m.q \M_{}(\mathbb{Q})<esc>F};i

"        inoremap <buffer> <localleader>mmnr \M_{m \times n}(\mathbb{R})
"        inoremap <buffer> <localleader>m..r \M_{}(\mathbb{R})<esc>F};i
"        inoremap <buffer> <localleader>mnr \M_{n}(\mathbb{R})
"        inoremap <buffer> <localleader>mmr \M_{m}(\mathbb{R})
"        inoremap <buffer> <localleader>mdr \M_{d}(\mathbb{R})
"        inoremap <buffer> <localleader>m2r \M_{2}(\mathbb{R})
"        inoremap <buffer> <localleader>m3r \M_{3}(\mathbb{R})
"        inoremap <buffer> <localleader>m.r \M_{}(\mathbb{R})<esc>F};i

"        inoremap <buffer> <localleader>mmnc \M_{m \times n}(\mathbb{C})
"        inoremap <buffer> <localleader>m..c \M_{}(\mathbb{C})<esc>F};i
"        inoremap <buffer> <localleader>mnc \M_{n}(\mathbb{C})
"        inoremap <buffer> <localleader>mmc \M_{m}(\mathbb{C})
"        inoremap <buffer> <localleader>mdc \M_{d}(\mathbb{C})
"        inoremap <buffer> <localleader>m2c \M_{2}(\mathbb{C})
"        inoremap <buffer> <localleader>m3c \M_{3}(\mathbb{C})
"        inoremap <buffer> <localleader>m.c \M_{}(\mathbb{C})<esc>F};i

"        inoremap <buffer> <localleader>mmnzp \M_{m \times n}(\mathbb{Z}_p)
"        inoremap <buffer> <localleader>m..zp \M_{}(\mathbb{Z}_p)<esc>F};i
"        inoremap <buffer> <localleader>mnzp \M_{n}(\mathbb{Z}_p)
"        inoremap <buffer> <localleader>mmzp \M_{m}(\mathbb{Z}_p)
"        inoremap <buffer> <localleader>mdzp \M_{d}(\mathbb{Z}_p)
"        inoremap <buffer> <localleader>m2zp \M_{2}(\mathbb{Z}_p)
"        inoremap <buffer> <localleader>m3zp \M_{3}(\mathbb{Z}_p)
"        inoremap <buffer> <localleader>m.zp \M_{}(\mathbb{Z}_p)<esc>F};i

"        inoremap <buffer> <localleader>mmnqp \M_{m \times n}(\mathbb{Q}_p)
"        inoremap <buffer> <localleader>m..qp \M_{}(\mathbb{Q}_p)<esc>F};i
"        inoremap <buffer> <localleader>mnqp \M_{n}(\mathbb{Q}_p)
"        inoremap <buffer> <localleader>mmqp \M_{m}(\mathbb{Q}_p)
"        inoremap <buffer> <localleader>mdqp \M_{d}(\mathbb{Q}_p)
"        inoremap <buffer> <localleader>m2qp \M_{2}(\mathbb{Q}_p)
"        inoremap <buffer> <localleader>m3qp \M_{3}(\mathbb{Q}_p)
"        inoremap <buffer> <localleader>m.qp \M_{}(\mathbb{Q}_p)<esc>F};i

"        inoremap <buffer> <localleader>mmnk \M_{m \times n}(\mathbb{K})
"        inoremap <buffer> <localleader>m..k \M_{}(\mathbb{K})<esc>F};i
"        inoremap <buffer> <localleader>mnk \M_{n}(\mathbb{K})
"        inoremap <buffer> <localleader>mmk \M_{m}(\mathbb{K})
"        inoremap <buffer> <localleader>mdk \M_{d}(\mathbb{K})
"        inoremap <buffer> <localleader>m2k \M_{2}(\mathbb{K})
"        inoremap <buffer> <localleader>m3k \M_{3}(\mathbb{K})
"        inoremap <buffer> <localleader>m.k \M_{}(\mathbb{K})<esc>F};i

"        inoremap <buffer> <localleader>mmna \M_{m \times n}(\mathbb{A})
"        inoremap <buffer> <localleader>m..a \M_{}(\mathbb{A})<esc>F};i
"        inoremap <buffer> <localleader>mna \M_{n}(\mathbb{A})
"        inoremap <buffer> <localleader>mma \M_{m}(\mathbb{A})
"        inoremap <buffer> <localleader>mda \M_{d}(\mathbb{A})
"        inoremap <buffer> <localleader>m2a \M_{2}(\mathbb{A})
"        inoremap <buffer> <localleader>m3a \M_{3}(\mathbb{A})
"        inoremap <buffer> <localleader>m.a \M_{}(\mathbb{A})<esc>F};i

"        inoremap <buffer> <localleader>mmnok \M_{m \times n}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>m..ok \M_{}(\mathcal{O}_K)<esc>F};i
"        inoremap <buffer> <localleader>mnok \M_{n}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>mmok \M_{m}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>mdok \M_{d}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>m2ok \M_{2}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>m3ok \M_{3}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>m.ok \M_{}(\mathcal{O}_K)<esc>F};i

"        inoremap <buffer> <localleader>mmnco \M_{m \times n}(\mathcal{O})
"        inoremap <buffer> <localleader>m..co \M_{}(\mathcal{O})<esc>F};i
"        inoremap <buffer> <localleader>mnco \M_{n}(\mathcal{O})
"        inoremap <buffer> <localleader>mmco \M_{m}(\mathcal{O})
"        inoremap <buffer> <localleader>mdco \M_{d}(\mathcal{O})
"        inoremap <buffer> <localleader>m2co \M_{2}(\mathcal{O})
"        inoremap <buffer> <localleader>m3co \M_{3}(\mathcal{O})
"        inoremap <buffer> <localleader>m.co \M_{}(\mathcal{O})<esc>F};i

"        inoremap <buffer> <localleader>mmnjk \M_{m \times n}(K)
"        inoremap <buffer> <localleader>m..jk \M_{}(K)<esc>F}i
"        inoremap <buffer> <localleader>mnjk \M_{n}(K)
"        inoremap <buffer> <localleader>mmjk \M_{m}(K)
"        inoremap <buffer> <localleader>mdjk \M_{d}(K)
"        inoremap <buffer> <localleader>m2jk \M_{2}(K)
"        inoremap <buffer> <localleader>m3jk \M_{3}(K)
"        inoremap <buffer> <localleader>m.jk \M_{}(K)<esc>F};i

"        inoremap <buffer> <localleader>mmnks \M_{m \times n}(K_S)
"        inoremap <buffer> <localleader>m..ks \M_{}(K_S)<esc>F}i
"        inoremap <buffer> <localleader>mnks \M_{n}(K_S)
"        inoremap <buffer> <localleader>mmks \M_{m}(K_S)
"        inoremap <buffer> <localleader>mdks \M_{d}(K_S)
"        inoremap <buffer> <localleader>m2ks \M_{2}(K_S)
"        inoremap <buffer> <localleader>m3ks \M_{3}(K_S)
"        inoremap <buffer> <localleader>m.ks \M_{}(K_S)<esc>F}i

"        "}}}
"        " GL{{{

"        inoremap <buffer> <leader>gl \GL
"        inoremap <buffer> <leader>gln \GL_{n}
"        inoremap <buffer> <leader>glm \GL_{m}
"        inoremap <buffer> <leader>gld \GL_{d}
"        inoremap <buffer> <leader>gl2 \GL_{2}
"        inoremap <buffer> <leader>gl3 \GL_{3}
"        inoremap <buffer> <leader>gl. \GL_{}<esc>i

"        inoremap <buffer> <localleader>gl \GL_{}()<esc>F}i

"        inoremap <buffer> <localleader>gln \GL_{n}()<esc>i
"        inoremap <buffer> <localleader>glm \GL_{m}()<esc>i
"        inoremap <buffer> <localleader>gld \GL_{d}()<esc>i
"        inoremap <buffer> <localleader>gl2 \GL_{2}()<esc>i
"        inoremap <buffer> <localleader>gl3 \GL_{3}()<esc>i
"        inoremap <buffer> <localleader>gl. \GL_{}()<esc>F}i
"        inoremap <buffer> <localleader>glnp \GL_{n}^+()<esc>i
"        inoremap <buffer> <localleader>glmp \GL_{m}^+()<esc>i
"        inoremap <buffer> <localleader>gldp \GL_{d}^+()<esc>i
"        inoremap <buffer> <localleader>gl2p \GL_{2}^+()<esc>i
"        inoremap <buffer> <localleader>gl3p \GL_{3}^+()<esc>i
"        inoremap <buffer> <localleader>gl.p \GL_{}^+()<esc>F}i

"        inoremap <buffer> <localleader>glnz \GL_{n}(\mathbb{Z})
"        inoremap <buffer> <localleader>glmz \GL_{m}(\mathbb{Z})
"        inoremap <buffer> <localleader>gldz \GL_{d}(\mathbb{Z})
"        inoremap <buffer> <localleader>gl2z \GL_{2}(\mathbb{Z})
"        inoremap <buffer> <localleader>gl3z \GL_{3}(\mathbb{Z})
"        inoremap <buffer> <localleader>gl.z \GL_{}(\mathbb{Z})<esc>F};i
"        inoremap <buffer> <localleader>glnpz \GL_{n}^+(\mathbb{Z})
"        inoremap <buffer> <localleader>glmpz \GL_{m}^+(\mathbb{Z})
"        inoremap <buffer> <localleader>gldpz \GL_{d}^+(\mathbb{Z})
"        inoremap <buffer> <localleader>gl2pz \GL_{2}^+(\mathbb{Z})
"        inoremap <buffer> <localleader>gl3pz \GL_{3}^+(\mathbb{Z})
"        inoremap <buffer> <localleader>gl.pz \GL_{}^+(\mathbb{Z})<esc>F};i

"        inoremap <buffer> <localleader>glnq \GL_{n}(\mathbb{Q})
"        inoremap <buffer> <localleader>glmq \GL_{m}(\mathbb{Q})
"        inoremap <buffer> <localleader>gldq \GL_{d}(\mathbb{Q})
"        inoremap <buffer> <localleader>gl2q \GL_{2}(\mathbb{Q})
"        inoremap <buffer> <localleader>gl3q \GL_{3}(\mathbb{Q})
"        inoremap <buffer> <localleader>gl.q \GL_{}(\mathbb{Q})<esc>F};i
"        inoremap <buffer> <localleader>glnpq \GL_{n}^+(\mathbb{Q})
"        inoremap <buffer> <localleader>glmpq \GL_{m}^+(\mathbb{Q})
"        inoremap <buffer> <localleader>gldpq \GL_{d}^+(\mathbb{Q})
"        inoremap <buffer> <localleader>gl2pq \GL_{2}^+(\mathbb{Q})
"        inoremap <buffer> <localleader>gl3pq \GL_{3}^+(\mathbb{Q})
"        inoremap <buffer> <localleader>gl.pq \GL_{}^+(\mathbb{Q})<esc>F};i

"        inoremap <buffer> <localleader>glnr \GL_{n}(\mathbb{R})
"        inoremap <buffer> <localleader>glmr \GL_{m}(\mathbb{R})
"        inoremap <buffer> <localleader>gldr \GL_{d}(\mathbb{R})
"        inoremap <buffer> <localleader>gl2r \GL_{2}(\mathbb{R})
"        inoremap <buffer> <localleader>gl3r \GL_{3}(\mathbb{R})
"        inoremap <buffer> <localleader>gl.r \GL_{}(\mathbb{R})<esc>F};i
"        inoremap <buffer> <localleader>glnpr \GL_{n}^+(\mathbb{R})
"        inoremap <buffer> <localleader>glmpr \GL_{m}^+(\mathbb{R})
"        inoremap <buffer> <localleader>gldpr \GL_{d}^+(\mathbb{R})
"        inoremap <buffer> <localleader>gl2pr \GL_{2}^+(\mathbb{R})
"        inoremap <buffer> <localleader>gl3pr \GL_{3}^+(\mathbb{R})
"        inoremap <buffer> <localleader>gl.pr \GL_{}^+(\mathbb{R})<esc>F};i

"        inoremap <buffer> <localleader>glnc \GL_{n}(\mathbb{C})
"        inoremap <buffer> <localleader>glmc \GL_{m}(\mathbb{C})
"        inoremap <buffer> <localleader>gldc \GL_{d}(\mathbb{C})
"        inoremap <buffer> <localleader>gl2c \GL_{2}(\mathbb{C})
"        inoremap <buffer> <localleader>gl3c \GL_{3}(\mathbb{C})
"        inoremap <buffer> <localleader>gl.c \GL_{}(\mathbb{C})<esc>F};i

"        inoremap <buffer> <localleader>glnzp \GL_{n}(\mathbb{Z}_p)
"        inoremap <buffer> <localleader>glmzp \GL_{m}(\mathbb{Z}_p)
"        inoremap <buffer> <localleader>gldzp \GL_{d}(\mathbb{Z}_p)
"        inoremap <buffer> <localleader>gl2zp \GL_{2}(\mathbb{Z}_p)
"        inoremap <buffer> <localleader>gl3zp \GL_{3}(\mathbb{Z}_p)
"        inoremap <buffer> <localleader>gl.zp \GL_{}(\mathbb{Z}_p)<esc>F};i

"        inoremap <buffer> <localleader>glnqp \GL_{n}(\mathbb{Q}_p)
"        inoremap <buffer> <localleader>glmqp \GL_{m}(\mathbb{Q}_p)
"        inoremap <buffer> <localleader>gldqp \GL_{d}(\mathbb{Q}_p)
"        inoremap <buffer> <localleader>gl2qp \GL_{2}(\mathbb{Q}_p)
"        inoremap <buffer> <localleader>gl3qp \GL_{3}(\mathbb{Q}_p)
"        inoremap <buffer> <localleader>gl.qp \GL_{}(\mathbb{Q}_p)<esc>F};i

"        inoremap <buffer> <localleader>glnk \GL_{n}(\mathbb{K})
"        inoremap <buffer> <localleader>glmk \GL_{m}(\mathbb{K})
"        inoremap <buffer> <localleader>gldk \GL_{d}(\mathbb{K})
"        inoremap <buffer> <localleader>gl2k \GL_{2}(\mathbb{K})
"        inoremap <buffer> <localleader>gl3k \GL_{3}(\mathbb{K})
"        inoremap <buffer> <localleader>gl.k \GL_{}(\mathbb{K})<esc>F};i

"        inoremap <buffer> <localleader>glna \GL_{n}(\mathbb{A})
"        inoremap <buffer> <localleader>glma \GL_{m}(\mathbb{A})
"        inoremap <buffer> <localleader>glda \GL_{d}(\mathbb{A})
"        inoremap <buffer> <localleader>gl2a \GL_{2}(\mathbb{A})
"        inoremap <buffer> <localleader>gl3a \GL_{3}(\mathbb{A})
"        inoremap <buffer> <localleader>gl.a \GL_{}(\mathbb{A})<esc>F};i

"        inoremap <buffer> <localleader>glnok \GL_{n}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>glmok \GL_{m}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>gldok \GL_{d}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>gl2ok \GL_{2}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>gl3ok \GL_{3}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>gl.ok \GL_{}(\mathcal{O}_K)<esc>F};i

"        inoremap <buffer> <localleader>glnco \GL_{n}(\mathcal{O})
"        inoremap <buffer> <localleader>glmco \GL_{m}(\mathcal{O})
"        inoremap <buffer> <localleader>gldco \GL_{d}(\mathcal{O})
"        inoremap <buffer> <localleader>gl2co \GL_{2}(\mathcal{O})
"        inoremap <buffer> <localleader>gl3co \GL_{3}(\mathcal{O})
"        inoremap <buffer> <localleader>gl.co \GL_{}(\mathcal{O})<esc>F};i

"        inoremap <buffer> <localleader>glnjk \GL_{n}(K)
"        inoremap <buffer> <localleader>glmjk \GL_{m}(K)
"        inoremap <buffer> <localleader>gldjk \GL_{d}(K)
"        inoremap <buffer> <localleader>gl2jk \GL_{2}(K)
"        inoremap <buffer> <localleader>gl3jk \GL_{3}(K)
"        inoremap <buffer> <localleader>gl.jk \GL_{}(K)<esc>F}i

"        inoremap <buffer> <localleader>glnks \GL_{n}(K_S)
"        inoremap <buffer> <localleader>glmks \GL_{m}(K_S)
"        inoremap <buffer> <localleader>gldks \GL_{d}(K_S)
"        inoremap <buffer> <localleader>gl2ks \GL_{2}(K_S)
"        inoremap <buffer> <localleader>gl3ks \GL_{3}(K_S)
"        inoremap <buffer> <localleader>gl.ks \GL_{}(K_S)<esc>F}i

"        "}}}
"        " SL{{{

"        inoremap <buffer> <leader>sl \SL
"        inoremap <buffer> <leader>sln \SL_{n}
"        inoremap <buffer> <leader>slm \SL_{m}
"        inoremap <buffer> <leader>sld \SL_{d}
"        inoremap <buffer> <leader>slk \SL_{k}
"        inoremap <buffer> <leader>sl2 \SL_{2}
"        inoremap <buffer> <leader>sl3 \SL_{3}
"        inoremap <buffer> <leader>sl. \SL_{}<esc>i

"        inoremap <buffer> <localleader>sl \SL_{}()<esc>F}i

"        inoremap <buffer> <localleader>sln \SL_{n}()<esc>i
"        inoremap <buffer> <localleader>slm \SL_{m}()<esc>i
"        inoremap <buffer> <localleader>sld \SL_{d}()<esc>i
"        inoremap <buffer> <localleader>slk \SL_{k}()<esc>i
"        inoremap <buffer> <localleader>sl2 \SL_{2}()<esc>i
"        inoremap <buffer> <localleader>sl3 \SL_{3}()<esc>i
"        inoremap <buffer> <localleader>sl. \SL_{}()<esc>F}i

"        inoremap <buffer> <localleader>slnz \SL_{n}(\mathbb{Z})
"        inoremap <buffer> <localleader>slmz \SL_{m}(\mathbb{Z})
"        inoremap <buffer> <localleader>sldz \SL_{d}(\mathbb{Z})
"        inoremap <buffer> <localleader>slkz \SL_{k}(\mathbb{Z})
"        inoremap <buffer> <localleader>sl2z \SL_{2}(\mathbb{Z})
"        inoremap <buffer> <localleader>sl3z \SL_{3}(\mathbb{Z})
"        inoremap <buffer> <localleader>sl.z \SL_{}(\mathbb{Z})<esc>F};i

"        inoremap <buffer> <localleader>slnq \SL_{n}(\mathbb{Q})
"        inoremap <buffer> <localleader>slmq \SL_{m}(\mathbb{Q})
"        inoremap <buffer> <localleader>sldq \SL_{d}(\mathbb{Q})
"        inoremap <buffer> <localleader>slkq \SL_{k}(\mathbb{Q})
"        inoremap <buffer> <localleader>sl2q \SL_{2}(\mathbb{Q})
"        inoremap <buffer> <localleader>sl3q \SL_{3}(\mathbb{Q})
"        inoremap <buffer> <localleader>sl.q \SL_{}(\mathbb{Q})<esc>F};i

"        inoremap <buffer> <localleader>slnr \SL_{n}(\mathbb{R})
"        inoremap <buffer> <localleader>slmr \SL_{m}(\mathbb{R})
"        inoremap <buffer> <localleader>sldr \SL_{d}(\mathbb{R})
"        inoremap <buffer> <localleader>slkr \SL_{k}(\mathbb{R})
"        inoremap <buffer> <localleader>sl2r \SL_{2}(\mathbb{R})
"        inoremap <buffer> <localleader>sl3r \SL_{3}(\mathbb{R})
"        inoremap <buffer> <localleader>sl.r \SL_{}(\mathbb{R})<esc>F};i

"        inoremap <buffer> <localleader>slnc \SL_{n}(\mathbb{C})
"        inoremap <buffer> <localleader>slmc \SL_{m}(\mathbb{C})
"        inoremap <buffer> <localleader>sldc \SL_{d}(\mathbb{C})
"        inoremap <buffer> <localleader>slkc \SL_{k}(\mathbb{C})
"        inoremap <buffer> <localleader>sl2c \SL_{2}(\mathbb{C})
"        inoremap <buffer> <localleader>sl3c \SL_{3}(\mathbb{C})
"        inoremap <buffer> <localleader>sl.c \SL_{}(\mathbb{C})<esc>F};i

"        inoremap <buffer> <localleader>slnzp \SL_{n}(\mathbb{Z}_p)
"        inoremap <buffer> <localleader>slmzp \SL_{m}(\mathbb{Z}_p)
"        inoremap <buffer> <localleader>sldzp \SL_{d}(\mathbb{Z}_p)
"        inoremap <buffer> <localleader>slkzp \SL_{k}(\mathbb{Z}_p)
"        inoremap <buffer> <localleader>sl2zp \SL_{2}(\mathbb{Z}_p)
"        inoremap <buffer> <localleader>sl3zp \SL_{3}(\mathbb{Z}_p)
"        inoremap <buffer> <localleader>sl.zp \SL_{}(\mathbb{Z}_p)<esc>F};i

"        inoremap <buffer> <localleader>slnqp \SL_{n}(\mathbb{Q}_p)
"        inoremap <buffer> <localleader>slmqp \SL_{m}(\mathbb{Q}_p)
"        inoremap <buffer> <localleader>sldqp \SL_{d}(\mathbb{Q}_p)
"        inoremap <buffer> <localleader>slkqp \SL_{k}(\mathbb{Q}_p)
"        inoremap <buffer> <localleader>sl2qp \SL_{2}(\mathbb{Q}_p)
"        inoremap <buffer> <localleader>sl3qp \SL_{3}(\mathbb{Q}_p)
"        inoremap <buffer> <localleader>sl.qp \SL_{}(\mathbb{Q}_p)<esc>F};i

"        inoremap <buffer> <localleader>slnk \SL_{n}(\mathbb{K})
"        inoremap <buffer> <localleader>slmk \SL_{m}(\mathbb{K})
"        inoremap <buffer> <localleader>sldk \SL_{d}(\mathbb{K})
"        inoremap <buffer> <localleader>slkk \SL_{k}(\mathbb{K})
"        inoremap <buffer> <localleader>sl2k \SL_{2}(\mathbb{K})
"        inoremap <buffer> <localleader>sl3k \SL_{3}(\mathbb{K})
"        inoremap <buffer> <localleader>sl.k \SL_{}(\mathbb{K})<esc>F};i

"        inoremap <buffer> <localleader>slna \SL_{n}(\mathbb{A})
"        inoremap <buffer> <localleader>slma \SL_{m}(\mathbb{A})
"        inoremap <buffer> <localleader>slda \SL_{d}(\mathbb{A})
"        inoremap <buffer> <localleader>slka \SL_{k}(\mathbb{A})
"        inoremap <buffer> <localleader>sl2a \SL_{2}(\mathbb{A})
"        inoremap <buffer> <localleader>sl3a \SL_{3}(\mathbb{A})
"        inoremap <buffer> <localleader>sl.a \SL_{}(\mathbb{A})<esc>F};i

"        inoremap <buffer> <localleader>slnok \SL_{n}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>slmok \SL_{m}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>sldok \SL_{d}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>slkok \SL_{k}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>sl2ok \SL_{2}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>sl3ok \SL_{3}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>sl.ok \SL_{}(\mathcal{O}_K)<esc>F};i

"        inoremap <buffer> <localleader>slnco \SL_{n}(\mathcal{O})
"        inoremap <buffer> <localleader>slmco \SL_{m}(\mathcal{O})
"        inoremap <buffer> <localleader>sldco \SL_{d}(\mathcal{O})
"        inoremap <buffer> <localleader>slkco \SL_{k}(\mathcal{O})
"        inoremap <buffer> <localleader>sl2co \SL_{2}(\mathcal{O})
"        inoremap <buffer> <localleader>sl3co \SL_{3}(\mathcal{O})
"        inoremap <buffer> <localleader>sl.co \SL_{}(\mathcal{O})<esc>F};i

"        inoremap <buffer> <localleader>slnjk \SL_{n}(K)
"        inoremap <buffer> <localleader>slmjk \SL_{m}(K)
"        inoremap <buffer> <localleader>sldjk \SL_{d}(K)
"        inoremap <buffer> <localleader>slkjk \SL_{k}(K)
"        inoremap <buffer> <localleader>sl2jk \SL_{2}(K)
"        inoremap <buffer> <localleader>sl3jk \SL_{3}(K)
"        inoremap <buffer> <localleader>sl.jk \SL_{}(K)<esc>F}i

"        inoremap <buffer> <localleader>slnks \SL_{n}(K_S)
"        inoremap <buffer> <localleader>slmks \SL_{m}(K_S)
"        inoremap <buffer> <localleader>sldks \SL_{d}(K_S)
"        inoremap <buffer> <localleader>slkks \SL_{k}(K_S)
"        inoremap <buffer> <localleader>sl2ks \SL_{2}(K_S)
"        inoremap <buffer> <localleader>sl3ks \SL_{3}(K_S)
"        inoremap <buffer> <localleader>sl.ks \SL_{}(K_S)<esc>F}i

"        inoremap <buffer> <localleader>slnrz \SL_{n}(\mathbb{R})/\SL_{n}(\mathbb{Z})
"        inoremap <buffer> <localleader>slmrz \SL_{m}(\mathbb{R})/\SL_{m}(\mathbb{Z})
"        inoremap <buffer> <localleader>sldrz \SL_{d}(\mathbb{R})/\SL_{d}(\mathbb{Z})
"        inoremap <buffer> <localleader>slkrz \SL_{k}(\mathbb{R})/\SL_{k}(\mathbb{Z})
"        inoremap <buffer> <localleader>sl2rz \SL_{2}(\mathbb{R})/\SL_{2}(\mathbb{Z})
"        inoremap <buffer> <localleader>sl3rz \SL_{3}(\mathbb{R})/\SL_{3}(\mathbb{Z})
"        inoremap <buffer> <localleader>sl.rz \SL_{}(\mathbb{R})/\SL_{}(\mathbb{Z})<esc>F};i

"        inoremap <buffer> <localleader>slnzr \SL_{n}(\mathbb{Z}) \backslash \SL_{n}(\mathbb{R})
"        inoremap <buffer> <localleader>slmzr \SL_{m}(\mathbb{Z}) \backslash \SL_{m}(\mathbb{R})
"        inoremap <buffer> <localleader>sldzr \SL_{d}(\mathbb{Z}) \backslash \SL_{d}(\mathbb{R})
"        inoremap <buffer> <localleader>slkzr \SL_{k}(\mathbb{Z}) \backslash \SL_{k}(\mathbb{R})
"        inoremap <buffer> <localleader>sl2zr \SL_{2}(\mathbb{Z}) \backslash \SL_{2}(\mathbb{R})
"        inoremap <buffer> <localleader>sl3zr \SL_{3}(\mathbb{Z}) \backslash \SL_{3}(\mathbb{R})
"        inoremap <buffer> <localleader>sl.zr \SL_{}(\mathbb{Z}) \backslash \SL_{}(\mathbb{R})<esc>F};i

"        inoremap <buffer> <localleader>slnksok \SL_{n}(K_S)/\SL_{n}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>slmksok \SL_{m}(K_S)/\SL_{m}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>sldksok \SL_{d}(K_S)/\SL_{d}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>slkksok \SL_{k}(K_S)/\SL_{k}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>sl2ksok \SL_{2}(K_S)/\SL_{2}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>sl3ksok \SL_{3}(K_S)/\SL_{3}(\mathcal{O}_K)
"        inoremap <buffer> <localleader>sl.ksok \SL_{}(K_S)/\SL_{}(\mathcal{O}_K)<esc>F};i

"        inoremap <buffer> <localleader>slnokks \SL_{n}(\mathcal{O}_K) \backslash \SL_{n}(K_S)
"        inoremap <buffer> <localleader>slmokks \SL_{m}(\mathcal{O}_K) \backslash \SL_{m}(K_S)
"        inoremap <buffer> <localleader>sldokks \SL_{d}(\mathcal{O}_K) \backslash \SL_{d}(K_S)
"        inoremap <buffer> <localleader>slkokks \SL_{k}(\mathcal{O}_K) \backslash \SL_{k}(K_S)
"        inoremap <buffer> <localleader>sl2okks \SL_{2}(\mathcal{O}_K) \backslash \SL_{2}(K_S)
"        inoremap <buffer> <localleader>sl3okks \SL_{3}(\mathcal{O}_K) \backslash \SL_{3}(K_S)
"        inoremap <buffer> <localleader>sl.okks \SL_{}(\mathcal{O}_K) \backslash \SL_{}(K_S)<esc>F};i

"        inoremap <buffer> <localleader>slnksco \SL_{n}(K_S)/\SL_{n}(\mathcal{O})
"        inoremap <buffer> <localleader>slmksco \SL_{m}(K_S)/\SL_{m}(\mathcal{O})
"        inoremap <buffer> <localleader>sldksco \SL_{d}(K_S)/\SL_{d}(\mathcal{O})
"        inoremap <buffer> <localleader>slkksco \SL_{k}(K_S)/\SL_{k}(\mathcal{O})
"        inoremap <buffer> <localleader>sl2ksco \SL_{2}(K_S)/\SL_{2}(\mathcal{O})
"        inoremap <buffer> <localleader>sl3ksco \SL_{3}(K_S)/\SL_{3}(\mathcal{O})
"        inoremap <buffer> <localleader>sl.ksco \SL_{}(K_S)/\SL_{}(\mathcal{O})<esc>F};i

"        inoremap <buffer> <localleader>slncoks \SL_{n}(\mathcal{O}) \backslash \SL_{n}(K_S)
"        inoremap <buffer> <localleader>slmcoks \SL_{m}(\mathcal{O}) \backslash \SL_{m}(K_S)
"        inoremap <buffer> <localleader>sldcoks \SL_{d}(\mathcal{O}) \backslash \SL_{d}(K_S)
"        inoremap <buffer> <localleader>slkcoks \SL_{k}(\mathcal{O}) \backslash \SL_{k}(K_S)
"        inoremap <buffer> <localleader>sl2coks \SL_{2}(\mathcal{O}) \backslash \SL_{2}(K_S)
"        inoremap <buffer> <localleader>sl3coks \SL_{3}(\mathcal{O}) \backslash \SL_{3}(K_S)
"        inoremap <buffer> <localleader>sl.coks \SL_{}(\mathcal{O}) \backslash \SL_{}(K_S)<esc>F};i

"        "}}}
"        " PSL{{{

"        inoremap <buffer> <leader>psl \PSL
"        inoremap <buffer> <leader>psln \PSL_{n}
"        inoremap <buffer> <leader>pslm \PSL_{m}
"        inoremap <buffer> <leader>psld \PSL_{d}
"        inoremap <buffer> <leader>pslk \PSL_{k}
"        inoremap <buffer> <leader>psl2 \PSL_{2}
"        inoremap <buffer> <leader>psl3 \PSL_{3}
"        inoremap <buffer> <leader>psl. \PSL_{}<esc>i

"        inoremap <buffer> <localleader>psl \PSL_{}()<esc>F}i

"        inoremap <buffer> <localleader>psln \PSL_{n}()<esc>i
"        inoremap <buffer> <localleader>pslm \PSL_{m}()<esc>i
"        inoremap <buffer> <localleader>psld \PSL_{d}()<esc>i
"        inoremap <buffer> <localleader>pslk \PSL_{k}()<esc>i
"        inoremap <buffer> <localleader>psl2 \PSL_{2}()<esc>i
"        inoremap <buffer> <localleader>psl3 \PSL_{3}()<esc>i
"        inoremap <buffer> <localleader>psl. \PSL_{}()<esc>F}i

"        inoremap <buffer> <localleader>pslnr \PSL_{n}(\mathbb{R})
"        inoremap <buffer> <localleader>pslmr \PSL_{m}(\mathbb{R})
"        inoremap <buffer> <localleader>pslmd \PSL_{m}(\mathbb{d})
"        inoremap <buffer> <localleader>psl2r \PSL_{2}(\mathbb{R})
"        inoremap <buffer> <localleader>psl3r \PSL_{3}(\mathbb{R})
"        inoremap <buffer> <localleader>psl.r \PSL_{}(\mathbb{R})<esc>F};i

"        "}}}
"        " O{{{

"        inoremap <buffer> <leader>on \O_{n}
"        inoremap <buffer> <leader>om \O_{m}
"        inoremap <buffer> <leader>od \O_{d}
"        inoremap <buffer> <leader>o2 \O_{2}
"        inoremap <buffer> <leader>o3 \O_{3}
"        inoremap <buffer> <leader>o. \O_{}<esc>i

"        inoremap <buffer> <localleader>o \O_{}()<esc>F}i

"        inoremap <buffer> <localleader>on \O_{n}()<esc>i
"        inoremap <buffer> <localleader>om \O_{m}()<esc>i
"        inoremap <buffer> <localleader>od \O_{d}()<esc>i
"        inoremap <buffer> <localleader>o2 \O_{2}()<esc>i
"        inoremap <buffer> <localleader>o3 \O_{3}()<esc>i
"        inoremap <buffer> <localleader>o. \O_{}()<esc>F}i

"        inoremap <buffer> <localleader>onr \O_{n}(\mathbb{R})
"        inoremap <buffer> <localleader>omr \O_{m}(\mathbb{R})
"        inoremap <buffer> <localleader>odr \O_{d}(\mathbb{R})
"        inoremap <buffer> <localleader>okr \O_{k}(\mathbb{R})
"        inoremap <buffer> <localleader>o2r \O_{2}(\mathbb{R})
"        inoremap <buffer> <localleader>o3r \O_{3}(\mathbb{R})
"        inoremap <buffer> <localleader>o.r \O_{}(\mathbb{R})<esc>F};i

"        inoremap <buffer> <localleader>onc \O_{n}(\mathbb{C})
"        inoremap <buffer> <localleader>omc \O_{m}(\mathbb{C})
"        inoremap <buffer> <localleader>odc \O_{d}(\mathbb{C})
"        inoremap <buffer> <localleader>okc \O_{k}(\mathbb{C})
"        inoremap <buffer> <localleader>o2c \O_{2}(\mathbb{C})
"        inoremap <buffer> <localleader>o3c \O_{3}(\mathbb{C})
"        inoremap <buffer> <localleader>o.c \O_{}(\mathbb{C})<esc>F};i

"        "}}}
"        " SO{{{

"        inoremap <buffer> <leader>so \SO
"        inoremap <buffer> <leader>son \SO_{n}
"        inoremap <buffer> <leader>som \SO_{m}
"        inoremap <buffer> <leader>sod \SO_{d}
"        inoremap <buffer> <leader>sok \SO_{k}
"        inoremap <buffer> <leader>so2 \SO_{2}
"        inoremap <buffer> <leader>so3 \SO_{3}
"        inoremap <buffer> <leader>so. \SO_{}<esc>i

"        inoremap <buffer> <localleader>so \SO_{}()<esc>F}i

"        inoremap <buffer> <localleader>son \SO_{n}()<esc>i
"        inoremap <buffer> <localleader>som \SO_{m}()<esc>i
"        inoremap <buffer> <localleader>sod \SO_{d}()<esc>i
"        inoremap <buffer> <localleader>sok \SO_{k}()<esc>i
"        inoremap <buffer> <localleader>so2 \SO_{2}()<esc>i
"        inoremap <buffer> <localleader>so3 \SO_{3}()<esc>i
"        inoremap <buffer> <localleader>so. \SO_{}()<esc>F}i

"        inoremap <buffer> <localleader>sonr \SO_{n}(\mathbb{R})
"        inoremap <buffer> <localleader>somr \SO_{m}(\mathbb{R})
"        inoremap <buffer> <localleader>sodr \SO_{d}(\mathbb{R})
"        inoremap <buffer> <localleader>sokr \SO_{k}(\mathbb{R})
"        inoremap <buffer> <localleader>so2r \SO_{2}(\mathbb{R})
"        inoremap <buffer> <localleader>so3r \SO_{3}(\mathbb{R})
"        inoremap <buffer> <localleader>so.r \SO_{}(\mathbb{R})<esc>F};i

"        inoremap <buffer> <localleader>sonc \SO_{n}(\mathbb{C})
"        inoremap <buffer> <localleader>somc \SO_{m}(\mathbb{C})
"        inoremap <buffer> <localleader>sodc \SO_{d}(\mathbb{C})
"        inoremap <buffer> <localleader>sokc \SO_{k}(\mathbb{C})
"        inoremap <buffer> <localleader>so2c \SO_{2}(\mathbb{C})
"        inoremap <buffer> <localleader>so3c \SO_{3}(\mathbb{C})
"        inoremap <buffer> <localleader>so.c \SO_{}(\mathbb{C})<esc>F};i

"        "}}}
"        " U{{{

"        inoremap <buffer> <leader>un \U_{n}
"        inoremap <buffer> <leader>um \U_{m}
"        inoremap <buffer> <leader>ud \U_{d}
"        inoremap <buffer> <leader>uk \U_{k}
"        inoremap <buffer> <leader>u2 \U_{2}
"        inoremap <buffer> <leader>u3 \U_{3}
"        inoremap <buffer> <leader>u. \U_{}<esc>i

"        inoremap <buffer> <localleader>u \U_{}()<esc>F}i

"        inoremap <buffer> <localleader>unc \U_{n}(\mathbb{C})
"        inoremap <buffer> <localleader>umc \U_{m}(\mathbb{C})
"        inoremap <buffer> <localleader>udc \U_{d}(\mathbb{C})
"        inoremap <buffer> <localleader>ukc \U_{k}(\mathbb{C})
"        inoremap <buffer> <localleader>u2c \U_{2}(\mathbb{C})
"        inoremap <buffer> <localleader>u3c \U_{3}(\mathbb{C})
"        inoremap <buffer> <localleader>u.c \U_{}(\mathbb{C})<esc>F};i

"        "}}}
"        " SU{{{

"        inoremap <buffer> <leader>su \SU
"        inoremap <buffer> <leader>sun \SU_{n}
"        inoremap <buffer> <leader>sum \SU_{m}
"        inoremap <buffer> <leader>sud \SU_{d}
"        inoremap <buffer> <leader>suk \SU_{k}
"        inoremap <buffer> <leader>su2 \SU_{2}
"        inoremap <buffer> <leader>su3 \SU_{3}
"        inoremap <buffer> <leader>su. \SU_{}<esc>i

"        inoremap <buffer> <localleader>su \SU_{}()<esc>F}i

"        inoremap <buffer> <localleader>sunc \SU_{n}(\mathbb{C})
"        inoremap <buffer> <localleader>sumc \SU_{m}(\mathbb{C})
"        inoremap <buffer> <localleader>sudc \SU_{d}(\mathbb{C})
"        inoremap <buffer> <localleader>sukc \SU_{k}(\mathbb{C})
"        inoremap <buffer> <localleader>su2c \SU_{2}(\mathbb{C})
"        inoremap <buffer> <localleader>su3c \SU_{3}(\mathbb{C})
"        inoremap <buffer> <localleader>su.c \SU_{}(\mathbb{C})<esc>F};i

"        "}}}
"        let s:Matrix_group_toggle = 1
"    endif
"endfunction

"nnoremap <buffer> <localleader>mgt :call MatrixGroupToggle()<cr>:echo<cr>
"inoremap <buffer> <localleader>mgt <esc>:call MatrixGroupToggle()<cr>:echo<cr>a

""}}}
" times, tilde, hat, accent, bar, over/uline, power"{{{
"-------------------------------------------------------------------

inoremap <buffer> <localleader>x \times

inoremap <buffer> ;ox \otimes_{}<esc>i
inoremap <buffer> ;oa \oplus_{}<esc>i
inoremap <buffer> <localleader>ox \otimes_{}^{}<esc>F}i
inoremap <buffer> <localleader>oa \oplus_{}^{}<esc>F}i
inoremap <buffer> ;oxl \otimes\limits_{}<esc>i
inoremap <buffer> ;oal \oplus\limits_{}<esc>i
inoremap <buffer> <localleader>oxl \otimes\limits_{}^{}<esc>F}i
inoremap <buffer> <localleader>oal \oplus\limits_{}^{}<esc>F}i

inoremap <buffer> ;OX \bigotimes_{}<esc>i
inoremap <buffer> ;OA \bigoplus_{}<esc>i
inoremap <buffer> <localleader>OX \bigotimes_{}^{}<esc>F}i
inoremap <buffer> <localleader>OA \bigoplus_{}^{}<esc>F}i
inoremap <buffer> ;OXl \bigotimes\limits_{}<esc>i
inoremap <buffer> ;OXL \bigotimes\limits_{}<esc>i
inoremap <buffer> ;OAl \bigoplus\limits_{}<esc>i
inoremap <buffer> ;OAL \bigoplus\limits_{}<esc>i
inoremap <buffer> <localleader>OXl \bigotimes\limits_{}^{}<esc>F}i
inoremap <buffer> <localleader>OXL \bigotimes\limits_{}^{}<esc>F}i
inoremap <buffer> <localleader>OAl \bigoplus\limits_{}^{}<esc>F}i
inoremap <buffer> <localleader>OAL \bigoplus\limits_{}^{}<esc>F}i

inoremap <buffer> ;o \circ

inoremap <buffer> <localleader>/ \frac{}{}<esc>F}i
inoremap <buffer> ;1/ \frac{1}{}<esc>i
inoremap <buffer> ;2/ \frac{2}{}<esc>i
inoremap <buffer> ;3/ \frac{3}{}<esc>i

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

inoremap <buffer> ;-. ^{-}<esc>i

inoremap <buffer> ;-1 ^{-1}
inoremap <buffer> ;-2 ^{-2}
inoremap <buffer> ;-3 ^{-3}

inoremap <buffer> ;-d ^{-d}
inoremap <buffer> ;-i ^{-i}
inoremap <buffer> ;-j ^{-j}
inoremap <buffer> ;-k ^{-k}
inoremap <buffer> ;-l ^{-\ell}
inoremap <buffer> ;-m ^{-m}
inoremap <buffer> ;-n ^{-n}
inoremap <buffer> ;-p ^{-p}
inoremap <buffer> ;-r ^{-r}
inoremap <buffer> ;-s ^{-s}
inoremap <buffer> ;-t ^{-t}
inoremap <buffer> ;-x ^{-x}
inoremap <buffer> ;-y ^{-y}
inoremap <buffer> ;-z ^{-z}

inoremap <buffer> ^^ ^{}<esc>i
inoremap <buffer> ;^ {}^{}<esc>F}i

inoremap <buffer> __ _{}<esc>i
inoremap <buffer> ;_ {}_{}<esc>F}i

inoremap <buffer> ^_ ^{}_{}<esc>F}i
inoremap <buffer> _^ _{}^{}<esc>F}i
inoremap <buffer> ^__ {}^{}_{}<esc>F};i
inoremap <buffer> _^^ {}_{}^{}<esc>F};i

"}}}
" lim, int, sum, operators{{{
"-------------------------------------------------------------------

" Limits{{{

inoremap <buffer> <localleader>l \lim_{ \to }<esc>F{a
inoremap <buffer> <localleader>li \liminf_{ \to }<esc>F{a
inoremap <buffer> <localleader>ls \limsup_{ \to }<esc>F{a
inoremap <buffer> <localleader>ll \lim\limits_{ \to }<esc>F{a
inoremap <buffer> <localleader>lil \liminf\limits_{ \to }<esc>F{a
inoremap <buffer> <localleader>lsl \limsup\limits_{ \to }<esc>F{a

inoremap <buffer> <localleader>lii \liminf_{i \to \infty}
inoremap <buffer> <localleader>lsi \limsup_{i \to \infty}
inoremap <buffer> <localleader>lli \lim\limits_{i \to \infty}
inoremap <buffer> <localleader>lili \liminf\limits_{i \to \infty}
inoremap <buffer> <localleader>lsli \limsup\limits_{i \to \infty}

inoremap <buffer> <localleader>lj \lim_{j \to \infty}
inoremap <buffer> <localleader>lij \liminf_{j \to \infty}
inoremap <buffer> <localleader>lsj \limsup_{j \to \infty}
inoremap <buffer> <localleader>llj \lim\limits_{j \to \infty}
inoremap <buffer> <localleader>lilj \liminf\limits_{j \to \infty}
inoremap <buffer> <localleader>lslj \limsup\limits_{j \to \infty}

inoremap <buffer> <localleader>lk \lim_{k \to \infty}
inoremap <buffer> <localleader>lik \liminf_{k \to \infty}
inoremap <buffer> <localleader>lsk \limsup_{k \to \infty}
inoremap <buffer> <localleader>llk \lim\limits_{k \to \infty}
inoremap <buffer> <localleader>lilk \liminf\limits_{k \to \infty}
inoremap <buffer> <localleader>lslk \limsup\limits_{k \to \infty}

inoremap <buffer> <localleader>lll \lim\limits_{l \to \infty}
inoremap <buffer> <localleader>lill \liminf\limits_{l \to \infty}
inoremap <buffer> <localleader>lsll \limsup\limits_{l \to \infty}

inoremap <buffer> <localleader>lm \lim_{m \to \infty}
inoremap <buffer> <localleader>lim \liminf_{m \to \infty}
inoremap <buffer> <localleader>lsm \limsup_{m \to \infty}
inoremap <buffer> <localleader>llm \lim\limits_{m \to \infty}
inoremap <buffer> <localleader>lilm \liminf\limits_{m \to \infty}
inoremap <buffer> <localleader>lslm \limsup\limits_{m \to \infty}

inoremap <buffer> <localleader>lM \lim_{M \to \infty}
inoremap <buffer> <localleader>liM \liminf_{M \to \infty}
inoremap <buffer> <localleader>lsM \limsup_{M \to \infty}
inoremap <buffer> <localleader>llM \lim\limits_{M \to \infty}
inoremap <buffer> <localleader>lilM \liminf\limits_{M \to \infty}
inoremap <buffer> <localleader>lslM \limsup\limits_{M \to \infty}

inoremap <buffer> <localleader>ln \lim_{n \to \infty}
inoremap <buffer> <localleader>lin \liminf_{n \to \infty}
inoremap <buffer> <localleader>lsn \limsup_{n \to \infty}
inoremap <buffer> <localleader>lln \lim\limits_{n \to \infty}
inoremap <buffer> <localleader>liln \liminf\limits_{n \to \infty}
inoremap <buffer> <localleader>lsln \limsup\limits_{n \to \infty}

inoremap <buffer> <localleader>lN \lim_{N \to \infty}
inoremap <buffer> <localleader>liN \liminf_{N \to \infty}
inoremap <buffer> <localleader>lsN \limsup_{N \to \infty}
inoremap <buffer> <localleader>llN \lim\limits_{N \to \infty}
inoremap <buffer> <localleader>lilN \liminf\limits_{N \to \infty}
inoremap <buffer> <localleader>lslN \limsup\limits_{N \to \infty}

inoremap <buffer> <localleader>lp \lim_{p \to \infty}
inoremap <buffer> <localleader>lip \liminf_{p \to \infty}
inoremap <buffer> <localleader>lsp \limsup_{p \to \infty}
inoremap <buffer> <localleader>llp \lim\limits_{p \to \infty}
inoremap <buffer> <localleader>lilp \liminf\limits_{p \to \infty}
inoremap <buffer> <localleader>lslp \limsup\limits_{p \to \infty}

inoremap <buffer> <localleader>lq \lim_{q \to \infty}
inoremap <buffer> <localleader>liq \liminf_{q \to \infty}
inoremap <buffer> <localleader>lsq \limsup_{q \to \infty}
inoremap <buffer> <localleader>llq \lim\limits_{q \to \infty}
inoremap <buffer> <localleader>lilq \liminf\limits_{q \to \infty}
inoremap <buffer> <localleader>lslq \limsup\limits_{q \to \infty}

inoremap <buffer> <localleader>lQ \lim_{Q \to \infty}
inoremap <buffer> <localleader>liQ \liminf_{Q \to \infty}
inoremap <buffer> <localleader>lsQ \limsup_{Q \to \infty}
inoremap <buffer> <localleader>llQ \lim\limits_{Q \to \infty}
inoremap <buffer> <localleader>lilQ \liminf\limits_{Q \to \infty}
inoremap <buffer> <localleader>lslQ \limsup\limits_{Q \to \infty}

inoremap <buffer> <localleader>lr \lim_{r \to }<esc>i
inoremap <buffer> <localleader>lir \liminf_{r \to }<esc>i
inoremap <buffer> <localleader>lsr \limsup_{r \to }<esc>i
inoremap <buffer> <localleader>llr \lim\limits_{r \to }<esc>i
inoremap <buffer> <localleader>lilr \liminf\limits_{r \to }<esc>i
inoremap <buffer> <localleader>lslr \limsup\limits_{r \to }<esc>i

inoremap <buffer> <localleader>lR \lim_{R \to \infty}
inoremap <buffer> <localleader>liR \liminf_{R \to \infty}
inoremap <buffer> <localleader>lsR \limsup_{R \to \infty}
inoremap <buffer> <localleader>llR \lim\limits_{R \to \infty}
inoremap <buffer> <localleader>lilR \liminf\limits_{R \to \infty}
inoremap <buffer> <localleader>lslR \limsup\limits_{R \to \infty}

inoremap <buffer> <localleader>lis \liminf_{s \to }<esc>i
inoremap <buffer> <localleader>lss \limsup_{s \to }<esc>i
inoremap <buffer> <localleader>lls \lim\limits_{s \to }<esc>i
inoremap <buffer> <localleader>lils \liminf\limits_{s \to }<esc>i
inoremap <buffer> <localleader>lsls \limsup\limits_{s \to }<esc>i

inoremap <buffer> <localleader>lt \lim_{t \to }<esc>i
inoremap <buffer> <localleader>lit \liminf_{t \to }<esc>i
inoremap <buffer> <localleader>lst \limsup_{t \to }<esc>i
inoremap <buffer> <localleader>llt \lim\limits_{t \to }<esc>i
inoremap <buffer> <localleader>lilt \liminf\limits_{t \to }<esc>i
inoremap <buffer> <localleader>lslt \limsup\limits_{t \to }<esc>i

inoremap <buffer> <localleader>lT \lim_{T \to \infty}
inoremap <buffer> <localleader>liT \liminf_{T \to \infty}
inoremap <buffer> <localleader>lsT \limsup_{T \to \infty}
inoremap <buffer> <localleader>llT \lim\limits_{T \to \infty}
inoremap <buffer> <localleader>lilT \liminf\limits_{T \to \infty}
inoremap <buffer> <localleader>lslT \limsup\limits_{T \to \infty}

inoremap <buffer> <localleader>lw \lim_{w \to }<esc>i
inoremap <buffer> <localleader>liw \liminf_{w \to }<esc>i
inoremap <buffer> <localleader>lsw \limsup_{w \to }<esc>i
inoremap <buffer> <localleader>llw \lim\limits_{w \to }<esc>i
inoremap <buffer> <localleader>lilw \liminf\limits_{w \to }<esc>i
inoremap <buffer> <localleader>lslw \limsup\limits_{w \to }<esc>i

inoremap <buffer> <localleader>lx \lim_{x \to }<esc>i
inoremap <buffer> <localleader>lix \liminf_{x \to }<esc>i
inoremap <buffer> <localleader>lsx \limsup_{x \to }<esc>i
inoremap <buffer> <localleader>llx \lim\limits_{x \to }<esc>i
inoremap <buffer> <localleader>lilx \liminf\limits_{x \to }<esc>i
inoremap <buffer> <localleader>lslx \limsup\limits_{x \to }<esc>i

inoremap <buffer> <localleader>ly \lim_{y \to }<esc>i
inoremap <buffer> <localleader>liy \liminf_{y \to }<esc>i
inoremap <buffer> <localleader>lsy \limsup_{y \to }<esc>i
inoremap <buffer> <localleader>lly \lim\limits_{y \to }<esc>i
inoremap <buffer> <localleader>lily \liminf\limits_{y \to }<esc>i
inoremap <buffer> <localleader>lsly \limsup\limits_{y \to }<esc>i

inoremap <buffer> <localleader>lz \lim_{z \to }<esc>i
inoremap <buffer> <localleader>liz \liminf_{z \to }<esc>i
inoremap <buffer> <localleader>lsz \limsup_{z \to }<esc>i
inoremap <buffer> <localleader>llz \lim\limits_{z \to }<esc>i
inoremap <buffer> <localleader>lilz \liminf\limits_{z \to }<esc>i
inoremap <buffer> <localleader>lslz \limsup\limits_{z \to }<esc>i

inoremap <buffer> <localleader>l. \lim_{}<esc>i
inoremap <buffer> <localleader>li. \liminf_{}<esc>i
inoremap <buffer> <localleader>ls. \limsup_{}<esc>i
inoremap <buffer> <localleader>ll. \lim\limits_{}<esc>i
inoremap <buffer> <localleader>lil. \liminf\limits_{}<esc>i
inoremap <buffer> <localleader>lsl. \limsup\limits_{}<esc>i

inoremap <buffer> <localleader>jl \lim
inoremap <buffer> <localleader>jli \liminf
inoremap <buffer> <localleader>jls \limsup

"}}}
" Int{{{

inoremap <buffer> ;i \int_{}<esc>i
inoremap <buffer> <localleader>i \int_{}^{}<esc>F}i
inoremap <buffer> ;il \int\limits_{}<esc>i
inoremap <buffer> <localleader>il \int\limits_{}^{}<esc>F}i
inoremap <buffer> ;di \displaystyle\int_{}<esc>i
inoremap <buffer> <localleader>di \displaystyle\int_{}^{}<esc>F}i
inoremap <buffer> ;dil \displaystyle\int\limits_{}<esc>i
inoremap <buffer> <localleader>dil \displaystyle\int\limits_{}^{}<esc>F}i

inoremap <buffer> ;jd \d
inoremap <buffer> ;d \d{}<esc>i
inoremap <buffer> ;dx \d{x}
inoremap <buffer> ;dy \d{y}
inoremap <buffer> ;dz \d{z}
inoremap <buffer> ;dz \d{w}
inoremap <buffer> ;dr \d{r}
inoremap <buffer> ;ds \d{s}
inoremap <buffer> ;dt \d{t}
inoremap <buffer> <localleader>d \displaystyle

"}}}
" Sum-and-prod{{{

inoremap <buffer> ;s \sum_{}<esc>i
inoremap <buffer> <localleader>s \sum_{}^{}<esc>F}i
inoremap <buffer> ;sl \sum\limits_{}<esc>i
inoremap <buffer> ;ds \displaystyle\sum_{}<esc>i
inoremap <buffer> <localleader>sli \sum\limits_{}^{}<esc>F}i
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

"}}}

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

inoremap <buffer> ;1( {\big(\big)}<esc>F(a
inoremap <buffer> ;2( {\Big(\Big)}<esc>F(a
inoremap <buffer> ;3( {\bigg(\bigg)}<esc>F(a
inoremap <buffer> ;4( {\Bigg(\Bigg)}<esc>F(a
inoremap <buffer> ;5( {\left(\right)}<esc>F(a

inoremap <buffer> ;1{ {\big\{\big\}}<esc>F{a
inoremap <buffer> ;2{ {\Big\{\Big\}}<esc>F{a
inoremap <buffer> ;3{ {\bigg\{\bigg\}}<esc>F{a
inoremap <buffer> ;4{ {\Bigg\{\Bigg\}}<esc>F{a
inoremap <buffer> ;5{ {\left\{\right\}}<esc>F{a

inoremap <buffer> ;1[ {\big[\big]}<esc>F[a
inoremap <buffer> ;2[ {\Big[\Big]}<esc>F[a
inoremap <buffer> ;3[ {\bigg[\bigg]}<esc>F[a
inoremap <buffer> ;4[ {\Bigg[\Bigg]}<esc>F[a
inoremap <buffer> ;5[ {\left[\right]}<esc>F[a

inoremap <buffer> ;1\| {\big\|\big\|}<esc>2F\|a
inoremap <buffer> ;2\| {\Big\|\Big\|}<esc>2F\|a
inoremap <buffer> ;3\| {\bigg\|\bigg\|}<esc>2F\|a
inoremap <buffer> ;4\| {\Bigg\|\Bigg\|}<esc>2F\|a
inoremap <buffer> ;5\| {\left\|\right\|}<esc>2F\|a

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

inoremap <buffer> <localleader>lrdb {\llbracket \rrbracket}<esc>2Ftla

inoremap <buffer> <localleader>lrab {\left\langle \right\rangle}<esc>2Fela
inoremap <buffer> <localleader>lrdab {\left\llangle \right\rrangle}<esc>2Fela

inoremap <buffer> <localleader>< \leq
inoremap <buffer> <localleader>> \geq
inoremap <buffer> << \ll
inoremap <buffer> >> \gg
inoremap <buffer> ;= \neq
inoremap <buffer> == \equiv
inoremap <buffer> <localleader>= \cong

"}}}
" Arrows and vectors"{{{
"-------------------------------------------------------------------

inoremap <buffer> <localleader>ra \rightarrow
inoremap <buffer> <localleader>la \leftarrow
inoremap <buffer> <localleader>Ra \Rightarrow
inoremap <buffer> <localleader>La \Leftarrow
inoremap <buffer> <localleader>lra \longrightarrow
inoremap <buffer> <localleader>lla \longleftarrow
inoremap <buffer> <localleader>Lra \Longrightarrow
inoremap <buffer> <localleader>Lla \Longleftarrow
inoremap <buffer> <localleader>rras \rightrightarrows
inoremap <buffer> <localleader>llas \leftleftarrows
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

inoremap <buffer> <localleader>v \vv{}<esc>i

inoremap <buffer> <localleader>act \curvearrowright

"}}}
" Derivatives{{{
"-------------------------------------------------------------------

inoremap <buffer> ;jdv \dv{}<esc>i
inoremap <buffer> ;dv \dv{}{}<esc>F}i
inoremap <buffer> ;jdvn \dv[]{}<esc>F]i
inoremap <buffer> ;dvn \dv[]{}{}<esc>F]i
inoremap <buffer> <localleader>jdv \displaystyle\dv{}<esc>i
inoremap <buffer> <localleader>dv \displaystyle\dv{}{}<esc>F}i
inoremap <buffer> <localleader>jdvn \displaystyle\dv[]{}<esc>F]i
inoremap <buffer> <localleader>dvn \displaystyle\dv[]{}{}<esc>F]i

inoremap <buffer> ;jdvx \dv{x}
inoremap <buffer> ;jdvy \dv{y}
inoremap <buffer> ;jdvz \dv{z}
inoremap <buffer> ;jdvw \dv{w}
inoremap <buffer> ;jdvr \dv{r}
inoremap <buffer> ;jdvs \dv{s}
inoremap <buffer> ;jdvt \dv{t}

inoremap <buffer> <localleader>jdvx \displaystyle\dv{x}
inoremap <buffer> <localleader>jdvy \displaystyle\dv{y}
inoremap <buffer> <localleader>jdvz \displaystyle\dv{z}
inoremap <buffer> <localleader>jdvw \displaystyle\dv{w}
inoremap <buffer> <localleader>jdvr \displaystyle\dv{r}
inoremap <buffer> <localleader>jdvs \displaystyle\dv{s}
inoremap <buffer> <localleader>jdvt \displaystyle\dv{t}

inoremap <buffer> ;jpdv \pdv{}<esc>i
inoremap <buffer> ;pdv \pdv{}{}<esc>F}i
inoremap <buffer> ;jpdvn \pdv[]{}<esc>F]i
inoremap <buffer> ;pdvn \pdv[]{}{}<esc>F]i
inoremap <buffer> <localleader>jpdv \displaystyle\pdv{}<esc>i
inoremap <buffer> <localleader>pdv \displaystyle\pdv{}{}<esc>F}i
inoremap <buffer> <localleader>jpdvn \displaystyle\pdv[]{}<esc>F]i
inoremap <buffer> <localleader>pdvn \displaystyle\pdv[]{}{}<esc>F]i

inoremap <buffer> ;jpdvx \pdv{x}
inoremap <buffer> ;jpdvy \pdv{y}
inoremap <buffer> ;jpdvz \pdv{z}
inoremap <buffer> ;jpdvw \pdv{w}
inoremap <buffer> ;jpdvr \pdv{r}
inoremap <buffer> ;jpdvs \pdv{s}
inoremap <buffer> ;jpdvt \pdv{t}

inoremap <buffer> <localleader>jpdvx \displaystyle\pdv{x}
inoremap <buffer> <localleader>jpdvy \displaystyle\pdv{y}
inoremap <buffer> <localleader>jpdvz \displaystyle\pdv{z}
inoremap <buffer> <localleader>jpdvw \displaystyle\pdv{w}
inoremap <buffer> <localleader>jpdvr \displaystyle\pdv{r}
inoremap <buffer> <localleader>jpdvs \displaystyle\pdv{s}
inoremap <buffer> <localleader>jpdvt \displaystyle\pdv{t}

inoremap <buffer> ;fdv \fdv{}{}<esc>F}i
inoremap <buffer> <localleader>fdv \displaystyle\fdv{}{}<esc>F}i

"}}}
" Others{{{

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

inoremap <buffer> ;te \text{}<esc>i

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
        :execute ":normal! hmmlx`ma~\\eqref{\<esc>"
    elseif a:code == "jeqref"
        :execute ":normal! a\\eqref{\<esc>"
    elseif a:code == "cit"
        :execute ":normal! hmmlx`ma~\\cite{\<esc>"
    elseif a:code == "jcit"
        :execute ":normal! a\\cite{\<esc>"
    endif

endfunction

inoremap <buffer> <localleader>ref <esc>:call ReferencingAndCiting("ref")<cr>a
inoremap <buffer> <localleader>jref <esc>:call ReferencingAndCiting("jref")<cr>a
inoremap <buffer> <localleader>eqref <esc>:call ReferencingAndCiting("eqref")<cr>a
inoremap <buffer> <localleader>jeqref <esc>:call ReferencingAndCiting("jeqref")<cr>a
inoremap <buffer> <localleader>cit <esc>:call ReferencingAndCiting("cit")<cr>a
inoremap <buffer> <localleader>jcit <esc>:call ReferencingAndCiting("jcit")<cr>a

inoremap <buffer> <localleader>thm Theorem~\ref{
inoremap <buffer> <localleader>lem Lemma~\ref{
inoremap <buffer> <localleader>prop Proposition~\ref{
inoremap <buffer> <localleader>cor Corollary~\ref{
inoremap <buffer> <localleader>rem Remark~\ref{

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
inoremap <buffer> ;vpi \varpi
inoremap <buffer> ;rh \rho
inoremap <buffer> ;vrh \varrho
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
inoremap <buffer> ;UP \Upsilon
inoremap <buffer> ;Up \Upsilon
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

inoremap <buffer> <F5> <esc>:w!<CR>:!latexmk -pdf -bibtex -pdf %:r.tex<CR><CR>:!latexmk -pdf %:r.tex<CR><CR>:!latexmk -pdf %:r.tex<CR><CR>zza
nnoremap <buffer> <F5> :w!<CR>:!latexmk -pdf -bibtex -pdf %:r.tex<CR><CR>:!latexmk -pdf %:r.tex<CR><CR>:!latexmk -pdf %:r.tex<CR><CR>zz
inoremap <buffer> <F7> <esc>:w!<CR>:!latexmk -pdf %:r.tex<CR><CR>zza
nnoremap <buffer> <F7> :w!<CR>:!latexmk -pdf %:r.tex<CR><CR>zz

" inoremap <buffer> <F5> <esc>:w!<CR>:!pdflatex %:r.tex<CR><CR>a
" nnoremap <buffer> <F5> :w!<CR>:!pdflatex %:r.tex<CR><CR>
" nnoremap <buffer> <F8> :w!<CR>:!latexmk -pdf -bibtex -pdf %:r.tex<CR><CR>:w!<CR>:!latexmk -pdf -bibtex -pdf %:r.tex<CR><CR>zz
" inoremap <buffer> <F9> <esc>:w!<CR>:!latexmk -pdf -bibtex -pdf %:r.tex<CR><CR>:w!<CR>:!latexmk -pdf -bibtex -pdf %:r.tex<CR><CR>:w!<CR>:!latexmk -pdf -bibtex -pdf %:r.tex<CR><CR>zza
" nnoremap <buffer> <F9> :w!<CR>:!latexmk -pdf %:r.tex<CR><CR>:w!<CR>:!latexmk -bibtex %:r.tex<CR><CR>:w!<CR>:!latexmk -pdf %:r.tex<CR><CR>zz
" nnoremap <buffer> <F9> :w!<CR>:!latexmk -pdf -bibtex -pdf %:r.tex<CR><CR>:w!<CR>:!latexmk -pdf -bibtex -pdf %:r.tex<CR><CR>:w!<CR>:!latexmk -pdf -bibtex -pdf %:r.tex<CR><CR>zz

"}}}

" Highlighting{{{
"-------------------------------------------------------------------

" Part, Chapter, Section, Subsection, Subsubsection, label"{{{

highlight Folds_brackets_comments ctermbg=174 ctermfg=black
let m = matchadd("Folds_brackets_comments",'%{{{')
let m = matchadd("Folds_brackets_comments",'%}}}')
let m = matchadd("Folds_brackets_comments",'%{T{E{X')
let m = matchadd("Folds_brackets_comments",'%}T}E}X')

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


highlight Label ctermbg=Red ctermfg=black
let m = matchadd("Label",'\\label{.\{}}')

"}}}
" MarkerGroup, BoldGroup"{{{

highlight AbstractTitle ctermbg=92 ctermfg=yellow

let m = matchadd("AbstractTitle",'% Abstract')
let m = matchadd("AbstractTitle",'% Title')

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

"}}}

"-------------------------------------------------------------------
" Comments
"-------------------------------------------------------------------

" Use ; before a letter for specific use of that letter

