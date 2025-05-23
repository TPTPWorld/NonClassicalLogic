%------------------------------------------------------------------------------
% File     : GSE901_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Set Theory
% Problem  : Basic properties of sets, theorem 42
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP SET901+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSE901+1 [QMLTP]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   22 (   0 unt;   6 typ;   0 def)
%            Number of atoms       :  268 (   0 equ)
%            Maximal formula atoms :    2 (  16 avg)
%            Number of connectives :  162 (  21   ~;   0   |;  18   &)
%                                         (   0 <=>;  12  =>;   0  <=;   0 <~>)
%                                         ( 111 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of FOOLs       :  111 ( 111 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    8 (   5   >;   3   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    3 (   3 usr;   1 con; 0-2 aty)
%            Number of variables   :   34 (;  32   !;   2   ?;  34   :)
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

tff(subset_decl,type,
    subset: ( $i * $i ) > $o ).

tff(empty_decl,type,
    empty: $i > $o ).

tff(singleton_decl,type,
    singleton: $i > $i ).

tff(unordered_pair_decl,type,
    unordered_pair: ( $i * $i ) > $i ).

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

tff(empty_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (empty(A)) ) )
                => ( {$box} @ (empty(B)) ) )) )) )) ) ).

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

tff(commutativity_k2_tarski,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] : ( {$box} @ (qmltpeq(unordered_pair(A,B),unordered_pair(B,A))) )) )) ) ).

tff(reflexivity_r1_tarski,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] : ( {$box} @ (subset(A,A)) )) )) ) ).

tff(fc1_xboole_0,axiom-local,
    {$box} @ (empty(empty_set)) ).

tff(rc1_xboole_0,axiom-local,
    ? [A: $i] : ( {$box} @ (empty(A)) ) ).

tff(rc2_xboole_0,axiom-local,
    ? [A: $i] :
      ( {$box}
      @ (~ ( {$box} @ (empty(A)) )) ) ).

tff(t42_zfmisc_1,conjecture,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( ( {$box}
                     @ (( ( {$box} @ (subset(A,unordered_pair(B,C))) )
                       => ( {$box}
                          @ (~ ( ( {$box}
                                 @ (~ ( {$box} @ (qmltpeq(A,empty_set)) )) )
                               & ( {$box}
                                 @ (~ ( {$box} @ (qmltpeq(A,singleton(B))) )) )
                               & ( {$box}
                                 @ (~ ( {$box} @ (qmltpeq(A,singleton(C))) )) )
                               & ( {$box}
                                 @ (~ ( {$box} @ (qmltpeq(A,unordered_pair(B,C))) )) ) )) ) )) )
                   & ( {$box}
                     @ (( ( {$box}
                          @ (~ ( ( {$box}
                                 @ (~ ( {$box} @ (qmltpeq(A,empty_set)) )) )
                               & ( {$box}
                                 @ (~ ( {$box} @ (qmltpeq(A,singleton(B))) )) )
                               & ( {$box}
                                 @ (~ ( {$box} @ (qmltpeq(A,singleton(C))) )) )
                               & ( {$box}
                                 @ (~ ( {$box} @ (qmltpeq(A,unordered_pair(B,C))) )) ) )) )
                       => ( {$box} @ (subset(A,unordered_pair(B,C))) ) )) ) )) )) )) ) ).

tff(l46_zfmisc_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( ( {$box}
                     @ (( ( {$box} @ (subset(A,unordered_pair(B,C))) )
                       => ( {$box}
                          @ (~ ( ( {$box}
                                 @ (~ ( {$box} @ (qmltpeq(A,empty_set)) )) )
                               & ( {$box}
                                 @ (~ ( {$box} @ (qmltpeq(A,singleton(B))) )) )
                               & ( {$box}
                                 @ (~ ( {$box} @ (qmltpeq(A,singleton(C))) )) )
                               & ( {$box}
                                 @ (~ ( {$box} @ (qmltpeq(A,unordered_pair(B,C))) )) ) )) ) )) )
                   & ( {$box}
                     @ (( ( {$box}
                          @ (~ ( ( {$box}
                                 @ (~ ( {$box} @ (qmltpeq(A,empty_set)) )) )
                               & ( {$box}
                                 @ (~ ( {$box} @ (qmltpeq(A,singleton(B))) )) )
                               & ( {$box}
                                 @ (~ ( {$box} @ (qmltpeq(A,singleton(C))) )) )
                               & ( {$box}
                                 @ (~ ( {$box} @ (qmltpeq(A,unordered_pair(B,C))) )) ) )) )
                       => ( {$box} @ (subset(A,unordered_pair(B,C))) ) )) ) )) )) )) ) ).

%------------------------------------------------------------------------------
