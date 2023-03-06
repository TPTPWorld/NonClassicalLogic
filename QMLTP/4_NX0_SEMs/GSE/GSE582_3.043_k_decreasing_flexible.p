%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSE582+1 [QMLTP]
%          : GSE582_3.043_k_decreasing_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   30 (   0 unt;   6 typ;   0 def)
%            Number of atoms       :  468 (   0 equ)
%            Maximal formula atoms :    2 (  19 avg)
%            Number of connectives :  256 (   4   ~;   2   |;  20   &)
%                                         (   0 <=>;  38  =>;   0  <=;   0 <~>)
%                                         ( 192 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of FOOLs       :  192 ( 192 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   12 (   6   >;   6   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    3 (   3 usr;   0 con; 2-2 aty)
%            Number of variables   :   66 (;  66   !;   0   ?;  66   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_decreasing_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $decreasing,
        $modalities == $modal_system_K ] ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(member_decl,type,
    member: ( $i * $i ) > $o ).

tff(subset_decl,type,
    subset: ( $i * $i ) > $o ).

tff(difference_decl,type,
    difference: ( $i * $i ) > $i ).

tff(symmetric_difference_decl,type,
    symmetric_difference: ( $i * $i ) > $i ).

tff(union_decl,type,
    union: ( $i * $i ) > $i ).

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

tff(difference_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(difference(A,C),difference(B,C))) ) )) )) )) )) ) ).

tff(difference_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(difference(C,A),difference(C,B))) ) )) )) )) )) ) ).

tff(symmetric_difference_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(symmetric_difference(A,C),symmetric_difference(B,C))) ) )) )) )) )) ) ).

tff(symmetric_difference_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(symmetric_difference(C,A),symmetric_difference(C,B))) ) )) )) )) )) ) ).

tff(union_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(union(A,C),union(B,C))) ) )) )) )) )) ) ).

tff(union_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(union(C,A),union(C,B))) ) )) )) )) )) ) ).

tff(member_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (member(A,C)) ) )
                     => ( {$box} @ (member(B,C)) ) )) )) )) )) ) ).

tff(member_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (member(C,A)) ) )
                     => ( {$box} @ (member(C,B)) ) )) )) )) )) ) ).

tff(subset_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (subset(A,C)) ) )
                     => ( {$box} @ (subset(B,C)) ) )) )) )) )) ) ).

tff(subset_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (subset(C,A)) ) )
                     => ( {$box} @ (subset(C,B)) ) )) )) )) )) ) ).

tff(member_equal,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] :
              ( {$box}
              @ (( ( {$box}
                   @ (! [D: $i] :
                        ( ( {$box}
                          @ (( ( {$box} @ (member(D,B)) )
                            => ( {$box} @ (member(D,C)) ) )) )
                        & ( {$box}
                          @ (( ( {$box} @ (member(D,C)) )
                            => ( {$box} @ (member(D,B)) ) )) ) )) )
                => ( {$box} @ (qmltpeq(B,C)) ) )) )) )) ) ).

tff(union_defn,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] :
              ( {$box}
              @ (! [D: $i] :
                   ( ( {$box}
                     @ (( ( {$box} @ (member(D,union(B,C))) )
                       => ( ( {$box} @ (member(D,B)) )
                          | ( {$box} @ (member(D,C)) ) ) )) )
                   & ( {$box}
                     @ (( ( ( {$box} @ (member(D,B)) )
                          | ( {$box} @ (member(D,C)) ) )
                       => ( {$box} @ (member(D,union(B,C))) ) )) ) )) )) )) ) ).

tff(difference_defn,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] :
              ( {$box}
              @ (! [D: $i] :
                   ( ( {$box}
                     @ (( ( {$box} @ (member(D,difference(B,C))) )
                       => ( ( {$box} @ (member(D,B)) )
                          & ( {$box}
                            @ (~ ( {$box} @ (member(D,C)) )) ) ) )) )
                   & ( {$box}
                     @ (( ( ( {$box} @ (member(D,B)) )
                          & ( {$box}
                            @ (~ ( {$box} @ (member(D,C)) )) ) )
                       => ( {$box} @ (member(D,difference(B,C))) ) )) ) )) )) )) ) ).

tff(symmetric_difference_defn,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] : ( {$box} @ (qmltpeq(symmetric_difference(B,C),union(difference(B,C),difference(C,B)))) )) )) ) ).

tff(equal_defn,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (qmltpeq(B,C)) )
                  => ( ( {$box} @ (subset(B,C)) )
                     & ( {$box} @ (subset(C,B)) ) ) )) )
              & ( {$box}
                @ (( ( ( {$box} @ (subset(B,C)) )
                     & ( {$box} @ (subset(C,B)) ) )
                  => ( {$box} @ (qmltpeq(B,C)) ) )) ) )) )) ) ).

tff(commutativity_of_union,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] : ( {$box} @ (qmltpeq(union(B,C),union(C,B))) )) )) ) ).

tff(commutativity_of_symmetric_difference,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] : ( {$box} @ (qmltpeq(symmetric_difference(B,C),symmetric_difference(C,B))) )) )) ) ).

tff(equal_member_defn,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (qmltpeq(B,C)) )
                  => ( {$box}
                     @ (! [D: $i] :
                          ( ( {$box}
                            @ (( ( {$box} @ (member(D,B)) )
                              => ( {$box} @ (member(D,C)) ) )) )
                          & ( {$box}
                            @ (( ( {$box} @ (member(D,C)) )
                              => ( {$box} @ (member(D,B)) ) )) ) )) ) )) )
              & ( {$box}
                @ (( ( {$box}
                     @ (! [D: $i] :
                          ( ( {$box}
                            @ (( ( {$box} @ (member(D,B)) )
                              => ( {$box} @ (member(D,C)) ) )) )
                          & ( {$box}
                            @ (( ( {$box} @ (member(D,C)) )
                              => ( {$box} @ (member(D,B)) ) )) ) )) )
                  => ( {$box} @ (qmltpeq(B,C)) ) )) ) )) )) ) ).

tff(subset_defn,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (subset(B,C)) )
                  => ( {$box}
                     @ (! [D: $i] :
                          ( {$box}
                          @ (( ( {$box} @ (member(D,B)) )
                            => ( {$box} @ (member(D,C)) ) )) )) ) )) )
              & ( {$box}
                @ (( ( {$box}
                     @ (! [D: $i] :
                          ( {$box}
                          @ (( ( {$box} @ (member(D,B)) )
                            => ( {$box} @ (member(D,C)) ) )) )) )
                  => ( {$box} @ (subset(B,C)) ) )) ) )) )) ) ).

tff(reflexivity_of_subset,axiom-local,
    ( {$box}
    @ (! [B: $i] : ( {$box} @ (subset(B,B)) )) ) ).

tff(prove_th25,conjecture,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] :
              ( {$box}
              @ (! [D: $i] :
                   ( {$box}
                   @ (( ( {$box}
                        @ (! [E: $i] :
                             ( ( {$box}
                               @ (( ( {$box}
                                    @ (~ ( {$box} @ (member(E,B)) )) )
                                 => ( ( {$box}
                                      @ (( ( {$box} @ (member(E,C)) )
                                        => ( {$box} @ (member(E,D)) ) )) )
                                    & ( {$box}
                                      @ (( ( {$box} @ (member(E,D)) )
                                        => ( {$box} @ (member(E,C)) ) )) ) ) )) )
                             & ( {$box}
                               @ (( ( ( {$box}
                                      @ (( ( {$box} @ (member(E,C)) )
                                        => ( {$box} @ (member(E,D)) ) )) )
                                    & ( {$box}
                                      @ (( ( {$box} @ (member(E,D)) )
                                        => ( {$box} @ (member(E,C)) ) )) ) )
                                 => ( {$box}
                                    @ (~ ( {$box} @ (member(E,B)) )) ) )) ) )) )
                     => ( {$box} @ (qmltpeq(B,symmetric_difference(C,D))) ) )) )) )) )) ) ).

%------------------------------------------------------------------------------
