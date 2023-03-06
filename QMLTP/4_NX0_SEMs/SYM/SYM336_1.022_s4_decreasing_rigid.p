%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SYM336+1 [QMLTP]
%          : SYM336_1.022_s4_decreasing_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   33 (   1 unt;  21 typ;   0 def)
%            Number of atoms       :  657 (   0 equ)
%            Maximal formula atoms :    4 (  54 avg)
%            Number of connectives :  387 (  32   ~;  30   |;  35   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         ( 290 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   2 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :  290 ( 290 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :   25 (  21 usr;  23 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_decreasing_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $decreasing,
        $modalities == $modal_system_S4 ] ).

tff(v7_decl,type,
    v7: $o ).

tff(v9_decl,type,
    v9: $o ).

tff(v10_decl,type,
    v10: $o ).

tff(v12_decl,type,
    v12: $o ).

tff(v14_decl,type,
    v14: $o ).

tff(v13_decl,type,
    v13: $o ).

tff(v16_decl,type,
    v16: $o ).

tff(v15_decl,type,
    v15: $o ).

tff(v18_decl,type,
    v18: $o ).

tff(v17_decl,type,
    v17: $o ).

tff(v19_decl,type,
    v19: $o ).

tff(v21_decl,type,
    v21: $o ).

tff(v22_decl,type,
    v22: $o ).

tff(v25_decl,type,
    v25: $o ).

tff(v24_decl,type,
    v24: $o ).

tff(v26_decl,type,
    v26: $o ).

tff(v28_decl,type,
    v28: $o ).

tff(v2_decl,type,
    v2: $o ).

tff(v3_decl,type,
    v3: $o ).

tff(v4_decl,type,
    v4: $o ).

tff(v5_decl,type,
    v5: $o ).

tff(mod1,hypothesis,
    ( {$box}
    @ (( v28
       | ( {$box}
         @ (( {$box}
            @ (( {$box}
               @ (( {$box}
                  @ (( v24
                     | ( {$box}
                       @ (( {$box}
                          @ (( {$box}
                             @ (( {$box}
                                @ (( {$box}
                                   @ (( {$box}
                                      @ (( {$box}
                                         @ (( {$box}
                                            @ (( {$box}
                                               @ (( {$box}
                                                  @ (( {$box}
                                                     @ (( {$box}
                                                        @ (( {$box}
                                                           @ (( {$box}
                                                              @ (( {$box}
                                                                 @ (( ~ v9
                                                                    | ( {$box}
                                                                      @ ({$box} @ (~ v7)) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) ) )) ) ).

tff(mod2,hypothesis,
    ( {$box}
    @ (( ~ v28
       | ( {$box}
         @ (( {$box}
            @ (( {$box}
               @ (( {$box}
                  @ (( {$box}
                     @ (( {$box}
                        @ (( {$box}
                           @ (( ~ v21
                              | ( {$box}
                                @ (( {$box}
                                   @ (( {$box}
                                      @ (( {$box}
                                         @ (( {$box}
                                            @ (( ~ v16
                                               | ( {$box}
                                                 @ (( {$box}
                                                    @ (( {$box}
                                                       @ ({$box} @ (v12)) )) )) ) )) )) )) )) )) ) )) )) )) )) )) )) )) ) )) ) ).

tff(mod3,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( v26
             | ( {$box}
               @ (( {$box}
                  @ (( {$box}
                     @ (( {$box}
                        @ (( ~ v22
                           | ( {$box}
                             @ (( v21
                                | ( {$box}
                                  @ (( {$box}
                                     @ ({$box} @ (~ v18)) )) ) )) ) )) )) )) )) ) )) )) )) ) ).

tff(mod4,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( ~ v26
             | ( {$box}
               @ (( {$box}
                  @ (( {$box}
                     @ (( {$box}
                        @ (( {$box}
                           @ (( {$box}
                              @ (( {$box}
                                 @ (( ~ v19
                                    | ( {$box}
                                      @ (( {$box}
                                         @ (( {$box}
                                            @ (( {$box}
                                               @ (( ~ v15
                                                  | ( {$box}
                                                    @ (( {$box}
                                                       @ (( {$box}
                                                          @ (( {$box}
                                                             @ (( {$box}
                                                                @ (( {$box}
                                                                   @ (( {$box}
                                                                      @ ({$box} @ (~ v7)) )) )) )) )) )) )) ) )) )) )) )) ) )) )) )) )) )) )) )) ) )) )) )) ) ).

tff(mod5,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( ~ v25
                | ( {$box}
                  @ (( {$box}
                     @ (( {$box}
                        @ (( ~ v22
                           | ( {$box}
                             @ (( {$box}
                                @ (( {$box}
                                   @ (( {$box}
                                      @ (( {$box}
                                         @ (( {$box}
                                            @ (( {$box}
                                               @ (( ~ v15
                                                  | ( {$box}
                                                    @ (( {$box}
                                                       @ (( {$box}
                                                          @ (( {$box}
                                                             @ (( {$box}
                                                                @ (( {$box}
                                                                   @ (( {$box}
                                                                      @ (( {$box}
                                                                         @ (( {$box}
                                                                            @ (( {$box}
                                                                               @ ({$box} @ (~ v4)) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) ) )) )) )) ) )) )) )) )) ) ).

tff(mod6,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( ~ v24
                   | ( {$box}
                     @ (( {$box}
                        @ (( {$box}
                           @ (( {$box}
                              @ (( {$box}
                                 @ (( {$box}
                                    @ (( {$box}
                                       @ (( {$box}
                                          @ (( v16
                                             | ( {$box}
                                               @ (( {$box}
                                                  @ (( {$box}
                                                     @ (( {$box}
                                                        @ (( {$box}
                                                           @ (( {$box}
                                                              @ (( v10
                                                                 | ( {$box}
                                                                   @ (( {$box}
                                                                      @ (( {$box}
                                                                         @ (( {$box}
                                                                            @ (( {$box}
                                                                               @ (( {$box}
                                                                                  @ ({$box} @ (v3)) )) )) )) )) )) ) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) ) )) )) )) )) )) ) ).

tff(mod7,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( {$box}
                      @ (( {$box}
                         @ (( {$box}
                            @ (( {$box}
                               @ (( v19
                                  | ( {$box}
                                    @ (( {$box}
                                       @ (( {$box}
                                          @ (( {$box}
                                             @ (( {$box}
                                                @ (( {$box}
                                                   @ (( {$box}
                                                      @ (( {$box}
                                                         @ (( {$box}
                                                            @ (( {$box}
                                                               @ (( {$box}
                                                                  @ (( {$box}
                                                                     @ (( ~ v7
                                                                        | ( {$box}
                                                                          @ (( {$box}
                                                                             @ (( v5
                                                                                | ( {$box}
                                                                                  @ (( {$box}
                                                                                     @ ({$box} @ (v2)) )) ) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod8,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( {$box}
                      @ (( {$box}
                         @ (( {$box}
                            @ (( {$box}
                               @ (( {$box}
                                  @ (( {$box}
                                     @ (( v17
                                        | ( {$box}
                                          @ (( {$box}
                                             @ (( {$box}
                                                @ (( ~ v14
                                                   | ( {$box}
                                                     @ (( ~ v13
                                                        | ( {$box}
                                                          @ (( {$box}
                                                             @ (( {$box}
                                                                @ (( {$box}
                                                                   @ (( {$box}
                                                                      @ (( {$box}
                                                                         @ (( {$box}
                                                                            @ (( {$box}
                                                                               @ (( {$box}
                                                                                  @ ({$box} @ (v3)) )) )) )) )) )) )) )) )) ) )) ) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod9,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( {$box}
                      @ (( {$box}
                         @ (( {$box}
                            @ (( {$box}
                               @ (( {$box}
                                  @ (( {$box}
                                     @ (( ~ v17
                                        | ( {$box}
                                          @ (( {$box}
                                             @ (( {$box}
                                                @ (( v14
                                                   | ( {$box}
                                                     @ (( {$box}
                                                        @ (( {$box}
                                                           @ (( {$box}
                                                              @ (( {$box}
                                                                 @ (( {$box}
                                                                    @ (( {$box}
                                                                       @ (( ~ v7
                                                                          | ( {$box}
                                                                            @ (( {$box}
                                                                               @ (( {$box}
                                                                                  @ ({$box} @ (v3)) )) )) ) )) )) )) )) )) )) )) ) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod10,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( {$box}
                      @ (( {$box}
                         @ (( {$box}
                            @ (( {$box}
                               @ (( {$box}
                                  @ (( {$box}
                                     @ (( {$box}
                                        @ (( v16
                                           | ( {$box}
                                             @ (( {$box}
                                                @ (( ~ v14
                                                   | ( {$box}
                                                     @ (( {$box}
                                                        @ (( {$box}
                                                           @ (( {$box}
                                                              @ (( {$box}
                                                                 @ (( ~ v9
                                                                    | ( {$box}
                                                                      @ (( {$box}
                                                                         @ (( {$box}
                                                                            @ (( {$box}
                                                                               @ (( {$box}
                                                                                  @ ({$box} @ (v3)) )) )) )) )) ) )) )) )) )) )) ) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(alt1,hypothesis,
    ( ( {$box}
      @ (( ( {$box}
           @ (( ( {$box}
                @ (( ( {$box}
                     @ (( ( {$box}
                          @ (( ( {$box}
                               @ (( ( {$box}
                                    @ (( ( {$box}
                                         @ (( ( {$box}
                                              @ (( ( {$box}
                                                   @ (( ( {$box}
                                                        @ (( ( {$box}
                                                             @ (( ( {$box}
                                                                  @ (( ( {$box}
                                                                       @ (( ( {$box}
                                                                            @ (( ( {$box}
                                                                                 @ (( ( {$box}
                                                                                      @ (( ( {$box}
                                                                                           @ (( ( {$box}
                                                                                                @ (( ( {$box}
                                                                                                     @ (( ( {$box}
                                                                                                          @ (( ( {$box}
                                                                                                               @ (( ( {$box}
                                                                                                                    @ (( ( {$box}
                                                                                                                         @ (( ( {$box}
                                                                                                                              @ (( ( {$box}
                                                                                                                                   @ ({$dia} @ ($true)) )
                                                                                                                                 & ( {$dia} @ ($true) ) )) )
                                                                                                                            & ( {$dia} @ ($true) ) )) )
                                                                                                                       & ( {$dia} @ (v5) )
                                                                                                                       & ( {$dia} @ (~ v5) ) )) )
                                                                                                                  & ( {$dia} @ ($true) ) )) )
                                                                                                             & ( {$dia} @ (v7) )
                                                                                                             & ( {$dia} @ (~ v7) ) )) )
                                                                                                        & ( {$dia} @ ($true) ) )) )
                                                                                                   & ( {$dia} @ ($true) ) )) )
                                                                                              & ( {$dia} @ ($true) ) )) )
                                                                                         & ( {$dia} @ ($true) ) )) )
                                                                                    & ( {$dia} @ ($true) ) )) )
                                                                               & ( {$dia} @ (v13) )
                                                                               & ( {$dia} @ (~ v13) ) )) )
                                                                          & ( {$dia} @ (v14) )
                                                                          & ( {$dia} @ (~ v14) ) )) )
                                                                     & ( {$dia} @ (v15) )
                                                                     & ( {$dia} @ (~ v15) ) )) )
                                                                & ( {$dia} @ (v16) )
                                                                & ( {$dia} @ (~ v16) ) )) )
                                                           & ( {$dia} @ ($true) ) )) )
                                                      & ( {$dia} @ ($true) ) )) )
                                                 & ( {$dia} @ ($true) ) )) )
                                            & ( {$dia} @ ($true) ) )) )
                                       & ( {$dia} @ (v21) )
                                       & ( {$dia} @ (~ v21) ) )) )
                                  & ( {$dia} @ (v22) )
                                  & ( {$dia} @ (~ v22) ) )) )
                             & ( {$dia} @ ($true) ) )) )
                        & ( {$dia} @ (v24) )
                        & ( {$dia} @ (~ v24) ) )) )
                   & ( {$dia} @ ($true) ) )) )
              & ( {$dia} @ ($true) ) )) )
         & ( {$dia} @ ($true) ) )) )
    & ( {$dia} @ ($true) ) ) ).

tff(result1,conjecture,
    $false ).

%------------------------------------------------------------------------------
