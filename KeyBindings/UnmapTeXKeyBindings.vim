
"-------------------------------------------------------------------
" Mahbub's UnmapTeXKeyBindings
"-------------------------------------------------------------------

" Numbers, Braces and Some symbols{{{
"-------------------------------------------------------------------

" Numbers"{{{
"-------------------------------------------------------------------

iunmap <buffer> 1
iunmap <buffer> 11
" Open all references for tex
iunmap <buffer> <localleader>1

iunmap <buffer> 2
iunmap <buffer> 22
iunmap <buffer> 3
iunmap <buffer> 33
iunmap <buffer> 4
iunmap <buffer> 44
iunmap <buffer> <localleader>4
iunmap <buffer> 5
iunmap <buffer> 55
iunmap <buffer> 6
iunmap <buffer> 66
iunmap <buffer> 7
iunmap <buffer> 77
iunmap <buffer> 8
iunmap <buffer> 88
iunmap <buffer> <localleader>8
iunmap <buffer> 9
iunmap <buffer> 99
iunmap <buffer> 0
iunmap <buffer> 00

"}}}
" Braces{{{
"-------------------------------------------------------------------

iunmap <buffer> (
iunmap <buffer> ((
iunmap <buffer> {
iunmap <buffer> {{
iunmap <buffer> <localleader>{
iunmap <buffer> [
iunmap <buffer> [[

"}}}

iunmap <buffer> \|
iunmap <buffer> \|\|

iunmap <buffer> ''
iunmap <buffer> ""

iunmap <buffer> ;b1

"}}}

" Math Symbols{{{
"-------------------------------------------------------------------

" Set theory and Logic"{{{
"-------------------------------------------------------------------

iunmap <buffer> <localleader>fa
iunmap <buffer> <localleader>E
iunmap <buffer> <localleader>e
iunmap <buffer> <localleader>ne
iunmap <buffer> <localleader>e,
iunmap <buffer> <localleader>0

iunmap <buffer> ;uu
iunmap <buffer> ;nn
iunmap <buffer> <localleader>uu
iunmap <buffer> <localleader>nn
iunmap <buffer> ;uul
iunmap <buffer> ;nnl
iunmap <buffer> <localleader>uul
iunmap <buffer> <localleader>nnl

iunmap <buffer> ;UU
iunmap <buffer> ;NN
iunmap <buffer> <localleader>UU
iunmap <buffer> <localleader>NN
iunmap <buffer> ;UUl
iunmap <buffer> ;UUL
iunmap <buffer> ;NNl
iunmap <buffer> ;NNL
iunmap <buffer> <localleader>UUl
iunmap <buffer> <localleader>UUL
iunmap <buffer> <localleader>NNl
iunmap <buffer> <localleader>NNL

iunmap <buffer> ;squu
iunmap <buffer> <localleader>squu
iunmap <buffer> ;squul
iunmap <buffer> <localleader>squul

iunmap <buffer> ;sqUU
iunmap <buffer> <localleader>sqUU
iunmap <buffer> ;sqUUl
iunmap <buffer> ;sqUUL
iunmap <buffer> <localleader>sqUUl
iunmap <buffer> <localleader>sqUUL

"}}}
" Math set symbols{{{
"-------------------------------------------------------------------

" In math mode{{{
"-------------------------------------------------------------------

" \math__{}{{{

iunmap <buffer> <localleader>mr
iunmap <buffer> <localleader>mb
iunmap <buffer> <localleader>mbf
iunmap <buffer> <localleader>mc
iunmap <buffer> <localleader>mrsf
iunmap <buffer> <localleader>mscr
iunmap <buffer> <localleader>ms
iunmap <buffer> <localleader>mi
iunmap <buffer> <localleader>mf
iunmap <buffer> <localleader>ff

"}}}
" Real numbers{{{

iunmap <buffer> <localleader>rge
iunmap <buffer> <localleader>rle
iunmap <buffer> <localleader>r>
iunmap <buffer> <localleader>r<
iunmap <buffer> <localleader>r
iunmap <buffer> <localleader>rr
iunmap <buffer> <localleader>rn
iunmap <buffer> <localleader>rm
iunmap <buffer> <localleader>rd
iunmap <buffer> <localleader>rk
iunmap <buffer> <localleader>rnk
iunmap <buffer> <localleader>rnl
iunmap <buffer> <localleader>rmn
iunmap <buffer> <localleader>rnm
iunmap <buffer> <localleader>rnn
iunmap <buffer> <localleader>rx
iunmap <buffer> <localleader>r.

"}}}
" Natural numbers{{{

iunmap <buffer> <localleader>n
iunmap <buffer> <localleader>nn
iunmap <buffer> <localleader>nm
iunmap <buffer> <localleader>nd
iunmap <buffer> <localleader>nk
iunmap <buffer> <localleader>n.

"}}}
" Integers{{{

iunmap <buffer> <localleader>zge
iunmap <buffer> <localleader>zle
iunmap <buffer> <localleader>z>
iunmap <buffer> <localleader>z<
iunmap <buffer> <localleader>z;=
iunmap <buffer> <localleader>pz
iunmap <buffer> <localleader>mz
iunmap <buffer> <localleader>z
iunmap <buffer> <localleader>zz
iunmap <buffer> <localleader>zn
iunmap <buffer> <localleader>zm
iunmap <buffer> <localleader>zd
iunmap <buffer> <localleader>zk
iunmap <buffer> <localleader>zx
iunmap <buffer> <localleader>z.

"}}}
" Rational numbers{{{

iunmap <buffer> <localleader>qge
iunmap <buffer> <localleader>qle
iunmap <buffer> <localleader>q>
iunmap <buffer> <localleader>q<
iunmap <buffer> <localleader>q
iunmap <buffer> <localleader>qq
iunmap <buffer> <localleader>qn
iunmap <buffer> <localleader>qm
iunmap <buffer> <localleader>qd
iunmap <buffer> <localleader>qk
iunmap <buffer> <localleader>qx
iunmap <buffer> <localleader>q.

"}}}
" Complex numbers{{{

iunmap <buffer> <localleader>c
iunmap <buffer> <localleader>cc
iunmap <buffer> <localleader>cn
iunmap <buffer> <localleader>cm
iunmap <buffer> <localleader>cd
iunmap <buffer> <localleader>ck
iunmap <buffer> <localleader>cx
iunmap <buffer> <localleader>c.

"}}}
" p-adic numbers{{{

iunmap <buffer> <localleader>qp
iunmap <buffer> <localleader>qpp
iunmap <buffer> <localleader>qpn
iunmap <buffer> <localleader>qpm
iunmap <buffer> <localleader>qpd
iunmap <buffer> <localleader>qpk
iunmap <buffer> <localleader>qpx
iunmap <buffer> <localleader>qp.

"}}}
" p-adic Integers{{{

iunmap <buffer> <localleader>zp
iunmap <buffer> <localleader>zpp
iunmap <buffer> <localleader>zpn
iunmap <buffer> <localleader>zpm
iunmap <buffer> <localleader>zpd
iunmap <buffer> <localleader>zpk
iunmap <buffer> <localleader>zpx
iunmap <buffer> <localleader>zp.

"}}}
" Other fields{{{

iunmap <buffer> <localleader>k
iunmap <buffer> <localleader>kk
iunmap <buffer> <localleader>kn
iunmap <buffer> <localleader>km
iunmap <buffer> <localleader>kd
iunmap <buffer> <localleader>kx
iunmap <buffer> <localleader>k.

iunmap <buffer> <localleader>ks
iunmap <buffer> <localleader>kss
iunmap <buffer> <localleader>ksn
iunmap <buffer> <localleader>ksm
iunmap <buffer> <localleader>ksd
iunmap <buffer> <localleader>ksk
iunmap <buffer> <localleader>ksx
iunmap <buffer> <localleader>ks.

"}}}
" Ring of integers{{{

iunmap <buffer> <localleader>co
iunmap <buffer> <localleader>coo
iunmap <buffer> <localleader>con
iunmap <buffer> <localleader>com
iunmap <buffer> <localleader>cod
iunmap <buffer> <localleader>cok
iunmap <buffer> <localleader>cox
iunmap <buffer> <localleader>co,
iunmap <buffer> <localleader>co.
iunmap <buffer> <localleader>co,.

iunmap <buffer> <localleader>ok
iunmap <buffer> <localleader>okk
iunmap <buffer> <localleader>okn
iunmap <buffer> <localleader>okm
iunmap <buffer> <localleader>okd
iunmap <buffer> <localleader>okx
iunmap <buffer> <localleader>ok.

"}}}
" Adele{{{

iunmap <buffer> <localleader>a
iunmap <buffer> <localleader>aa
iunmap <buffer> <localleader>an
iunmap <buffer> <localleader>am
iunmap <buffer> <localleader>ad
iunmap <buffer> <localleader>ak
iunmap <buffer> <localleader>a.

"}}}
" Tori{{{

iunmap <buffer> <localleader>t
iunmap <buffer> <localleader>tt
iunmap <buffer> <localleader>tn
iunmap <buffer> <localleader>tm
iunmap <buffer> <localleader>td
iunmap <buffer> <localleader>tk
iunmap <buffer> <localleader>t.

"}}}
"Hyperbolic space{{{

iunmap <buffer> <localleader>h
iunmap <buffer> <localleader>hh
iunmap <buffer> <localleader>hn
iunmap <buffer> <localleader>hm
iunmap <buffer> <localleader>hd
iunmap <buffer> <localleader>hk
iunmap <buffer> <localleader>h.

"}}}
" Function spaces{{{

iunmap <buffer> <localleader>cc.
iunmap <buffer> <localleader>ccx
iunmap <buffer> <localleader>cci
iunmap <buffer> <localleader>ccix

iunmap <buffer> <localleader>cx

iunmap <buffer> <localleader>l1.
iunmap <buffer> <localleader>l1x

iunmap <buffer> <localleader>l2.
iunmap <buffer> <localleader>l2x

iunmap <buffer> <localleader>lp.
iunmap <buffer> <localleader>lpx

"}}}

"}}}
" Outside math mode{{{
"-------------------------------------------------------------------

iunmap <buffer> r<Space><Space>

iunmap <buffer> n<Space><Space>

iunmap <buffer> z<Space><Space>

iunmap <buffer> q<Space><Space>

iunmap <buffer> c<Space><Space>

iunmap <buffer> k<Space><Space>

iunmap <buffer> a<Space><Space>

iunmap <buffer> t<Space><Space>

iunmap <buffer> h<Space><Space>

"}}}

"}}}
" Matrix Groups{{{
"-------------------------------------------------------------------

" Parenthesis and Underscore style

" M{{{

iunmap <buffer> <leader>mmn
iunmap <buffer> <leader>mn
iunmap <buffer> <leader>mm
iunmap <buffer> <leader>md
iunmap <buffer> <leader>m2
iunmap <buffer> <leader>m3
iunmap <buffer> <leader>m.

iunmap <buffer> <localleader>mmn
iunmap <buffer> <localleader>m..
iunmap <buffer> <localleader>m

iunmap <buffer> <localleader>mn
iunmap <buffer> <localleader>mm
iunmap <buffer> <localleader>md
iunmap <buffer> <localleader>m2
iunmap <buffer> <localleader>m3
iunmap <buffer> <localleader>m.

iunmap <buffer> <localleader>mmnz
iunmap <buffer> <localleader>m..z
iunmap <buffer> <localleader>mnz
iunmap <buffer> <localleader>mmz
iunmap <buffer> <localleader>mdz
iunmap <buffer> <localleader>m2z
iunmap <buffer> <localleader>m3z
iunmap <buffer> <localleader>m.z

iunmap <buffer> <localleader>mmnq
iunmap <buffer> <localleader>m..q
iunmap <buffer> <localleader>mnq
iunmap <buffer> <localleader>mmq
iunmap <buffer> <localleader>mdq
iunmap <buffer> <localleader>m2q
iunmap <buffer> <localleader>m3q
iunmap <buffer> <localleader>m.q

iunmap <buffer> <localleader>mmnr
iunmap <buffer> <localleader>m..r
iunmap <buffer> <localleader>mnr
iunmap <buffer> <localleader>mmr
iunmap <buffer> <localleader>mdr
iunmap <buffer> <localleader>m2r
iunmap <buffer> <localleader>m3r
iunmap <buffer> <localleader>m.r

iunmap <buffer> <localleader>mmnc
iunmap <buffer> <localleader>m..c
iunmap <buffer> <localleader>mnc
iunmap <buffer> <localleader>mmc
iunmap <buffer> <localleader>mdc
iunmap <buffer> <localleader>m2c
iunmap <buffer> <localleader>m3c
iunmap <buffer> <localleader>m.c

iunmap <buffer> <localleader>mmnzp
iunmap <buffer> <localleader>m..zp
iunmap <buffer> <localleader>mnzp
iunmap <buffer> <localleader>mmzp
iunmap <buffer> <localleader>mdzp
iunmap <buffer> <localleader>m2zp
iunmap <buffer> <localleader>m3zp
iunmap <buffer> <localleader>m.zp

iunmap <buffer> <localleader>mmnqp
iunmap <buffer> <localleader>m..qp
iunmap <buffer> <localleader>mnqp
iunmap <buffer> <localleader>mmqp
iunmap <buffer> <localleader>mdqp
iunmap <buffer> <localleader>m2qp
iunmap <buffer> <localleader>m3qp
iunmap <buffer> <localleader>m.qp

iunmap <buffer> <localleader>mmnk
iunmap <buffer> <localleader>m..k
iunmap <buffer> <localleader>mnk
iunmap <buffer> <localleader>mmk
iunmap <buffer> <localleader>mdk
iunmap <buffer> <localleader>m2k
iunmap <buffer> <localleader>m3k
iunmap <buffer> <localleader>m.k

iunmap <buffer> <localleader>mmna
iunmap <buffer> <localleader>m..a
iunmap <buffer> <localleader>mna
iunmap <buffer> <localleader>mma
iunmap <buffer> <localleader>mda
iunmap <buffer> <localleader>m2a
iunmap <buffer> <localleader>m3a
iunmap <buffer> <localleader>m.a

iunmap <buffer> <localleader>mmnok
iunmap <buffer> <localleader>m..ok
iunmap <buffer> <localleader>mnok
iunmap <buffer> <localleader>mmok
iunmap <buffer> <localleader>mdok
iunmap <buffer> <localleader>m2ok
iunmap <buffer> <localleader>m3ok
iunmap <buffer> <localleader>m.ok

iunmap <buffer> <localleader>mmnco
iunmap <buffer> <localleader>m..co
iunmap <buffer> <localleader>mnco
iunmap <buffer> <localleader>mmco
iunmap <buffer> <localleader>mdco
iunmap <buffer> <localleader>m2co
iunmap <buffer> <localleader>m3co
iunmap <buffer> <localleader>m.co

iunmap <buffer> <localleader>mmnjk
iunmap <buffer> <localleader>m..jk
iunmap <buffer> <localleader>mnjk
iunmap <buffer> <localleader>mmjk
iunmap <buffer> <localleader>mdjk
iunmap <buffer> <localleader>m2jk
iunmap <buffer> <localleader>m3jk
iunmap <buffer> <localleader>m.jk

iunmap <buffer> <localleader>mmnks
iunmap <buffer> <localleader>m..ks
iunmap <buffer> <localleader>mnks
iunmap <buffer> <localleader>mmks
iunmap <buffer> <localleader>mdks
iunmap <buffer> <localleader>m2ks
iunmap <buffer> <localleader>m3ks
iunmap <buffer> <localleader>m.ks

"}}}
" GL{{{

iunmap <buffer> <leader>gl
iunmap <buffer> <leader>gln
iunmap <buffer> <leader>glm
iunmap <buffer> <leader>gld
iunmap <buffer> <leader>gl2
iunmap <buffer> <leader>gl3
iunmap <buffer> <leader>gl.

iunmap <buffer> <localleader>gl

iunmap <buffer> <localleader>gln
iunmap <buffer> <localleader>glm
iunmap <buffer> <localleader>gld
iunmap <buffer> <localleader>gl2
iunmap <buffer> <localleader>gl3
iunmap <buffer> <localleader>gl.
iunmap <buffer> <localleader>glpn
iunmap <buffer> <localleader>glpm
iunmap <buffer> <localleader>glpd
iunmap <buffer> <localleader>glp2
iunmap <buffer> <localleader>glp3
iunmap <buffer> <localleader>glp.

iunmap <buffer> <localleader>glnz
iunmap <buffer> <localleader>glmz
iunmap <buffer> <localleader>gldz
iunmap <buffer> <localleader>gl2z
iunmap <buffer> <localleader>gl3z
iunmap <buffer> <localleader>gl.z
iunmap <buffer> <localleader>glpnz
iunmap <buffer> <localleader>glpmz
iunmap <buffer> <localleader>glpdz
iunmap <buffer> <localleader>glp2z
iunmap <buffer> <localleader>glp3z
iunmap <buffer> <localleader>glp.z

iunmap <buffer> <localleader>glnq
iunmap <buffer> <localleader>glmq
iunmap <buffer> <localleader>gldq
iunmap <buffer> <localleader>gl2q
iunmap <buffer> <localleader>gl3q
iunmap <buffer> <localleader>gl.q
iunmap <buffer> <localleader>glpnq
iunmap <buffer> <localleader>glpmq
iunmap <buffer> <localleader>glpdq
iunmap <buffer> <localleader>glp2q
iunmap <buffer> <localleader>glp3q
iunmap <buffer> <localleader>glp.q

iunmap <buffer> <localleader>glnr
iunmap <buffer> <localleader>glmr
iunmap <buffer> <localleader>gldr
iunmap <buffer> <localleader>gl2r
iunmap <buffer> <localleader>gl3r
iunmap <buffer> <localleader>gl.r
iunmap <buffer> <localleader>glpnr
iunmap <buffer> <localleader>glpmr
iunmap <buffer> <localleader>glpdr
iunmap <buffer> <localleader>glp2r
iunmap <buffer> <localleader>glp3r
iunmap <buffer> <localleader>glp.r

iunmap <buffer> <localleader>glnc
iunmap <buffer> <localleader>glmc
iunmap <buffer> <localleader>gldc
iunmap <buffer> <localleader>gl2c
iunmap <buffer> <localleader>gl3c
iunmap <buffer> <localleader>gl.c

iunmap <buffer> <localleader>glnzp
iunmap <buffer> <localleader>glmzp
iunmap <buffer> <localleader>gldzp
iunmap <buffer> <localleader>gl2zp
iunmap <buffer> <localleader>gl3zp
iunmap <buffer> <localleader>gl.zp

iunmap <buffer> <localleader>glnqp
iunmap <buffer> <localleader>glmqp
iunmap <buffer> <localleader>gldqp
iunmap <buffer> <localleader>gl2qp
iunmap <buffer> <localleader>gl3qp
iunmap <buffer> <localleader>gl.qp

iunmap <buffer> <localleader>glnk
iunmap <buffer> <localleader>glmk
iunmap <buffer> <localleader>gldk
iunmap <buffer> <localleader>gl2k
iunmap <buffer> <localleader>gl3k
iunmap <buffer> <localleader>gl.k

iunmap <buffer> <localleader>glna
iunmap <buffer> <localleader>glma
iunmap <buffer> <localleader>glda
iunmap <buffer> <localleader>gl2a
iunmap <buffer> <localleader>gl3a
iunmap <buffer> <localleader>gl.a

iunmap <buffer> <localleader>glnok
iunmap <buffer> <localleader>glmok
iunmap <buffer> <localleader>gldok
iunmap <buffer> <localleader>gl2ok
iunmap <buffer> <localleader>gl3ok
iunmap <buffer> <localleader>gl.ok

iunmap <buffer> <localleader>glnco
iunmap <buffer> <localleader>glmco
iunmap <buffer> <localleader>gldco
iunmap <buffer> <localleader>gl2co
iunmap <buffer> <localleader>gl3co
iunmap <buffer> <localleader>gl.co

iunmap <buffer> <localleader>glnjk
iunmap <buffer> <localleader>glmjk
iunmap <buffer> <localleader>gldjk
iunmap <buffer> <localleader>gl2jk
iunmap <buffer> <localleader>gl3jk
iunmap <buffer> <localleader>gl.jk

iunmap <buffer> <localleader>glnks
iunmap <buffer> <localleader>glmks
iunmap <buffer> <localleader>gldks
iunmap <buffer> <localleader>gl2ks
iunmap <buffer> <localleader>gl3ks
iunmap <buffer> <localleader>gl.ks

"}}}
" SL{{{

iunmap <buffer> <leader>sl
iunmap <buffer> <leader>sln
iunmap <buffer> <leader>slm
iunmap <buffer> <leader>sld
iunmap <buffer> <leader>sl2
iunmap <buffer> <leader>sl3
iunmap <buffer> <leader>sl.

iunmap <buffer> <localleader>sl

iunmap <buffer> <localleader>sln
iunmap <buffer> <localleader>slm
iunmap <buffer> <localleader>sld
iunmap <buffer> <localleader>sl2
iunmap <buffer> <localleader>sl3
iunmap <buffer> <localleader>sl.

iunmap <buffer> <localleader>slnz
iunmap <buffer> <localleader>slmz
iunmap <buffer> <localleader>sldz
iunmap <buffer> <localleader>sl2z
iunmap <buffer> <localleader>sl3z
iunmap <buffer> <localleader>sl.z

iunmap <buffer> <localleader>slnq
iunmap <buffer> <localleader>slmq
iunmap <buffer> <localleader>sldq
iunmap <buffer> <localleader>sl2q
iunmap <buffer> <localleader>sl3q
iunmap <buffer> <localleader>sl.q

iunmap <buffer> <localleader>slnr
iunmap <buffer> <localleader>slmr
iunmap <buffer> <localleader>sldr
iunmap <buffer> <localleader>sl2r
iunmap <buffer> <localleader>sl3r
iunmap <buffer> <localleader>sl.r

iunmap <buffer> <localleader>slnc
iunmap <buffer> <localleader>slmc
iunmap <buffer> <localleader>sldc
iunmap <buffer> <localleader>sl2c
iunmap <buffer> <localleader>sl3c
iunmap <buffer> <localleader>sl.c

iunmap <buffer> <localleader>slnzp
iunmap <buffer> <localleader>slmzp
iunmap <buffer> <localleader>sldzp
iunmap <buffer> <localleader>sl2zp
iunmap <buffer> <localleader>sl3zp
iunmap <buffer> <localleader>sl.zp

iunmap <buffer> <localleader>slnqp
iunmap <buffer> <localleader>slmqp
iunmap <buffer> <localleader>sldqp
iunmap <buffer> <localleader>sl2qp
iunmap <buffer> <localleader>sl3qp
iunmap <buffer> <localleader>sl.qp

iunmap <buffer> <localleader>slnk
iunmap <buffer> <localleader>slmk
iunmap <buffer> <localleader>sldk
iunmap <buffer> <localleader>sl2k
iunmap <buffer> <localleader>sl3k
iunmap <buffer> <localleader>sl.k

iunmap <buffer> <localleader>slna
iunmap <buffer> <localleader>slma
iunmap <buffer> <localleader>slda
iunmap <buffer> <localleader>sl2a
iunmap <buffer> <localleader>sl3a
iunmap <buffer> <localleader>sl.a

iunmap <buffer> <localleader>slnok
iunmap <buffer> <localleader>slmok
iunmap <buffer> <localleader>sldok
iunmap <buffer> <localleader>sl2ok
iunmap <buffer> <localleader>sl3ok
iunmap <buffer> <localleader>sl.ok

iunmap <buffer> <localleader>slnco
iunmap <buffer> <localleader>slmco
iunmap <buffer> <localleader>sldco
iunmap <buffer> <localleader>sl2co
iunmap <buffer> <localleader>sl3co
iunmap <buffer> <localleader>sl.co

iunmap <buffer> <localleader>slnjk
iunmap <buffer> <localleader>slmjk
iunmap <buffer> <localleader>sldjk
iunmap <buffer> <localleader>sl2jk
iunmap <buffer> <localleader>sl3jk
iunmap <buffer> <localleader>sl.jk

iunmap <buffer> <localleader>slnks
iunmap <buffer> <localleader>slmks
iunmap <buffer> <localleader>sldks
iunmap <buffer> <localleader>sl2ks
iunmap <buffer> <localleader>sl3ks
iunmap <buffer> <localleader>sl.ks

iunmap <buffer> <localleader>slnrz
iunmap <buffer> <localleader>slmrz
iunmap <buffer> <localleader>sldrz
iunmap <buffer> <localleader>sl2rz
iunmap <buffer> <localleader>sl3rz
iunmap <buffer> <localleader>sl.rz

iunmap <buffer> <localleader>slnzr
iunmap <buffer> <localleader>slmzr
iunmap <buffer> <localleader>sldzr
iunmap <buffer> <localleader>sl2zr
iunmap <buffer> <localleader>sl3zr
iunmap <buffer> <localleader>sl.zr

iunmap <buffer> <localleader>slnksok
iunmap <buffer> <localleader>slmksok
iunmap <buffer> <localleader>sldksok
iunmap <buffer> <localleader>sl2ksok
iunmap <buffer> <localleader>sl3ksok
iunmap <buffer> <localleader>sl.ksok

iunmap <buffer> <localleader>slnokks
iunmap <buffer> <localleader>slmokks
iunmap <buffer> <localleader>sldokks
iunmap <buffer> <localleader>sl2okks
iunmap <buffer> <localleader>sl3okks
iunmap <buffer> <localleader>sl.okks

iunmap <buffer> <localleader>slnksco
iunmap <buffer> <localleader>slmksco
iunmap <buffer> <localleader>sldksco
iunmap <buffer> <localleader>sl2ksco
iunmap <buffer> <localleader>sl3ksco
iunmap <buffer> <localleader>sl.ksco

iunmap <buffer> <localleader>slncoks
iunmap <buffer> <localleader>slmcoks
iunmap <buffer> <localleader>sldcoks
iunmap <buffer> <localleader>sl2coks
iunmap <buffer> <localleader>sl3coks
iunmap <buffer> <localleader>sl.coks

"}}}
" PSL{{{

iunmap <buffer> <leader>psl
iunmap <buffer> <leader>psln
iunmap <buffer> <leader>pslm
iunmap <buffer> <leader>psld
iunmap <buffer> <leader>psl2
iunmap <buffer> <leader>psl3
iunmap <buffer> <leader>psl.

iunmap <buffer> <localleader>psl

iunmap <buffer> <localleader>psln
iunmap <buffer> <localleader>pslm
iunmap <buffer> <localleader>psld
iunmap <buffer> <localleader>psl2
iunmap <buffer> <localleader>psl3
iunmap <buffer> <localleader>psl.

iunmap <buffer> <localleader>pslnr
iunmap <buffer> <localleader>pslmr
iunmap <buffer> <localleader>psldr
iunmap <buffer> <localleader>psl2r
iunmap <buffer> <localleader>psl3r
iunmap <buffer> <localleader>psl.r

"}}}
" O{{{

iunmap <buffer> <leader>on
iunmap <buffer> <leader>om
iunmap <buffer> <leader>od
iunmap <buffer> <leader>o2
iunmap <buffer> <leader>o3
iunmap <buffer> <leader>o.

iunmap <buffer> <localleader>o

iunmap <buffer> <localleader>on
iunmap <buffer> <localleader>om
iunmap <buffer> <localleader>od
iunmap <buffer> <localleader>o2
iunmap <buffer> <localleader>o3
iunmap <buffer> <localleader>o.

iunmap <buffer> <localleader>onr
iunmap <buffer> <localleader>omr
iunmap <buffer> <localleader>odr
iunmap <buffer> <localleader>o2r
iunmap <buffer> <localleader>o3r
iunmap <buffer> <localleader>o.r

iunmap <buffer> <localleader>onc
iunmap <buffer> <localleader>omc
iunmap <buffer> <localleader>odc
iunmap <buffer> <localleader>o2c
iunmap <buffer> <localleader>o3c
iunmap <buffer> <localleader>o.c

"}}}
" SO{{{

iunmap <buffer> <leader>so
iunmap <buffer> <leader>son
iunmap <buffer> <leader>som
iunmap <buffer> <leader>sod
iunmap <buffer> <leader>so2
iunmap <buffer> <leader>so3
iunmap <buffer> <leader>so.

iunmap <buffer> <localleader>so

iunmap <buffer> <localleader>son
iunmap <buffer> <localleader>som
iunmap <buffer> <localleader>sod
iunmap <buffer> <localleader>so2
iunmap <buffer> <localleader>so3
iunmap <buffer> <localleader>so.

iunmap <buffer> <localleader>sonr
iunmap <buffer> <localleader>somr
iunmap <buffer> <localleader>sodr
iunmap <buffer> <localleader>so2r
iunmap <buffer> <localleader>so3r
iunmap <buffer> <localleader>so.r

iunmap <buffer> <localleader>sonc
iunmap <buffer> <localleader>somc
iunmap <buffer> <localleader>sodc
iunmap <buffer> <localleader>so2c
iunmap <buffer> <localleader>so3c
iunmap <buffer> <localleader>so.c

"}}}
" PSO{{{

iunmap <buffer> <leader>pso
iunmap <buffer> <leader>pson
iunmap <buffer> <leader>psom
iunmap <buffer> <leader>psod
iunmap <buffer> <leader>psok
iunmap <buffer> <leader>pso2
iunmap <buffer> <leader>pso3
iunmap <buffer> <leader>pso.

iunmap <buffer> <localleader>pso

iunmap <buffer> <localleader>pson
iunmap <buffer> <localleader>psom
iunmap <buffer> <localleader>psod
iunmap <buffer> <localleader>psok
iunmap <buffer> <localleader>pso2
iunmap <buffer> <localleader>pso3
iunmap <buffer> <localleader>pso.

iunmap <buffer> <localleader>psonr
iunmap <buffer> <localleader>psomr
iunmap <buffer> <localleader>psodr
iunmap <buffer> <localleader>psokr
iunmap <buffer> <localleader>pso2r
iunmap <buffer> <localleader>pso3r
iunmap <buffer> <localleader>pso.r

iunmap <buffer> <localleader>psonc
iunmap <buffer> <localleader>psomc
iunmap <buffer> <localleader>psodc
iunmap <buffer> <localleader>psokc
iunmap <buffer> <localleader>pso2c
iunmap <buffer> <localleader>pso3c
iunmap <buffer> <localleader>pso.c

"}}}
" U{{{

iunmap <buffer> <leader>un
iunmap <buffer> <leader>um
iunmap <buffer> <leader>ud
iunmap <buffer> <leader>u2
iunmap <buffer> <leader>u3
iunmap <buffer> <leader>u.

iunmap <buffer> <localleader>u

iunmap <buffer> <localleader>un
iunmap <buffer> <localleader>um
iunmap <buffer> <localleader>ud
iunmap <buffer> <localleader>u2
iunmap <buffer> <localleader>u3
iunmap <buffer> <localleader>u.

iunmap <buffer> <localleader>unc
iunmap <buffer> <localleader>umc
iunmap <buffer> <localleader>udc
iunmap <buffer> <localleader>u2c
iunmap <buffer> <localleader>u3c
iunmap <buffer> <localleader>u.c

"}}}
" SU{{{

iunmap <buffer> <leader>su
iunmap <buffer> <leader>sun
iunmap <buffer> <leader>sum
iunmap <buffer> <leader>sud
iunmap <buffer> <leader>su2
iunmap <buffer> <leader>su3
iunmap <buffer> <leader>su.

iunmap <buffer> <localleader>su

iunmap <buffer> <localleader>sun
iunmap <buffer> <localleader>sum
iunmap <buffer> <localleader>sud
iunmap <buffer> <localleader>su2
iunmap <buffer> <localleader>su3
iunmap <buffer> <localleader>su.

iunmap <buffer> <localleader>sunc
iunmap <buffer> <localleader>sumc
iunmap <buffer> <localleader>sudc
iunmap <buffer> <localleader>su2c
iunmap <buffer> <localleader>su3c
iunmap <buffer> <localleader>su.c

"}}}

" Underscore style

"GL{{{

iunmap <buffer> <localleader>glnp
iunmap <buffer> <localleader>glmp
iunmap <buffer> <localleader>gldp
iunmap <buffer> <localleader>gl2p
iunmap <buffer> <localleader>gl3p
iunmap <buffer> <localleader>gl.p

iunmap <buffer> <localleader>glnpz
iunmap <buffer> <localleader>glmpz
iunmap <buffer> <localleader>gldpz
iunmap <buffer> <localleader>gl2pz
iunmap <buffer> <localleader>gl3pz
iunmap <buffer> <localleader>gl.pz

iunmap <buffer> <localleader>glnpq
iunmap <buffer> <localleader>glmpq
iunmap <buffer> <localleader>gldpq
iunmap <buffer> <localleader>gl2pq
iunmap <buffer> <localleader>gl3pq
iunmap <buffer> <localleader>gl.pq

iunmap <buffer> <localleader>glnpr
iunmap <buffer> <localleader>glmpr
iunmap <buffer> <localleader>gldpr
iunmap <buffer> <localleader>gl2pr
iunmap <buffer> <localleader>gl3pr
iunmap <buffer> <localleader>gl.pr

"}}}

"}}}
" times, tilde, hat, accent, bar, over/uline, power"{{{
"-------------------------------------------------------------------

iunmap <buffer> <localleader>x

iunmap <buffer> ;ox
iunmap <buffer> ;oa
iunmap <buffer> <localleader>ox
iunmap <buffer> <localleader>oa
iunmap <buffer> ;oxl
iunmap <buffer> ;oal
iunmap <buffer> <localleader>oxl
iunmap <buffer> <localleader>oal

iunmap <buffer> ;OX
iunmap <buffer> ;OA
iunmap <buffer> <localleader>OX
iunmap <buffer> <localleader>OA
iunmap <buffer> ;OXl
iunmap <buffer> ;OXL
iunmap <buffer> ;OAl
iunmap <buffer> ;OAL
iunmap <buffer> <localleader>OXl
iunmap <buffer> <localleader>OXL
iunmap <buffer> <localleader>OAl
iunmap <buffer> <localleader>OAL

iunmap <buffer> ;o

iunmap <buffer> <localleader>/
iunmap <buffer> ;1/
iunmap <buffer> ;2/
iunmap <buffer> ;3/

iunmap <buffer> <localleader>no

iunmap <buffer> <localleader>wt
iunmap <buffer> <localleader>~
iunmap <buffer> <localleader>jt

iunmap <buffer> <localleader>wh
iunmap <buffer> `6
iunmap <buffer> <localleader>-
iunmap <buffer> <localleader>bar
iunmap <buffer> <localleader>ol
iunmap <buffer> <localleader>ul
iunmap <buffer> <localleader>.

iunmap <buffer> <localleader><C-E>

iunmap <buffer> ;-.
iunmap <buffer> ;-1
iunmap <buffer> ;-2
iunmap <buffer> ;-3

iunmap <buffer> ;-d
iunmap <buffer> ;-i
iunmap <buffer> ;-j
iunmap <buffer> ;-k
iunmap <buffer> ;-l
iunmap <buffer> ;-m
iunmap <buffer> ;-n
iunmap <buffer> ;-p
iunmap <buffer> ;-r
iunmap <buffer> ;-s
iunmap <buffer> ;-t
iunmap <buffer> ;-x
iunmap <buffer> ;-y
iunmap <buffer> ;-z

iunmap <buffer> ^^
iunmap <buffer> ;^

iunmap <buffer> __
iunmap <buffer> ;_

iunmap <buffer> ^_
iunmap <buffer> _^
iunmap <buffer> ^__
iunmap <buffer> _^^

"}}}
" lim, int, sum, operators{{{
"-------------------------------------------------------------------

" Limits{{{

iunmap <buffer> <localleader>l
iunmap <buffer> <localleader>li
iunmap <buffer> <localleader>ls
iunmap <buffer> <localleader>ll
iunmap <buffer> <localleader>lil
iunmap <buffer> <localleader>lsl

iunmap <buffer> <localleader>lii
iunmap <buffer> <localleader>lsi
iunmap <buffer> <localleader>lli
iunmap <buffer> <localleader>lili
iunmap <buffer> <localleader>lsli

iunmap <buffer> <localleader>lj
iunmap <buffer> <localleader>lij
iunmap <buffer> <localleader>lsj
iunmap <buffer> <localleader>llj
iunmap <buffer> <localleader>lilj
iunmap <buffer> <localleader>lslj

iunmap <buffer> <localleader>lk
iunmap <buffer> <localleader>lik
iunmap <buffer> <localleader>lsk
iunmap <buffer> <localleader>llk
iunmap <buffer> <localleader>lilk
iunmap <buffer> <localleader>lslk

iunmap <buffer> <localleader>lll
iunmap <buffer> <localleader>lill
iunmap <buffer> <localleader>lsll

iunmap <buffer> <localleader>lm
iunmap <buffer> <localleader>lim
iunmap <buffer> <localleader>lsm
iunmap <buffer> <localleader>llm
iunmap <buffer> <localleader>lilm
iunmap <buffer> <localleader>lslm

iunmap <buffer> <localleader>lM
iunmap <buffer> <localleader>liM
iunmap <buffer> <localleader>lsM
iunmap <buffer> <localleader>llM
iunmap <buffer> <localleader>lilM
iunmap <buffer> <localleader>lslM

iunmap <buffer> <localleader>ln
iunmap <buffer> <localleader>lin
iunmap <buffer> <localleader>lsn
iunmap <buffer> <localleader>lln
iunmap <buffer> <localleader>liln
iunmap <buffer> <localleader>lsln

iunmap <buffer> <localleader>lN
iunmap <buffer> <localleader>liN
iunmap <buffer> <localleader>lsN
iunmap <buffer> <localleader>llN
iunmap <buffer> <localleader>lilN
iunmap <buffer> <localleader>lslN

iunmap <buffer> <localleader>lp
iunmap <buffer> <localleader>lip
iunmap <buffer> <localleader>lsp
iunmap <buffer> <localleader>llp
iunmap <buffer> <localleader>lilp
iunmap <buffer> <localleader>lslp

iunmap <buffer> <localleader>lq
iunmap <buffer> <localleader>liq
iunmap <buffer> <localleader>lsq
iunmap <buffer> <localleader>llq
iunmap <buffer> <localleader>lilq
iunmap <buffer> <localleader>lslq

iunmap <buffer> <localleader>lQ
iunmap <buffer> <localleader>liQ
iunmap <buffer> <localleader>lsQ
iunmap <buffer> <localleader>llQ
iunmap <buffer> <localleader>lilQ
iunmap <buffer> <localleader>lslQ

iunmap <buffer> <localleader>lr
iunmap <buffer> <localleader>lir
iunmap <buffer> <localleader>lsr
iunmap <buffer> <localleader>llr
iunmap <buffer> <localleader>lilr
iunmap <buffer> <localleader>lslr

iunmap <buffer> <localleader>lR
iunmap <buffer> <localleader>liR
iunmap <buffer> <localleader>lsR
iunmap <buffer> <localleader>llR
iunmap <buffer> <localleader>lilR
iunmap <buffer> <localleader>lslR

iunmap <buffer> <localleader>lis
iunmap <buffer> <localleader>lss
iunmap <buffer> <localleader>lls
iunmap <buffer> <localleader>lils
iunmap <buffer> <localleader>lsls

iunmap <buffer> <localleader>lt
iunmap <buffer> <localleader>lit
iunmap <buffer> <localleader>lst
iunmap <buffer> <localleader>llt
iunmap <buffer> <localleader>lilt
iunmap <buffer> <localleader>lslt

iunmap <buffer> <localleader>lT
iunmap <buffer> <localleader>liT
iunmap <buffer> <localleader>lsT
iunmap <buffer> <localleader>llT
iunmap <buffer> <localleader>lilT
iunmap <buffer> <localleader>lslT

iunmap <buffer> <localleader>lw
iunmap <buffer> <localleader>liw
iunmap <buffer> <localleader>lsw
iunmap <buffer> <localleader>llw
iunmap <buffer> <localleader>lilw
iunmap <buffer> <localleader>lslw

iunmap <buffer> <localleader>lx
iunmap <buffer> <localleader>lix
iunmap <buffer> <localleader>lsx
iunmap <buffer> <localleader>llx
iunmap <buffer> <localleader>lilx
iunmap <buffer> <localleader>lslx

iunmap <buffer> <localleader>ly
iunmap <buffer> <localleader>liy
iunmap <buffer> <localleader>lsy
iunmap <buffer> <localleader>lly
iunmap <buffer> <localleader>lily
iunmap <buffer> <localleader>lsly

iunmap <buffer> <localleader>lz
iunmap <buffer> <localleader>liz
iunmap <buffer> <localleader>lsz
iunmap <buffer> <localleader>llz
iunmap <buffer> <localleader>lilz
iunmap <buffer> <localleader>lslz

iunmap <buffer> <localleader>l.
iunmap <buffer> <localleader>li.
iunmap <buffer> <localleader>ls.
iunmap <buffer> <localleader>ll.
iunmap <buffer> <localleader>lil.
iunmap <buffer> <localleader>lsl.

iunmap <buffer> <localleader>jl
iunmap <buffer> <localleader>jli
iunmap <buffer> <localleader>jls

"}}}
" Int{{{

iunmap <buffer> ;i
iunmap <buffer> <localleader>i
iunmap <buffer> ;il
iunmap <buffer> <localleader>il
iunmap <buffer> ;di
iunmap <buffer> <localleader>di
iunmap <buffer> ;dil
iunmap <buffer> <localleader>dil

iunmap <buffer> ;jd
iunmap <buffer> ;d
iunmap <buffer> ;dx
iunmap <buffer> ;dy
iunmap <buffer> ;dz
iunmap <buffer> ;dw
iunmap <buffer> ;dr
iunmap <buffer> ;ds
iunmap <buffer> ;dt
iunmap <buffer> <localleader>d

"}}}
" Sum-and-prod{{{

iunmap <buffer> ;s
iunmap <buffer> <localleader>s
iunmap <buffer> ;sl
iunmap <buffer> ;ds
iunmap <buffer> <localleader>sli
iunmap <buffer> <localleader>slim
iunmap <buffer> <localleader>ds

iunmap <buffer> ;p
iunmap <buffer> <localleader>p
iunmap <buffer> ;pl
iunmap <buffer> ;dp
iunmap <buffer> <localleader>pl
iunmap <buffer> <localleader>dp

iunmap <buffer> ;cp
iunmap <buffer> <localleader>cp
iunmap <buffer> ;cpl
iunmap <buffer> ;dcp
iunmap <buffer> <localleader>cpl
iunmap <buffer> <localleader>dcp

"}}}

iunmap <buffer> ;mn
iunmap <buffer> ;mnl
iunmap <buffer> ;mx
iunmap <buffer> ;mxl

iunmap <buffer> ;in
iunmap <buffer> ;inl
iunmap <buffer> ;sp
iunmap <buffer> ;spl

"}}}
" Big bracket, less/greater than"{{{
"-------------------------------------------------------------------

iunmap <buffer> ;1
iunmap <buffer> ;2
iunmap <buffer> ;3
iunmap <buffer> ;4

iunmap <buffer> ;1(
iunmap <buffer> ;2(
iunmap <buffer> ;3(
iunmap <buffer> ;4(
iunmap <buffer> ;5(

iunmap <buffer> ;1{
iunmap <buffer> ;2{
iunmap <buffer> ;3{
iunmap <buffer> ;4{
iunmap <buffer> ;5{

iunmap <buffer> ;1[
iunmap <buffer> ;2[
iunmap <buffer> ;3[
iunmap <buffer> ;4[
iunmap <buffer> ;5[

iunmap <buffer> ;1\|
iunmap <buffer> ;2\|
iunmap <buffer> ;3\|
iunmap <buffer> ;4\|
iunmap <buffer> ;5\|

iunmap <buffer> <localleader>fl
iunmap <buffer> <localleader>ce

iunmap <buffer> <localleader>lrdb

iunmap <buffer> <localleader>lrab
iunmap <buffer> <localleader>lrdab

iunmap <buffer> <localleader><
iunmap <buffer> <localleader>>
iunmap <buffer> <<
iunmap <buffer> >>
iunmap <buffer> ;=
iunmap <buffer> ==
iunmap <buffer> =>
iunmap <buffer> <localleader>=

"}}}
" Arrows"{{{
"-------------------------------------------------------------------

iunmap <buffer> ;lra
iunmap <buffer> ;llra

iunmap <buffer> <localleader>ra
iunmap <buffer> <localleader>la
iunmap <buffer> <localleader>lra
iunmap <buffer> <localleader>lla
iunmap <buffer> <localleader>Ra
iunmap <buffer> <localleader>La
iunmap <buffer> <localleader>Lra
iunmap <buffer> <localleader>Lla
iunmap <buffer> <localleader>rras
iunmap <buffer> <localleader>llas
iunmap <buffer> <localleader>xra
iunmap <buffer> <localleader>xla
iunmap <buffer> <localleader>xlra
iunmap <buffer> <localleader>xlla
iunmap <buffer> <localleader>xRa
iunmap <buffer> <localleader>xLa
iunmap <buffer> <localleader>thra
iunmap <buffer> <localleader>thla
iunmap <buffer> <localleader>rat
iunmap <buffer> <localleader>lat
iunmap <buffer> <localleader>rsa
iunmap <buffer> <localleader>lsa
iunmap <buffer> <localleader>lrsa
iunmap <buffer> <localleader>da
iunmap <buffer> <localleader>ua
iunmap <buffer> <localleader>dda
iunmap <buffer> <localleader>uua
iunmap <buffer> <localleader>hra
iunmap <buffer> <localleader>hla
iunmap <buffer> <localleader>car
iunmap <buffer> <localleader>cal
iunmap <buffer> <localleader>ciar
iunmap <buffer> <localleader>cial
iunmap <buffer> <localleader>lciar
iunmap <buffer> <localleader>rciar
iunmap <buffer> <localleader>rcial
iunmap <buffer> <localleader>lcial
iunmap <buffer> <localleader>to
iunmap <buffer> <localleader>lto
iunmap <buffer> <localleader>mto
iunmap <buffer> <localleader>lmto

iunmap <buffer> <localleader>v

iunmap <buffer> <localleader>act

"}}}
" Derivatives{{{
"-------------------------------------------------------------------

iunmap <buffer> ;jdv
iunmap <buffer> ;dv
iunmap <buffer> ;jdvn
iunmap <buffer> ;dvn
iunmap <buffer> <localleader>jdv
iunmap <buffer> <localleader>dv
iunmap <buffer> <localleader>jdvn
iunmap <buffer> <localleader>dvn

iunmap <buffer> ;dvx
iunmap <buffer> ;dvy
iunmap <buffer> ;dvz
iunmap <buffer> ;dvw
iunmap <buffer> ;dvr
iunmap <buffer> ;dvs
iunmap <buffer> ;dvt

iunmap <buffer> ;jdvx
iunmap <buffer> ;jdvy
iunmap <buffer> ;jdvz
iunmap <buffer> ;jdvw
iunmap <buffer> ;jdvr
iunmap <buffer> ;jdvs
iunmap <buffer> ;jdvt

iunmap <buffer> <localleader>jdvx
iunmap <buffer> <localleader>jdvy
iunmap <buffer> <localleader>jdvz
iunmap <buffer> <localleader>jdvw
iunmap <buffer> <localleader>jdvr
iunmap <buffer> <localleader>jdvs
iunmap <buffer> <localleader>jdvt

iunmap <buffer> ;jpdv
iunmap <buffer> ;pdv
iunmap <buffer> ;jpdvn
iunmap <buffer> ;pdvn
iunmap <buffer> <localleader>jpdv
iunmap <buffer> <localleader>pdv
iunmap <buffer> <localleader>jpdvn
iunmap <buffer> <localleader>pdvn

iunmap <buffer> ;pdvx
iunmap <buffer> ;pdvy
iunmap <buffer> ;pdvz
iunmap <buffer> ;pdvw
iunmap <buffer> ;pdvr
iunmap <buffer> ;pdvs
iunmap <buffer> ;pdvt

iunmap <buffer> ;jpdvx
iunmap <buffer> ;jpdvy
iunmap <buffer> ;jpdvz
iunmap <buffer> ;jpdvw
iunmap <buffer> ;jpdvr
iunmap <buffer> ;jpdvs
iunmap <buffer> ;jpdvt

iunmap <buffer> <localleader>jpdvx
iunmap <buffer> <localleader>jpdvy
iunmap <buffer> <localleader>jpdvz
iunmap <buffer> <localleader>jpdvw
iunmap <buffer> <localleader>jpdvr
iunmap <buffer> <localleader>jpdvs
iunmap <buffer> <localleader>jpdvt

iunmap <buffer> ;fdv
iunmap <buffer> <localleader>fdv

"}}}
" Others{{{

iunmap <buffer> ;l

iunmap <buffer> <localleader>em

iunmap <buffer> <localleader>bm

iunmap <buffer> <localleader>st
iunmap <buffer> <localleader>op
iunmap <buffer> <localleader>op*

iunmap <buffer> <localleader>w
iunmap <buffer> <localleader>N

iunmap <buffer> ;te

iunmap <buffer> /,
iunmap <buffer> ./
iunmap <buffer> :+

"}}}

"}}}

" Changing environments, referencing and table of contents{{{
"-------------------------------------------------------------------

" Dollar to \[\]
unmap <buffer> <localleader>db

" \[\] to Align
unmap <buffer> <localleader>bal

" \[\] to Unnumbered Align
unmap <buffer> <localleader>bual

" \[\] to Equation
unmap <buffer> <localleader>beq

" \[\] to Unnumbered Equation
unmap <buffer> <localleader>bueq

" \[\] to Aligned Equation
unmap <buffer> <localleader>baleq

" \[\] to Unnumbered Aligned Equation
unmap <buffer> <localleader>bualeq

" \[\] to Gathered Equation
unmap <buffer> <localleader>bgaeq

" \[\] to Unnumbered Gathered Equation
unmap <buffer> <localleader>bugaeq

" \[\] to Gather
unmap <buffer> <localleader>bga

" \[\] to Unnumbered Gather
unmap <buffer> <localleader>buga

" Referencing Theorem, Citation etc.
iunmap <buffer> <localleader>ref
iunmap <buffer> <localleader>jref
iunmap <buffer> <localleader>eqref
iunmap <buffer> <localleader>jeqref
iunmap <buffer> <localleader>aref
iunmap <buffer> <localleader>jaref
iunmap <buffer> <localleader>cref
iunmap <buffer> <localleader>jcref
iunmap <buffer> <localleader>cit
iunmap <buffer> <localleader>jcit

iunmap <buffer> <localleader>thm
iunmap <buffer> <localleader>lem
iunmap <buffer> <localleader>prop
iunmap <buffer> <localleader>cor
iunmap <buffer> <localleader>rem

"}}}

" Alphabets{{{

" Bold english alphabets{{{

iunmap <buffer> ;ba
iunmap <buffer> ;bb
iunmap <buffer> ;bc
iunmap <buffer> ;bd
iunmap <buffer> ;bee
iunmap <buffer> ;bf
iunmap <buffer> ;bg
iunmap <buffer> ;bh
iunmap <buffer> ;bi
iunmap <buffer> ;bj
iunmap <buffer> ;bk
iunmap <buffer> ;bl
iunmap <buffer> ;bm
iunmap <buffer> ;bn
iunmap <buffer> ;bo
iunmap <buffer> ;bp
iunmap <buffer> ;bq
iunmap <buffer> ;br
iunmap <buffer> ;bs
iunmap <buffer> ;bt
iunmap <buffer> ;bu
iunmap <buffer> ;bv
iunmap <buffer> ;bw
iunmap <buffer> ;bx
iunmap <buffer> ;by
iunmap <buffer> ;bz

iunmap <buffer> ;bA
iunmap <buffer> ;bB
iunmap <buffer> ;bC
iunmap <buffer> ;bD
iunmap <buffer> ;bE
iunmap <buffer> ;bF
iunmap <buffer> ;bG
iunmap <buffer> ;bH
iunmap <buffer> ;bI
iunmap <buffer> ;bJ
iunmap <buffer> ;bK
iunmap <buffer> ;bL
iunmap <buffer> ;bM
iunmap <buffer> ;bN
iunmap <buffer> ;bO
iunmap <buffer> ;bP
iunmap <buffer> ;bQ
iunmap <buffer> ;bR
iunmap <buffer> ;bS
iunmap <buffer> ;bT
iunmap <buffer> ;bU
iunmap <buffer> ;bV
iunmap <buffer> ;bW
iunmap <buffer> ;bX
iunmap <buffer> ;bY
iunmap <buffer> ;bZ

"}}}
" Greek Alphabets{{{
"-------------------------------------------------------------------

iunmap <buffer> ;al
iunmap <buffer> ;be
iunmap <buffer> ;ga
iunmap <buffer> ;de
iunmap <buffer> ;ep
iunmap <buffer> ;vep
iunmap <buffer> ;ze
iunmap <buffer> ;et
iunmap <buffer> ;th
iunmap <buffer> ;vth
iunmap <buffer> ;io
iunmap <buffer> ;ka
iunmap <buffer> ;la
iunmap <buffer> ;mu
iunmap <buffer> ;nu
iunmap <buffer> ;xi
iunmap <buffer> ;pi
iunmap <buffer> ;vpi
iunmap <buffer> ;rh
iunmap <buffer> ;vrh
iunmap <buffer> ;si
iunmap <buffer> ;ta
iunmap <buffer> ;ph
iunmap <buffer> ;vph
iunmap <buffer> ;ch
iunmap <buffer> ;mch
iunmap <buffer> ;ps
iunmap <buffer> ;om


iunmap <buffer> ;GA
iunmap <buffer> ;Ga
iunmap <buffer> ;DE
iunmap <buffer> ;De
iunmap <buffer> ;TH
iunmap <buffer> ;Th
iunmap <buffer> ;LA
iunmap <buffer> ;La
iunmap <buffer> ;Xi
iunmap <buffer> ;XI
iunmap <buffer> ;PI
iunmap <buffer> ;Pi
iunmap <buffer> ;SI
iunmap <buffer> ;Si
iunmap <buffer> ;UP
iunmap <buffer> ;Up
iunmap <buffer> ;PH
iunmap <buffer> ;Ph
iunmap <buffer> ;PS
iunmap <buffer> ;Ps
iunmap <buffer> ;OM
iunmap <buffer> ;Om

"}}}

"}}}

" Compilation and Stuff{{{
"-------------------------------------------------------------------

iunmap <buffer> <F5>
nunmap <buffer> <F5>
iunmap <buffer> <F7>
nunmap <buffer> <F7>
iunmap <buffer> <F8>
nunmap <buffer> <F8>
iunmap <buffer> <F9>
nunmap <buffer> <F9>

"}}}
