%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : Knowledge Representation
% Problem  : Querying description logic knowledge bases
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [CD+07] Calvanese et al. (2007), EQL-Lite: Effective First-Ord
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : APM007+1 [QMLTP]
%          : APM007_1.004_s4_constant_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   23 (   1 unt;  11 typ;   0 def)
%            Number of atoms       :   49 (   0 equ)
%            Maximal formula atoms :    6 (   4 avg)
%            Number of connectives :   33 (   1   ~;   0   |;  17   &)
%                                         (   1 <=>;   9  =>;   0  <=;   0 <~>)
%                                         (   5 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    8 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    5 (   5 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    7 (   5   >;   2   *;   0   +;   0  <<)
%            Number of predicates  :    6 (   5 usr;   0 prp; 1-2 aty)
%            Number of functors    :    6 (   6 usr;   6 con; 0-0 aty)
%            Number of variables   :   22 (;  21   !;   1   ?;  22   :)
% SPC      : ERROR: (JJ misuse): String Unsolved not an SZSResultType

% Comments :
%------------------------------------------------------------------------------
tff(s4_constant_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == $modal_system_S4 ] ).

tff(ann_decl,type,
    ann: $i ).

tff(mary_decl,type,
    mary: $i ).

tff(bob_decl,type,
    bob: $i ).

tff(john_decl,type,
    john: $i ).

tff(paul_decl,type,
    paul: $i ).

tff(jane_decl,type,
    jane: $i ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(parent_decl,type,
    parent: ( $i * $i ) > $o ).

tff(q3_decl,type,
    q3: $i > $o ).

tff(female_decl,type,
    female: $i > $o ).

tff(male_decl,type,
    male: $i > $o ).

tff(reflexivity,axiom-local,
    ! [X: $i] : qmltpeq(X,X) ).

tff(symmetry,axiom-local,
    ! [X: $i,Y: $i] :
      ( qmltpeq(X,Y)
     => qmltpeq(Y,X) ) ).

tff(transitivity,axiom-local,
    ! [X: $i,Y: $i,Z: $i] :
      ( ( qmltpeq(X,Y)
        & qmltpeq(Y,Z) )
     => qmltpeq(X,Z) ) ).

tff(female_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & female(A) )
     => female(B) ) ).

tff(male_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & male(A) )
     => male(B) ) ).

tff(q3_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & q3(A) )
     => q3(B) ) ).

tff(parent_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & parent(A,C) )
     => parent(B,C) ) ).

tff(parent_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & parent(C,A) )
     => parent(C,B) ) ).

tff(abox,axiom-local,
    ( {$box}
    @ (( female(mary)
       & female(ann)
       & female(jane)
       & male(bob)
       & male(john)
       & male(paul)
       & parent(bob,mary)
       & parent(bob,ann)
       & parent(john,paul)
       & parent(mary,jane) )) ) ).

tff(tbox,axiom-local,
    ! [X: $i] :
      ( ( {$box} @ (male(X)) )
     => ( {$box} @ (~ female(X)) ) ) ).

tff(query,axiom-local,
    ! [X: $i] :
      ( q3(X)
    <=> ? [Y: $i] :
          ( ( {$box} @ (parent(Y,X)) )
          & ! [Z: $i] :
              ( ( {$box} @ (parent(Y,Z)) )
             => qmltpeq(Z,X) ) ) ) ).

tff(con,conjecture,
    ( q3(jane)
    & q3(paul) ) ).

%------------------------------------------------------------------------------
