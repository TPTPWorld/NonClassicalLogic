%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSE578+1 [QMLTP]
%          : GSE578_3.010_s4_varying_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   20 (   0 unt;   4 typ;   0 def)
%            Number of atoms       :  315 (   0 equ)
%            Maximal formula atoms :    2 (  19 avg)
%            Number of connectives :  171 (   0   ~;   0   |;  18   &)
%                                         (   0 <=>;  25  =>;   0  <=;   0 <~>)
%                                         ( 128 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of FOOLs       :  128 ( 128 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    8 (   4   >;   4   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   0 con; 2-2 aty)
%            Number of variables   :   44 (;  44   !;   0   ?;  44   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_varying_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $varying,
        $modalities == $modal_system_S4 ] ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(member_decl,type,
    member: ( $i * $i ) > $o ).

tff(subset_decl,type,
    subset: ( $i * $i ) > $o ).

tff(intersection_decl,type,
    intersection: ( $i * $i ) > $i ).

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

tff(intersection_defn,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] :
              ( {$box}
              @ (! [D: $i] :
                   ( ( {$box}
                     @ (( ( {$box} @ (member(D,intersection(B,C))) )
                       => ( ( {$box} @ (member(D,B)) )
                          & ( {$box} @ (member(D,C)) ) ) )) )
                   & ( {$box}
                     @ (( ( ( {$box} @ (member(D,B)) )
                          & ( {$box} @ (member(D,C)) ) )
                       => ( {$box} @ (member(D,intersection(B,C))) ) )) ) )) )) )) ) ).

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

tff(commutativity_of_intersection,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] : ( {$box} @ (qmltpeq(intersection(B,C),intersection(C,B))) )) )) ) ).

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

tff(prove_th19,conjecture,
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
                               @ (( ( {$box} @ (member(E,B)) )
                                 => ( ( {$box} @ (member(E,C)) )
                                    & ( {$box} @ (member(E,D)) ) ) )) )
                             & ( {$box}
                               @ (( ( ( {$box} @ (member(E,C)) )
                                    & ( {$box} @ (member(E,D)) ) )
                                 => ( {$box} @ (member(E,B)) ) )) ) )) )
                     => ( {$box} @ (qmltpeq(B,intersection(C,D))) ) )) )) )) )) ) ).

%------------------------------------------------------------------------------
