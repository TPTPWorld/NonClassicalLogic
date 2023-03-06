%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SYM335+1 [QMLTP]
%          : SYM335_1.013_k_cumulative_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   30 (   1 unt;  18 typ;   0 def)
%            Number of atoms       :  687 (   0 equ)
%            Maximal formula atoms :    4 (  57 avg)
%            Number of connectives :  401 (  30   ~;  30   |;  37   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         ( 304 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   2 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :  304 ( 304 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :   22 (  18 usr;  20 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_cumulative_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $cumulative,
        $modalities == $modal_system_K ] ).

tff(v8_decl,type,
    v8: $o ).

tff(v10_decl,type,
    v10: $o ).

tff(v12_decl,type,
    v12: $o ).

tff(v11_decl,type,
    v11: $o ).

tff(v14_decl,type,
    v14: $o ).

tff(v13_decl,type,
    v13: $o ).

tff(v16_decl,type,
    v16: $o ).

tff(v15_decl,type,
    v15: $o ).

tff(v19_decl,type,
    v19: $o ).

tff(v21_decl,type,
    v21: $o ).

tff(v23_decl,type,
    v23: $o ).

tff(v22_decl,type,
    v22: $o ).

tff(v24_decl,type,
    v24: $o ).

tff(v26_decl,type,
    v26: $o ).

tff(v1_decl,type,
    v1: $o ).

tff(v3_decl,type,
    v3: $o ).

tff(v4_decl,type,
    v4: $o ).

tff(v5_decl,type,
    v5: $o ).

tff(mod1,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( v26
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
                                          @ (( ~ v16
                                             | ( {$box}
                                               @ (( {$box}
                                                  @ (( ~ v14
                                                     | ( {$box}
                                                       @ (( {$box}
                                                          @ ({$box} @ (v11)) )) ) )) )) ) )) )) )) )) )) )) )) )) )) )) ) )) )) )) ) ).

tff(mod2,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( v24
                   | ( {$box}
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
                                                                       @ (( {$box}
                                                                          @ (( {$box}
                                                                             @ (( ~ v5
                                                                                | ( {$box}
                                                                                  @ ({$box} @ (v3)) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) ) )) )) )) )) )) ) ).

tff(mod3,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( ~ v24
                   | ( {$box}
                     @ (( {$box}
                        @ (( {$box}
                           @ (( ~ v21
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
                                                           @ (( v11
                                                              | ( {$box}
                                                                @ (( {$box}
                                                                   @ (( {$box}
                                                                      @ (( {$box}
                                                                         @ (( {$box}
                                                                            @ (( {$box}
                                                                               @ ({$box} @ (~ v4)) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) ) )) )) )) ) )) )) )) )) )) ) ).

tff(mod4,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( v23
                      | ( {$box}
                        @ (( {$box}
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
                                                                             @ (( {$box}
                                                                                @ (( v4
                                                                                   | ( {$box} @ (v3) ) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) ) ).

tff(mod5,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( v23
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
                                                   @ (( ~ v13
                                                      | ( {$box}
                                                        @ (( ~ v12
                                                           | ( {$box}
                                                             @ ({$box} @ (v10)) ) )) ) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) ) ).

tff(mod6,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( ~ v23
                      | ( {$box}
                        @ (( {$box}
                           @ (( {$box}
                              @ (( {$box}
                                 @ (( {$box}
                                    @ (( {$box}
                                       @ (( {$box}
                                          @ (( {$box}
                                             @ (( v15
                                                | ( {$box}
                                                  @ (( {$box}
                                                     @ (( {$box}
                                                        @ (( v12
                                                           | ( {$box}
                                                             @ (( {$box}
                                                                @ (( {$box}
                                                                   @ (( {$box}
                                                                      @ (( {$box}
                                                                         @ (( {$box}
                                                                            @ (( {$box}
                                                                               @ ({$box} @ (~ v4)) )) )) )) )) )) )) ) )) )) )) ) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) ) ).

tff(mod7,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( ~ v23
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
                                                      @ (( v12
                                                         | ( {$box}
                                                           @ (( {$box}
                                                              @ (( {$box}
                                                                 @ (( {$box}
                                                                    @ (( ~ v8
                                                                       | ( {$box}
                                                                         @ (( {$box}
                                                                            @ (( {$box}
                                                                               @ (( {$box}
                                                                                  @ (( {$box}
                                                                                     @ (( {$box}
                                                                                        @ ({$box} @ (~ v1)) )) )) )) )) )) ) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) ) ).

tff(mod8,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( ~ v23
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
                                                            @ (( v10
                                                               | ( {$box}
                                                                 @ (( {$box}
                                                                    @ (( {$box}
                                                                       @ (( {$box}
                                                                          @ (( {$box}
                                                                             @ (( ~ v5
                                                                                | ( {$box}
                                                                                  @ (( {$box}
                                                                                     @ (( {$box}
                                                                                        @ ({$box} @ (v1)) )) )) ) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) ) ).

tff(mod9,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( {$box}
                      @ (( v22
                         | ( {$box}
                           @ (( {$box}
                              @ (( {$box}
                                 @ (( v19
                                    | ( {$box}
                                      @ (( {$box}
                                         @ (( {$box}
                                            @ (( {$box}
                                               @ (( ~ v15
                                                  | ( {$box}
                                                    @ (( {$box}
                                                       @ (( {$box}
                                                          @ (( {$box}
                                                             @ ({$box} @ (~ v10)) )) )) )) ) )) )) )) )) ) )) )) )) ) )) )) )) )) )) )) )) ) ).

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
                                        @ (( {$box}
                                           @ (( ~ v15
                                              | ( {$box}
                                                @ (( {$box}
                                                   @ (( {$box}
                                                      @ (( {$box}
                                                         @ (( v11
                                                            | ( {$box}
                                                              @ (( {$box}
                                                                 @ (( {$box}
                                                                    @ (( {$box}
                                                                       @ (( {$box}
                                                                          @ (( {$box}
                                                                             @ (( ~ v5
                                                                                | ( {$box} @ (v4) ) )) )) )) )) )) )) ) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

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
                                                                                                                                   @ (( ( {$box}
                                                                                                                                        @ ({$dia} @ ($true)) )
                                                                                                                                      & ( {$dia} @ ($true) ) )) )
                                                                                                                                 & ( {$dia} @ ($true) ) )) )
                                                                                                                            & ( {$dia} @ ($true) ) )) )
                                                                                                                       & ( {$dia} @ (v5) )
                                                                                                                       & ( {$dia} @ (~ v5) ) )) )
                                                                                                                  & ( {$dia} @ ($true) ) )) )
                                                                                                             & ( {$dia} @ ($true) ) )) )
                                                                                                        & ( {$dia} @ (v8) )
                                                                                                        & ( {$dia} @ (~ v8) ) )) )
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
                             & ( {$dia} @ (v23) )
                             & ( {$dia} @ (~ v23) ) )) )
                        & ( {$dia} @ (v24) )
                        & ( {$dia} @ (~ v24) ) )) )
                   & ( {$dia} @ ($true) ) )) )
              & ( {$dia} @ ($true) ) )) )
         & ( {$dia} @ ($true) ) )) )
    & ( {$dia} @ ($true) ) ) ).

tff(result1,conjecture,
    $false ).

%------------------------------------------------------------------------------
