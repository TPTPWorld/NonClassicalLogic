%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SYM365+1 [QMLTP]
%          : SYM365_1.012_s5u_varying_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   92 (   1 unt;  40 typ;   0 def)
%            Number of atoms       : 3661 (   0 equ)
%            Maximal formula atoms :    4 (  70 avg)
%            Number of connectives : 2021 ( 114   ~; 150   |;  55   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (1702 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   2 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       : 1702 (1702 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :   44 (  40 usr;  42 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_varying_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $varying,
        $modalities == $modal_system_S5U ] ).

tff(v1_decl,type,
    v1: $o ).

tff(v2_decl,type,
    v2: $o ).

tff(v3_decl,type,
    v3: $o ).

tff(v4_decl,type,
    v4: $o ).

tff(v5_decl,type,
    v5: $o ).

tff(v6_decl,type,
    v6: $o ).

tff(v7_decl,type,
    v7: $o ).

tff(v8_decl,type,
    v8: $o ).

tff(v9_decl,type,
    v9: $o ).

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

tff(v25_decl,type,
    v25: $o ).

tff(v24_decl,type,
    v24: $o ).

tff(v27_decl,type,
    v27: $o ).

tff(v26_decl,type,
    v26: $o ).

tff(v29_decl,type,
    v29: $o ).

tff(v28_decl,type,
    v28: $o ).

tff(v30_decl,type,
    v30: $o ).

tff(v32_decl,type,
    v32: $o ).

tff(v31_decl,type,
    v31: $o ).

tff(v34_decl,type,
    v34: $o ).

tff(v33_decl,type,
    v33: $o ).

tff(v36_decl,type,
    v36: $o ).

tff(v35_decl,type,
    v35: $o ).

tff(v38_decl,type,
    v38: $o ).

tff(v37_decl,type,
    v37: $o ).

tff(v39_decl,type,
    v39: $o ).

tff(v40_decl,type,
    v40: $o ).

tff(mod1,hypothesis,
    ( {$box}
    @ (( v40
       | ( {$box}
         @ (( {$box}
            @ (( {$box}
               @ (( {$box}
                  @ (( ~ v36
                     | ( {$box}
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
                                                                               @ ({$box} @ (v16)) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) ) )) )) )) )) ) )) ) ).

tff(mod2,hypothesis,
    ( {$box}
    @ (( ~ v40
       | ( {$box}
         @ (( {$box}
            @ (( v38
               | ( {$box}
                 @ (( {$box}
                    @ (( {$box}
                       @ (( {$box}
                          @ (( {$box}
                             @ (( {$box}
                                @ (( ~ v32
                                   | ( {$box}
                                     @ ({$box} @ (v30)) ) )) )) )) )) )) )) ) )) )) ) )) ) ).

tff(mod3,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( v39
          | ( {$box}
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
                                               @ (( {$box}
                                                  @ (( {$box}
                                                     @ (( {$box}
                                                        @ (( {$box}
                                                           @ (( {$box}
                                                              @ (( {$box}
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
                                                                                               | ( {$box} @ (~ v11) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) ) )) )) ) ).

tff(mod4,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( v39
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
                                                                  @ (( ~ v20
                                                                     | ( {$box}
                                                                       @ (( {$box}
                                                                          @ (( {$box}
                                                                             @ (( {$box}
                                                                                @ (( {$box}
                                                                                   @ (( v15
                                                                                      | ( {$box}
                                                                                        @ (( {$box}
                                                                                           @ ({$box} @ (v12)) )) ) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) ) ).

tff(mod5,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( ~ v39
          | ( {$box}
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
                                                              @ (( {$box}
                                                                 @ (( {$box}
                                                                    @ (( {$box}
                                                                       @ (( {$box}
                                                                          @ (( {$box}
                                                                             @ (( {$box}
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
                                                                                                             @ (( {$box}
                                                                                                                @ (( {$box}
                                                                                                                   @ (( {$box}
                                                                                                                      @ ({$box} @ (v3)) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) ) )) )) ) ).

tff(mod6,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( ~ v39
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
                                          @ (( v28
                                             | ( {$box}
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
                                                                                  @ (( {$box}
                                                                                     @ (( {$box}
                                                                                        @ (( {$box}
                                                                                           @ (( {$box}
                                                                                              @ (( {$box}
                                                                                                 @ (( {$box}
                                                                                                    @ (( {$box}
                                                                                                       @ (( {$box}
                                                                                                          @ (( {$box}
                                                                                                             @ (( {$box}
                                                                                                                @ (( {$box}
                                                                                                                   @ (( {$box}
                                                                                                                      @ (( {$box}
                                                                                                                         @ ({$box} @ (~ v2)) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) ) )) )) )) )) )) )) )) )) )) )) )) ) )) )) ) ).

tff(mod7,hypothesis,
    ( {$box}
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
                                    @ (( ~ v30
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
                                                                                   @ (( v15
                                                                                      | ( {$box}
                                                                                        @ (( {$box}
                                                                                           @ (( {$box}
                                                                                              @ (( {$box}
                                                                                                 @ (( {$box}
                                                                                                    @ (( {$box}
                                                                                                       @ (( {$box}
                                                                                                          @ (( {$box}
                                                                                                             @ (( {$box}
                                                                                                                @ ({$box} @ (v5)) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) ) )) )) )) ) ).

tff(mod8,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( v37
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
                                                                                        @ ({$box} @ (~ v13)) )) )) )) )) )) ) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) ) ).

tff(mod9,hypothesis,
    ( {$box}
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
                                 @ (( v31
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
                                                                                      @ (( ~ v14
                                                                                         | ( {$box}
                                                                                           @ (( {$box}
                                                                                              @ (( {$box}
                                                                                                 @ (( {$box}
                                                                                                    @ (( {$box}
                                                                                                       @ ({$box} @ (v8)) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) ) )) )) )) )) ) ).

tff(mod10,hypothesis,
    ( {$box}
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
                                    @ (( ~ v30
                                       | ( {$box}
                                         @ (( {$box}
                                            @ (( {$box}
                                               @ (( {$box}
                                                  @ (( v26
                                                     | ( {$box}
                                                       @ ({$box} @ (~ v24)) ) )) )) )) )) ) )) )) )) )) )) )) )) ) )) )) )) )) ) ).

tff(mod11,hypothesis,
    ( {$box}
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
                                             @ (( {$box}
                                                @ (( {$box}
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
                                                                                            @ (( v12
                                                                                               | ( {$box}
                                                                                                 @ (( {$box}
                                                                                                    @ (( {$box}
                                                                                                       @ (( {$box}
                                                                                                          @ ({$box} @ (~ v7)) )) )) )) ) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) ) ).

tff(mod12,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( v36
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
                                                                                                                      @ (( {$box}
                                                                                                                         @ (( {$box}
                                                                                                                            @ ({$box} @ (v1)) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) ) ).

tff(mod13,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( v35
                      | ( {$box}
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
                                                                                @ (( v16
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
                                                                                                                            @ ({$box} @ (v1)) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) ) )) )) )) )) )) )) ) ).

tff(mod14,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( v35
                      | ( {$box}
                        @ (( {$box}
                           @ (( {$box}
                              @ (( {$box}
                                 @ (( {$box}
                                    @ (( {$box}
                                       @ (( ~ v29
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
                                                                                                     @ (( ~ v9
                                                                                                        | ( {$box}
                                                                                                          @ (( {$box}
                                                                                                             @ (( {$box}
                                                                                                                @ (( {$box}
                                                                                                                   @ ({$box} @ (~ v4)) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) ) )) )) )) )) )) )) ) ).

tff(mod15,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( v35
                      | ( {$box}
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
                                                                                            @ (( ~ v12
                                                                                               | ( {$box}
                                                                                                 @ (( {$box}
                                                                                                    @ (( {$box}
                                                                                                       @ (( {$box}
                                                                                                          @ (( {$box}
                                                                                                             @ (( {$box}
                                                                                                                @ (( {$box}
                                                                                                                   @ (( {$box}
                                                                                                                      @ (( {$box}
                                                                                                                         @ ({$box} @ (v2)) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) ) )) )) )) )) )) )) ) ).

tff(mod16,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( v35
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
                                                                     @ (( v19
                                                                        | ( {$box}
                                                                          @ (( {$box}
                                                                             @ (( {$box}
                                                                                @ (( {$box}
                                                                                   @ (( {$box}
                                                                                      @ (( {$box}
                                                                                         @ (( {$box}
                                                                                            @ (( {$box}
                                                                                               @ (( v11
                                                                                                  | ( {$box} @ (~ v10) ) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) ) ).

tff(mod17,hypothesis,
    ( {$box}
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
                                 @ (( ~ v31
                                    | ( {$box}
                                      @ (( ~ v30
                                         | ( {$box}
                                           @ (( {$box}
                                              @ (( {$box}
                                                 @ (( {$box}
                                                    @ (( {$box}
                                                       @ (( {$box}
                                                          @ (( {$box}
                                                             @ ({$box} @ (v22)) )) )) )) )) )) )) ) )) ) )) )) )) )) ) )) )) )) )) )) )) ) ).

tff(mod18,hypothesis,
    ( {$box}
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
                                 @ (( ~ v31
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
                                                                                                     @ (( v9
                                                                                                        | ( {$box}
                                                                                                          @ (( {$box}
                                                                                                             @ ({$box} @ (v6)) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) ) )) )) )) )) )) )) ) ).

tff(mod19,hypothesis,
    ( {$box}
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
                                                   @ (( v25
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
                                                                                                  @ (( v10
                                                                                                     | ( {$box}
                                                                                                       @ ({$box} @ (~ v8)) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) ) ).

tff(mod20,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( {$box}
                      @ (( v34
                         | ( {$box}
                           @ (( {$box}
                              @ (( v32
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
                                                                 @ (( v21
                                                                    | ( {$box}
                                                                      @ (( {$box}
                                                                         @ (( {$box}
                                                                            @ (( {$box}
                                                                               @ (( {$box}
                                                                                  @ (( {$box}
                                                                                     @ ({$box} @ (v14)) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) ) )) )) ) )) )) )) )) )) )) )) ) ).

tff(mod21,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( {$box}
                      @ (( ~ v34
                         | ( {$box}
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
                                                           @ (( {$box}
                                                              @ (( {$box}
                                                                 @ (( {$box}
                                                                    @ (( {$box}
                                                                       @ (( {$box}
                                                                          @ (( {$box}
                                                                             @ (( {$box}
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
                                                                                                             @ (( {$box}
                                                                                                                @ (( {$box}
                                                                                                                   @ (( {$box}
                                                                                                                      @ ({$box} @ (~ v3)) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) ) )) )) )) )) )) )) )) ) ).

tff(mod22,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( {$box}
                      @ (( ~ v34
                         | ( {$box}
                           @ (( {$box}
                              @ (( {$box}
                                 @ (( {$box}
                                    @ (( ~ v30
                                       | ( {$box}
                                         @ (( ~ v29
                                            | ( {$box}
                                              @ (( {$box}
                                                 @ (( {$box}
                                                    @ (( {$box}
                                                       @ (( {$box}
                                                          @ ({$box} @ (v23)) )) )) )) )) ) )) ) )) )) )) )) ) )) )) )) )) )) )) )) ) ).

tff(mod23,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( {$box}
                      @ (( ~ v34
                         | ( {$box}
                           @ (( {$box}
                              @ (( {$box}
                                 @ (( {$box}
                                    @ (( {$box}
                                       @ (( ~ v29
                                          | ( {$box}
                                            @ (( {$box}
                                               @ (( {$box}
                                                  @ (( ~ v26
                                                     | ( {$box}
                                                       @ (( {$box}
                                                          @ (( {$box}
                                                             @ (( {$box}
                                                                @ (( {$box}
                                                                   @ ({$box} @ (~ v20)) )) )) )) )) ) )) )) )) ) )) )) )) )) )) ) )) )) )) )) )) )) )) ) ).

tff(mod24,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( {$box}
                      @ (( {$box}
                         @ (( v33
                            | ( {$box}
                              @ (( {$box}
                                 @ (( {$box}
                                    @ (( {$box}
                                       @ (( {$box}
                                          @ (( v28
                                             | ( {$box}
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
                                                                            @ (( {$box}
                                                                               @ (( {$box}
                                                                                  @ (( {$box}
                                                                                     @ (( {$box}
                                                                                        @ (( {$box}
                                                                                           @ (( {$box}
                                                                                              @ (( {$box}
                                                                                                 @ (( {$box}
                                                                                                    @ (( {$box}
                                                                                                       @ (( {$box}
                                                                                                          @ ({$box} @ (~ v7)) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) ) )) )) )) )) )) ) )) )) )) )) )) )) )) )) ) ).

tff(mod25,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( {$box}
                      @ (( {$box}
                         @ (( v33
                            | ( {$box}
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
                                                                                               @ (( {$box}
                                                                                                  @ (( ~ v10
                                                                                                     | ( {$box}
                                                                                                       @ (( {$box}
                                                                                                          @ (( {$box}
                                                                                                             @ ({$box} @ (v6)) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) ) )) )) )) )) )) )) )) )) ) ).

tff(mod26,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( {$box}
                      @ (( {$box}
                         @ (( v33
                            | ( {$box}
                              @ (( {$box}
                                 @ (( {$box}
                                    @ (( {$box}
                                       @ (( {$box}
                                          @ (( {$box}
                                             @ (( {$box}
                                                @ (( {$box}
                                                   @ (( ~ v25
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
                                                                                               @ (( v11
                                                                                                  | ( {$box}
                                                                                                    @ (( {$box}
                                                                                                       @ (( {$box}
                                                                                                          @ (( {$box}
                                                                                                             @ ({$box} @ (~ v6)) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) ) ).

tff(mod27,hypothesis,
    ( {$box}
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
                                                         @ (( v23
                                                            | ( {$box}
                                                              @ (( {$box}
                                                                 @ (( {$box}
                                                                    @ (( {$box}
                                                                       @ (( v19
                                                                          | ( {$box}
                                                                            @ (( {$box}
                                                                               @ (( {$box}
                                                                                  @ ({$box} @ (~ v15)) )) )) ) )) )) )) )) ) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) ) ).

tff(mod28,hypothesis,
    ( {$box}
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
                                                               @ (( ~ v21
                                                                  | ( {$box}
                                                                    @ (( {$box}
                                                                       @ (( v19
                                                                          | ( {$box}
                                                                            @ (( {$box}
                                                                               @ ({$box} @ (~ v16)) )) ) )) )) ) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) ) ).

tff(mod29,hypothesis,
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
                               @ (( v31
                                  | ( {$box}
                                    @ (( {$box}
                                       @ (( v29
                                          | ( {$box}
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
                                                                                           @ (( {$box}
                                                                                              @ (( {$box}
                                                                                                 @ (( {$box}
                                                                                                    @ (( {$box}
                                                                                                       @ (( {$box}
                                                                                                          @ (( {$box}
                                                                                                             @ (( {$box}
                                                                                                                @ (( {$box}
                                                                                                                   @ (( {$box}
                                                                                                                      @ (( {$box}
                                                                                                                         @ (( {$box}
                                                                                                                            @ ({$box} @ (v1)) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) ) )) )) ) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod30,hypothesis,
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
                               @ (( ~ v31
                                  | ( {$box}
                                    @ (( {$box}
                                       @ (( {$box}
                                          @ (( {$box}
                                             @ (( v27
                                                | ( {$box}
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
                                                                                                    @ (( {$box}
                                                                                                       @ (( {$box}
                                                                                                          @ (( {$box}
                                                                                                             @ (( {$box}
                                                                                                                @ (( {$box}
                                                                                                                   @ (( {$box}
                                                                                                                      @ ({$box} @ (v3)) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) ) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod31,hypothesis,
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
                               @ (( ~ v31
                                  | ( {$box}
                                    @ (( {$box}
                                       @ (( {$box}
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
                                                                       @ (( {$box}
                                                                          @ (( {$box}
                                                                             @ (( {$box}
                                                                                @ (( {$box}
                                                                                   @ (( {$box}
                                                                                      @ (( {$box}
                                                                                         @ (( {$box}
                                                                                            @ (( {$box}
                                                                                               @ (( {$box}
                                                                                                  @ (( {$box}
                                                                                                     @ (( v9
                                                                                                        | ( {$box}
                                                                                                          @ (( {$box}
                                                                                                             @ ({$box} @ (v6)) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod32,hypothesis,
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
                               @ (( ~ v31
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
                                                                     @ (( v19
                                                                        | ( {$box}
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
                                                                                                                      @ (( {$box}
                                                                                                                         @ ({$box} @ (v2)) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod33,hypothesis,
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
                                  @ (( v30
                                     | ( {$box}
                                       @ (( {$box}
                                          @ (( {$box}
                                             @ (( {$box}
                                                @ (( v26
                                                   | ( {$box}
                                                     @ (( {$box}
                                                        @ (( {$box}
                                                           @ (( v23
                                                              | ( {$box}
                                                                @ ({$box} @ (v21)) ) )) )) )) ) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod34,hypothesis,
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
                                  @ (( v30
                                     | ( {$box}
                                       @ (( {$box}
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
                                                                                                                @ ({$box} @ (v5)) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod35,hypothesis,
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
                                     @ (( v29
                                        | ( {$box}
                                          @ (( {$box}
                                             @ (( ~ v27
                                                | ( {$box}
                                                  @ (( {$box}
                                                     @ (( {$box}
                                                        @ (( {$box}
                                                           @ (( ~ v23
                                                              | ( {$box}
                                                                @ ({$box} @ (v21)) ) )) )) )) )) ) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod36,hypothesis,
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
                                        @ (( v28
                                           | ( {$box}
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
                                                                                @ (( {$box}
                                                                                   @ (( {$box}
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
                                                                                                                    | ( {$box} @ (v4) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod37,hypothesis,
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
                                                                                                           @ (( ~ v7
                                                                                                              | ( {$box}
                                                                                                                @ (( {$box}
                                                                                                                   @ ({$box} @ (~ v4)) )) ) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod38,hypothesis,
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
                                           @ (( v27
                                              | ( {$box}
                                                @ (( {$box}
                                                   @ (( ~ v25
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
                                                                                                                 @ (( v5
                                                                                                                    | ( {$box}
                                                                                                                      @ ({$box} @ (~ v3)) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod39,hypothesis,
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
                                           @ (( ~ v27
                                              | ( {$box}
                                                @ (( {$box}
                                                   @ (( {$box}
                                                      @ (( {$box}
                                                         @ (( {$box}
                                                            @ (( {$box}
                                                               @ (( {$box}
                                                                  @ (( ~ v20
                                                                     | ( {$box}
                                                                       @ (( {$box}
                                                                          @ (( {$box}
                                                                             @ (( {$box}
                                                                                @ (( {$box}
                                                                                   @ (( v15
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
                                                                                                                         @ ({$box} @ (v2)) )) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) ) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod40,hypothesis,
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
                                                                           @ (( ~ v17
                                                                              | ( {$box}
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
                                                                                                                @ ({$box} @ (~ v5)) )) )) )) )) )) )) )) )) )) ) )) ) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod41,hypothesis,
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
                                                                           @ (( ~ v17
                                                                              | ( {$box}
                                                                                @ (( {$box}
                                                                                   @ (( {$box}
                                                                                      @ (( {$box}
                                                                                         @ (( {$box}
                                                                                            @ (( {$box}
                                                                                               @ (( {$box}
                                                                                                  @ (( {$box}
                                                                                                     @ (( ~ v9
                                                                                                        | ( {$box}
                                                                                                          @ ({$box} @ (~ v7)) ) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod42,hypothesis,
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
                                                 @ (( ~ v25
                                                    | ( {$box}
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
                                                                                         @ (( v13
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
                                                                                                                         @ ({$box} @ (~ v2)) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) ) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod43,hypothesis,
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
                                                    @ (( ~ v24
                                                       | ( {$box}
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
                                                                                         @ (( v13
                                                                                            | ( {$box} @ (~ v12) ) )) )) )) )) )) ) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod44,hypothesis,
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
                                                       @ (( v23
                                                          | ( {$box}
                                                            @ (( {$box}
                                                               @ (( v21
                                                                  | ( {$box}
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
                                                                                                    @ ({$box} @ (v9)) )) ) )) )) )) )) )) )) )) )) )) ) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod45,hypothesis,
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
                                                          @ (( ~ v22
                                                             | ( {$box}
                                                               @ (( {$box}
                                                                  @ (( ~ v20
                                                                     | ( {$box}
                                                                       @ (( {$box}
                                                                          @ (( {$box}
                                                                             @ (( {$box}
                                                                                @ (( {$box}
                                                                                   @ (( {$box}
                                                                                      @ (( v14
                                                                                         | ( {$box} @ (v13) ) )) )) )) )) )) )) ) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod46,hypothesis,
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
                                                          @ (( ~ v22
                                                             | ( {$box}
                                                               @ (( {$box}
                                                                  @ (( {$box}
                                                                     @ (( {$box}
                                                                        @ (( {$box}
                                                                           @ (( {$box}
                                                                              @ (( {$box}
                                                                                 @ (( v15
                                                                                    | ( {$box}
                                                                                      @ (( v14
                                                                                         | ( {$box}
                                                                                           @ (( {$box}
                                                                                              @ (( {$box}
                                                                                                 @ (( {$box}
                                                                                                    @ (( {$box}
                                                                                                       @ (( {$box}
                                                                                                          @ ({$box} @ (~ v7)) )) )) )) )) )) ) )) ) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod47,hypothesis,
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
                                                             @ (( ~ v21
                                                                | ( {$box}
                                                                  @ (( {$box}
                                                                     @ (( {$box}
                                                                        @ (( {$box}
                                                                           @ (( {$box}
                                                                              @ (( {$box}
                                                                                 @ (( {$box}
                                                                                    @ (( {$box}
                                                                                       @ (( v13
                                                                                          | ( {$box}
                                                                                            @ (( {$box}
                                                                                               @ (( {$box}
                                                                                                  @ (( {$box}
                                                                                                     @ (( ~ v9
                                                                                                        | ( {$box} @ (~ v8) ) )) )) )) )) ) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod48,hypothesis,
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
                                                                                          @ (( ~ v12
                                                                                             | ( {$box}
                                                                                               @ (( {$box}
                                                                                                  @ (( v10
                                                                                                     | ( {$box}
                                                                                                       @ (( {$box}
                                                                                                          @ ({$box} @ (~ v7)) )) ) )) )) ) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod49,hypothesis,
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
                                                                      @ (( v18
                                                                         | ( {$box}
                                                                           @ (( {$box}
                                                                              @ (( {$box}
                                                                                 @ (( {$box}
                                                                                    @ (( {$box}
                                                                                       @ (( {$box}
                                                                                          @ (( ~ v12
                                                                                             | ( {$box}
                                                                                               @ (( {$box}
                                                                                                  @ (( {$box}
                                                                                                     @ (( ~ v9
                                                                                                        | ( {$box}
                                                                                                          @ (( {$box}
                                                                                                             @ (( {$box}
                                                                                                                @ (( {$box}
                                                                                                                   @ (( {$box}
                                                                                                                      @ ({$box} @ (~ v3)) )) )) )) )) ) )) )) )) ) )) )) )) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

tff(mod50,hypothesis,
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
                                                                                        @ (( v12
                                                                                           | ( {$box}
                                                                                             @ (( {$box}
                                                                                                @ (( {$box}
                                                                                                   @ (( v9
                                                                                                      | ( {$box}
                                                                                                        @ (( {$box}
                                                                                                           @ (( {$box}
                                                                                                              @ (( {$box}
                                                                                                                 @ (( {$box}
                                                                                                                    @ (( v4
                                                                                                                       | ( {$box} @ (v3) ) )) )) )) )) )) ) )) )) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) )) ) ).

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
                                                                                                                                                & ( {$dia} @ (v12) )
                                                                                                                                                & ( {$dia} @ (~ v12) ) )) )
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
                                                                               & ( {$dia} @ (v25) )
                                                                               & ( {$dia} @ (~ v25) ) )) )
                                                                          & ( {$dia} @ (v26) )
                                                                          & ( {$dia} @ (~ v26) ) )) )
                                                                     & ( {$dia} @ (v27) )
                                                                     & ( {$dia} @ (~ v27) ) )) )
                                                                & ( {$dia} @ (v28) )
                                                                & ( {$dia} @ (~ v28) ) )) )
                                                           & ( {$dia} @ (v29) )
                                                           & ( {$dia} @ (~ v29) ) )) )
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
    & ( {$dia} @ ($true) ) ) ).

tff(result1,conjecture,
    $false ).

%------------------------------------------------------------------------------
