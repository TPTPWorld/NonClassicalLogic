%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSE581+1 [QMLTP]
%          : GSE581_3.022_s4_decreasing_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   23 (   0 unt;   6 typ;   0 def)
%            Number of atoms       :  304 (   0 equ)
%            Maximal formula atoms :    2 (  17 avg)
%            Number of connectives :  167 (   5   ~;   0   |;  15   &)
%                                         (   0 <=>;  22  =>;   0  <=;   0 <~>)
%                                         ( 125 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of FOOLs       :  125 ( 125 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    9 (   5   >;   4   *;   0   +;   0  <<)
%            Number of predicates  :    5 (   4 usr;   0 prp; 1-2 aty)
%            Number of functors    :    2 (   2 usr;   1 con; 0-2 aty)
%            Number of variables   :   44 (;  44   !;   0   ?;  44   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_decreasing_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $decreasing,
        $modalities == $modal_system_S4 ] ).

tff(empty_set_decl,type,
    empty_set: $i ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(not_equal_decl,type,
    not_equal: ( $i * $i ) > $o ).

tff(member_decl,type,
    member: ( $i * $i ) > $o ).

tff(empty_decl,type,
    empty: $i > $o ).

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

tff(not_equal_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (not_equal(A,C)) ) )
                     => ( {$box} @ (not_equal(B,C)) ) )) )) )) )) ) ).

tff(not_equal_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (not_equal(C,A)) ) )
                     => ( {$box} @ (not_equal(C,B)) ) )) )) )) )) ) ).

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

tff(empty_set_defn,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (~ ( {$box} @ (member(B,empty_set)) )) )) ) ).

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

tff(not_equal_defn,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (not_equal(B,C)) )
                  => ( {$box}
                     @ (~ ( {$box} @ (qmltpeq(B,C)) )) ) )) )
              & ( {$box}
                @ (( ( {$box}
                     @ (~ ( {$box} @ (qmltpeq(B,C)) )) )
                  => ( {$box} @ (not_equal(B,C)) ) )) ) )) )) ) ).

tff(commutativity_of_intersection,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] : ( {$box} @ (qmltpeq(intersection(B,C),intersection(C,B))) )) )) ) ).

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

tff(prove_th24,conjecture,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] :
              ( {$box}
              @ (! [D: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (member(B,C)) )
                        & ( {$box} @ (member(B,D)) ) )
                     => ( {$box} @ (not_equal(intersection(C,D),empty_set)) ) )) )) )) )) ) ).

%------------------------------------------------------------------------------
