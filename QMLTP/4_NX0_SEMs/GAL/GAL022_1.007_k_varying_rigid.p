%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : General Algebra
% Problem  : Groups 4: REPRESENTATIVES-SATISFY-PROPS-PROBLEM-2
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP ALG022+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GAL022+1 [QMLTP]
%          : GAL022_1.007_k_varying_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   19 (   0 unt;   8 typ;   0 def)
%            Number of atoms       :  709 (   0 equ)
%            Maximal formula atoms :  330 (  64 avg)
%            Number of connectives :  460 (   7   ~;  66   |; 137   &)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%                                         ( 245 {}@;   0 {#};   0 {.})
%            Maximal formula depth :  106 (  14 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of FOOLs       :  245 ( 245 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    5 (   3   >;   2   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :    7 (   7 usr;   5 con; 0-2 aty)
%            Number of variables   :   14 (;  14   !;   0   ?;  14   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_varying_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $varying,
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

tff(ax2,axiom-local,
    ( ( {$box} @ (qmltpeq(op(e0,e0),e0)) )
    & ( {$box} @ (qmltpeq(op(e0,e1),e1)) )
    & ( {$box} @ (qmltpeq(op(e0,e2),e2)) )
    & ( {$box} @ (qmltpeq(op(e0,e3),e3)) )
    & ( {$box} @ (qmltpeq(op(e1,e0),e1)) )
    & ( {$box} @ (qmltpeq(op(e1,e1),e3)) )
    & ( {$box} @ (qmltpeq(op(e1,e2),e0)) )
    & ( {$box} @ (qmltpeq(op(e1,e3),e2)) )
    & ( {$box} @ (qmltpeq(op(e2,e0),e2)) )
    & ( {$box} @ (qmltpeq(op(e2,e1),e0)) )
    & ( {$box} @ (qmltpeq(op(e2,e2),e3)) )
    & ( {$box} @ (qmltpeq(op(e2,e3),e1)) )
    & ( {$box} @ (qmltpeq(op(e3,e0),e3)) )
    & ( {$box} @ (qmltpeq(op(e3,e1),e2)) )
    & ( {$box} @ (qmltpeq(op(e3,e2),e1)) )
    & ( {$box} @ (qmltpeq(op(e3,e3),e0)) ) ) ).

tff(ax3,axiom-local,
    {$box} @ (qmltpeq(unit,e0)) ).

tff(ax4,axiom-local,
    ( ( {$box} @ (qmltpeq(inv(e0),e0)) )
    & ( {$box} @ (qmltpeq(inv(e1),e2)) )
    & ( {$box} @ (qmltpeq(inv(e2),e1)) )
    & ( {$box} @ (qmltpeq(inv(e3),e3)) ) ) ).

tff(co1,conjecture,
    ( ( {$box}
      @ (~ ( ( ( {$box} @ (qmltpeq(op(e0,e0),e0)) )
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
             & ( {$box} @ (qmltpeq(op(e3,e3),e3)) ) ) )) )
    & ( ( {$box} @ (qmltpeq(op(e0,e0),e0)) )
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
      | ( {$box} @ (qmltpeq(op(e3,e3),e3)) ) )
    & ( {$box} @ (qmltpeq(op(op(e0,e0),e0),op(e0,op(e0,e0)))) )
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
    & ( {$box} @ (qmltpeq(op(op(e3,e3),e3),op(e3,op(e3,e3)))) )
    & ( {$box} @ (qmltpeq(op(unit,e0),e0)) )
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
      | ( {$box} @ (qmltpeq(unit,e3)) ) )
    & ( {$box} @ (qmltpeq(op(e0,inv(e0)),unit)) )
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

%------------------------------------------------------------------------------
