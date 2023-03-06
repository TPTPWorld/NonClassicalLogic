%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSE583+1 [QMLTP]
%          : GSE583_3.009_d_varying_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   14 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :  182 (   0 equ)
%            Maximal formula atoms :    2 (  16 avg)
%            Number of connectives :   97 (   0   ~;   0   |;  10   &)
%                                         (   0 <=>;  13  =>;   0  <=;   0 <~>)
%                                         (  74 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   74 (  74 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    6 (   3   >;   3   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   27 (;  27   !;   0   ?;  27   :)
% SPC      : NX0_THM_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_varying_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $varying,
        $modalities == $modal_system_D ] ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(member_decl,type,
    member: ( $i * $i ) > $o ).

tff(subset_decl,type,
    subset: ( $i * $i ) > $o ).

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

tff(prove_extensionality,conjecture,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (subset(B,C)) )
                   & ( {$box} @ (subset(C,B)) ) )
                => ( {$box} @ (qmltpeq(B,C)) ) )) )) )) ) ).

%------------------------------------------------------------------------------
