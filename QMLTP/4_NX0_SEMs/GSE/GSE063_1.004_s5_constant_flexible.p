%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSE063+1 [QMLTP]
%          : GSE063_1.004_s5_constant_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   46 (   0 unt;  13 typ;   0 def)
%            Number of atoms       :  584 (   0 equ)
%            Maximal formula atoms :    2 (  17 avg)
%            Number of connectives :  315 (   3   ~;   4   |;  25   &)
%                                         (   0 <=>;  44  =>;   0  <=;   0 <~>)
%                                         ( 239 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of FOOLs       :  239 ( 239 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   20 (  12   >;   8   *;   0   +;   0  <<)
%            Number of predicates  :    5 (   4 usr;   0 prp; 1-2 aty)
%            Number of functors    :    9 (   9 usr;   1 con; 0-2 aty)
%            Number of variables   :   88 (;  86   !;   2   ?;  88   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_constant_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $constant,
        $modalities == $modal_system_S5 ] ).

tff(empty_set_decl,type,
    empty_set: $i ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(equal_set_decl,type,
    equal_set: ( $i * $i ) > $o ).

tff(member_decl,type,
    member: ( $i * $i ) > $o ).

tff(subset_decl,type,
    subset: ( $i * $i ) > $o ).

tff(singleton_decl,type,
    singleton: $i > $i ).

tff(product_decl,type,
    product: $i > $i ).

tff(unordered_pair_decl,type,
    unordered_pair: ( $i * $i ) > $i ).

tff(intersection_decl,type,
    intersection: ( $i * $i ) > $i ).

tff(difference_decl,type,
    difference: ( $i * $i ) > $i ).

tff(sum_decl,type,
    sum: $i > $i ).

tff(union_decl,type,
    union: ( $i * $i ) > $i ).

tff(power_set_decl,type,
    power_set: $i > $i ).

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

tff(intersection_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(intersection(A,C),intersection(B,C))) ) )) )) )) )) ) ).

tff(intersection_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(intersection(C,A),intersection(C,B))) ) )) )) )) )) ) ).

tff(power_set_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(power_set(A),power_set(B))) ) )) )) )) ) ).

tff(product_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(product(A),product(B))) ) )) )) )) ) ).

tff(singleton_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(singleton(A),singleton(B))) ) )) )) )) ) ).

tff(sum_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(sum(A),sum(B))) ) )) )) )) ) ).

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

tff(equal_set_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (equal_set(A,C)) ) )
                     => ( {$box} @ (equal_set(B,C)) ) )) )) )) )) ) ).

tff(equal_set_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (equal_set(C,A)) ) )
                     => ( {$box} @ (equal_set(C,B)) ) )) )) )) )) ) ).

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

tff(subset_0,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (subset(A,B)) )
                  => ( {$box}
                     @ (! [X: $i] :
                          ( {$box}
                          @ (( ( {$box} @ (member(X,A)) )
                            => ( {$box} @ (member(X,B)) ) )) )) ) )) )
              & ( {$box}
                @ (( ( {$box}
                     @ (! [X: $i] :
                          ( {$box}
                          @ (( ( {$box} @ (member(X,A)) )
                            => ( {$box} @ (member(X,B)) ) )) )) )
                  => ( {$box} @ (subset(A,B)) ) )) ) )) )) ) ).

tff(equal_set_0,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (equal_set(A,B)) )
                  => ( ( {$box} @ (subset(A,B)) )
                     & ( {$box} @ (subset(B,A)) ) ) )) )
              & ( {$box}
                @ (( ( ( {$box} @ (subset(A,B)) )
                     & ( {$box} @ (subset(B,A)) ) )
                  => ( {$box} @ (equal_set(A,B)) ) )) ) )) )) ) ).

tff(power_set_0,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [A: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (member(X,power_set(A))) )
                  => ( {$box} @ (subset(X,A)) ) )) )
              & ( {$box}
                @ (( ( {$box} @ (subset(X,A)) )
                  => ( {$box} @ (member(X,power_set(A))) ) )) ) )) )) ) ).

tff(intersection_0,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [A: $i] :
              ( {$box}
              @ (! [B: $i] :
                   ( ( {$box}
                     @ (( ( {$box} @ (member(X,intersection(A,B))) )
                       => ( ( {$box} @ (member(X,A)) )
                          & ( {$box} @ (member(X,B)) ) ) )) )
                   & ( {$box}
                     @ (( ( ( {$box} @ (member(X,A)) )
                          & ( {$box} @ (member(X,B)) ) )
                       => ( {$box} @ (member(X,intersection(A,B))) ) )) ) )) )) )) ) ).

tff(union_0,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [A: $i] :
              ( {$box}
              @ (! [B: $i] :
                   ( ( {$box}
                     @ (( ( {$box} @ (member(X,union(A,B))) )
                       => ( ( {$box} @ (member(X,A)) )
                          | ( {$box} @ (member(X,B)) ) ) )) )
                   & ( {$box}
                     @ (( ( ( {$box} @ (member(X,A)) )
                          | ( {$box} @ (member(X,B)) ) )
                       => ( {$box} @ (member(X,union(A,B))) ) )) ) )) )) )) ) ).

tff(empty_set_0,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (~ ( {$box} @ (member(X,empty_set)) )) )) ) ).

tff(difference_0,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [A: $i] :
              ( {$box}
              @ (! [E: $i] :
                   ( ( {$box}
                     @ (( ( {$box} @ (member(B,difference(E,A))) )
                       => ( ( {$box} @ (member(B,E)) )
                          & ( {$box}
                            @ (~ ( {$box} @ (member(B,A)) )) ) ) )) )
                   & ( {$box}
                     @ (( ( ( {$box} @ (member(B,E)) )
                          & ( {$box}
                            @ (~ ( {$box} @ (member(B,A)) )) ) )
                       => ( {$box} @ (member(B,difference(E,A))) ) )) ) )) )) )) ) ).

tff(singleton_0,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [A: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (member(X,singleton(A))) )
                  => ( {$box} @ (qmltpeq(X,A)) ) )) )
              & ( {$box}
                @ (( ( {$box} @ (qmltpeq(X,A)) )
                  => ( {$box} @ (member(X,singleton(A))) ) )) ) )) )) ) ).

tff(unordered_pair_0,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [A: $i] :
              ( {$box}
              @ (! [B: $i] :
                   ( ( {$box}
                     @ (( ( {$box} @ (member(X,unordered_pair(A,B))) )
                       => ( ( {$box} @ (qmltpeq(X,A)) )
                          | ( {$box} @ (qmltpeq(X,B)) ) ) )) )
                   & ( {$box}
                     @ (( ( ( {$box} @ (qmltpeq(X,A)) )
                          | ( {$box} @ (qmltpeq(X,B)) ) )
                       => ( {$box} @ (member(X,unordered_pair(A,B))) ) )) ) )) )) )) ) ).

tff(sum_0,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [A: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (member(X,sum(A))) )
                  => ? [Y: $i] :
                       ( ( {$box} @ (member(Y,A)) )
                       & ( {$box} @ (member(X,Y)) ) ) )) )
              & ( {$box}
                @ (( ? [Y: $i] :
                       ( ( {$box} @ (member(Y,A)) )
                       & ( {$box} @ (member(X,Y)) ) )
                  => ( {$box} @ (member(X,sum(A))) ) )) ) )) )) ) ).

tff(product_0,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [A: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (member(X,product(A))) )
                  => ( {$box}
                     @ (! [Y: $i] :
                          ( {$box}
                          @ (( ( {$box} @ (member(Y,A)) )
                            => ( {$box} @ (member(X,Y)) ) )) )) ) )) )
              & ( {$box}
                @ (( ( {$box}
                     @ (! [Y: $i] :
                          ( {$box}
                          @ (( ( {$box} @ (member(Y,A)) )
                            => ( {$box} @ (member(X,Y)) ) )) )) )
                  => ( {$box} @ (member(X,product(A))) ) )) ) )) )) ) ).

tff(thI17,conjecture,
    ( {$box}
    @ (! [A: $i] : ( {$box} @ (equal_set(intersection(A,empty_set),empty_set)) )) ) ).

%------------------------------------------------------------------------------
