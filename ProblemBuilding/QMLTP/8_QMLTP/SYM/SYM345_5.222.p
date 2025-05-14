%------------------------------------------------------------------------------
% File     : SYM345_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : QBF-CNFSSS-K=4 C=40 V=4 D=4.2
% Version  : Especial.
% English  :

% Refs     : [Sch99] Schmidt (1999), Decidability by Resolution for Proposi
%          : [HS00]  Hustadt & Schmidt (2000), Issues of Decidability for D
%          : [HS00]  Hustadt & Schmidt (2000), MSPASS: Modal Reasoning by T
%          : [Sch01] Schmidt (2001), Email to G. Sutcliffe
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM345+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   62 (   1 unt;  20 typ;   0 def)
%            Number of atoms       : 1627 (   0 equ)
%            Maximal formula atoms :    4 (  38 avg)
%            Number of connectives :  952 (  86   ~; 120   |;  27   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         ( 719 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   2 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :  719 ( 719 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :   24 (  20 usr;  22 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : NX0_UNK_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_v_f_g,logic,
    $modal == 
      [ $domains == $varying,
        $designation == $flexible,
        $terms == $global,
        $modalities == $modal_system_S5 ] ).

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

tff(v20_decl,type,
    v20: $o ).

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

tff(mod1,hypothesis,
    ( {$box}
    @ (( v20
       | ( {$box}
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
                                                  @ (( ~ v6
                                                     | ( {$box}
                                                       @ (( {$box}
                                                          @ ({$box} @ (~ v3)) )) ) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) ) )) ) ).

tff(mod2,hypothesis,
    ( {$box}
    @ (( v20
       | ( {$box}
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
                                                     @ (( v5
                                                        | ( {$box} @ (v4) ) )) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) ) )) ) ).

tff(mod3,hypothesis,
    ( {$box}
    @ (( v20
       | ( {$box}
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
                                                    @ ({$box} @ (~ v5)) )) ) )) )) )) )) ) )) )) )) )) )) )) )) )) ) )) ) ).

tff(mod4,hypothesis,
    ( {$box}
    @ (( v20
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
                                             @ (( ~ v7
                                                | ( {$box}
                                                  @ (( v6
                                                     | ( {$box}
                                                       @ ({$box} @ (v4)) ) )) ) )) )) )) )) )) )) )) )) )) )) )) )) )) ) )) ) ).

tff(mod5,hypothesis,
    ( {$box}
    @ (( ~ v20
       | ( {$box}
         @ (( {$box}
            @ (( v18
               | ( {$box}
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
                                                 @ ({$box} @ (v6)) )) )) )) )) )) ) )) )) )) )) )) ) )) )) ) )) ) ).

tff(mod6,hypothesis,
    ( {$box}
    @ (( ~ v20
       | ( {$box}
         @ (( {$box}
            @ (( {$box}
               @ (( {$box}
                  @ (( v16
                     | ( {$box}
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
                                                    @ (( {$box}
                                                       @ (( {$box}
                                                          @ (( {$box}
                                                             @ (( {$box}
                                                                @ ({$box} @ (v1)) )) )) )) )) )) )) )) )) )) )) ) )) )) )) ) )) )) )) )) ) )) ) ).

tff(mod7,hypothesis,
    ( {$box}
    @ (( ~ v20
       | ( {$box}
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
                                                 @ ({$box} @ (v6)) )) )) )) ) )) )) )) )) ) )) )) )) )) )) ) )) ) ).

tff(mod8,hypothesis,
    ( {$box}
    @ (( ~ v20
       | ( {$box}
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
                                         @ (( {$box}
                                            @ (( {$box}
                                               @ (( ~ v7
                                                  | ( {$box}
                                                    @ (( {$box}
                                                       @ (( {$box}
                                                          @ (( {$box}
                                                             @ ({$box} @ (~ v2)) )) )) )) ) )) )) )) )) )) )) )) ) )) )) )) )) )) )) ) )) ) ).

tff(mod9,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( v19
          | ( {$box}
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
                                                  @ (( ~ v6
                                                     | ( {$box}
                                                       @ ({$box} @ (v4)) ) )) )) )) )) )) )) )) ) )) )) )) )) )) )) ) )) )) ) ).

tff(mod10,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( ~ v18
             | ( {$box}
               @ (( ~ v17
                  | ( {$box}
                    @ (( v16
                       | ( {$box}
                         @ ({$box} @ (~ v14)) ) )) ) )) ) )) )) )) ) ).

tff(mod11,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( ~ v18
             | ( {$box}
               @ (( {$box}
                  @ (( {$box}
                     @ (( {$box}
                        @ (( ~ v14
                           | ( {$box}
                             @ (( {$box}
                                @ (( {$box}
                                   @ (( {$box}
                                      @ (( {$box}
                                         @ (( {$box}
                                            @ (( ~ v8
                                               | ( {$box}
                                                 @ (( {$box}
                                                    @ (( {$box}
                                                       @ (( {$box}
                                                          @ (( {$box}
                                                             @ ({$box} @ (~ v2)) )) )) )) )) ) )) )) )) )) )) )) ) )) )) )) )) ) )) )) )) ) ).

tff(mod12,hypothesis,
    ( {$box}
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
                                 @ (( v11
                                    | ( {$box}
                                      @ (( {$box}
                                         @ (( {$box}
                                            @ (( v8
                                               | ( {$box}
                                                 @ (( {$box}
                                                    @ ({$box} @ (~ v5)) )) ) )) )) )) ) )) )) )) )) )) )) )) ) )) )) )) ) ).

tff(mod13,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( v17
                | ( {$box}
                  @ (( v16
                     | ( {$box}
                       @ (( v15
                          | ( {$box}
                            @ (( {$box}
                               @ (( {$box}
                                  @ (( {$box}
                                     @ ({$box} @ (v10)) )) )) )) ) )) ) )) ) )) )) )) )) ) ).

tff(mod14,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( v17
                | ( {$box}
                  @ (( ~ v16
                     | ( {$box}
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
                                                       @ ({$box} @ (~ v4)) )) )) )) )) )) )) )) )) )) ) )) ) )) ) )) )) )) )) ) ).

tff(mod15,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( v17
                | ( {$box}
                  @ (( {$box}
                     @ (( ~ v15
                        | ( {$box}
                          @ (( {$box}
                             @ (( ~ v13
                                | ( {$box}
                                  @ (( {$box}
                                     @ (( {$box}
                                        @ ({$box} @ (v9)) )) )) ) )) )) ) )) )) ) )) )) )) )) ) ).

tff(mod16,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( v17
                | ( {$box}
                  @ (( {$box}
                     @ (( ~ v15
                        | ( {$box}
                          @ (( {$box}
                             @ (( {$box}
                                @ (( v12
                                   | ( {$box}
                                     @ (( {$box}
                                        @ (( {$box}
                                           @ (( {$box}
                                              @ (( {$box}
                                                 @ ({$box} @ (v6)) )) )) )) )) ) )) )) )) ) )) )) ) )) )) )) )) ) ).

tff(mod17,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( v17
                | ( {$box}
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
                                               @ (( v7
                                                  | ( {$box}
                                                    @ (( {$box}
                                                       @ (( {$box}
                                                          @ (( {$box}
                                                             @ (( {$box}
                                                                @ ({$box} @ (~ v1)) )) )) )) )) ) )) )) )) )) )) )) ) )) )) )) )) ) )) )) )) )) ) ).

tff(mod18,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( v17
                | ( {$box}
                  @ (( {$box}
                     @ (( {$box}
                        @ (( {$box}
                           @ (( {$box}
                              @ (( {$box}
                                 @ (( {$box}
                                    @ (( {$box}
                                       @ (( {$box}
                                          @ (( ~ v8
                                             | ( {$box}
                                               @ (( {$box}
                                                  @ (( ~ v6
                                                     | ( {$box}
                                                       @ (( {$box}
                                                          @ (( {$box}
                                                             @ (( {$box}
                                                                @ ({$box} @ (~ v1)) )) )) )) ) )) )) ) )) )) )) )) )) )) )) )) )) ) )) )) )) )) ) ).

tff(mod19,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( ~ v17
                | ( {$box}
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
                                                  @ (( v6
                                                     | ( {$box}
                                                       @ ({$box} @ (v4)) ) )) )) )) )) )) )) )) )) )) ) )) )) ) )) )) )) )) ) ).

tff(mod20,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( ~ v17
                | ( {$box}
                  @ (( {$box}
                     @ (( ~ v15
                        | ( {$box}
                          @ (( {$box}
                             @ (( {$box}
                                @ (( {$box}
                                   @ (( {$box}
                                      @ (( {$box}
                                         @ (( ~ v9
                                            | ( {$box} @ (v8) ) )) )) )) )) )) )) ) )) )) ) )) )) )) )) ) ).

tff(mod21,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( ~ v17
                | ( {$box}
                  @ (( {$box}
                     @ (( {$box}
                        @ (( v14
                           | ( {$box}
                             @ (( v13
                                | ( {$box}
                                  @ (( {$box}
                                     @ (( {$box}
                                        @ (( {$box}
                                           @ (( {$box}
                                              @ (( {$box}
                                                 @ (( {$box}
                                                    @ (( {$box}
                                                       @ ({$box} @ (v4)) )) )) )) )) )) )) )) ) )) ) )) )) )) ) )) )) )) )) ) ).

tff(mod22,hypothesis,
    ( {$box}
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
                                 @ (( v11
                                    | ( {$box}
                                      @ (( {$box}
                                         @ (( {$box}
                                            @ (( v8
                                               | ( {$box}
                                                 @ (( {$box}
                                                    @ ({$box} @ (~ v5)) )) ) )) )) )) ) )) )) )) )) )) )) ) )) )) )) )) ) ).

tff(mod23,hypothesis,
    ( {$box}
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
                                            @ (( ~ v8
                                               | ( {$box}
                                                 @ (( {$box}
                                                    @ ({$box} @ (~ v5)) )) ) )) ) )) )) )) )) )) )) )) )) ) )) )) )) )) ) ).

tff(mod24,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( v16
                   | ( {$box}
                     @ (( v15
                        | ( {$box}
                          @ (( {$box}
                             @ (( {$box}
                                @ (( v12
                                   | ( {$box}
                                     @ ({$box} @ (v10)) ) )) )) )) ) )) ) )) )) )) )) )) ) ).

tff(mod25,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( v16
                   | ( {$box}
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
                                                       @ ({$box} @ (v4)) )) )) )) )) )) )) ) )) )) )) ) )) ) )) )) )) )) )) ) ).

tff(mod26,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( v16
                   | ( {$box}
                     @ (( v15
                        | ( {$box}
                          @ (( {$box}
                             @ (( {$box}
                                @ (( {$box}
                                   @ (( ~ v11
                                      | ( {$box}
                                        @ (( {$box}
                                           @ (( {$box}
                                              @ (( {$box}
                                                 @ (( {$box}
                                                    @ (( {$box}
                                                       @ (( {$box}
                                                          @ (( {$box}
                                                             @ ({$box} @ (v2)) )) )) )) )) )) )) )) ) )) )) )) )) ) )) ) )) )) )) )) )) ) ).

tff(mod27,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( v16
                   | ( {$box}
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
                                                        @ (( ~ v4
                                                           | ( {$box} @ (~ v3) ) )) )) )) )) )) )) )) )) )) )) ) )) )) ) )) )) )) )) )) ) ).

tff(mod28,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( v16
                   | ( {$box}
                     @ (( {$box}
                        @ (( {$box}
                           @ (( v13
                              | ( {$box}
                                @ (( {$box}
                                   @ (( v11
                                      | ( {$box}
                                        @ (( {$box}
                                           @ (( {$box}
                                              @ (( {$box}
                                                 @ (( {$box}
                                                    @ (( {$box}
                                                       @ (( {$box}
                                                          @ (( {$box}
                                                             @ ({$box} @ (~ v2)) )) )) )) )) )) )) )) ) )) )) ) )) )) )) ) )) )) )) )) )) ) ).

tff(mod29,hypothesis,
    ( {$box}
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
                                @ (( {$box}
                                   @ (( {$box}
                                      @ (( {$box}
                                         @ (( {$box}
                                            @ (( {$box}
                                               @ (( {$box}
                                                  @ (( {$box}
                                                     @ (( {$box}
                                                        @ (( {$box}
                                                           @ (( ~ v3
                                                              | ( {$box} @ (~ v2) ) )) )) )) )) )) )) )) )) )) )) )) ) )) )) ) )) )) )) )) )) ) ).

tff(mod30,hypothesis,
    ( {$box}
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
                                       @ (( v9
                                          | ( {$box}
                                            @ (( {$box}
                                               @ (( v7
                                                  | ( {$box}
                                                    @ (( {$box}
                                                       @ (( {$box}
                                                          @ (( {$box}
                                                             @ ({$box} @ (~ v2)) )) )) )) ) )) )) ) )) )) )) )) )) )) )) ) )) )) )) )) )) ) ).

tff(mod31,hypothesis,
    ( {$box}
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
                                 @ (( v11
                                    | ( {$box}
                                      @ (( {$box}
                                         @ (( {$box}
                                            @ (( v8
                                               | ( {$box}
                                                 @ (( {$box}
                                                    @ (( {$box}
                                                       @ (( {$box}
                                                          @ (( {$box}
                                                             @ ({$box} @ (~ v2)) )) )) )) )) ) )) )) )) ) )) )) )) )) ) )) )) )) )) )) )) ) ).

tff(mod32,hypothesis,
    ( {$box}
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
                                                @ (( v6
                                                   | ( {$box}
                                                     @ (( {$box}
                                                        @ (( {$box}
                                                           @ (( {$box}
                                                              @ (( ~ v2
                                                                 | ( {$box} @ (v1) ) )) )) )) )) ) )) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) ) ).

tff(mod33,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( {$box}
                      @ (( v14
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
                                                        @ (( v4
                                                           | ( {$box}
                                                             @ (( {$box}
                                                                @ ({$box} @ (~ v1)) )) ) )) )) )) )) )) )) )) )) )) ) )) ) )) )) )) )) )) )) )) ) ).

tff(mod34,hypothesis,
    ( {$box}
    @ (( {$box}
       @ (( {$box}
          @ (( {$box}
             @ (( {$box}
                @ (( {$box}
                   @ (( {$box}
                      @ (( v14
                         | ( {$box}
                           @ (( {$box}
                              @ (( ~ v12
                                 | ( {$box}
                                   @ (( ~ v11
                                      | ( {$box}
                                        @ (( {$box}
                                           @ (( {$box}
                                              @ ({$box} @ (v7)) )) )) ) )) ) )) )) ) )) )) )) )) )) )) )) ) ).

tff(mod35,hypothesis,
    ( {$box}
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
                                                @ (( ~ v6
                                                   | ( {$box}
                                                     @ (( {$box}
                                                        @ (( {$box}
                                                           @ (( {$box}
                                                              @ (( ~ v2
                                                                 | ( {$box} @ (~ v1) ) )) )) )) )) ) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) ) ).

tff(mod36,hypothesis,
    ( {$box}
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
                                       @ (( {$box}
                                          @ (( {$box}
                                             @ (( {$box}
                                                @ (( v6
                                                   | ( {$box}
                                                     @ (( {$box}
                                                        @ (( {$box}
                                                           @ (( {$box}
                                                              @ (( ~ v2
                                                                 | ( {$box} @ (v1) ) )) )) )) )) ) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) ) ).

tff(mod37,hypothesis,
    ( {$box}
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
                                       @ (( {$box}
                                          @ (( {$box}
                                             @ (( {$box}
                                                @ (( ~ v6
                                                   | ( {$box}
                                                     @ (( {$box}
                                                        @ (( {$box}
                                                           @ (( {$box}
                                                              @ (( ~ v2
                                                                 | ( {$box} @ (v1) ) )) )) )) )) ) )) )) )) )) )) )) )) )) ) )) )) )) )) )) )) )) ) ).

tff(mod38,hypothesis,
    ( {$box}
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
                                    @ (( ~ v10
                                       | ( {$box}
                                         @ (( v9
                                            | ( {$box} @ (~ v8) ) )) ) )) )) )) ) )) )) )) )) )) )) )) )) ) ).

tff(mod39,hypothesis,
    ( {$box}
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
                                       @ (( v9
                                          | ( {$box}
                                            @ (( ~ v8
                                               | ( {$box}
                                                 @ (( {$box}
                                                    @ (( {$box}
                                                       @ (( {$box}
                                                          @ (( {$box}
                                                             @ ({$box} @ (v2)) )) )) )) )) ) )) ) )) )) )) )) ) )) )) )) )) )) )) )) )) ) ).

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
                            @ (( v12
                               | ( {$box}
                                 @ (( {$box}
                                    @ (( ~ v10
                                       | ( {$box}
                                         @ (( {$box}
                                            @ (( v8
                                               | ( {$box}
                                                 @ ({$box} @ (v6)) ) )) )) ) )) )) ) )) )) )) )) )) )) )) )) )) ) ).

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
                                                                                                @ ({$dia} @ ($true)) )
                                                                                              & ( {$dia} @ ($true) ) )) )
                                                                                         & ( {$dia} @ ($true) ) )) )
                                                                                    & ( {$dia} @ ($true) ) )) )
                                                                               & ( {$dia} @ (v5) )
                                                                               & ( {$dia} @ (~ v5) ) )) )
                                                                          & ( {$dia} @ (v6) )
                                                                          & ( {$dia} @ (~ v6) ) )) )
                                                                     & ( {$dia} @ (v7) )
                                                                     & ( {$dia} @ (~ v7) ) )) )
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
    & ( {$dia} @ ($true) ) ) ).

tff(result1,conjecture,
    $false ).

%------------------------------------------------------------------------------
