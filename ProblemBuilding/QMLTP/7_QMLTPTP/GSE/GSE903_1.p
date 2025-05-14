%------------------------------------------------------------------------------
% File     : GSE903_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Set Theory
% Problem  : ~ ( sgtn(A) = union(B,C) & B != C & B != empty & C != empty )
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP SET903+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSE903+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   21 (   0 unt;   5 typ;   0 def)
%            Number of atoms       :  207 (   0 equ)
%            Maximal formula atoms :    2 (  12 avg)
%            Number of connectives :  118 (  13   ~;   0   |;  11   &)
%                                         (   0 <=>;   8  =>;   0  <=;   0 <~>)
%                                         (  86 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of FOOLs       :   86 (  86 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    6 (   4   >;   2   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    3 (   3 usr;   1 con; 0-2 aty)
%            Number of variables   :   32 (;  30   !;   2   ?;  32   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

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

tff(empty_decl,type,
    empty: $i > $o ).

tff(singleton_decl,type,
    singleton: $i > $i ).

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

tff(commutativity_k2_xboole_0,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] : ( {$box} @ (qmltpeq(set_union2(A,B),set_union2(B,A))) )) )) ) ).

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

tff(t43_zfmisc_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (~ ( ( {$box} @ (qmltpeq(singleton(A),set_union2(B,C))) )
                        & ( {$box}
                          @ (~ ( ( {$box} @ (qmltpeq(B,singleton(A))) )
                               & ( {$box} @ (qmltpeq(C,singleton(A))) ) )) )
                        & ( {$box}
                          @ (~ ( ( {$box} @ (qmltpeq(B,empty_set)) )
                               & ( {$box} @ (qmltpeq(C,singleton(A))) ) )) )
                        & ( {$box}
                          @ (~ ( ( {$box} @ (qmltpeq(B,singleton(A))) )
                               & ( {$box} @ (qmltpeq(C,empty_set)) ) )) ) )) )) )) )) ) ).

tff(t44_zfmisc_1,conjecture,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (~ ( ( {$box} @ (qmltpeq(singleton(A),set_union2(B,C))) )
                        & ( {$box}
                          @ (~ ( {$box} @ (qmltpeq(B,C)) )) )
                        & ( {$box}
                          @ (~ ( {$box} @ (qmltpeq(B,empty_set)) )) )
                        & ( {$box}
                          @ (~ ( {$box} @ (qmltpeq(C,empty_set)) )) ) )) )) )) )) ) ).

%------------------------------------------------------------------------------
