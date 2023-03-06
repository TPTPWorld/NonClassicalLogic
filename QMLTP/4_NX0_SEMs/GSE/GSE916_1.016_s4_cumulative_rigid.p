%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSE916+1 [QMLTP]
%          : GSE916_1.016_s4_cumulative_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   29 (   0 unt;   6 typ;   0 def)
%            Number of atoms       :  405 (   0 equ)
%            Maximal formula atoms :    2 (  17 avg)
%            Number of connectives :  226 (  10   ~;   4   |;  21   &)
%                                         (   0 <=>;  25  =>;   0  <=;   0 <~>)
%                                         ( 166 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of FOOLs       :  166 ( 166 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   11 (   6   >;   5   *;   0   +;   0  <<)
%            Number of predicates  :    5 (   4 usr;   0 prp; 1-2 aty)
%            Number of functors    :    2 (   2 usr;   0 con; 2-2 aty)
%            Number of variables   :   61 (;  58   !;   3   ?;  61   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_cumulative_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $cumulative,
        $modalities == $modal_system_S4 ] ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(in_decl,type,
    in: ( $i * $i ) > $o ).

tff(disjoint_decl,type,
    disjoint: ( $i * $i ) > $o ).

tff(empty_decl,type,
    empty: $i > $o ).

tff(set_intersection2_decl,type,
    set_intersection2: ( $i * $i ) > $i ).

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

tff(disjoint_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (disjoint(A,C)) ) )
                     => ( {$box} @ (disjoint(B,C)) ) )) )) )) )) ) ).

tff(disjoint_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (disjoint(C,A)) ) )
                     => ( {$box} @ (disjoint(C,B)) ) )) )) )) )) ) ).

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

tff(symmetry_r1_xboole_0,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (disjoint(A,B)) )
                => ( {$box} @ (disjoint(B,A)) ) )) )) )) ) ).

tff(t4_xboole_0,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( ( {$box}
                @ (~ ( ( {$box}
                       @ (~ ( {$box} @ (disjoint(A,B)) )) )
                     & ( {$box}
                       @ (! [C: $i] :
                            ( {$box}
                            @ (~ ( {$box} @ (in(C,set_intersection2(A,B))) )) )) ) )) )
              & ( {$box}
                @ (~ ( ? [C: $i] : ( {$box} @ (in(C,set_intersection2(A,B))) )
                     & ( {$box} @ (disjoint(A,B)) ) )) ) )) )) ) ).

tff(t57_zfmisc_1,conjecture,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (~ ( ( {$box}
                          @ (~ ( {$box} @ (in(A,B)) )) )
                        & ( {$box}
                          @ (~ ( {$box} @ (in(C,B)) )) )
                        & ( {$box}
                          @ (~ ( {$box} @ (disjoint(unordered_pair(A,C),B)) )) ) )) )) )) )) ) ).

%------------------------------------------------------------------------------
