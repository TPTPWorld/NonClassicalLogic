%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSE926+1 [QMLTP]
%          : GSE926_1.016_s4_cumulative_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   22 (   0 unt;   6 typ;   0 def)
%            Number of atoms       :  202 (   0 equ)
%            Maximal formula atoms :    2 (  12 avg)
%            Number of connectives :  107 (   4   ~;   1   |;   6   &)
%                                         (   0 <=>;  13  =>;   0  <=;   0 <~>)
%                                         (  83 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   2 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of FOOLs       :   83 (  83 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    8 (   5   >;   3   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    3 (   3 usr;   1 con; 0-2 aty)
%            Number of variables   :   32 (;  30   !;   2   ?;  32   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

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

tff(in_decl,type,
    in: ( $i * $i ) > $o ).

tff(empty_decl,type,
    empty: $i > $o ).

tff(singleton_decl,type,
    singleton: $i > $i ).

tff(set_difference_decl,type,
    set_difference: ( $i * $i ) > $i ).

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

tff(set_difference_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(set_difference(A,C),set_difference(B,C))) ) )) )) )) )) ) ).

tff(set_difference_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(set_difference(C,A),set_difference(C,B))) ) )) )) )) )) ) ).

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

tff(l34_zfmisc_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (qmltpeq(set_difference(singleton(A),B),singleton(A))) )
                  => ( {$box}
                     @ (~ ( {$box} @ (in(A,B)) )) ) )) )
              & ( {$box}
                @ (( ( {$box}
                     @ (~ ( {$box} @ (in(A,B)) )) )
                  => ( {$box} @ (qmltpeq(set_difference(singleton(A),B),singleton(A))) ) )) ) )) )) ) ).

tff(l36_zfmisc_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (qmltpeq(set_difference(singleton(A),B),empty_set)) )
                  => ( {$box} @ (in(A,B)) ) )) )
              & ( {$box}
                @ (( ( {$box} @ (in(A,B)) )
                  => ( {$box} @ (qmltpeq(set_difference(singleton(A),B),empty_set)) ) )) ) )) )) ) ).

tff(rc1_xboole_0,axiom-local,
    ? [A: $i] : ( {$box} @ (empty(A)) ) ).

tff(rc2_xboole_0,axiom-local,
    ? [A: $i] :
      ( {$box}
      @ (~ ( {$box} @ (empty(A)) )) ) ).

tff(t69_zfmisc_1,conjecture,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( ( {$box} @ (qmltpeq(set_difference(singleton(A),B),empty_set)) )
              | ( {$box} @ (qmltpeq(set_difference(singleton(A),B),singleton(A))) ) )) )) ) ).

%------------------------------------------------------------------------------
