%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSE909+1 [QMLTP]
%          : GSE909_1.039_d_cumulative_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   29 (   0 unt;   6 typ;   0 def)
%            Number of atoms       :  382 (   0 equ)
%            Maximal formula atoms :    2 (  16 avg)
%            Number of connectives :  211 (   9   ~;   8   |;  11   &)
%                                         (   0 <=>;  26  =>;   0  <=;   0 <~>)
%                                         ( 157 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   2 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of FOOLs       :  157 ( 157 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    9 (   5   >;   4   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    3 (   3 usr;   1 con; 0-2 aty)
%            Number of variables   :   56 (;  54   !;   2   ?;  56   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_cumulative_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $cumulative,
        $modalities == $modal_system_D ] ).

tff(empty_set_decl,type,
    empty_set: $i ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(in_decl,type,
    in: ( $i * $i ) > $o ).

tff(empty_decl,type,
    empty: $i > $o ).

tff(unordered_pair_decl,type,
    unordered_pair: ( $i * $i ) > $i ).

tff(set_union2_decl,type,
    set_union2: ( $i * $i ) > $i ).

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

tff(set_union2_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(set_union2(A,C),set_union2(B,C))) ) )) )) )) )) ) ).

tff(set_union2_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(set_union2(C,A),set_union2(C,B))) ) )) )) )) )) ) ).

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

tff(commutativity_k2_xboole_0,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] : ( {$box} @ (qmltpeq(set_union2(A,B),set_union2(B,A))) )) )) ) ).

tff(d1_xboole_0,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( ( {$box}
           @ (( ( {$box} @ (qmltpeq(A,empty_set)) )
             => ( {$box}
                @ (! [B: $i] :
                     ( {$box}
                     @ (~ ( {$box} @ (in(B,A)) )) )) ) )) )
         & ( {$box}
           @ (( ( {$box}
                @ (! [B: $i] :
                     ( {$box}
                     @ (~ ( {$box} @ (in(B,A)) )) )) )
             => ( {$box} @ (qmltpeq(A,empty_set)) ) )) ) )) ) ).

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

tff(d2_xboole_0,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( ( {$box}
                     @ (( ( {$box} @ (qmltpeq(C,set_union2(A,B))) )
                       => ( {$box}
                          @ (! [D: $i] :
                               ( ( {$box}
                                 @ (( ( {$box} @ (in(D,C)) )
                                   => ( ( {$box} @ (in(D,A)) )
                                      | ( {$box} @ (in(D,B)) ) ) )) )
                               & ( {$box}
                                 @ (( ( ( {$box} @ (in(D,A)) )
                                      | ( {$box} @ (in(D,B)) ) )
                                   => ( {$box} @ (in(D,C)) ) )) ) )) ) )) )
                   & ( {$box}
                     @ (( ( {$box}
                          @ (! [D: $i] :
                               ( ( {$box}
                                 @ (( ( {$box} @ (in(D,C)) )
                                   => ( ( {$box} @ (in(D,A)) )
                                      | ( {$box} @ (in(D,B)) ) ) )) )
                               & ( {$box}
                                 @ (( ( ( {$box} @ (in(D,A)) )
                                      | ( {$box} @ (in(D,B)) ) )
                                   => ( {$box} @ (in(D,C)) ) )) ) )) )
                       => ( {$box} @ (qmltpeq(C,set_union2(A,B))) ) )) ) )) )) )) ) ).

tff(fc1_xboole_0,axiom-local,
    {$box} @ (empty(empty_set)) ).

tff(fc2_xboole_0,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box}
                   @ (~ ( {$box} @ (empty(A)) )) )
                => ( {$box}
                   @ (~ ( {$box} @ (empty(set_union2(A,B))) )) ) )) )) )) ) ).

tff(fc3_xboole_0,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box}
                   @ (~ ( {$box} @ (empty(A)) )) )
                => ( {$box}
                   @ (~ ( {$box} @ (empty(set_union2(B,A))) )) ) )) )) )) ) ).

tff(idempotence_k2_xboole_0,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] : ( {$box} @ (qmltpeq(set_union2(A,A),A)) )) )) ) ).

tff(rc1_xboole_0,axiom-local,
    ? [A: $i] : ( {$box} @ (empty(A)) ) ).

tff(rc2_xboole_0,axiom-local,
    ? [A: $i] :
      ( {$box}
      @ (~ ( {$box} @ (empty(A)) )) ) ).

tff(t50_zfmisc_1,conjecture,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (~ ( {$box} @ (qmltpeq(set_union2(unordered_pair(A,B),C),empty_set)) )) )) )) )) ) ).

%------------------------------------------------------------------------------
