%------------------------------------------------------------------------------
% File     : GSE900_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Set Theory
% Problem  : ~ ( A != singleton(B) & A != empty_set & ~ ( in(C,A) & C != B ) )
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP SET900+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSE900+1 [QMLTP]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   18 (   0 unt;   5 typ;   0 def)
%            Number of atoms       :  176 (   0 equ)
%            Maximal formula atoms :    2 (  13 avg)
%            Number of connectives :  102 (  12   ~;   0   |;  10   &)
%                                         (   0 <=>;   7  =>;   0  <=;   0 <~>)
%                                         (  73 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of FOOLs       :   73 (  73 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    6 (   4   >;   2   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    2 (   2 usr;   1 con; 0-1 aty)
%            Number of variables   :   26 (;  24   !;   2   ?;  26   :)
% SPC      : NX0_THM_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_constant_rigid,logic,
    $modal == 
      [ $domains == $constant,
        $designation == $rigid,
        $terms == $local,
        $modalities == $modal_system_K ] ).

tff(empty_set_decl,type,
    empty_set: $i ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(in_decl,type,
    in: ( $i * $i ) > $o ).

tff(empty_decl,type,
    empty: $i > $o ).

tff(singleton_decl,type,
    singleton: $i > $i ).

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

tff(singleton_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(singleton(A),singleton(B))) ) )) )) )) ) ).

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

tff(fc1_xboole_0,axiom-local,
    {$box} @ (empty(empty_set)) ).

tff(rc1_xboole_0,axiom-local,
    ? [A: $i] : ( {$box} @ (empty(A)) ) ).

tff(rc2_xboole_0,axiom-local,
    ? [A: $i] :
      ( {$box}
      @ (~ ( {$box} @ (empty(A)) )) ) ).

tff(t41_zfmisc_1,conjecture,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (~ ( ( {$box}
                     @ (~ ( {$box} @ (qmltpeq(A,singleton(B))) )) )
                   & ( {$box}
                     @ (~ ( {$box} @ (qmltpeq(A,empty_set)) )) )
                   & ( {$box}
                     @ (! [C: $i] :
                          ( {$box}
                          @ (~ ( ( {$box} @ (in(C,A)) )
                               & ( {$box}
                                 @ (~ ( {$box} @ (qmltpeq(C,B)) )) ) )) )) ) )) )) )) ) ).

tff(l45_zfmisc_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (~ ( ( {$box}
                     @ (~ ( {$box} @ (qmltpeq(A,singleton(B))) )) )
                   & ( {$box}
                     @ (~ ( {$box} @ (qmltpeq(A,empty_set)) )) )
                   & ( {$box}
                     @ (! [C: $i] :
                          ( {$box}
                          @ (~ ( ( {$box} @ (in(C,A)) )
                               & ( {$box}
                                 @ (~ ( {$box} @ (qmltpeq(C,B)) )) ) )) )) ) )) )) )) ) ).

%------------------------------------------------------------------------------
