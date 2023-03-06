%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : General Algebra
% Problem  : Groups 4: VERIFY-GEN-SYSES-PROBLEM-1
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP ALG023+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GAL023+1 [QMLTP]
%          : GAL023_1.025_k_constant_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   49 (   0 unt;   8 typ;   0 def)
%            Number of atoms       : 1249 (   0 equ)
%            Maximal formula atoms :  128 (  30 avg)
%            Number of connectives :  836 (  84   ~;  66   |; 209   &)
%                                         (   0 <=>;  21  =>;   0  <=;   0 <~>)
%                                         ( 456 {}@;   0 {#};   0 {.})
%            Maximal formula depth :   65 (   7 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of FOOLs       :  456 ( 456 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    5 (   3   >;   2   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :    7 (   7 usr;   5 con; 0-2 aty)
%            Number of variables   :   14 (;  14   !;   0   ?;  14   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_constant_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $constant,
        $modalities == $modal_system_K ] ).

tff(unit_decl,type,
    unit: $i ).

tff(e0_decl,type,
    e0: $i ).

tff(e1_decl,type,
    e1: $i ).

tff(e2_decl,type,
    e2: $i ).

tff(e3_decl,type,
    e3: $i ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(inv_decl,type,
    inv: $i > $i ).

tff(op_decl,type,
    op: ( $i * $i ) > $i ).

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

tff(inv_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(inv(A),inv(B))) ) )) )) )) ) ).

tff(op_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(op(A,C),op(B,C))) ) )) )) )) )) ) ).

tff(op_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(op(C,A),op(C,B))) ) )) )) )) )) ) ).

tff(ax1,axiom-local,
    ( ( ( {$box} @ (qmltpeq(op(e0,e0),e0)) )
      | ( {$box} @ (qmltpeq(op(e0,e0),e1)) )
      | ( {$box} @ (qmltpeq(op(e0,e0),e2)) )
      | ( {$box} @ (qmltpeq(op(e0,e0),e3)) ) )
    & ( ( {$box} @ (qmltpeq(op(e0,e1),e0)) )
      | ( {$box} @ (qmltpeq(op(e0,e1),e1)) )
      | ( {$box} @ (qmltpeq(op(e0,e1),e2)) )
      | ( {$box} @ (qmltpeq(op(e0,e1),e3)) ) )
    & ( ( {$box} @ (qmltpeq(op(e0,e2),e0)) )
      | ( {$box} @ (qmltpeq(op(e0,e2),e1)) )
      | ( {$box} @ (qmltpeq(op(e0,e2),e2)) )
      | ( {$box} @ (qmltpeq(op(e0,e2),e3)) ) )
    & ( ( {$box} @ (qmltpeq(op(e0,e3),e0)) )
      | ( {$box} @ (qmltpeq(op(e0,e3),e1)) )
      | ( {$box} @ (qmltpeq(op(e0,e3),e2)) )
      | ( {$box} @ (qmltpeq(op(e0,e3),e3)) ) )
    & ( ( {$box} @ (qmltpeq(op(e1,e0),e0)) )
      | ( {$box} @ (qmltpeq(op(e1,e0),e1)) )
      | ( {$box} @ (qmltpeq(op(e1,e0),e2)) )
      | ( {$box} @ (qmltpeq(op(e1,e0),e3)) ) )
    & ( ( {$box} @ (qmltpeq(op(e1,e1),e0)) )
      | ( {$box} @ (qmltpeq(op(e1,e1),e1)) )
      | ( {$box} @ (qmltpeq(op(e1,e1),e2)) )
      | ( {$box} @ (qmltpeq(op(e1,e1),e3)) ) )
    & ( ( {$box} @ (qmltpeq(op(e1,e2),e0)) )
      | ( {$box} @ (qmltpeq(op(e1,e2),e1)) )
      | ( {$box} @ (qmltpeq(op(e1,e2),e2)) )
      | ( {$box} @ (qmltpeq(op(e1,e2),e3)) ) )
    & ( ( {$box} @ (qmltpeq(op(e1,e3),e0)) )
      | ( {$box} @ (qmltpeq(op(e1,e3),e1)) )
      | ( {$box} @ (qmltpeq(op(e1,e3),e2)) )
      | ( {$box} @ (qmltpeq(op(e1,e3),e3)) ) )
    & ( ( {$box} @ (qmltpeq(op(e2,e0),e0)) )
      | ( {$box} @ (qmltpeq(op(e2,e0),e1)) )
      | ( {$box} @ (qmltpeq(op(e2,e0),e2)) )
      | ( {$box} @ (qmltpeq(op(e2,e0),e3)) ) )
    & ( ( {$box} @ (qmltpeq(op(e2,e1),e0)) )
      | ( {$box} @ (qmltpeq(op(e2,e1),e1)) )
      | ( {$box} @ (qmltpeq(op(e2,e1),e2)) )
      | ( {$box} @ (qmltpeq(op(e2,e1),e3)) ) )
    & ( ( {$box} @ (qmltpeq(op(e2,e2),e0)) )
      | ( {$box} @ (qmltpeq(op(e2,e2),e1)) )
      | ( {$box} @ (qmltpeq(op(e2,e2),e2)) )
      | ( {$box} @ (qmltpeq(op(e2,e2),e3)) ) )
    & ( ( {$box} @ (qmltpeq(op(e2,e3),e0)) )
      | ( {$box} @ (qmltpeq(op(e2,e3),e1)) )
      | ( {$box} @ (qmltpeq(op(e2,e3),e2)) )
      | ( {$box} @ (qmltpeq(op(e2,e3),e3)) ) )
    & ( ( {$box} @ (qmltpeq(op(e3,e0),e0)) )
      | ( {$box} @ (qmltpeq(op(e3,e0),e1)) )
      | ( {$box} @ (qmltpeq(op(e3,e0),e2)) )
      | ( {$box} @ (qmltpeq(op(e3,e0),e3)) ) )
    & ( ( {$box} @ (qmltpeq(op(e3,e1),e0)) )
      | ( {$box} @ (qmltpeq(op(e3,e1),e1)) )
      | ( {$box} @ (qmltpeq(op(e3,e1),e2)) )
      | ( {$box} @ (qmltpeq(op(e3,e1),e3)) ) )
    & ( ( {$box} @ (qmltpeq(op(e3,e2),e0)) )
      | ( {$box} @ (qmltpeq(op(e3,e2),e1)) )
      | ( {$box} @ (qmltpeq(op(e3,e2),e2)) )
      | ( {$box} @ (qmltpeq(op(e3,e2),e3)) ) )
    & ( ( {$box} @ (qmltpeq(op(e3,e3),e0)) )
      | ( {$box} @ (qmltpeq(op(e3,e3),e1)) )
      | ( {$box} @ (qmltpeq(op(e3,e3),e2)) )
      | ( {$box} @ (qmltpeq(op(e3,e3),e3)) ) ) ) ).

tff(ax2,axiom-local,
    ( ( {$box} @ (qmltpeq(op(op(e0,e0),e0),op(e0,op(e0,e0)))) )
    & ( {$box} @ (qmltpeq(op(op(e0,e0),e1),op(e0,op(e0,e1)))) )
    & ( {$box} @ (qmltpeq(op(op(e0,e0),e2),op(e0,op(e0,e2)))) )
    & ( {$box} @ (qmltpeq(op(op(e0,e0),e3),op(e0,op(e0,e3)))) )
    & ( {$box} @ (qmltpeq(op(op(e0,e1),e0),op(e0,op(e1,e0)))) )
    & ( {$box} @ (qmltpeq(op(op(e0,e1),e1),op(e0,op(e1,e1)))) )
    & ( {$box} @ (qmltpeq(op(op(e0,e1),e2),op(e0,op(e1,e2)))) )
    & ( {$box} @ (qmltpeq(op(op(e0,e1),e3),op(e0,op(e1,e3)))) )
    & ( {$box} @ (qmltpeq(op(op(e0,e2),e0),op(e0,op(e2,e0)))) )
    & ( {$box} @ (qmltpeq(op(op(e0,e2),e1),op(e0,op(e2,e1)))) )
    & ( {$box} @ (qmltpeq(op(op(e0,e2),e2),op(e0,op(e2,e2)))) )
    & ( {$box} @ (qmltpeq(op(op(e0,e2),e3),op(e0,op(e2,e3)))) )
    & ( {$box} @ (qmltpeq(op(op(e0,e3),e0),op(e0,op(e3,e0)))) )
    & ( {$box} @ (qmltpeq(op(op(e0,e3),e1),op(e0,op(e3,e1)))) )
    & ( {$box} @ (qmltpeq(op(op(e0,e3),e2),op(e0,op(e3,e2)))) )
    & ( {$box} @ (qmltpeq(op(op(e0,e3),e3),op(e0,op(e3,e3)))) )
    & ( {$box} @ (qmltpeq(op(op(e1,e0),e0),op(e1,op(e0,e0)))) )
    & ( {$box} @ (qmltpeq(op(op(e1,e0),e1),op(e1,op(e0,e1)))) )
    & ( {$box} @ (qmltpeq(op(op(e1,e0),e2),op(e1,op(e0,e2)))) )
    & ( {$box} @ (qmltpeq(op(op(e1,e0),e3),op(e1,op(e0,e3)))) )
    & ( {$box} @ (qmltpeq(op(op(e1,e1),e0),op(e1,op(e1,e0)))) )
    & ( {$box} @ (qmltpeq(op(op(e1,e1),e1),op(e1,op(e1,e1)))) )
    & ( {$box} @ (qmltpeq(op(op(e1,e1),e2),op(e1,op(e1,e2)))) )
    & ( {$box} @ (qmltpeq(op(op(e1,e1),e3),op(e1,op(e1,e3)))) )
    & ( {$box} @ (qmltpeq(op(op(e1,e2),e0),op(e1,op(e2,e0)))) )
    & ( {$box} @ (qmltpeq(op(op(e1,e2),e1),op(e1,op(e2,e1)))) )
    & ( {$box} @ (qmltpeq(op(op(e1,e2),e2),op(e1,op(e2,e2)))) )
    & ( {$box} @ (qmltpeq(op(op(e1,e2),e3),op(e1,op(e2,e3)))) )
    & ( {$box} @ (qmltpeq(op(op(e1,e3),e0),op(e1,op(e3,e0)))) )
    & ( {$box} @ (qmltpeq(op(op(e1,e3),e1),op(e1,op(e3,e1)))) )
    & ( {$box} @ (qmltpeq(op(op(e1,e3),e2),op(e1,op(e3,e2)))) )
    & ( {$box} @ (qmltpeq(op(op(e1,e3),e3),op(e1,op(e3,e3)))) )
    & ( {$box} @ (qmltpeq(op(op(e2,e0),e0),op(e2,op(e0,e0)))) )
    & ( {$box} @ (qmltpeq(op(op(e2,e0),e1),op(e2,op(e0,e1)))) )
    & ( {$box} @ (qmltpeq(op(op(e2,e0),e2),op(e2,op(e0,e2)))) )
    & ( {$box} @ (qmltpeq(op(op(e2,e0),e3),op(e2,op(e0,e3)))) )
    & ( {$box} @ (qmltpeq(op(op(e2,e1),e0),op(e2,op(e1,e0)))) )
    & ( {$box} @ (qmltpeq(op(op(e2,e1),e1),op(e2,op(e1,e1)))) )
    & ( {$box} @ (qmltpeq(op(op(e2,e1),e2),op(e2,op(e1,e2)))) )
    & ( {$box} @ (qmltpeq(op(op(e2,e1),e3),op(e2,op(e1,e3)))) )
    & ( {$box} @ (qmltpeq(op(op(e2,e2),e0),op(e2,op(e2,e0)))) )
    & ( {$box} @ (qmltpeq(op(op(e2,e2),e1),op(e2,op(e2,e1)))) )
    & ( {$box} @ (qmltpeq(op(op(e2,e2),e2),op(e2,op(e2,e2)))) )
    & ( {$box} @ (qmltpeq(op(op(e2,e2),e3),op(e2,op(e2,e3)))) )
    & ( {$box} @ (qmltpeq(op(op(e2,e3),e0),op(e2,op(e3,e0)))) )
    & ( {$box} @ (qmltpeq(op(op(e2,e3),e1),op(e2,op(e3,e1)))) )
    & ( {$box} @ (qmltpeq(op(op(e2,e3),e2),op(e2,op(e3,e2)))) )
    & ( {$box} @ (qmltpeq(op(op(e2,e3),e3),op(e2,op(e3,e3)))) )
    & ( {$box} @ (qmltpeq(op(op(e3,e0),e0),op(e3,op(e0,e0)))) )
    & ( {$box} @ (qmltpeq(op(op(e3,e0),e1),op(e3,op(e0,e1)))) )
    & ( {$box} @ (qmltpeq(op(op(e3,e0),e2),op(e3,op(e0,e2)))) )
    & ( {$box} @ (qmltpeq(op(op(e3,e0),e3),op(e3,op(e0,e3)))) )
    & ( {$box} @ (qmltpeq(op(op(e3,e1),e0),op(e3,op(e1,e0)))) )
    & ( {$box} @ (qmltpeq(op(op(e3,e1),e1),op(e3,op(e1,e1)))) )
    & ( {$box} @ (qmltpeq(op(op(e3,e1),e2),op(e3,op(e1,e2)))) )
    & ( {$box} @ (qmltpeq(op(op(e3,e1),e3),op(e3,op(e1,e3)))) )
    & ( {$box} @ (qmltpeq(op(op(e3,e2),e0),op(e3,op(e2,e0)))) )
    & ( {$box} @ (qmltpeq(op(op(e3,e2),e1),op(e3,op(e2,e1)))) )
    & ( {$box} @ (qmltpeq(op(op(e3,e2),e2),op(e3,op(e2,e2)))) )
    & ( {$box} @ (qmltpeq(op(op(e3,e2),e3),op(e3,op(e2,e3)))) )
    & ( {$box} @ (qmltpeq(op(op(e3,e3),e0),op(e3,op(e3,e0)))) )
    & ( {$box} @ (qmltpeq(op(op(e3,e3),e1),op(e3,op(e3,e1)))) )
    & ( {$box} @ (qmltpeq(op(op(e3,e3),e2),op(e3,op(e3,e2)))) )
    & ( {$box} @ (qmltpeq(op(op(e3,e3),e3),op(e3,op(e3,e3)))) ) ) ).

tff(ax3,axiom-local,
    ( ( {$box} @ (qmltpeq(op(unit,e0),e0)) )
    & ( {$box} @ (qmltpeq(op(e0,unit),e0)) )
    & ( {$box} @ (qmltpeq(op(unit,e1),e1)) )
    & ( {$box} @ (qmltpeq(op(e1,unit),e1)) )
    & ( {$box} @ (qmltpeq(op(unit,e2),e2)) )
    & ( {$box} @ (qmltpeq(op(e2,unit),e2)) )
    & ( {$box} @ (qmltpeq(op(unit,e3),e3)) )
    & ( {$box} @ (qmltpeq(op(e3,unit),e3)) )
    & ( ( {$box} @ (qmltpeq(unit,e0)) )
      | ( {$box} @ (qmltpeq(unit,e1)) )
      | ( {$box} @ (qmltpeq(unit,e2)) )
      | ( {$box} @ (qmltpeq(unit,e3)) ) ) ) ).

tff(ax4,axiom-local,
    ( ( {$box} @ (qmltpeq(op(e0,inv(e0)),unit)) )
    & ( {$box} @ (qmltpeq(op(inv(e0),e0),unit)) )
    & ( {$box} @ (qmltpeq(op(e1,inv(e1)),unit)) )
    & ( {$box} @ (qmltpeq(op(inv(e1),e1),unit)) )
    & ( {$box} @ (qmltpeq(op(e2,inv(e2)),unit)) )
    & ( {$box} @ (qmltpeq(op(inv(e2),e2),unit)) )
    & ( {$box} @ (qmltpeq(op(e3,inv(e3)),unit)) )
    & ( {$box} @ (qmltpeq(op(inv(e3),e3),unit)) )
    & ( ( {$box} @ (qmltpeq(inv(e0),e0)) )
      | ( {$box} @ (qmltpeq(inv(e0),e1)) )
      | ( {$box} @ (qmltpeq(inv(e0),e2)) )
      | ( {$box} @ (qmltpeq(inv(e0),e3)) ) )
    & ( ( {$box} @ (qmltpeq(inv(e1),e0)) )
      | ( {$box} @ (qmltpeq(inv(e1),e1)) )
      | ( {$box} @ (qmltpeq(inv(e1),e2)) )
      | ( {$box} @ (qmltpeq(inv(e1),e3)) ) )
    & ( ( {$box} @ (qmltpeq(inv(e2),e0)) )
      | ( {$box} @ (qmltpeq(inv(e2),e1)) )
      | ( {$box} @ (qmltpeq(inv(e2),e2)) )
      | ( {$box} @ (qmltpeq(inv(e2),e3)) ) )
    & ( ( {$box} @ (qmltpeq(inv(e3),e0)) )
      | ( {$box} @ (qmltpeq(inv(e3),e1)) )
      | ( {$box} @ (qmltpeq(inv(e3),e2)) )
      | ( {$box} @ (qmltpeq(inv(e3),e3)) ) ) ) ).

tff(ax5,axiom-local,
    {$box} @ (qmltpeq(inv(unit),unit)) ).

tff(ax6,axiom-local,
    ( ( {$box} @ (qmltpeq(inv(inv(e0)),e0)) )
    & ( {$box} @ (qmltpeq(inv(inv(e1)),e1)) )
    & ( {$box} @ (qmltpeq(inv(inv(e2)),e2)) )
    & ( {$box} @ (qmltpeq(inv(inv(e3)),e3)) ) ) ).

tff(ax7,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv(e0),e0)) )
        => ( {$box} @ (qmltpeq(inv(e0),e0)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv(e0),e1)) )
        => ( {$box} @ (qmltpeq(inv(e1),e0)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv(e0),e2)) )
        => ( {$box} @ (qmltpeq(inv(e2),e0)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv(e0),e3)) )
        => ( {$box} @ (qmltpeq(inv(e3),e0)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv(e1),e0)) )
        => ( {$box} @ (qmltpeq(inv(e0),e1)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv(e1),e1)) )
        => ( {$box} @ (qmltpeq(inv(e1),e1)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv(e1),e2)) )
        => ( {$box} @ (qmltpeq(inv(e2),e1)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv(e1),e3)) )
        => ( {$box} @ (qmltpeq(inv(e3),e1)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv(e2),e0)) )
        => ( {$box} @ (qmltpeq(inv(e0),e2)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv(e2),e1)) )
        => ( {$box} @ (qmltpeq(inv(e1),e2)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv(e2),e2)) )
        => ( {$box} @ (qmltpeq(inv(e2),e2)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv(e2),e3)) )
        => ( {$box} @ (qmltpeq(inv(e3),e2)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv(e3),e0)) )
        => ( {$box} @ (qmltpeq(inv(e0),e3)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv(e3),e1)) )
        => ( {$box} @ (qmltpeq(inv(e1),e3)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv(e3),e2)) )
        => ( {$box} @ (qmltpeq(inv(e2),e3)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv(e3),e3)) )
        => ( {$box} @ (qmltpeq(inv(e3),e3)) ) )) ) ) ).

tff(ax8,axiom-local,
    ( ( {$box}
      @ (~ ( {$box} @ (qmltpeq(inv(e0),inv(e1))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(inv(e0),inv(e2))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(inv(e0),inv(e3))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(inv(e1),inv(e2))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(inv(e1),inv(e3))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(inv(e2),inv(e3))) )) ) ) ).

tff(ax9,axiom-local,
    ( ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e0,e0),op(e1,e0))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e0,e0),op(e2,e0))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e0,e0),op(e3,e0))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e1,e0),op(e2,e0))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e1,e0),op(e3,e0))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e2,e0),op(e3,e0))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e0,e1),op(e1,e1))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e0,e1),op(e2,e1))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e0,e1),op(e3,e1))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e1,e1),op(e2,e1))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e1,e1),op(e3,e1))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e2,e1),op(e3,e1))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e0,e2),op(e1,e2))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e0,e2),op(e2,e2))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e0,e2),op(e3,e2))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e1,e2),op(e2,e2))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e1,e2),op(e3,e2))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e2,e2),op(e3,e2))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e0,e3),op(e1,e3))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e0,e3),op(e2,e3))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e0,e3),op(e3,e3))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e1,e3),op(e2,e3))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e1,e3),op(e3,e3))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e2,e3),op(e3,e3))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e0,e0),op(e0,e1))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e0,e0),op(e0,e2))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e0,e0),op(e0,e3))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e0,e1),op(e0,e2))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e0,e1),op(e0,e3))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e0,e2),op(e0,e3))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e1,e0),op(e1,e1))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e1,e0),op(e1,e2))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e1,e0),op(e1,e3))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e1,e1),op(e1,e2))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e1,e1),op(e1,e3))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e1,e2),op(e1,e3))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e2,e0),op(e2,e1))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e2,e0),op(e2,e2))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e2,e0),op(e2,e3))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e2,e1),op(e2,e2))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e2,e1),op(e2,e3))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e2,e2),op(e2,e3))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e3,e0),op(e3,e1))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e3,e0),op(e3,e2))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e3,e0),op(e3,e3))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e3,e1),op(e3,e2))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e3,e1),op(e3,e3))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op(e3,e2),op(e3,e3))) )) ) ) ).

tff(ax10,axiom-local,
    ( ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e0,e1)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e0,e2)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e0,e3)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e1,e2)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e1,e3)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e2,e3)) )) ) ) ).

tff(ax11,axiom-local,
    ( ( ( {$box} @ (qmltpeq(op(e0,e0),e0)) )
      & ( {$box} @ (qmltpeq(op(e1,e1),e0)) )
      & ( {$box} @ (qmltpeq(op(e2,e2),e0)) )
      & ( {$box} @ (qmltpeq(op(e3,e3),e0)) ) )
    | ( ( {$box} @ (qmltpeq(op(e0,e0),e1)) )
      & ( {$box} @ (qmltpeq(op(e1,e1),e1)) )
      & ( {$box} @ (qmltpeq(op(e2,e2),e1)) )
      & ( {$box} @ (qmltpeq(op(e3,e3),e1)) ) )
    | ( ( {$box} @ (qmltpeq(op(e0,e0),e2)) )
      & ( {$box} @ (qmltpeq(op(e1,e1),e2)) )
      & ( {$box} @ (qmltpeq(op(e2,e2),e2)) )
      & ( {$box} @ (qmltpeq(op(e3,e3),e2)) ) )
    | ( ( {$box} @ (qmltpeq(op(e0,e0),e3)) )
      & ( {$box} @ (qmltpeq(op(e1,e1),e3)) )
      & ( {$box} @ (qmltpeq(op(e2,e2),e3)) )
      & ( {$box} @ (qmltpeq(op(e3,e3),e3)) ) ) ) ).

tff(ax12,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e0,op(e3,e3))) )
         & ( {$box} @ (qmltpeq(e1,op(e2,e3))) ) )) ) ).

tff(ax13,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e0,op(e2,e2))) )
         & ( {$box} @ (qmltpeq(e1,op(e3,e2))) ) )) ) ).

tff(ax14,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e0,op(e3,e3))) )
         & ( {$box} @ (qmltpeq(e2,op(e1,e3))) ) )) ) ).

tff(ax15,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e0,op(e1,e1))) )
         & ( {$box} @ (qmltpeq(e2,op(e3,e1))) ) )) ) ).

tff(ax16,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e0,op(e2,e2))) )
         & ( {$box} @ (qmltpeq(e3,op(e1,e2))) ) )) ) ).

tff(ax17,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e0,op(e1,e1))) )
         & ( {$box} @ (qmltpeq(e3,op(e2,e1))) ) )) ) ).

tff(ax18,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e1,op(e3,e3))) )
         & ( {$box} @ (qmltpeq(e0,op(e2,e3))) ) )) ) ).

tff(ax19,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e1,op(e2,e2))) )
         & ( {$box} @ (qmltpeq(e0,op(e3,e2))) ) )) ) ).

tff(ax20,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e1,op(e3,e3))) )
         & ( {$box} @ (qmltpeq(e2,op(e0,e3))) ) )) ) ).

tff(ax21,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e1,op(e0,e0))) )
         & ( {$box} @ (qmltpeq(e2,op(e3,e0))) ) )) ) ).

tff(ax22,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e1,op(e2,e2))) )
         & ( {$box} @ (qmltpeq(e3,op(e0,e2))) ) )) ) ).

tff(ax23,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e1,op(e0,e0))) )
         & ( {$box} @ (qmltpeq(e3,op(e2,e0))) ) )) ) ).

tff(ax24,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e2,op(e3,e3))) )
         & ( {$box} @ (qmltpeq(e0,op(e1,e3))) ) )) ) ).

tff(ax25,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e2,op(e1,e1))) )
         & ( {$box} @ (qmltpeq(e0,op(e3,e1))) ) )) ) ).

tff(ax26,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e2,op(e3,e3))) )
         & ( {$box} @ (qmltpeq(e1,op(e0,e3))) ) )) ) ).

tff(ax27,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e2,op(e0,e0))) )
         & ( {$box} @ (qmltpeq(e1,op(e3,e0))) ) )) ) ).

tff(ax28,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e2,op(e1,e1))) )
         & ( {$box} @ (qmltpeq(e3,op(e0,e1))) ) )) ) ).

tff(ax29,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e2,op(e0,e0))) )
         & ( {$box} @ (qmltpeq(e3,op(e1,e0))) ) )) ) ).

tff(ax30,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e3,op(e2,e2))) )
         & ( {$box} @ (qmltpeq(e0,op(e1,e2))) ) )) ) ).

tff(ax31,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e3,op(e1,e1))) )
         & ( {$box} @ (qmltpeq(e0,op(e2,e1))) ) )) ) ).

tff(ax32,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e3,op(e2,e2))) )
         & ( {$box} @ (qmltpeq(e1,op(e0,e2))) ) )) ) ).

tff(ax33,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e3,op(e0,e0))) )
         & ( {$box} @ (qmltpeq(e1,op(e2,e0))) ) )) ) ).

tff(ax34,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e3,op(e1,e1))) )
         & ( {$box} @ (qmltpeq(e2,op(e0,e1))) ) )) ) ).

tff(ax35,axiom-local,
    ( {$box}
    @ (~ ( ( {$box} @ (qmltpeq(e3,op(e0,e0))) )
         & ( {$box} @ (qmltpeq(e2,op(e1,e0))) ) )) ) ).

%------------------------------------------------------------------------------
