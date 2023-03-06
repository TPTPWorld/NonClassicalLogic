%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSE918+1 [QMLTP]
%          : GSE918_1.023_s5_decreasing_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   27 (   0 unt;   6 typ;   0 def)
%            Number of atoms       :  391 (   0 equ)
%            Maximal formula atoms :    2 (  18 avg)
%            Number of connectives :  215 (   4   ~;   4   |;  19   &)
%                                         (   0 <=>;  29  =>;   0  <=;   0 <~>)
%                                         ( 159 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   2 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of FOOLs       :  159 ( 159 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   10 (   6   >;   4   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    3 (   3 usr;   0 con; 1-2 aty)
%            Number of variables   :   55 (;  53   !;   2   ?;  55   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_decreasing_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $decreasing,
        $modalities == $modal_system_S5 ] ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(in_decl,type,
    in: ( $i * $i ) > $o ).

tff(empty_decl,type,
    empty: $i > $o ).

tff(set_intersection2_decl,type,
    set_intersection2: ( $i * $i ) > $i ).

tff(singleton_decl,type,
    singleton: $i > $i ).

tff(unordered_pair_decl,type,
    unordered_pair: ( $i * $i ) > $i ).

tff(reflexivity,axiom-local,
    ( {$box}
    @ (! [X: $i] : ( {$box} @ (qmltpeq(X,X)) )) ) ).

tff(symmetry,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Y: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(X,Y)) )
                => ( {$box} @ (qmltpeq(Y,X)) ) )) )) )) ) ).

tff(transitivity,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Y: $i] :
              ( {$box}
              @ (! [Z: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(X,Y)) )
                        & ( {$box} @ (qmltpeq(Y,Z)) ) )
                     => ( {$box} @ (qmltpeq(X,Z)) ) )) )) )) )) ) ).

tff(set_intersection2_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(set_intersection2(A,C),set_intersection2(B,C))) ) )) )) )) )) ) ).

tff(set_intersection2_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(set_intersection2(C,A),set_intersection2(C,B))) ) )) )) )) )) ) ).

tff(singleton_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(singleton(A),singleton(B))) ) )) )) )) ) ).

tff(unordered_pair_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(unordered_pair(A,C),unordered_pair(B,C))) ) )) )) )) )) ) ).

tff(unordered_pair_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(unordered_pair(C,A),unordered_pair(C,B))) ) )) )) )) )) ) ).

tff(empty_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (empty(A)) ) )
                => ( {$box} @ (empty(B)) ) )) )) )) ) ).

tff(in_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (in(A,C)) ) )
                     => ( {$box} @ (in(B,C)) ) )) )) )) )) ) ).

tff(in_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (in(C,A)) ) )
                     => ( {$box} @ (in(C,B)) ) )) )) )) )) ) ).

tff(antisymmetry_r2_hidden,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (in(A,B)) )
                => ( {$box}
                   @ (~ ( {$box} @ (in(B,A)) )) ) )) )) )) ) ).

tff(commutativity_k2_tarski,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] : ( {$box} @ (qmltpeq(unordered_pair(A,B),unordered_pair(B,A))) )) )) ) ).

tff(commutativity_k3_xboole_0,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] : ( {$box} @ (qmltpeq(set_intersection2(A,B),set_intersection2(B,A))) )) )) ) ).

tff(d1_tarski,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (qmltpeq(B,singleton(A))) )
                  => ( {$box}
                     @ (! [C: $i] :
                          ( ( {$box}
                            @ (( ( {$box} @ (in(C,B)) )
                              => ( {$box} @ (qmltpeq(C,A)) ) )) )
                          & ( {$box}
                            @ (( ( {$box} @ (qmltpeq(C,A)) )
                              => ( {$box} @ (in(C,B)) ) )) ) )) ) )) )
              & ( {$box}
                @ (( ( {$box}
                     @ (! [C: $i] :
                          ( ( {$box}
                            @ (( ( {$box} @ (in(C,B)) )
                              => ( {$box} @ (qmltpeq(C,A)) ) )) )
                          & ( {$box}
                            @ (( ( {$box} @ (qmltpeq(C,A)) )
                              => ( {$box} @ (in(C,B)) ) )) ) )) )
                  => ( {$box} @ (qmltpeq(B,singleton(A))) ) )) ) )) )) ) ).

tff(d2_tarski,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( ( {$box}
                     @ (( ( {$box} @ (qmltpeq(C,unordered_pair(A,B))) )
                       => ( {$box}
                          @ (! [D: $i] :
                               ( ( {$box}
                                 @ (( ( {$box} @ (in(D,C)) )
                                   => ( ( {$box} @ (qmltpeq(D,A)) )
                                      | ( {$box} @ (qmltpeq(D,B)) ) ) )) )
                               & ( {$box}
                                 @ (( ( ( {$box} @ (qmltpeq(D,A)) )
                                      | ( {$box} @ (qmltpeq(D,B)) ) )
                                   => ( {$box} @ (in(D,C)) ) )) ) )) ) )) )
                   & ( {$box}
                     @ (( ( {$box}
                          @ (! [D: $i] :
                               ( ( {$box}
                                 @ (( ( {$box} @ (in(D,C)) )
                                   => ( ( {$box} @ (qmltpeq(D,A)) )
                                      | ( {$box} @ (qmltpeq(D,B)) ) ) )) )
                               & ( {$box}
                                 @ (( ( ( {$box} @ (qmltpeq(D,A)) )
                                      | ( {$box} @ (qmltpeq(D,B)) ) )
                                   => ( {$box} @ (in(D,C)) ) )) ) )) )
                       => ( {$box} @ (qmltpeq(C,unordered_pair(A,B))) ) )) ) )) )) )) ) ).

tff(d3_xboole_0,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( ( {$box}
                     @ (( ( {$box} @ (qmltpeq(C,set_intersection2(A,B))) )
                       => ( {$box}
                          @ (! [D: $i] :
                               ( ( {$box}
                                 @ (( ( {$box} @ (in(D,C)) )
                                   => ( ( {$box} @ (in(D,A)) )
                                      & ( {$box} @ (in(D,B)) ) ) )) )
                               & ( {$box}
                                 @ (( ( ( {$box} @ (in(D,A)) )
                                      & ( {$box} @ (in(D,B)) ) )
                                   => ( {$box} @ (in(D,C)) ) )) ) )) ) )) )
                   & ( {$box}
                     @ (( ( {$box}
                          @ (! [D: $i] :
                               ( ( {$box}
                                 @ (( ( {$box} @ (in(D,C)) )
                                   => ( ( {$box} @ (in(D,A)) )
                                      & ( {$box} @ (in(D,B)) ) ) )) )
                               & ( {$box}
                                 @ (( ( ( {$box} @ (in(D,A)) )
                                      & ( {$box} @ (in(D,B)) ) )
                                   => ( {$box} @ (in(D,C)) ) )) ) )) )
                       => ( {$box} @ (qmltpeq(C,set_intersection2(A,B))) ) )) ) )) )) )) ) ).

tff(idempotence_k3_xboole_0,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] : ( {$box} @ (qmltpeq(set_intersection2(A,A),A)) )) )) ) ).

tff(rc1_xboole_0,axiom-local,
    ? [A: $i] : ( {$box} @ (empty(A)) ) ).

tff(rc2_xboole_0,axiom-local,
    ? [A: $i] :
      ( {$box}
      @ (~ ( {$box} @ (empty(A)) )) ) ).

tff(t59_zfmisc_1,conjecture,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (~ ( ( {$box} @ (qmltpeq(set_intersection2(unordered_pair(A,B),C),singleton(A))) )
                        & ( {$box} @ (in(B,C)) )
                        & ( {$box}
                          @ (~ ( {$box} @ (qmltpeq(A,B)) )) ) )) )) )) )) ) ).

%------------------------------------------------------------------------------
