%------------------------------------------------------------------------------
% File     : SYM339^1.020 : TPTP v8.1.0. Released v8.1.0.
% Domain   : Syntactic
% Problem  : QBF-CNFSSS-K=4 C=20 V=4 D=4.6
% Version  : [BP13] axioms.
% English  : 

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
%          : [BP13]  Benzmueller & Paulson (2013), Quantified Multimodal Lo
%          : [Ste22] Steen (2022), An Extensible Logic Embedding Tool for L
% Source   : [TPTP]
% Names    : SYM339+1 [QMLTP]

% Status   : Unknown 
% Rating   : ? v8.1.0
% Syntax   : Number of formulae    :   61 (   9 unt;  30 typ;   8 def)
%            Number of atoms       :  655 (   8 equ;   0 cnn)
%            Maximal formula atoms :  111 (  21 avg)
%            Number of connectives :  639 (   1   ~;   1   |;   2   &; 632   @)
%                                         (   1 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   61 (  16 avg)
%            Number of types       :    2 (   1 usr)
%            Number of type conns  :   64 (  64   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   32 (  29 usr;   3 con; 0-3 aty)
%            Number of variables   :   35 (  32   ^   2   !;   1   ?;  35   :)
% SPC      : TH0_UNK_EQU_NAR

% Comments : This output was generated by embedproblem, version 1.7.1 (library
%            version 1.3). Generated on Thu Apr 28 13:18:18 EDT 2022 using
%            'modal' embedding, version 1.5.2. Logic specification used:
%            $modal == [$constants == $rigid,$quantification == $decreasing,
%            $modalities == $modal_system_T].
%------------------------------------------------------------------------------
thf(mworld,type,
    mworld: $tType ).

thf(mrel_type,type,
    mrel: mworld > mworld > $o ).

thf(mactual_type,type,
    mactual: mworld ).

thf(mlocal_type,type,
    mlocal: ( mworld > $o ) > $o ).

thf(mlocal_def,definition,
    ( mlocal
    = ( ^ [Phi: mworld > $o] : ( Phi @ mactual ) ) ) ).

thf(mnot_type,type,
    mnot: ( mworld > $o ) > mworld > $o ).

thf(mand_type,type,
    mand: ( mworld > $o ) > ( mworld > $o ) > mworld > $o ).

thf(mor_type,type,
    mor: ( mworld > $o ) > ( mworld > $o ) > mworld > $o ).

thf(mimplies_type,type,
    mimplies: ( mworld > $o ) > ( mworld > $o ) > mworld > $o ).

thf(mequiv_type,type,
    mequiv: ( mworld > $o ) > ( mworld > $o ) > mworld > $o ).

thf(mnot_def,definition,
    ( mnot
    = ( ^ [A: mworld > $o,W: mworld] :
          ~ ( A @ W ) ) ) ).

thf(mand_def,definition,
    ( mand
    = ( ^ [A: mworld > $o,B: mworld > $o,W: mworld] :
          ( ( A @ W )
          & ( B @ W ) ) ) ) ).

thf(mor_def,definition,
    ( mor
    = ( ^ [A: mworld > $o,B: mworld > $o,W: mworld] :
          ( ( A @ W )
          | ( B @ W ) ) ) ) ).

thf(mimplies_def,definition,
    ( mimplies
    = ( ^ [A: mworld > $o,B: mworld > $o,W: mworld] :
          ( ( A @ W )
         => ( B @ W ) ) ) ) ).

thf(mequiv_def,definition,
    ( mequiv
    = ( ^ [A: mworld > $o,B: mworld > $o,W: mworld] :
          ( ( A @ W )
        <=> ( B @ W ) ) ) ) ).

thf(mbox_type,type,
    mbox: ( mworld > $o ) > mworld > $o ).

thf(mbox_def,definition,
    ( mbox
    = ( ^ [Phi: mworld > $o,W: mworld] :
        ! [V: mworld] :
          ( ( mrel @ W @ V )
         => ( Phi @ V ) ) ) ) ).

thf(mdia_type,type,
    mdia: ( mworld > $o ) > mworld > $o ).

thf(mdia_def,definition,
    ( mdia
    = ( ^ [Phi: mworld > $o,W: mworld] :
        ? [V: mworld] :
          ( ( mrel @ W @ V )
          & ( Phi @ V ) ) ) ) ).

thf(mrel_reflexive,axiom,
    ! [W: mworld] : ( mrel @ W @ W ) ).

thf(v10_decl,type,
    v10: mworld > $o ).

thf(v12_decl,type,
    v12: mworld > $o ).

thf(v11_decl,type,
    v11: mworld > $o ).

thf(v14_decl,type,
    v14: mworld > $o ).

thf(v13_decl,type,
    v13: mworld > $o ).

thf(v16_decl,type,
    v16: mworld > $o ).

thf(v15_decl,type,
    v15: mworld > $o ).

thf(v18_decl,type,
    v18: mworld > $o ).

thf(v17_decl,type,
    v17: mworld > $o ).

thf(v19_decl,type,
    v19: mworld > $o ).

thf(v20_decl,type,
    v20: mworld > $o ).

thf(v1_decl,type,
    v1: mworld > $o ).

thf(v2_decl,type,
    v2: mworld > $o ).

thf(v3_decl,type,
    v3: mworld > $o ).

thf(v4_decl,type,
    v4: mworld > $o ).

thf(v5_decl,type,
    v5: mworld > $o ).

thf(v6_decl,type,
    v6: mworld > $o ).

thf(v7_decl,type,
    v7: mworld > $o ).

thf(v8_decl,type,
    v8: mworld > $o ).

thf(mod1,axiom,
    mlocal @ ( mbox @ ( mor @ v20 @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ ( mnot @ v13 ) @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ ( mnot @ v5 ) @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mnot @ v1 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

thf(mod2,axiom,
    mlocal @ ( mbox @ ( mor @ v20 @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ v10 @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ v6 @ ( mbox @ v5 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

thf(mod3,axiom,
    mlocal @ ( mbox @ ( mor @ ( mnot @ v20 ) @ ( mbox @ ( mor @ v19 @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ ( mnot @ v15 ) @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ v5 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

thf(mod4,axiom,
    mlocal @ ( mbox @ ( mor @ ( mnot @ v20 ) @ ( mbox @ ( mbox @ ( mor @ v18 @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ ( mnot @ v8 ) @ ( mbox @ ( mbox @ ( mbox @ ( mnot @ v5 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

thf(mod5,axiom,
    mlocal @ ( mbox @ ( mbox @ ( mor @ v19 @ ( mbox @ ( mor @ v18 @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ v8 @ ( mbox @ ( mbox @ ( mbox @ v5 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

thf(mod6,axiom,
    mlocal @ ( mbox @ ( mbox @ ( mor @ v19 @ ( mbox @ ( mbox @ ( mbox @ ( mor @ v16 @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ ( mnot @ v6 ) @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ v2 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

thf(mod7,axiom,
    mlocal @ ( mbox @ ( mbox @ ( mor @ v19 @ ( mbox @ ( mbox @ ( mbox @ ( mor @ ( mnot @ v16 ) @ ( mbox @ ( mbox @ ( mor @ v14 @ ( mbox @ ( mbox @ ( mnot @ v12 ) ) ) ) ) ) ) ) ) ) ) ) ) ).

thf(mod8,axiom,
    mlocal @ ( mbox @ ( mbox @ ( mor @ v19 @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ v8 @ ( mbox @ ( mor @ v7 @ ( mbox @ ( mbox @ ( mbox @ ( mnot @ v4 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

thf(mod9,axiom,
    mlocal @ ( mbox @ ( mbox @ ( mor @ ( mnot @ v19 ) @ ( mbox @ ( mbox @ ( mor @ v17 @ ( mbox @ ( mbox @ ( mbox @ ( mor @ ( mnot @ v14 ) @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ v5 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

thf(mod10,axiom,
    mlocal @ ( mbox @ ( mbox @ ( mor @ ( mnot @ v19 ) @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ ( mnot @ v14 ) @ ( mbox @ ( mor @ ( mnot @ v13 ) @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mnot @ v4 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

thf(mod11,axiom,
    mlocal @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ v17 @ ( mbox @ ( mor @ ( mnot @ v16 ) @ ( mbox @ ( mor @ v15 @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ v11 ) ) ) ) ) ) ) ) ) ) ) ) ) ).

thf(mod12,axiom,
    mlocal @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ ( mnot @ v17 ) @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ v13 @ ( mbox @ ( mbox @ ( mbox @ ( mor @ v10 @ ( mbox @ ( mbox @ ( mbox @ v7 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

thf(mod13,axiom,
    mlocal @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ v15 @ ( mbox @ ( mbox @ ( mor @ v13 @ ( mbox @ ( mbox @ ( mor @ v11 @ ( mbox @ ( mnot @ v10 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

thf(mod14,axiom,
    mlocal @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ v15 @ ( mbox @ ( mbox @ ( mor @ ( mnot @ v13 ) @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ ( mnot @ v4 ) @ ( mbox @ ( mnot @ v3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

thf(mod15,axiom,
    mlocal @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ ( mnot @ v15 ) @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ v11 @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ v5 @ ( mbox @ v4 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

thf(mod16,axiom,
    mlocal @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ ( mnot @ v15 ) @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ ( mnot @ v5 ) @ ( mbox @ ( mor @ v4 @ ( mbox @ ( mbox @ ( mnot @ v2 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

thf(mod17,axiom,
    mlocal @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ ( mnot @ v13 ) @ ( mbox @ ( mbox @ ( mor @ ( mnot @ v11 ) @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ ( mnot @ v7 ) @ ( mbox @ ( mbox @ ( mbox @ v4 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

thf(mod18,axiom,
    mlocal @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ ( mnot @ v10 ) @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ ( mnot @ v6 ) @ ( mbox @ ( mor @ ( mnot @ v5 ) @ ( mbox @ ( mbox @ ( mbox @ v2 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

thf(mod19,axiom,
    mlocal @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ v7 @ ( mbox @ ( mbox @ ( mor @ v5 @ ( mbox @ ( mbox @ ( mor @ ( mnot @ v3 ) @ ( mbox @ ( mnot @ v2 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

thf(mod20,axiom,
    mlocal @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mbox @ ( mor @ v6 @ ( mbox @ ( mor @ ( mnot @ v5 ) @ ( mbox @ ( mor @ ( mnot @ v4 ) @ ( mbox @ ( mnot @ v3 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).

thf(alt1,axiom,
    ( mlocal
    @ ( mand
      @ ( mbox
        @ ( mand
          @ ( mbox
            @ ( mand
              @ ( mbox
                @ ( mand
                  @ ( mbox
                    @ ( mand
                      @ ( mbox
                        @ ( mand
                          @ ( mbox
                            @ ( mand
                              @ ( mbox
                                @ ( mand
                                  @ ( mbox
                                    @ ( mand
                                      @ ( mbox
                                        @ ( mand
                                          @ ( mbox
                                            @ ( mand
                                              @ ( mbox
                                                @ ( mand
                                                  @ ( mbox
                                                    @ ( mand
                                                      @ ( mbox
                                                        @ ( mand
                                                          @ ( mbox
                                                            @ ( mand
                                                              @ ( mbox
                                                                @ ( mand
                                                                  @ ( mbox
                                                                    @ ( mand
                                                                      @ ( mbox
                                                                        @ ( mand
                                                                          @ ( mbox
                                                                            @ ( mand
                                                                              @ ( mbox
                                                                                @ ( mdia
                                                                                  @ ^ [W: mworld] : $true ) )
                                                                              @ ( mdia
                                                                                @ ^ [W: mworld] : $true ) ) )
                                                                          @ ( mdia
                                                                            @ ^ [W: mworld] : $true ) ) )
                                                                      @ ( mdia
                                                                        @ ^ [W: mworld] : $true ) ) )
                                                                  @ ( mand @ ( mdia @ v5 ) @ ( mdia @ ( mnot @ v5 ) ) ) ) )
                                                              @ ( mand @ ( mdia @ v6 ) @ ( mdia @ ( mnot @ v6 ) ) ) ) )
                                                          @ ( mand @ ( mdia @ v7 ) @ ( mdia @ ( mnot @ v7 ) ) ) ) )
                                                      @ ( mand @ ( mdia @ v8 ) @ ( mdia @ ( mnot @ v8 ) ) ) ) )
                                                  @ ( mdia
                                                    @ ^ [W: mworld] : $true ) ) )
                                              @ ( mdia
                                                @ ^ [W: mworld] : $true ) ) )
                                          @ ( mdia
                                            @ ^ [W: mworld] : $true ) ) )
                                      @ ( mdia
                                        @ ^ [W: mworld] : $true ) ) )
                                  @ ( mand @ ( mdia @ v13 ) @ ( mdia @ ( mnot @ v13 ) ) ) ) )
                              @ ( mand @ ( mdia @ v14 ) @ ( mdia @ ( mnot @ v14 ) ) ) ) )
                          @ ( mand @ ( mdia @ v15 ) @ ( mdia @ ( mnot @ v15 ) ) ) ) )
                      @ ( mand @ ( mdia @ v16 ) @ ( mdia @ ( mnot @ v16 ) ) ) ) )
                  @ ( mdia
                    @ ^ [W: mworld] : $true ) ) )
              @ ( mdia
                @ ^ [W: mworld] : $true ) ) )
          @ ( mdia
            @ ^ [W: mworld] : $true ) ) )
      @ ( mdia
        @ ^ [W: mworld] : $true ) ) ) ).

thf(result1,conjecture,
    ( mlocal
    @ ^ [W: mworld] : $false ) ).

%------------------------------------------------------------------------------
