%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SYM340+1 [QMLTP]
%          : SYM340_1.047_s5_decreasing_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   66 (   1 unt;  44 typ;   0 def)
%            Number of atoms       : 2296 (   0 equ)
%            Maximal formula atoms :    4 ( 104 avg)
%            Number of connectives : 1274 (  70   ~;  60   |;  74   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (1070 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   2 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       : 1070 (1070 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :   48 (  44 usr;  46 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_decreasing_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $decreasing,
        $modalities == $modal_system_S5 ] ).

tff(v10_decl,type,
    v10: $o ).

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

tff(v18_decl,type,
    v18: $o ).

tff(v17_decl,type,
    v17: $o ).

tff(v19_decl,type,
    v19: $o ).

tff(v21_decl,type,
    v21: $o ).

tff(v20_decl,type,
    v20: $o ).

tff(v23_decl,type,
    v23: $o ).

tff(v22_decl,type,
    v22: $o ).

tff(v27_decl,type,
    v27: $o ).

tff(v26_decl,type,
    v26: $o ).

tff(v28_decl,type,
    v28: $o ).

tff(v30_decl,type,
    v30: $o ).

tff(v32_decl,type,
    v32: $o ).

tff(v31_decl,type,
    v31: $o ).

tff(v35_decl,type,
    v35: $o ).

tff(v38_decl,type,
    v38: $o ).

tff(v37_decl,type,
    v37: $o ).

tff(v41_decl,type,
    v41: $o ).

tff(v40_decl,type,
    v40: $o ).

tff(v43_decl,type,
    v43: $o ).

tff(v42_decl,type,
    v42: $o ).

tff(v45_decl,type,
    v45: $o ).

tff(v44_decl,type,
    v44: $o ).

tff(v49_decl,type,
    v49: $o ).

tff(v48_decl,type,
    v48: $o ).

tff(v1_decl,type,
    v1: $o ).

tff(v3_decl,type,
    v3: $o ).

tff(v4_decl,type,
    v4: $o ).

tff(v5_decl,type,
    v5: $o ).

tff(v7_decl,type,
    v7: $o ).

tff(v8_decl,type,
    v8: $o ).

tff(v9_decl,type,
    v9: $o ).

tff(v50_decl,type,
    v50: $o ).

tff(v52_decl,type,
    v52: $o ).

tff(v51_decl,type,
    v51: $o ).

tff(v54_decl,type,
    v54: $o ).

tff(v53_decl,type,
    v53: $o ).

tff(v56_decl,type,
    v56: $o ).

tff(v55_decl,type,
    v55: $o ).

tff(mod1,hypothesis,
    ( {$box}
    @ (( v56
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
                                       @ (( ~ v45
                                          | ( {$box}
                                            @ (( {$box}
                                               @ (( {$box}
                                                  @ (( {$box}
                                                     @ (( {$box}
                                                        @ (( {$box}
                                                           @ (( {$box}
                                                              @ (( {$box}
                                                                 @ (( ~ v37
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
                                                                                                 @ ({$box} @ (v26)) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) ) )) ) ).

tff(mod2,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( ~ v55
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
                                                                                          @ (( ~ v28
                                                                                             | ( {$box}
                                                                                               @ (( {$box}
                                                                                                  @ (( {$box}
                                                                                                     @ (( {$box}
                                                                                                        @ (( {$box}
                                                                                                           @ (( {$box}
                                                                                                              @ (( {$box}
                                                                                                                 @ (( {$box}
                                                                                                                    @ (( v20
                                                                                                                       | ( {$box}
                                                                                                                         @ (( {$box}
                                                                                                                            @ (( {$box}
                                                                                                                               @ (( {$box}
                                                                                                                                  @ (( {$box}
                                                                                                                                     @ (( {$box}
                                                                                                                                        @ (( {$box}
                                                                                                                                           @ (( {$box}
                                                                                                                                              @ ({$box} @ (v11)) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) ) ).

tff(mod3,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( v54
             | ( {$box}
               @ (( {$box}
                  @ (( {$box}
                     @ (( {$box}
                        @ (( {$box}
                           @ (( {$box}
                              @ (( ~ v48
                                 | ( {$box}
                                   @ (( {$box}
                                      @ (( {$box}
                                         @ (( {$box}
                                            @ (( {$box}
                                               @ (( v43
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
                                                                                              @ (( {$box}
                                                                                                 @ (( {$box}
                                                                                                    @ (( {$box}
                                                                                                       @ (( {$box}
                                                                                                          @ (( {$box}
                                                                                                             @ (( {$box}
                                                                                                                @ ({$box} @ (~ v21)) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) ) )) )) )) )) )) )) ) )) )) )) ) ).

tff(mod4,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( v54
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
                                                                                          @ (( ~ v28
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
                                                                                                                                      @ (( ~ v14
                                                                                                                                         | ( {$box}
                                                                                                                                           @ (( {$box}
                                                                                                                                              @ (( {$box}
                                                                                                                                                 @ (( {$box}
                                                                                                                                                    @ (( {$box}
                                                                                                                                                       @ ({$box} @ (~ v8)) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) ) ).

tff(mod5,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( ~ v54
             | ( {$box}
               @ (( {$box}
                  @ (( {$box}
                     @ (( ~ v51
                        | ( {$box}
                          @ (( {$box}
                             @ (( {$box}
                                @ (( {$box}
                                   @ (( {$box}
                                      @ (( {$box}
                                         @ (( {$box}
                                            @ (( {$box}
                                               @ (( ~ v43
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
                                                                                                                                  @ ({$box} @ (v15)) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) ) )) )) )) ) )) )) )) ) ).

tff(mod6,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( ~ v53
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
                                                                                                @ (( ~ v26
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
                                                                                                                                               @ (( {$box}
                                                                                                                                                  @ (( {$box}
                                                                                                                                                     @ (( ~ v9
                                                                                                                                                        | ( {$box}
                                                                                                                                                          @ (( {$box}
                                                                                                                                                             @ (( {$box}
                                                                                                                                                                @ (( {$box}
                                                                                                                                                                   @ (( {$box}
                                                                                                                                                                      @ (( {$box}
                                                                                                                                                                         @ (( {$box}
                                                                                                                                                                            @ ({$box} @ (~ v1)) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) ) ).

tff(mod7,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( v52
                   | ( {$box}
                     @ (( {$box}
                        @ (( {$box}
                           @ (( {$box}
                              @ (( v48
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
                                                                             @ (( {$box}
                                                                                @ (( ~ v32
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
                                                                                                                               @ (( {$box}
                                                                                                                                  @ (( {$box}
                                                                                                                                     @ (( {$box}
                                                                                                                                        @ (( {$box}
                                                                                                                                           @ (( {$box}
                                                                                                                                              @ (( {$box}
                                                                                                                                                 @ (( {$box}
                                                                                                                                                    @ (( {$box}
                                                                                                                                                       @ (( {$box}
                                                                                                                                                          @ ({$box} @ (~ v7)) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) ) )) )) )) )) )) ) ).

tff(mod8,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( {$box}
                      @ (( v50
                         | ( {$box}
                           @ (( {$box}
                              @ (( {$box}
                                 @ (( {$box}
                                    @ (( {$box}
                                       @ (( {$box}
                                          @ (( v44
                                             | ( {$box}
                                               @ (( {$box}
                                                  @ (( {$box}
                                                     @ (( {$box}
                                                        @ (( {$box}
                                                           @ (( {$box}
                                                              @ (( {$box}
                                                                 @ (( {$box}
                                                                    @ (( {$box}
                                                                       @ (( ~ v35
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
                                                                                                                      @ (( {$box}
                                                                                                                         @ (( {$box}
                                                                                                                            @ (( {$box}
                                                                                                                               @ (( {$box}
                                                                                                                                  @ (( {$box}
                                                                                                                                     @ (( {$box}
                                                                                                                                        @ (( {$box}
                                                                                                                                           @ (( {$box}
                                                                                                                                              @ (( {$box}
                                                                                                                                                 @ ({$box} @ (~ v10)) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) ) )) )) )) )) )) )) )) ) ).

tff(mod9,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( {$box}
                      @ (( {$box}
                         @ (( ~ v49
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
                                                                        @ (( {$box}
                                                                           @ (( {$box}
                                                                              @ (( {$box}
                                                                                 @ (( {$box}
                                                                                    @ (( {$box}
                                                                                       @ (( {$box}
                                                                                          @ (( ~ v28
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
                                                                                                                                         @ (( {$box}
                                                                                                                                            @ (( {$box}
                                                                                                                                               @ (( ~ v11
                                                                                                                                                  | ( {$box}
                                                                                                                                                    @ (( {$box}
                                                                                                                                                       @ (( {$box}
                                                                                                                                                          @ ({$box} @ (v7)) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) ) ).

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
                            @ (( v48
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
                                                            @ (( ~ v38
                                                               | ( {$box}
                                                                 @ (( {$box}
                                                                    @ (( {$box}
                                                                       @ (( {$box}
                                                                          @ (( {$box}
                                                                             @ (( {$box}
                                                                                @ (( {$box}
                                                                                   @ (( v31
                                                                                      | ( {$box}
                                                                                        @ (( {$box}
                                                                                           @ (( {$box}
                                                                                              @ (( {$box}
                                                                                                 @ (( {$box}
                                                                                                    @ (( {$box}
                                                                                                       @ (( {$box}
                                                                                                          @ (( {$box}
                                                                                                             @ ({$box} @ (~ v22)) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) ) ).

tff(mod11,hypothesis,
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
                                     @ (( v45
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
                                                                                                                                                  @ (( ~ v10
                                                                                                                                                     | ( {$box}
                                                                                                                                                       @ (( {$box}
                                                                                                                                                          @ ({$box} @ (v7)) )) ) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod12,hypothesis,
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
                                        @ (( ~ v44
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
                                                                                       @ (( {$box}
                                                                                          @ (( {$box}
                                                                                             @ (( v27
                                                                                                | ( {$box}
                                                                                                  @ (( {$box}
                                                                                                     @ (( {$box}
                                                                                                        @ (( {$box}
                                                                                                           @ (( {$box}
                                                                                                              @ (( v22
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
                                                                                                                                                             @ (( {$box}
                                                                                                                                                                @ (( {$box}
                                                                                                                                                                   @ (( {$box}
                                                                                                                                                                      @ ({$box} @ (v3)) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod13,hypothesis,
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
                                           @ (( ~ v43
                                              | ( {$box}
                                                @ (( v42
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
                                                                                               @ (( {$box}
                                                                                                  @ (( {$box}
                                                                                                     @ (( {$box}
                                                                                                        @ (( {$box}
                                                                                                           @ (( v23
                                                                                                              | ( {$box}
                                                                                                                @ (( {$box}
                                                                                                                   @ (( {$box}
                                                                                                                      @ (( {$box}
                                                                                                                         @ ({$box} @ (~ v18)) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod14,hypothesis,
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
                                           @ (( {$box}
                                              @ (( {$box}
                                                 @ (( ~ v41
                                                    | ( {$box}
                                                      @ (( v40
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
                                                                                                                                                 @ (( {$box}
                                                                                                                                                    @ (( {$box}
                                                                                                                                                       @ (( {$box}
                                                                                                                                                          @ (( {$box}
                                                                                                                                                             @ (( {$box}
                                                                                                                                                                @ (( {$box}
                                                                                                                                                                   @ ({$box} @ (~ v4)) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod15,hypothesis,
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
                                           @ (( {$box}
                                              @ (( {$box}
                                                 @ (( ~ v41
                                                    | ( {$box}
                                                      @ (( {$box}
                                                         @ (( {$box}
                                                            @ (( {$box}
                                                               @ (( ~ v37
                                                                  | ( {$box}
                                                                    @ (( {$box}
                                                                       @ (( {$box}
                                                                          @ (( {$box}
                                                                             @ (( {$box}
                                                                                @ (( {$box}
                                                                                   @ (( {$box}
                                                                                      @ (( {$box}
                                                                                         @ (( {$box}
                                                                                            @ (( v28
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
                                                                                                                            @ ({$box} @ (~ v17)) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) ) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod16,hypothesis,
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
                                           @ (( {$box}
                                              @ (( {$box}
                                                 @ (( {$box}
                                                    @ (( {$box}
                                                       @ (( {$box}
                                                          @ (( ~ v38
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
                                                                                             @ (( ~ v27
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
                                                                                                                                @ (( ~ v16
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
                                                                                                                                                                      @ ({$box} @ (~ v3)) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod17,hypothesis,
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
                                                                                  @ (( v30
                                                                                     | ( {$box}
                                                                                       @ (( {$box}
                                                                                          @ (( {$box}
                                                                                             @ (( {$box}
                                                                                                @ (( {$box}
                                                                                                   @ (( {$box}
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
                                                                                                                                   @ (( {$box}
                                                                                                                                      @ (( {$box}
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
                                                                                                                                                                      @ (( {$box}
                                                                                                                                                                         @ (( {$box}
                                                                                                                                                                            @ ({$box} @ (~ v1)) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod18,hypothesis,
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
                                                                                     @ (( {$box}
                                                                                        @ (( {$box}
                                                                                           @ (( v27
                                                                                              | ( {$box}
                                                                                                @ (( {$box}
                                                                                                   @ (( {$box}
                                                                                                      @ (( {$box}
                                                                                                         @ (( {$box}
                                                                                                            @ (( ~ v22
                                                                                                               | ( {$box}
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
                                                                                                                                                 @ ({$box} @ (~ v10)) )) )) )) )) )) )) )) )) )) ) )) ) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod19,hypothesis,
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
                                                                                     @ (( {$box}
                                                                                        @ (( {$box}
                                                                                           @ (( v27
                                                                                              | ( {$box}
                                                                                                @ (( {$box}
                                                                                                   @ (( {$box}
                                                                                                      @ (( {$box}
                                                                                                         @ (( {$box}
                                                                                                            @ (( {$box}
                                                                                                               @ (( {$box}
                                                                                                                  @ (( {$box}
                                                                                                                     @ (( {$box}
                                                                                                                        @ (( ~ v18
                                                                                                                           | ( {$box}
                                                                                                                             @ (( {$box}
                                                                                                                                @ (( {$box}
                                                                                                                                   @ (( {$box}
                                                                                                                                      @ (( {$box}
                                                                                                                                         @ (( {$box}
                                                                                                                                            @ (( {$box}
                                                                                                                                               @ (( {$box}
                                                                                                                                                  @ (( ~ v10
                                                                                                                                                     | ( {$box}
                                                                                                                                                       @ (( {$box}
                                                                                                                                                          @ (( {$box}
                                                                                                                                                             @ (( {$box}
                                                                                                                                                                @ (( {$box}
                                                                                                                                                                   @ ({$box} @ (~ v4)) )) )) )) )) ) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod20,hypothesis,
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
                                                                                     @ (( {$box}
                                                                                        @ (( {$box}
                                                                                           @ (( {$box}
                                                                                              @ (( ~ v26
                                                                                                 | ( {$box}
                                                                                                   @ (( {$box}
                                                                                                      @ (( {$box}
                                                                                                         @ (( {$box}
                                                                                                            @ (( {$box}
                                                                                                               @ (( {$box}
                                                                                                                  @ (( v20
                                                                                                                     | ( {$box}
                                                                                                                       @ (( {$box}
                                                                                                                          @ (( {$box}
                                                                                                                             @ (( {$box}
                                                                                                                                @ (( {$box}
                                                                                                                                   @ (( {$box}
                                                                                                                                      @ (( {$box}
                                                                                                                                         @ (( ~ v13
                                                                                                                                            | ( {$box}
                                                                                                                                              @ (( {$box}
                                                                                                                                                 @ (( {$box}
                                                                                                                                                    @ (( {$box}
                                                                                                                                                       @ (( {$box}
                                                                                                                                                          @ (( {$box}
                                                                                                                                                             @ (( {$box}
                                                                                                                                                                @ ({$box} @ (~ v5)) )) )) )) )) )) )) ) )) )) )) )) )) )) )) ) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

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
                                                                                                                                                                                                                                                                          @ (( ( {$box}
                                                                                                                                                                                                                                                                               @ (( ( {$box}
                                                                                                                                                                                                                                                                                    @ ({$dia} @ ($true)) )
                                                                                                                                                                                                                                                                                  & ( {$dia} @ ($true) ) )) )
                                                                                                                                                                                                                                                                             & ( {$dia} @ ($true) ) )) )
                                                                                                                                                                                                                                                                        & ( {$dia} @ ($true) ) )) )
                                                                                                                                                                                                                                                                   & ( {$dia} @ ($true) ) )) )
                                                                                                                                                                                                                                                              & ( {$dia} @ ($true) ) )) )
                                                                                                                                                                                                                                                         & ( {$dia} @ ($true) ) )) )
                                                                                                                                                                                                                                                    & ( {$dia} @ ($true) ) )) )
                                                                                                                                                                                                                                               & ( {$dia} @ (v9) )
                                                                                                                                                                                                                                               & ( {$dia} @ (~ v9) ) )) )
                                                                                                                                                                                                                                          & ( {$dia} @ (v10) )
                                                                                                                                                                                                                                          & ( {$dia} @ (~ v10) ) )) )
                                                                                                                                                                                                                                     & ( {$dia} @ (v11) )
                                                                                                                                                                                                                                     & ( {$dia} @ (~ v11) ) )) )
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
                                                                                                                                                                                   & ( {$dia} @ ($true) ) )) )
                                                                                                                                                                              & ( {$dia} @ ($true) ) )) )
                                                                                                                                                                         & ( {$dia} @ ($true) ) )) )
                                                                                                                                                                    & ( {$dia} @ ($true) ) )) )
                                                                                                                                                               & ( {$dia} @ ($true) ) )) )
                                                                                                                                                          & ( {$dia} @ (v26) )
                                                                                                                                                          & ( {$dia} @ (~ v26) ) )) )
                                                                                                                                                     & ( {$dia} @ (v27) )
                                                                                                                                                     & ( {$dia} @ (~ v27) ) )) )
                                                                                                                                                & ( {$dia} @ (v28) )
                                                                                                                                                & ( {$dia} @ (~ v28) ) )) )
                                                                                                                                           & ( {$dia} @ ($true) ) )) )
                                                                                                                                      & ( {$dia} @ (v30) )
                                                                                                                                      & ( {$dia} @ (~ v30) ) )) )
                                                                                                                                 & ( {$dia} @ (v31) )
                                                                                                                                 & ( {$dia} @ (~ v31) ) )) )
                                                                                                                            & ( {$dia} @ (v32) )
                                                                                                                            & ( {$dia} @ (~ v32) ) )) )
                                                                                                                       & ( {$dia} @ ($true) ) )) )
                                                                                                                  & ( {$dia} @ ($true) ) )) )
                                                                                                             & ( {$dia} @ ($true) ) )) )
                                                                                                        & ( {$dia} @ ($true) ) )) )
                                                                                                   & ( {$dia} @ ($true) ) )) )
                                                                                              & ( {$dia} @ ($true) ) )) )
                                                                                         & ( {$dia} @ ($true) ) )) )
                                                                                    & ( {$dia} @ ($true) ) )) )
                                                                               & ( {$dia} @ (v41) )
                                                                               & ( {$dia} @ (~ v41) ) )) )
                                                                          & ( {$dia} @ (v42) )
                                                                          & ( {$dia} @ (~ v42) ) )) )
                                                                     & ( {$dia} @ (v43) )
                                                                     & ( {$dia} @ (~ v43) ) )) )
                                                                & ( {$dia} @ (v44) )
                                                                & ( {$dia} @ (~ v44) ) )) )
                                                           & ( {$dia} @ (v45) )
                                                           & ( {$dia} @ (~ v45) ) )) )
                                                      & ( {$dia} @ ($true) ) )) )
                                                 & ( {$dia} @ ($true) ) )) )
                                            & ( {$dia} @ (v48) )
                                            & ( {$dia} @ (~ v48) ) )) )
                                       & ( {$dia} @ ($true) ) )) )
                                  & ( {$dia} @ ($true) ) )) )
                             & ( {$dia} @ ($true) ) )) )
                        & ( {$dia} @ ($true) ) )) )
                   & ( {$dia} @ ($true) ) )) )
              & ( {$dia} @ ($true) ) )) )
         & ( {$dia} @ ($true) ) )) )
    & ( {$dia} @ ($true) ) ) ).

tff(result1,conjecture,
    $false ).

%------------------------------------------------------------------------------
