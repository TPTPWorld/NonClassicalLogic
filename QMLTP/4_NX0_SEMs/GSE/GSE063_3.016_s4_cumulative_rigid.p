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
%          : GSE063_3.016_s4_cumulative_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   20 (   0 unt;   5 typ;   0 def)
%            Number of atoms       :  230 (   0 equ)
%            Maximal formula atoms :    2 (  15 avg)
%            Number of connectives :  124 (   3   ~;   0   |;  11   &)
%                                         (   0 <=>;  16  =>;   0  <=;   0 <~>)
%                                         (  94 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   94 (  94 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    7 (   4   >;   3   *;   0   +;   0  <<)
%            Number of predicates  :    5 (   4 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :   33 (;  33   !;   0   ?;  33   :)
% SPC      : NX0_THM_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_cumulative_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $cumulative,
        $modalities == $modal_system_S4 ] ).

tff(empty_set_decl,type,
    empty_set: $i ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(member_decl,type,
    member: ( $i * $i ) > $o ).

tff(subset_decl,type,
    subset: ( $i * $i ) > $o ).

tff(empty_decl,type,
    empty: $i > $o ).

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

tff(empty_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (empty(A)) ) )
                => ( {$box} @ (empty(B)) ) )) )) )) ) ).

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

tff(empty_set_subset,axiom-local,
    ( {$box}
    @ (! [B: $i] : ( {$box} @ (subset(empty_set,B)) )) ) ).

tff(empty_set_defn,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (~ ( {$box} @ (member(B,empty_set)) )) )) ) ).

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

tff(reflexivity_of_subset,axiom-local,
    ( {$box}
    @ (! [B: $i] : ( {$box} @ (subset(B,B)) )) ) ).

tff(empty_defn,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( ( {$box}
           @ (( ( {$box} @ (empty(B)) )
             => ( {$box}
                @ (! [C: $i] :
                     ( {$box}
                     @ (~ ( {$box} @ (member(C,B)) )) )) ) )) )
         & ( {$box}
           @ (( ( {$box}
                @ (! [C: $i] :
                     ( {$box}
                     @ (~ ( {$box} @ (member(C,B)) )) )) )
             => ( {$box} @ (empty(B)) ) )) ) )) ) ).

tff(prove_subset_of_empty_set_is_empty_set,conjecture,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (( ( {$box} @ (subset(B,empty_set)) )
           => ( {$box} @ (qmltpeq(B,empty_set)) ) )) )) ) ).

%------------------------------------------------------------------------------
