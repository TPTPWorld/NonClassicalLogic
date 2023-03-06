%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : Set Theory
% Problem  : Idempotency of union
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP SET002+3 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSE002+1 [QMLTP]
%          : GSE002_3.007_k_varying_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   21 (   0 unt;   4 typ;   0 def)
%            Number of atoms       :  297 (   0 equ)
%            Maximal formula atoms :    2 (  17 avg)
%            Number of connectives :  159 (   0   ~;   2   |;  13   &)
%                                         (   0 <=>;  23  =>;   0  <=;   0 <~>)
%                                         ( 121 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of FOOLs       :  121 ( 121 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    8 (   4   >;   4   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   0 con; 2-2 aty)
%            Number of variables   :   43 (;  43   !;   0   ?;  43   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_varying_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $varying,
        $modalities == $modal_system_K ] ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(member_decl,type,
    member: ( $i * $i ) > $o ).

tff(subset_decl,type,
    subset: ( $i * $i ) > $o ).

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

tff(subset_union,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] :
              ( {$box}
              @ (( ( {$box} @ (subset(B,C)) )
                => ( {$box} @ (qmltpeq(union(B,C),C)) ) )) )) )) ) ).

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

tff(prove_idempotency_of_union,conjecture,
    ( {$box}
    @ (! [B: $i] : ( {$box} @ (qmltpeq(union(B,B),B)) )) ) ).

%------------------------------------------------------------------------------
