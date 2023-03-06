%------------------------------------------------------------------------------
% File     : GAL015_1.035 : TPTP v9.0.0. Released v9.0.0.
% Domain   : General Algebra
% Problem  : Groups 4: CPROPS-ISO-COMPLETE-PROBLEM-1
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP ALG015+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GAL015+1 [QMLTP]
%          : GAL015_1.035_s5_varying_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   86 (   0 unt;  27 typ;   0 def)
%            Number of atoms       : 3612 (   0 equ)
%            Maximal formula atoms :  768 (  61 avg)
%            Number of connectives : 2407 ( 136   ~; 287   |; 650   &)
%                                         (   0 <=>;  52  =>;   0  <=;   0 <~>)
%                                         (1282 {}@;   0 {#};   0 {.})
%            Maximal formula depth :   65 (  10 avg)
%            Maximal term depth    :    3 (   2 avg)
%            Number of FOOLs       : 1282 (1282 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   20 (  17   >;   3   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   26 (  26 usr;  10 con; 0-2 aty)
%            Number of variables   :   46 (;  46   !;   0   ?;  46   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_varying_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $varying,
        $modalities == $modal_system_S5 ] ).

tff(e11_decl,type,
    e11: $i ).

tff(e10_decl,type,
    e10: $i ).

tff(e13_decl,type,
    e13: $i ).

tff(e12_decl,type,
    e12: $i ).

tff(e20_decl,type,
    e20: $i ).

tff(e22_decl,type,
    e22: $i ).

tff(e21_decl,type,
    e21: $i ).

tff(e23_decl,type,
    e23: $i ).

tff(unit1_decl,type,
    unit1: $i ).

tff(unit2_decl,type,
    unit2: $i ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(h10_decl,type,
    h10: $i > $i ).

tff(h12_decl,type,
    h12: $i > $i ).

tff(h1_decl,type,
    h1: $i > $i ).

tff(h11_decl,type,
    h11: $i > $i ).

tff(h2_decl,type,
    h2: $i > $i ).

tff(h3_decl,type,
    h3: $i > $i ).

tff(h4_decl,type,
    h4: $i > $i ).

tff(h5_decl,type,
    h5: $i > $i ).

tff(h6_decl,type,
    h6: $i > $i ).

tff(h7_decl,type,
    h7: $i > $i ).

tff(h8_decl,type,
    h8: $i > $i ).

tff(inv2_decl,type,
    inv2: $i > $i ).

tff(op2_decl,type,
    op2: ( $i * $i ) > $i ).

tff(h9_decl,type,
    h9: $i > $i ).

tff(inv1_decl,type,
    inv1: $i > $i ).

tff(op1_decl,type,
    op1: ( $i * $i ) > $i ).

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

tff(h1_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(h1(A),h1(B))) ) )) )) )) ) ).

tff(h10_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(h10(A),h10(B))) ) )) )) )) ) ).

tff(h11_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(h11(A),h11(B))) ) )) )) )) ) ).

tff(h12_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(h12(A),h12(B))) ) )) )) )) ) ).

tff(h2_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(h2(A),h2(B))) ) )) )) )) ) ).

tff(h3_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(h3(A),h3(B))) ) )) )) )) ) ).

tff(h4_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(h4(A),h4(B))) ) )) )) )) ) ).

tff(h5_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(h5(A),h5(B))) ) )) )) )) ) ).

tff(h6_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(h6(A),h6(B))) ) )) )) )) ) ).

tff(h7_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(h7(A),h7(B))) ) )) )) )) ) ).

tff(h8_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(h8(A),h8(B))) ) )) )) )) ) ).

tff(h9_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(h9(A),h9(B))) ) )) )) )) ) ).

tff(inv1_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(inv1(A),inv1(B))) ) )) )) )) ) ).

tff(inv2_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(inv2(A),inv2(B))) ) )) )) )) ) ).

tff(op1_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(op1(A,C),op1(B,C))) ) )) )) )) )) ) ).

tff(op1_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(op1(C,A),op1(C,B))) ) )) )) )) )) ) ).

tff(op2_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(op2(A,C),op2(B,C))) ) )) )) )) )) ) ).

tff(op2_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(op2(C,A),op2(C,B))) ) )) )) )) )) ) ).

tff(ax1,axiom-local,
    ( ( ( {$box} @ (qmltpeq(op1(e10,e10),e10)) )
      | ( {$box} @ (qmltpeq(op1(e10,e10),e11)) )
      | ( {$box} @ (qmltpeq(op1(e10,e10),e12)) )
      | ( {$box} @ (qmltpeq(op1(e10,e10),e13)) ) )
    & ( ( {$box} @ (qmltpeq(op1(e10,e11),e10)) )
      | ( {$box} @ (qmltpeq(op1(e10,e11),e11)) )
      | ( {$box} @ (qmltpeq(op1(e10,e11),e12)) )
      | ( {$box} @ (qmltpeq(op1(e10,e11),e13)) ) )
    & ( ( {$box} @ (qmltpeq(op1(e10,e12),e10)) )
      | ( {$box} @ (qmltpeq(op1(e10,e12),e11)) )
      | ( {$box} @ (qmltpeq(op1(e10,e12),e12)) )
      | ( {$box} @ (qmltpeq(op1(e10,e12),e13)) ) )
    & ( ( {$box} @ (qmltpeq(op1(e10,e13),e10)) )
      | ( {$box} @ (qmltpeq(op1(e10,e13),e11)) )
      | ( {$box} @ (qmltpeq(op1(e10,e13),e12)) )
      | ( {$box} @ (qmltpeq(op1(e10,e13),e13)) ) )
    & ( ( {$box} @ (qmltpeq(op1(e11,e10),e10)) )
      | ( {$box} @ (qmltpeq(op1(e11,e10),e11)) )
      | ( {$box} @ (qmltpeq(op1(e11,e10),e12)) )
      | ( {$box} @ (qmltpeq(op1(e11,e10),e13)) ) )
    & ( ( {$box} @ (qmltpeq(op1(e11,e11),e10)) )
      | ( {$box} @ (qmltpeq(op1(e11,e11),e11)) )
      | ( {$box} @ (qmltpeq(op1(e11,e11),e12)) )
      | ( {$box} @ (qmltpeq(op1(e11,e11),e13)) ) )
    & ( ( {$box} @ (qmltpeq(op1(e11,e12),e10)) )
      | ( {$box} @ (qmltpeq(op1(e11,e12),e11)) )
      | ( {$box} @ (qmltpeq(op1(e11,e12),e12)) )
      | ( {$box} @ (qmltpeq(op1(e11,e12),e13)) ) )
    & ( ( {$box} @ (qmltpeq(op1(e11,e13),e10)) )
      | ( {$box} @ (qmltpeq(op1(e11,e13),e11)) )
      | ( {$box} @ (qmltpeq(op1(e11,e13),e12)) )
      | ( {$box} @ (qmltpeq(op1(e11,e13),e13)) ) )
    & ( ( {$box} @ (qmltpeq(op1(e12,e10),e10)) )
      | ( {$box} @ (qmltpeq(op1(e12,e10),e11)) )
      | ( {$box} @ (qmltpeq(op1(e12,e10),e12)) )
      | ( {$box} @ (qmltpeq(op1(e12,e10),e13)) ) )
    & ( ( {$box} @ (qmltpeq(op1(e12,e11),e10)) )
      | ( {$box} @ (qmltpeq(op1(e12,e11),e11)) )
      | ( {$box} @ (qmltpeq(op1(e12,e11),e12)) )
      | ( {$box} @ (qmltpeq(op1(e12,e11),e13)) ) )
    & ( ( {$box} @ (qmltpeq(op1(e12,e12),e10)) )
      | ( {$box} @ (qmltpeq(op1(e12,e12),e11)) )
      | ( {$box} @ (qmltpeq(op1(e12,e12),e12)) )
      | ( {$box} @ (qmltpeq(op1(e12,e12),e13)) ) )
    & ( ( {$box} @ (qmltpeq(op1(e12,e13),e10)) )
      | ( {$box} @ (qmltpeq(op1(e12,e13),e11)) )
      | ( {$box} @ (qmltpeq(op1(e12,e13),e12)) )
      | ( {$box} @ (qmltpeq(op1(e12,e13),e13)) ) )
    & ( ( {$box} @ (qmltpeq(op1(e13,e10),e10)) )
      | ( {$box} @ (qmltpeq(op1(e13,e10),e11)) )
      | ( {$box} @ (qmltpeq(op1(e13,e10),e12)) )
      | ( {$box} @ (qmltpeq(op1(e13,e10),e13)) ) )
    & ( ( {$box} @ (qmltpeq(op1(e13,e11),e10)) )
      | ( {$box} @ (qmltpeq(op1(e13,e11),e11)) )
      | ( {$box} @ (qmltpeq(op1(e13,e11),e12)) )
      | ( {$box} @ (qmltpeq(op1(e13,e11),e13)) ) )
    & ( ( {$box} @ (qmltpeq(op1(e13,e12),e10)) )
      | ( {$box} @ (qmltpeq(op1(e13,e12),e11)) )
      | ( {$box} @ (qmltpeq(op1(e13,e12),e12)) )
      | ( {$box} @ (qmltpeq(op1(e13,e12),e13)) ) )
    & ( ( {$box} @ (qmltpeq(op1(e13,e13),e10)) )
      | ( {$box} @ (qmltpeq(op1(e13,e13),e11)) )
      | ( {$box} @ (qmltpeq(op1(e13,e13),e12)) )
      | ( {$box} @ (qmltpeq(op1(e13,e13),e13)) ) ) ) ).

tff(ax2,axiom-local,
    ( ( {$box} @ (qmltpeq(op1(op1(e10,e10),e10),op1(e10,op1(e10,e10)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e10,e10),e11),op1(e10,op1(e10,e11)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e10,e10),e12),op1(e10,op1(e10,e12)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e10,e10),e13),op1(e10,op1(e10,e13)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e10,e11),e10),op1(e10,op1(e11,e10)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e10,e11),e11),op1(e10,op1(e11,e11)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e10,e11),e12),op1(e10,op1(e11,e12)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e10,e11),e13),op1(e10,op1(e11,e13)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e10,e12),e10),op1(e10,op1(e12,e10)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e10,e12),e11),op1(e10,op1(e12,e11)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e10,e12),e12),op1(e10,op1(e12,e12)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e10,e12),e13),op1(e10,op1(e12,e13)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e10,e13),e10),op1(e10,op1(e13,e10)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e10,e13),e11),op1(e10,op1(e13,e11)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e10,e13),e12),op1(e10,op1(e13,e12)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e10,e13),e13),op1(e10,op1(e13,e13)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e11,e10),e10),op1(e11,op1(e10,e10)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e11,e10),e11),op1(e11,op1(e10,e11)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e11,e10),e12),op1(e11,op1(e10,e12)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e11,e10),e13),op1(e11,op1(e10,e13)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e11,e11),e10),op1(e11,op1(e11,e10)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e11,e11),e11),op1(e11,op1(e11,e11)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e11,e11),e12),op1(e11,op1(e11,e12)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e11,e11),e13),op1(e11,op1(e11,e13)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e11,e12),e10),op1(e11,op1(e12,e10)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e11,e12),e11),op1(e11,op1(e12,e11)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e11,e12),e12),op1(e11,op1(e12,e12)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e11,e12),e13),op1(e11,op1(e12,e13)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e11,e13),e10),op1(e11,op1(e13,e10)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e11,e13),e11),op1(e11,op1(e13,e11)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e11,e13),e12),op1(e11,op1(e13,e12)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e11,e13),e13),op1(e11,op1(e13,e13)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e12,e10),e10),op1(e12,op1(e10,e10)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e12,e10),e11),op1(e12,op1(e10,e11)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e12,e10),e12),op1(e12,op1(e10,e12)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e12,e10),e13),op1(e12,op1(e10,e13)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e12,e11),e10),op1(e12,op1(e11,e10)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e12,e11),e11),op1(e12,op1(e11,e11)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e12,e11),e12),op1(e12,op1(e11,e12)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e12,e11),e13),op1(e12,op1(e11,e13)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e12,e12),e10),op1(e12,op1(e12,e10)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e12,e12),e11),op1(e12,op1(e12,e11)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e12,e12),e12),op1(e12,op1(e12,e12)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e12,e12),e13),op1(e12,op1(e12,e13)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e12,e13),e10),op1(e12,op1(e13,e10)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e12,e13),e11),op1(e12,op1(e13,e11)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e12,e13),e12),op1(e12,op1(e13,e12)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e12,e13),e13),op1(e12,op1(e13,e13)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e13,e10),e10),op1(e13,op1(e10,e10)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e13,e10),e11),op1(e13,op1(e10,e11)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e13,e10),e12),op1(e13,op1(e10,e12)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e13,e10),e13),op1(e13,op1(e10,e13)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e13,e11),e10),op1(e13,op1(e11,e10)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e13,e11),e11),op1(e13,op1(e11,e11)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e13,e11),e12),op1(e13,op1(e11,e12)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e13,e11),e13),op1(e13,op1(e11,e13)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e13,e12),e10),op1(e13,op1(e12,e10)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e13,e12),e11),op1(e13,op1(e12,e11)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e13,e12),e12),op1(e13,op1(e12,e12)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e13,e12),e13),op1(e13,op1(e12,e13)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e13,e13),e10),op1(e13,op1(e13,e10)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e13,e13),e11),op1(e13,op1(e13,e11)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e13,e13),e12),op1(e13,op1(e13,e12)))) )
    & ( {$box} @ (qmltpeq(op1(op1(e13,e13),e13),op1(e13,op1(e13,e13)))) ) ) ).

tff(ax3,axiom-local,
    ( ( {$box} @ (qmltpeq(op1(unit1,e10),e10)) )
    & ( {$box} @ (qmltpeq(op1(e10,unit1),e10)) )
    & ( {$box} @ (qmltpeq(op1(unit1,e11),e11)) )
    & ( {$box} @ (qmltpeq(op1(e11,unit1),e11)) )
    & ( {$box} @ (qmltpeq(op1(unit1,e12),e12)) )
    & ( {$box} @ (qmltpeq(op1(e12,unit1),e12)) )
    & ( {$box} @ (qmltpeq(op1(unit1,e13),e13)) )
    & ( {$box} @ (qmltpeq(op1(e13,unit1),e13)) )
    & ( ( {$box} @ (qmltpeq(unit1,e10)) )
      | ( {$box} @ (qmltpeq(unit1,e11)) )
      | ( {$box} @ (qmltpeq(unit1,e12)) )
      | ( {$box} @ (qmltpeq(unit1,e13)) ) ) ) ).

tff(ax4,axiom-local,
    ( ( {$box} @ (qmltpeq(op1(e10,inv1(e10)),unit1)) )
    & ( {$box} @ (qmltpeq(op1(inv1(e10),e10),unit1)) )
    & ( {$box} @ (qmltpeq(op1(e11,inv1(e11)),unit1)) )
    & ( {$box} @ (qmltpeq(op1(inv1(e11),e11),unit1)) )
    & ( {$box} @ (qmltpeq(op1(e12,inv1(e12)),unit1)) )
    & ( {$box} @ (qmltpeq(op1(inv1(e12),e12),unit1)) )
    & ( {$box} @ (qmltpeq(op1(e13,inv1(e13)),unit1)) )
    & ( {$box} @ (qmltpeq(op1(inv1(e13),e13),unit1)) )
    & ( ( {$box} @ (qmltpeq(inv1(e10),e10)) )
      | ( {$box} @ (qmltpeq(inv1(e10),e11)) )
      | ( {$box} @ (qmltpeq(inv1(e10),e12)) )
      | ( {$box} @ (qmltpeq(inv1(e10),e13)) ) )
    & ( ( {$box} @ (qmltpeq(inv1(e11),e10)) )
      | ( {$box} @ (qmltpeq(inv1(e11),e11)) )
      | ( {$box} @ (qmltpeq(inv1(e11),e12)) )
      | ( {$box} @ (qmltpeq(inv1(e11),e13)) ) )
    & ( ( {$box} @ (qmltpeq(inv1(e12),e10)) )
      | ( {$box} @ (qmltpeq(inv1(e12),e11)) )
      | ( {$box} @ (qmltpeq(inv1(e12),e12)) )
      | ( {$box} @ (qmltpeq(inv1(e12),e13)) ) )
    & ( ( {$box} @ (qmltpeq(inv1(e13),e10)) )
      | ( {$box} @ (qmltpeq(inv1(e13),e11)) )
      | ( {$box} @ (qmltpeq(inv1(e13),e12)) )
      | ( {$box} @ (qmltpeq(inv1(e13),e13)) ) ) ) ).

tff(ax5,axiom-local,
    ( ( ( {$box} @ (qmltpeq(op2(e20,e20),e20)) )
      | ( {$box} @ (qmltpeq(op2(e20,e20),e21)) )
      | ( {$box} @ (qmltpeq(op2(e20,e20),e22)) )
      | ( {$box} @ (qmltpeq(op2(e20,e20),e23)) ) )
    & ( ( {$box} @ (qmltpeq(op2(e20,e21),e20)) )
      | ( {$box} @ (qmltpeq(op2(e20,e21),e21)) )
      | ( {$box} @ (qmltpeq(op2(e20,e21),e22)) )
      | ( {$box} @ (qmltpeq(op2(e20,e21),e23)) ) )
    & ( ( {$box} @ (qmltpeq(op2(e20,e22),e20)) )
      | ( {$box} @ (qmltpeq(op2(e20,e22),e21)) )
      | ( {$box} @ (qmltpeq(op2(e20,e22),e22)) )
      | ( {$box} @ (qmltpeq(op2(e20,e22),e23)) ) )
    & ( ( {$box} @ (qmltpeq(op2(e20,e23),e20)) )
      | ( {$box} @ (qmltpeq(op2(e20,e23),e21)) )
      | ( {$box} @ (qmltpeq(op2(e20,e23),e22)) )
      | ( {$box} @ (qmltpeq(op2(e20,e23),e23)) ) )
    & ( ( {$box} @ (qmltpeq(op2(e21,e20),e20)) )
      | ( {$box} @ (qmltpeq(op2(e21,e20),e21)) )
      | ( {$box} @ (qmltpeq(op2(e21,e20),e22)) )
      | ( {$box} @ (qmltpeq(op2(e21,e20),e23)) ) )
    & ( ( {$box} @ (qmltpeq(op2(e21,e21),e20)) )
      | ( {$box} @ (qmltpeq(op2(e21,e21),e21)) )
      | ( {$box} @ (qmltpeq(op2(e21,e21),e22)) )
      | ( {$box} @ (qmltpeq(op2(e21,e21),e23)) ) )
    & ( ( {$box} @ (qmltpeq(op2(e21,e22),e20)) )
      | ( {$box} @ (qmltpeq(op2(e21,e22),e21)) )
      | ( {$box} @ (qmltpeq(op2(e21,e22),e22)) )
      | ( {$box} @ (qmltpeq(op2(e21,e22),e23)) ) )
    & ( ( {$box} @ (qmltpeq(op2(e21,e23),e20)) )
      | ( {$box} @ (qmltpeq(op2(e21,e23),e21)) )
      | ( {$box} @ (qmltpeq(op2(e21,e23),e22)) )
      | ( {$box} @ (qmltpeq(op2(e21,e23),e23)) ) )
    & ( ( {$box} @ (qmltpeq(op2(e22,e20),e20)) )
      | ( {$box} @ (qmltpeq(op2(e22,e20),e21)) )
      | ( {$box} @ (qmltpeq(op2(e22,e20),e22)) )
      | ( {$box} @ (qmltpeq(op2(e22,e20),e23)) ) )
    & ( ( {$box} @ (qmltpeq(op2(e22,e21),e20)) )
      | ( {$box} @ (qmltpeq(op2(e22,e21),e21)) )
      | ( {$box} @ (qmltpeq(op2(e22,e21),e22)) )
      | ( {$box} @ (qmltpeq(op2(e22,e21),e23)) ) )
    & ( ( {$box} @ (qmltpeq(op2(e22,e22),e20)) )
      | ( {$box} @ (qmltpeq(op2(e22,e22),e21)) )
      | ( {$box} @ (qmltpeq(op2(e22,e22),e22)) )
      | ( {$box} @ (qmltpeq(op2(e22,e22),e23)) ) )
    & ( ( {$box} @ (qmltpeq(op2(e22,e23),e20)) )
      | ( {$box} @ (qmltpeq(op2(e22,e23),e21)) )
      | ( {$box} @ (qmltpeq(op2(e22,e23),e22)) )
      | ( {$box} @ (qmltpeq(op2(e22,e23),e23)) ) )
    & ( ( {$box} @ (qmltpeq(op2(e23,e20),e20)) )
      | ( {$box} @ (qmltpeq(op2(e23,e20),e21)) )
      | ( {$box} @ (qmltpeq(op2(e23,e20),e22)) )
      | ( {$box} @ (qmltpeq(op2(e23,e20),e23)) ) )
    & ( ( {$box} @ (qmltpeq(op2(e23,e21),e20)) )
      | ( {$box} @ (qmltpeq(op2(e23,e21),e21)) )
      | ( {$box} @ (qmltpeq(op2(e23,e21),e22)) )
      | ( {$box} @ (qmltpeq(op2(e23,e21),e23)) ) )
    & ( ( {$box} @ (qmltpeq(op2(e23,e22),e20)) )
      | ( {$box} @ (qmltpeq(op2(e23,e22),e21)) )
      | ( {$box} @ (qmltpeq(op2(e23,e22),e22)) )
      | ( {$box} @ (qmltpeq(op2(e23,e22),e23)) ) )
    & ( ( {$box} @ (qmltpeq(op2(e23,e23),e20)) )
      | ( {$box} @ (qmltpeq(op2(e23,e23),e21)) )
      | ( {$box} @ (qmltpeq(op2(e23,e23),e22)) )
      | ( {$box} @ (qmltpeq(op2(e23,e23),e23)) ) ) ) ).

tff(ax6,axiom-local,
    ( ( {$box} @ (qmltpeq(op2(op2(e20,e20),e20),op2(e20,op2(e20,e20)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e20,e20),e21),op2(e20,op2(e20,e21)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e20,e20),e22),op2(e20,op2(e20,e22)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e20,e20),e23),op2(e20,op2(e20,e23)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e20,e21),e20),op2(e20,op2(e21,e20)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e20,e21),e21),op2(e20,op2(e21,e21)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e20,e21),e22),op2(e20,op2(e21,e22)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e20,e21),e23),op2(e20,op2(e21,e23)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e20,e22),e20),op2(e20,op2(e22,e20)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e20,e22),e21),op2(e20,op2(e22,e21)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e20,e22),e22),op2(e20,op2(e22,e22)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e20,e22),e23),op2(e20,op2(e22,e23)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e20,e23),e20),op2(e20,op2(e23,e20)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e20,e23),e21),op2(e20,op2(e23,e21)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e20,e23),e22),op2(e20,op2(e23,e22)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e20,e23),e23),op2(e20,op2(e23,e23)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e21,e20),e20),op2(e21,op2(e20,e20)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e21,e20),e21),op2(e21,op2(e20,e21)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e21,e20),e22),op2(e21,op2(e20,e22)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e21,e20),e23),op2(e21,op2(e20,e23)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e21,e21),e20),op2(e21,op2(e21,e20)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e21,e21),e21),op2(e21,op2(e21,e21)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e21,e21),e22),op2(e21,op2(e21,e22)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e21,e21),e23),op2(e21,op2(e21,e23)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e21,e22),e20),op2(e21,op2(e22,e20)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e21,e22),e21),op2(e21,op2(e22,e21)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e21,e22),e22),op2(e21,op2(e22,e22)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e21,e22),e23),op2(e21,op2(e22,e23)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e21,e23),e20),op2(e21,op2(e23,e20)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e21,e23),e21),op2(e21,op2(e23,e21)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e21,e23),e22),op2(e21,op2(e23,e22)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e21,e23),e23),op2(e21,op2(e23,e23)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e22,e20),e20),op2(e22,op2(e20,e20)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e22,e20),e21),op2(e22,op2(e20,e21)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e22,e20),e22),op2(e22,op2(e20,e22)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e22,e20),e23),op2(e22,op2(e20,e23)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e22,e21),e20),op2(e22,op2(e21,e20)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e22,e21),e21),op2(e22,op2(e21,e21)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e22,e21),e22),op2(e22,op2(e21,e22)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e22,e21),e23),op2(e22,op2(e21,e23)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e22,e22),e20),op2(e22,op2(e22,e20)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e22,e22),e21),op2(e22,op2(e22,e21)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e22,e22),e22),op2(e22,op2(e22,e22)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e22,e22),e23),op2(e22,op2(e22,e23)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e22,e23),e20),op2(e22,op2(e23,e20)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e22,e23),e21),op2(e22,op2(e23,e21)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e22,e23),e22),op2(e22,op2(e23,e22)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e22,e23),e23),op2(e22,op2(e23,e23)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e23,e20),e20),op2(e23,op2(e20,e20)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e23,e20),e21),op2(e23,op2(e20,e21)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e23,e20),e22),op2(e23,op2(e20,e22)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e23,e20),e23),op2(e23,op2(e20,e23)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e23,e21),e20),op2(e23,op2(e21,e20)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e23,e21),e21),op2(e23,op2(e21,e21)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e23,e21),e22),op2(e23,op2(e21,e22)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e23,e21),e23),op2(e23,op2(e21,e23)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e23,e22),e20),op2(e23,op2(e22,e20)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e23,e22),e21),op2(e23,op2(e22,e21)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e23,e22),e22),op2(e23,op2(e22,e22)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e23,e22),e23),op2(e23,op2(e22,e23)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e23,e23),e20),op2(e23,op2(e23,e20)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e23,e23),e21),op2(e23,op2(e23,e21)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e23,e23),e22),op2(e23,op2(e23,e22)))) )
    & ( {$box} @ (qmltpeq(op2(op2(e23,e23),e23),op2(e23,op2(e23,e23)))) ) ) ).

tff(ax7,axiom-local,
    ( ( {$box} @ (qmltpeq(op2(unit2,e20),e20)) )
    & ( {$box} @ (qmltpeq(op2(e20,unit2),e20)) )
    & ( {$box} @ (qmltpeq(op2(unit2,e21),e21)) )
    & ( {$box} @ (qmltpeq(op2(e21,unit2),e21)) )
    & ( {$box} @ (qmltpeq(op2(unit2,e22),e22)) )
    & ( {$box} @ (qmltpeq(op2(e22,unit2),e22)) )
    & ( {$box} @ (qmltpeq(op2(unit2,e23),e23)) )
    & ( {$box} @ (qmltpeq(op2(e23,unit2),e23)) )
    & ( ( {$box} @ (qmltpeq(unit2,e20)) )
      | ( {$box} @ (qmltpeq(unit2,e21)) )
      | ( {$box} @ (qmltpeq(unit2,e22)) )
      | ( {$box} @ (qmltpeq(unit2,e23)) ) ) ) ).

tff(ax8,axiom-local,
    ( ( {$box} @ (qmltpeq(op2(e20,inv2(e20)),unit2)) )
    & ( {$box} @ (qmltpeq(op2(inv2(e20),e20),unit2)) )
    & ( {$box} @ (qmltpeq(op2(e21,inv2(e21)),unit2)) )
    & ( {$box} @ (qmltpeq(op2(inv2(e21),e21),unit2)) )
    & ( {$box} @ (qmltpeq(op2(e22,inv2(e22)),unit2)) )
    & ( {$box} @ (qmltpeq(op2(inv2(e22),e22),unit2)) )
    & ( {$box} @ (qmltpeq(op2(e23,inv2(e23)),unit2)) )
    & ( {$box} @ (qmltpeq(op2(inv2(e23),e23),unit2)) )
    & ( ( {$box} @ (qmltpeq(inv2(e20),e20)) )
      | ( {$box} @ (qmltpeq(inv2(e20),e21)) )
      | ( {$box} @ (qmltpeq(inv2(e20),e22)) )
      | ( {$box} @ (qmltpeq(inv2(e20),e23)) ) )
    & ( ( {$box} @ (qmltpeq(inv2(e21),e20)) )
      | ( {$box} @ (qmltpeq(inv2(e21),e21)) )
      | ( {$box} @ (qmltpeq(inv2(e21),e22)) )
      | ( {$box} @ (qmltpeq(inv2(e21),e23)) ) )
    & ( ( {$box} @ (qmltpeq(inv2(e22),e20)) )
      | ( {$box} @ (qmltpeq(inv2(e22),e21)) )
      | ( {$box} @ (qmltpeq(inv2(e22),e22)) )
      | ( {$box} @ (qmltpeq(inv2(e22),e23)) ) )
    & ( ( {$box} @ (qmltpeq(inv2(e23),e20)) )
      | ( {$box} @ (qmltpeq(inv2(e23),e21)) )
      | ( {$box} @ (qmltpeq(inv2(e23),e22)) )
      | ( {$box} @ (qmltpeq(inv2(e23),e23)) ) ) ) ).

tff(ax9,axiom-local,
    {$box} @ (qmltpeq(inv1(unit1),unit1)) ).

tff(ax10,axiom-local,
    ( ( {$box} @ (qmltpeq(inv1(inv1(e10)),e10)) )
    & ( {$box} @ (qmltpeq(inv1(inv1(e11)),e11)) )
    & ( {$box} @ (qmltpeq(inv1(inv1(e12)),e12)) )
    & ( {$box} @ (qmltpeq(inv1(inv1(e13)),e13)) ) ) ).

tff(ax11,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv1(e10),e10)) )
        => ( {$box} @ (qmltpeq(inv1(e10),e10)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv1(e10),e11)) )
        => ( {$box} @ (qmltpeq(inv1(e11),e10)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv1(e10),e12)) )
        => ( {$box} @ (qmltpeq(inv1(e12),e10)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv1(e10),e13)) )
        => ( {$box} @ (qmltpeq(inv1(e13),e10)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv1(e11),e10)) )
        => ( {$box} @ (qmltpeq(inv1(e10),e11)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv1(e11),e11)) )
        => ( {$box} @ (qmltpeq(inv1(e11),e11)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv1(e11),e12)) )
        => ( {$box} @ (qmltpeq(inv1(e12),e11)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv1(e11),e13)) )
        => ( {$box} @ (qmltpeq(inv1(e13),e11)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv1(e12),e10)) )
        => ( {$box} @ (qmltpeq(inv1(e10),e12)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv1(e12),e11)) )
        => ( {$box} @ (qmltpeq(inv1(e11),e12)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv1(e12),e12)) )
        => ( {$box} @ (qmltpeq(inv1(e12),e12)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv1(e12),e13)) )
        => ( {$box} @ (qmltpeq(inv1(e13),e12)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv1(e13),e10)) )
        => ( {$box} @ (qmltpeq(inv1(e10),e13)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv1(e13),e11)) )
        => ( {$box} @ (qmltpeq(inv1(e11),e13)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv1(e13),e12)) )
        => ( {$box} @ (qmltpeq(inv1(e12),e13)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv1(e13),e13)) )
        => ( {$box} @ (qmltpeq(inv1(e13),e13)) ) )) ) ) ).

tff(ax12,axiom-local,
    ( ( {$box}
      @ (~ ( {$box} @ (qmltpeq(inv1(e10),inv1(e11))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(inv1(e10),inv1(e12))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(inv1(e10),inv1(e13))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(inv1(e11),inv1(e12))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(inv1(e11),inv1(e13))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(inv1(e12),inv1(e13))) )) ) ) ).

tff(ax13,axiom-local,
    {$box} @ (qmltpeq(inv2(unit2),unit2)) ).

tff(ax14,axiom-local,
    ( ( {$box} @ (qmltpeq(inv2(inv2(e20)),e20)) )
    & ( {$box} @ (qmltpeq(inv2(inv2(e21)),e21)) )
    & ( {$box} @ (qmltpeq(inv2(inv2(e22)),e22)) )
    & ( {$box} @ (qmltpeq(inv2(inv2(e23)),e23)) ) ) ).

tff(ax15,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv2(e20),e20)) )
        => ( {$box} @ (qmltpeq(inv2(e20),e20)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv2(e20),e21)) )
        => ( {$box} @ (qmltpeq(inv2(e21),e20)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv2(e20),e22)) )
        => ( {$box} @ (qmltpeq(inv2(e22),e20)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv2(e20),e23)) )
        => ( {$box} @ (qmltpeq(inv2(e23),e20)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv2(e21),e20)) )
        => ( {$box} @ (qmltpeq(inv2(e20),e21)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv2(e21),e21)) )
        => ( {$box} @ (qmltpeq(inv2(e21),e21)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv2(e21),e22)) )
        => ( {$box} @ (qmltpeq(inv2(e22),e21)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv2(e21),e23)) )
        => ( {$box} @ (qmltpeq(inv2(e23),e21)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv2(e22),e20)) )
        => ( {$box} @ (qmltpeq(inv2(e20),e22)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv2(e22),e21)) )
        => ( {$box} @ (qmltpeq(inv2(e21),e22)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv2(e22),e22)) )
        => ( {$box} @ (qmltpeq(inv2(e22),e22)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv2(e22),e23)) )
        => ( {$box} @ (qmltpeq(inv2(e23),e22)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv2(e23),e20)) )
        => ( {$box} @ (qmltpeq(inv2(e20),e23)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv2(e23),e21)) )
        => ( {$box} @ (qmltpeq(inv2(e21),e23)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv2(e23),e22)) )
        => ( {$box} @ (qmltpeq(inv2(e22),e23)) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (qmltpeq(inv2(e23),e23)) )
        => ( {$box} @ (qmltpeq(inv2(e23),e23)) ) )) ) ) ).

tff(ax16,axiom-local,
    ( ( {$box}
      @ (~ ( {$box} @ (qmltpeq(inv2(e20),inv2(e21))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(inv2(e20),inv2(e22))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(inv2(e20),inv2(e23))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(inv2(e21),inv2(e22))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(inv2(e21),inv2(e23))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(inv2(e22),inv2(e23))) )) ) ) ).

tff(ax17,axiom-local,
    ( ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e10,e10),op1(e11,e10))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e10,e10),op1(e12,e10))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e10,e10),op1(e13,e10))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e11,e10),op1(e12,e10))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e11,e10),op1(e13,e10))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e12,e10),op1(e13,e10))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e10,e11),op1(e11,e11))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e10,e11),op1(e12,e11))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e10,e11),op1(e13,e11))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e11,e11),op1(e12,e11))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e11,e11),op1(e13,e11))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e12,e11),op1(e13,e11))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e10,e12),op1(e11,e12))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e10,e12),op1(e12,e12))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e10,e12),op1(e13,e12))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e11,e12),op1(e12,e12))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e11,e12),op1(e13,e12))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e12,e12),op1(e13,e12))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e10,e13),op1(e11,e13))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e10,e13),op1(e12,e13))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e10,e13),op1(e13,e13))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e11,e13),op1(e12,e13))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e11,e13),op1(e13,e13))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e12,e13),op1(e13,e13))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e10,e10),op1(e10,e11))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e10,e10),op1(e10,e12))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e10,e10),op1(e10,e13))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e10,e11),op1(e10,e12))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e10,e11),op1(e10,e13))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e10,e12),op1(e10,e13))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e11,e10),op1(e11,e11))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e11,e10),op1(e11,e12))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e11,e10),op1(e11,e13))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e11,e11),op1(e11,e12))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e11,e11),op1(e11,e13))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e11,e12),op1(e11,e13))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e12,e10),op1(e12,e11))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e12,e10),op1(e12,e12))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e12,e10),op1(e12,e13))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e12,e11),op1(e12,e12))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e12,e11),op1(e12,e13))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e12,e12),op1(e12,e13))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e13,e10),op1(e13,e11))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e13,e10),op1(e13,e12))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e13,e10),op1(e13,e13))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e13,e11),op1(e13,e12))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e13,e11),op1(e13,e13))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op1(e13,e12),op1(e13,e13))) )) ) ) ).

tff(ax18,axiom-local,
    ( ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e20,e20),op2(e21,e20))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e20,e20),op2(e22,e20))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e20,e20),op2(e23,e20))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e21,e20),op2(e22,e20))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e21,e20),op2(e23,e20))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e22,e20),op2(e23,e20))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e20,e21),op2(e21,e21))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e20,e21),op2(e22,e21))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e20,e21),op2(e23,e21))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e21,e21),op2(e22,e21))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e21,e21),op2(e23,e21))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e22,e21),op2(e23,e21))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e20,e22),op2(e21,e22))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e20,e22),op2(e22,e22))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e20,e22),op2(e23,e22))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e21,e22),op2(e22,e22))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e21,e22),op2(e23,e22))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e22,e22),op2(e23,e22))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e20,e23),op2(e21,e23))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e20,e23),op2(e22,e23))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e20,e23),op2(e23,e23))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e21,e23),op2(e22,e23))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e21,e23),op2(e23,e23))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e22,e23),op2(e23,e23))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e20,e20),op2(e20,e21))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e20,e20),op2(e20,e22))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e20,e20),op2(e20,e23))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e20,e21),op2(e20,e22))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e20,e21),op2(e20,e23))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e20,e22),op2(e20,e23))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e21,e20),op2(e21,e21))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e21,e20),op2(e21,e22))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e21,e20),op2(e21,e23))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e21,e21),op2(e21,e22))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e21,e21),op2(e21,e23))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e21,e22),op2(e21,e23))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e22,e20),op2(e22,e21))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e22,e20),op2(e22,e22))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e22,e20),op2(e22,e23))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e22,e21),op2(e22,e22))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e22,e21),op2(e22,e23))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e22,e22),op2(e22,e23))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e23,e20),op2(e23,e21))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e23,e20),op2(e23,e22))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e23,e20),op2(e23,e23))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e23,e21),op2(e23,e22))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e23,e21),op2(e23,e23))) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(op2(e23,e22),op2(e23,e23))) )) ) ) ).

tff(ax19,axiom-local,
    ( ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e10,e11)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e10,e12)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e10,e13)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e11,e12)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e11,e13)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e12,e13)) )) ) ) ).

tff(ax20,axiom-local,
    ( ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e20,e21)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e20,e22)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e20,e23)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e21,e22)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e21,e23)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e22,e23)) )) ) ) ).

tff(ax21,axiom-local,
    ( ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e10,e20)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e10,e21)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e10,e22)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e10,e23)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e11,e20)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e11,e21)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e11,e22)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e11,e23)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e12,e20)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e12,e21)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e12,e22)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e12,e23)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e13,e20)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e13,e21)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e13,e22)) )) )
    & ( {$box}
      @ (~ ( {$box} @ (qmltpeq(e13,e23)) )) ) ) ).

tff(ax22,axiom-local,
    ( ( ( {$box} @ (qmltpeq(op1(e10,e10),e10)) )
      & ( {$box} @ (qmltpeq(op1(e11,e11),e10)) )
      & ( {$box} @ (qmltpeq(op1(e12,e12),e10)) )
      & ( {$box} @ (qmltpeq(op1(e13,e13),e10)) ) )
    | ( ( {$box} @ (qmltpeq(op1(e10,e10),e11)) )
      & ( {$box} @ (qmltpeq(op1(e11,e11),e11)) )
      & ( {$box} @ (qmltpeq(op1(e12,e12),e11)) )
      & ( {$box} @ (qmltpeq(op1(e13,e13),e11)) ) )
    | ( ( {$box} @ (qmltpeq(op1(e10,e10),e12)) )
      & ( {$box} @ (qmltpeq(op1(e11,e11),e12)) )
      & ( {$box} @ (qmltpeq(op1(e12,e12),e12)) )
      & ( {$box} @ (qmltpeq(op1(e13,e13),e12)) ) )
    | ( ( {$box} @ (qmltpeq(op1(e10,e10),e13)) )
      & ( {$box} @ (qmltpeq(op1(e11,e11),e13)) )
      & ( {$box} @ (qmltpeq(op1(e12,e12),e13)) )
      & ( {$box} @ (qmltpeq(op1(e13,e13),e13)) ) ) ) ).

tff(ax23,axiom-local,
    ( ( ( {$box} @ (qmltpeq(op2(e20,e20),e20)) )
      & ( {$box} @ (qmltpeq(op2(e21,e21),e20)) )
      & ( {$box} @ (qmltpeq(op2(e22,e22),e20)) )
      & ( {$box} @ (qmltpeq(op2(e23,e23),e20)) ) )
    | ( ( {$box} @ (qmltpeq(op2(e20,e20),e21)) )
      & ( {$box} @ (qmltpeq(op2(e21,e21),e21)) )
      & ( {$box} @ (qmltpeq(op2(e22,e22),e21)) )
      & ( {$box} @ (qmltpeq(op2(e23,e23),e21)) ) )
    | ( ( {$box} @ (qmltpeq(op2(e20,e20),e22)) )
      & ( {$box} @ (qmltpeq(op2(e21,e21),e22)) )
      & ( {$box} @ (qmltpeq(op2(e22,e22),e22)) )
      & ( {$box} @ (qmltpeq(op2(e23,e23),e22)) ) )
    | ( ( {$box} @ (qmltpeq(op2(e20,e20),e23)) )
      & ( {$box} @ (qmltpeq(op2(e21,e21),e23)) )
      & ( {$box} @ (qmltpeq(op2(e22,e22),e23)) )
      & ( {$box} @ (qmltpeq(op2(e23,e23),e23)) ) ) ) ).

tff(ax24,axiom-local,
    ( ( {$box} @ (qmltpeq(e10,op1(e13,e13))) )
    & ( {$box} @ (qmltpeq(e11,op1(e12,e13))) ) ) ).

tff(ax25,axiom-local,
    ( ( {$box} @ (qmltpeq(e20,op2(e23,e23))) )
    & ( {$box} @ (qmltpeq(e21,op2(e22,e23))) ) ) ).

tff(ax26,axiom-local,
    ( ( {$box} @ (qmltpeq(h1(e12),e20)) )
    & ( {$box} @ (qmltpeq(h1(e13),e21)) )
    & ( {$box} @ (qmltpeq(h1(e10),op2(e21,e21))) )
    & ( {$box} @ (qmltpeq(h1(e11),op2(e20,e21))) ) ) ).

tff(ax27,axiom-local,
    ( ( {$box} @ (qmltpeq(h2(e12),e20)) )
    & ( {$box} @ (qmltpeq(h2(e13),e22)) )
    & ( {$box} @ (qmltpeq(h2(e10),op2(e22,e22))) )
    & ( {$box} @ (qmltpeq(h2(e11),op2(e20,e22))) ) ) ).

tff(ax28,axiom-local,
    ( ( {$box} @ (qmltpeq(h3(e12),e20)) )
    & ( {$box} @ (qmltpeq(h3(e13),e23)) )
    & ( {$box} @ (qmltpeq(h3(e10),op2(e23,e23))) )
    & ( {$box} @ (qmltpeq(h3(e11),op2(e20,e23))) ) ) ).

tff(ax29,axiom-local,
    ( ( {$box} @ (qmltpeq(h4(e12),e21)) )
    & ( {$box} @ (qmltpeq(h4(e13),e20)) )
    & ( {$box} @ (qmltpeq(h4(e10),op2(e20,e20))) )
    & ( {$box} @ (qmltpeq(h4(e11),op2(e21,e20))) ) ) ).

tff(ax30,axiom-local,
    ( ( {$box} @ (qmltpeq(h5(e12),e21)) )
    & ( {$box} @ (qmltpeq(h5(e13),e22)) )
    & ( {$box} @ (qmltpeq(h5(e10),op2(e22,e22))) )
    & ( {$box} @ (qmltpeq(h5(e11),op2(e21,e22))) ) ) ).

tff(ax31,axiom-local,
    ( ( {$box} @ (qmltpeq(h6(e12),e21)) )
    & ( {$box} @ (qmltpeq(h6(e13),e23)) )
    & ( {$box} @ (qmltpeq(h6(e10),op2(e23,e23))) )
    & ( {$box} @ (qmltpeq(h6(e11),op2(e21,e23))) ) ) ).

tff(ax32,axiom-local,
    ( ( {$box} @ (qmltpeq(h7(e12),e22)) )
    & ( {$box} @ (qmltpeq(h7(e13),e20)) )
    & ( {$box} @ (qmltpeq(h7(e10),op2(e20,e20))) )
    & ( {$box} @ (qmltpeq(h7(e11),op2(e22,e20))) ) ) ).

tff(ax33,axiom-local,
    ( ( {$box} @ (qmltpeq(h8(e12),e22)) )
    & ( {$box} @ (qmltpeq(h8(e13),e21)) )
    & ( {$box} @ (qmltpeq(h8(e10),op2(e21,e21))) )
    & ( {$box} @ (qmltpeq(h8(e11),op2(e22,e21))) ) ) ).

tff(ax34,axiom-local,
    ( ( {$box} @ (qmltpeq(h9(e12),e22)) )
    & ( {$box} @ (qmltpeq(h9(e13),e23)) )
    & ( {$box} @ (qmltpeq(h9(e10),op2(e23,e23))) )
    & ( {$box} @ (qmltpeq(h9(e11),op2(e22,e23))) ) ) ).

tff(ax35,axiom-local,
    ( ( {$box} @ (qmltpeq(h10(e12),e23)) )
    & ( {$box} @ (qmltpeq(h10(e13),e20)) )
    & ( {$box} @ (qmltpeq(h10(e10),op2(e20,e20))) )
    & ( {$box} @ (qmltpeq(h10(e11),op2(e23,e20))) ) ) ).

tff(ax36,axiom-local,
    ( ( {$box} @ (qmltpeq(h11(e12),e23)) )
    & ( {$box} @ (qmltpeq(h11(e13),e21)) )
    & ( {$box} @ (qmltpeq(h11(e10),op2(e21,e21))) )
    & ( {$box} @ (qmltpeq(h11(e11),op2(e23,e21))) ) ) ).

tff(ax37,axiom-local,
    ( ( {$box} @ (qmltpeq(h12(e12),e23)) )
    & ( {$box} @ (qmltpeq(h12(e13),e22)) )
    & ( {$box} @ (qmltpeq(h12(e10),op2(e22,e22))) )
    & ( {$box} @ (qmltpeq(h12(e11),op2(e23,e22))) ) ) ).

tff(co1,conjecture,
    ( ( ( {$box} @ (qmltpeq(h1(op1(e10,e10)),op2(h1(e10),h1(e10)))) )
      & ( {$box} @ (qmltpeq(h1(op1(e10,e11)),op2(h1(e10),h1(e11)))) )
      & ( {$box} @ (qmltpeq(h1(op1(e10,e12)),op2(h1(e10),h1(e12)))) )
      & ( {$box} @ (qmltpeq(h1(op1(e10,e13)),op2(h1(e10),h1(e13)))) )
      & ( {$box} @ (qmltpeq(h1(op1(e11,e10)),op2(h1(e11),h1(e10)))) )
      & ( {$box} @ (qmltpeq(h1(op1(e11,e11)),op2(h1(e11),h1(e11)))) )
      & ( {$box} @ (qmltpeq(h1(op1(e11,e12)),op2(h1(e11),h1(e12)))) )
      & ( {$box} @ (qmltpeq(h1(op1(e11,e13)),op2(h1(e11),h1(e13)))) )
      & ( {$box} @ (qmltpeq(h1(op1(e12,e10)),op2(h1(e12),h1(e10)))) )
      & ( {$box} @ (qmltpeq(h1(op1(e12,e11)),op2(h1(e12),h1(e11)))) )
      & ( {$box} @ (qmltpeq(h1(op1(e12,e12)),op2(h1(e12),h1(e12)))) )
      & ( {$box} @ (qmltpeq(h1(op1(e12,e13)),op2(h1(e12),h1(e13)))) )
      & ( {$box} @ (qmltpeq(h1(op1(e13,e10)),op2(h1(e13),h1(e10)))) )
      & ( {$box} @ (qmltpeq(h1(op1(e13,e11)),op2(h1(e13),h1(e11)))) )
      & ( {$box} @ (qmltpeq(h1(op1(e13,e12)),op2(h1(e13),h1(e12)))) )
      & ( {$box} @ (qmltpeq(h1(op1(e13,e13)),op2(h1(e13),h1(e13)))) )
      & ( ( {$box} @ (qmltpeq(h1(e10),e20)) )
        | ( {$box} @ (qmltpeq(h1(e11),e20)) )
        | ( {$box} @ (qmltpeq(h1(e12),e20)) )
        | ( {$box} @ (qmltpeq(h1(e13),e20)) ) )
      & ( ( {$box} @ (qmltpeq(h1(e10),e21)) )
        | ( {$box} @ (qmltpeq(h1(e11),e21)) )
        | ( {$box} @ (qmltpeq(h1(e12),e21)) )
        | ( {$box} @ (qmltpeq(h1(e13),e21)) ) )
      & ( ( {$box} @ (qmltpeq(h1(e10),e22)) )
        | ( {$box} @ (qmltpeq(h1(e11),e22)) )
        | ( {$box} @ (qmltpeq(h1(e12),e22)) )
        | ( {$box} @ (qmltpeq(h1(e13),e22)) ) )
      & ( ( {$box} @ (qmltpeq(h1(e10),e23)) )
        | ( {$box} @ (qmltpeq(h1(e11),e23)) )
        | ( {$box} @ (qmltpeq(h1(e12),e23)) )
        | ( {$box} @ (qmltpeq(h1(e13),e23)) ) ) )
    | ( ( {$box} @ (qmltpeq(h2(op1(e10,e10)),op2(h2(e10),h2(e10)))) )
      & ( {$box} @ (qmltpeq(h2(op1(e10,e11)),op2(h2(e10),h2(e11)))) )
      & ( {$box} @ (qmltpeq(h2(op1(e10,e12)),op2(h2(e10),h2(e12)))) )
      & ( {$box} @ (qmltpeq(h2(op1(e10,e13)),op2(h2(e10),h2(e13)))) )
      & ( {$box} @ (qmltpeq(h2(op1(e11,e10)),op2(h2(e11),h2(e10)))) )
      & ( {$box} @ (qmltpeq(h2(op1(e11,e11)),op2(h2(e11),h2(e11)))) )
      & ( {$box} @ (qmltpeq(h2(op1(e11,e12)),op2(h2(e11),h2(e12)))) )
      & ( {$box} @ (qmltpeq(h2(op1(e11,e13)),op2(h2(e11),h2(e13)))) )
      & ( {$box} @ (qmltpeq(h2(op1(e12,e10)),op2(h2(e12),h2(e10)))) )
      & ( {$box} @ (qmltpeq(h2(op1(e12,e11)),op2(h2(e12),h2(e11)))) )
      & ( {$box} @ (qmltpeq(h2(op1(e12,e12)),op2(h2(e12),h2(e12)))) )
      & ( {$box} @ (qmltpeq(h2(op1(e12,e13)),op2(h2(e12),h2(e13)))) )
      & ( {$box} @ (qmltpeq(h2(op1(e13,e10)),op2(h2(e13),h2(e10)))) )
      & ( {$box} @ (qmltpeq(h2(op1(e13,e11)),op2(h2(e13),h2(e11)))) )
      & ( {$box} @ (qmltpeq(h2(op1(e13,e12)),op2(h2(e13),h2(e12)))) )
      & ( {$box} @ (qmltpeq(h2(op1(e13,e13)),op2(h2(e13),h2(e13)))) )
      & ( ( {$box} @ (qmltpeq(h2(e10),e20)) )
        | ( {$box} @ (qmltpeq(h2(e11),e20)) )
        | ( {$box} @ (qmltpeq(h2(e12),e20)) )
        | ( {$box} @ (qmltpeq(h2(e13),e20)) ) )
      & ( ( {$box} @ (qmltpeq(h2(e10),e21)) )
        | ( {$box} @ (qmltpeq(h2(e11),e21)) )
        | ( {$box} @ (qmltpeq(h2(e12),e21)) )
        | ( {$box} @ (qmltpeq(h2(e13),e21)) ) )
      & ( ( {$box} @ (qmltpeq(h2(e10),e22)) )
        | ( {$box} @ (qmltpeq(h2(e11),e22)) )
        | ( {$box} @ (qmltpeq(h2(e12),e22)) )
        | ( {$box} @ (qmltpeq(h2(e13),e22)) ) )
      & ( ( {$box} @ (qmltpeq(h2(e10),e23)) )
        | ( {$box} @ (qmltpeq(h2(e11),e23)) )
        | ( {$box} @ (qmltpeq(h2(e12),e23)) )
        | ( {$box} @ (qmltpeq(h2(e13),e23)) ) ) )
    | ( ( {$box} @ (qmltpeq(h3(op1(e10,e10)),op2(h3(e10),h3(e10)))) )
      & ( {$box} @ (qmltpeq(h3(op1(e10,e11)),op2(h3(e10),h3(e11)))) )
      & ( {$box} @ (qmltpeq(h3(op1(e10,e12)),op2(h3(e10),h3(e12)))) )
      & ( {$box} @ (qmltpeq(h3(op1(e10,e13)),op2(h3(e10),h3(e13)))) )
      & ( {$box} @ (qmltpeq(h3(op1(e11,e10)),op2(h3(e11),h3(e10)))) )
      & ( {$box} @ (qmltpeq(h3(op1(e11,e11)),op2(h3(e11),h3(e11)))) )
      & ( {$box} @ (qmltpeq(h3(op1(e11,e12)),op2(h3(e11),h3(e12)))) )
      & ( {$box} @ (qmltpeq(h3(op1(e11,e13)),op2(h3(e11),h3(e13)))) )
      & ( {$box} @ (qmltpeq(h3(op1(e12,e10)),op2(h3(e12),h3(e10)))) )
      & ( {$box} @ (qmltpeq(h3(op1(e12,e11)),op2(h3(e12),h3(e11)))) )
      & ( {$box} @ (qmltpeq(h3(op1(e12,e12)),op2(h3(e12),h3(e12)))) )
      & ( {$box} @ (qmltpeq(h3(op1(e12,e13)),op2(h3(e12),h3(e13)))) )
      & ( {$box} @ (qmltpeq(h3(op1(e13,e10)),op2(h3(e13),h3(e10)))) )
      & ( {$box} @ (qmltpeq(h3(op1(e13,e11)),op2(h3(e13),h3(e11)))) )
      & ( {$box} @ (qmltpeq(h3(op1(e13,e12)),op2(h3(e13),h3(e12)))) )
      & ( {$box} @ (qmltpeq(h3(op1(e13,e13)),op2(h3(e13),h3(e13)))) )
      & ( ( {$box} @ (qmltpeq(h3(e10),e20)) )
        | ( {$box} @ (qmltpeq(h3(e11),e20)) )
        | ( {$box} @ (qmltpeq(h3(e12),e20)) )
        | ( {$box} @ (qmltpeq(h3(e13),e20)) ) )
      & ( ( {$box} @ (qmltpeq(h3(e10),e21)) )
        | ( {$box} @ (qmltpeq(h3(e11),e21)) )
        | ( {$box} @ (qmltpeq(h3(e12),e21)) )
        | ( {$box} @ (qmltpeq(h3(e13),e21)) ) )
      & ( ( {$box} @ (qmltpeq(h3(e10),e22)) )
        | ( {$box} @ (qmltpeq(h3(e11),e22)) )
        | ( {$box} @ (qmltpeq(h3(e12),e22)) )
        | ( {$box} @ (qmltpeq(h3(e13),e22)) ) )
      & ( ( {$box} @ (qmltpeq(h3(e10),e23)) )
        | ( {$box} @ (qmltpeq(h3(e11),e23)) )
        | ( {$box} @ (qmltpeq(h3(e12),e23)) )
        | ( {$box} @ (qmltpeq(h3(e13),e23)) ) ) )
    | ( ( {$box} @ (qmltpeq(h4(op1(e10,e10)),op2(h4(e10),h4(e10)))) )
      & ( {$box} @ (qmltpeq(h4(op1(e10,e11)),op2(h4(e10),h4(e11)))) )
      & ( {$box} @ (qmltpeq(h4(op1(e10,e12)),op2(h4(e10),h4(e12)))) )
      & ( {$box} @ (qmltpeq(h4(op1(e10,e13)),op2(h4(e10),h4(e13)))) )
      & ( {$box} @ (qmltpeq(h4(op1(e11,e10)),op2(h4(e11),h4(e10)))) )
      & ( {$box} @ (qmltpeq(h4(op1(e11,e11)),op2(h4(e11),h4(e11)))) )
      & ( {$box} @ (qmltpeq(h4(op1(e11,e12)),op2(h4(e11),h4(e12)))) )
      & ( {$box} @ (qmltpeq(h4(op1(e11,e13)),op2(h4(e11),h4(e13)))) )
      & ( {$box} @ (qmltpeq(h4(op1(e12,e10)),op2(h4(e12),h4(e10)))) )
      & ( {$box} @ (qmltpeq(h4(op1(e12,e11)),op2(h4(e12),h4(e11)))) )
      & ( {$box} @ (qmltpeq(h4(op1(e12,e12)),op2(h4(e12),h4(e12)))) )
      & ( {$box} @ (qmltpeq(h4(op1(e12,e13)),op2(h4(e12),h4(e13)))) )
      & ( {$box} @ (qmltpeq(h4(op1(e13,e10)),op2(h4(e13),h4(e10)))) )
      & ( {$box} @ (qmltpeq(h4(op1(e13,e11)),op2(h4(e13),h4(e11)))) )
      & ( {$box} @ (qmltpeq(h4(op1(e13,e12)),op2(h4(e13),h4(e12)))) )
      & ( {$box} @ (qmltpeq(h4(op1(e13,e13)),op2(h4(e13),h4(e13)))) )
      & ( ( {$box} @ (qmltpeq(h4(e10),e20)) )
        | ( {$box} @ (qmltpeq(h4(e11),e20)) )
        | ( {$box} @ (qmltpeq(h4(e12),e20)) )
        | ( {$box} @ (qmltpeq(h4(e13),e20)) ) )
      & ( ( {$box} @ (qmltpeq(h4(e10),e21)) )
        | ( {$box} @ (qmltpeq(h4(e11),e21)) )
        | ( {$box} @ (qmltpeq(h4(e12),e21)) )
        | ( {$box} @ (qmltpeq(h4(e13),e21)) ) )
      & ( ( {$box} @ (qmltpeq(h4(e10),e22)) )
        | ( {$box} @ (qmltpeq(h4(e11),e22)) )
        | ( {$box} @ (qmltpeq(h4(e12),e22)) )
        | ( {$box} @ (qmltpeq(h4(e13),e22)) ) )
      & ( ( {$box} @ (qmltpeq(h4(e10),e23)) )
        | ( {$box} @ (qmltpeq(h4(e11),e23)) )
        | ( {$box} @ (qmltpeq(h4(e12),e23)) )
        | ( {$box} @ (qmltpeq(h4(e13),e23)) ) ) )
    | ( ( {$box} @ (qmltpeq(h5(op1(e10,e10)),op2(h5(e10),h5(e10)))) )
      & ( {$box} @ (qmltpeq(h5(op1(e10,e11)),op2(h5(e10),h5(e11)))) )
      & ( {$box} @ (qmltpeq(h5(op1(e10,e12)),op2(h5(e10),h5(e12)))) )
      & ( {$box} @ (qmltpeq(h5(op1(e10,e13)),op2(h5(e10),h5(e13)))) )
      & ( {$box} @ (qmltpeq(h5(op1(e11,e10)),op2(h5(e11),h5(e10)))) )
      & ( {$box} @ (qmltpeq(h5(op1(e11,e11)),op2(h5(e11),h5(e11)))) )
      & ( {$box} @ (qmltpeq(h5(op1(e11,e12)),op2(h5(e11),h5(e12)))) )
      & ( {$box} @ (qmltpeq(h5(op1(e11,e13)),op2(h5(e11),h5(e13)))) )
      & ( {$box} @ (qmltpeq(h5(op1(e12,e10)),op2(h5(e12),h5(e10)))) )
      & ( {$box} @ (qmltpeq(h5(op1(e12,e11)),op2(h5(e12),h5(e11)))) )
      & ( {$box} @ (qmltpeq(h5(op1(e12,e12)),op2(h5(e12),h5(e12)))) )
      & ( {$box} @ (qmltpeq(h5(op1(e12,e13)),op2(h5(e12),h5(e13)))) )
      & ( {$box} @ (qmltpeq(h5(op1(e13,e10)),op2(h5(e13),h5(e10)))) )
      & ( {$box} @ (qmltpeq(h5(op1(e13,e11)),op2(h5(e13),h5(e11)))) )
      & ( {$box} @ (qmltpeq(h5(op1(e13,e12)),op2(h5(e13),h5(e12)))) )
      & ( {$box} @ (qmltpeq(h5(op1(e13,e13)),op2(h5(e13),h5(e13)))) )
      & ( ( {$box} @ (qmltpeq(h5(e10),e20)) )
        | ( {$box} @ (qmltpeq(h5(e11),e20)) )
        | ( {$box} @ (qmltpeq(h5(e12),e20)) )
        | ( {$box} @ (qmltpeq(h5(e13),e20)) ) )
      & ( ( {$box} @ (qmltpeq(h5(e10),e21)) )
        | ( {$box} @ (qmltpeq(h5(e11),e21)) )
        | ( {$box} @ (qmltpeq(h5(e12),e21)) )
        | ( {$box} @ (qmltpeq(h5(e13),e21)) ) )
      & ( ( {$box} @ (qmltpeq(h5(e10),e22)) )
        | ( {$box} @ (qmltpeq(h5(e11),e22)) )
        | ( {$box} @ (qmltpeq(h5(e12),e22)) )
        | ( {$box} @ (qmltpeq(h5(e13),e22)) ) )
      & ( ( {$box} @ (qmltpeq(h5(e10),e23)) )
        | ( {$box} @ (qmltpeq(h5(e11),e23)) )
        | ( {$box} @ (qmltpeq(h5(e12),e23)) )
        | ( {$box} @ (qmltpeq(h5(e13),e23)) ) ) )
    | ( ( {$box} @ (qmltpeq(h6(op1(e10,e10)),op2(h6(e10),h6(e10)))) )
      & ( {$box} @ (qmltpeq(h6(op1(e10,e11)),op2(h6(e10),h6(e11)))) )
      & ( {$box} @ (qmltpeq(h6(op1(e10,e12)),op2(h6(e10),h6(e12)))) )
      & ( {$box} @ (qmltpeq(h6(op1(e10,e13)),op2(h6(e10),h6(e13)))) )
      & ( {$box} @ (qmltpeq(h6(op1(e11,e10)),op2(h6(e11),h6(e10)))) )
      & ( {$box} @ (qmltpeq(h6(op1(e11,e11)),op2(h6(e11),h6(e11)))) )
      & ( {$box} @ (qmltpeq(h6(op1(e11,e12)),op2(h6(e11),h6(e12)))) )
      & ( {$box} @ (qmltpeq(h6(op1(e11,e13)),op2(h6(e11),h6(e13)))) )
      & ( {$box} @ (qmltpeq(h6(op1(e12,e10)),op2(h6(e12),h6(e10)))) )
      & ( {$box} @ (qmltpeq(h6(op1(e12,e11)),op2(h6(e12),h6(e11)))) )
      & ( {$box} @ (qmltpeq(h6(op1(e12,e12)),op2(h6(e12),h6(e12)))) )
      & ( {$box} @ (qmltpeq(h6(op1(e12,e13)),op2(h6(e12),h6(e13)))) )
      & ( {$box} @ (qmltpeq(h6(op1(e13,e10)),op2(h6(e13),h6(e10)))) )
      & ( {$box} @ (qmltpeq(h6(op1(e13,e11)),op2(h6(e13),h6(e11)))) )
      & ( {$box} @ (qmltpeq(h6(op1(e13,e12)),op2(h6(e13),h6(e12)))) )
      & ( {$box} @ (qmltpeq(h6(op1(e13,e13)),op2(h6(e13),h6(e13)))) )
      & ( ( {$box} @ (qmltpeq(h6(e10),e20)) )
        | ( {$box} @ (qmltpeq(h6(e11),e20)) )
        | ( {$box} @ (qmltpeq(h6(e12),e20)) )
        | ( {$box} @ (qmltpeq(h6(e13),e20)) ) )
      & ( ( {$box} @ (qmltpeq(h6(e10),e21)) )
        | ( {$box} @ (qmltpeq(h6(e11),e21)) )
        | ( {$box} @ (qmltpeq(h6(e12),e21)) )
        | ( {$box} @ (qmltpeq(h6(e13),e21)) ) )
      & ( ( {$box} @ (qmltpeq(h6(e10),e22)) )
        | ( {$box} @ (qmltpeq(h6(e11),e22)) )
        | ( {$box} @ (qmltpeq(h6(e12),e22)) )
        | ( {$box} @ (qmltpeq(h6(e13),e22)) ) )
      & ( ( {$box} @ (qmltpeq(h6(e10),e23)) )
        | ( {$box} @ (qmltpeq(h6(e11),e23)) )
        | ( {$box} @ (qmltpeq(h6(e12),e23)) )
        | ( {$box} @ (qmltpeq(h6(e13),e23)) ) ) )
    | ( ( {$box} @ (qmltpeq(h7(op1(e10,e10)),op2(h7(e10),h7(e10)))) )
      & ( {$box} @ (qmltpeq(h7(op1(e10,e11)),op2(h7(e10),h7(e11)))) )
      & ( {$box} @ (qmltpeq(h7(op1(e10,e12)),op2(h7(e10),h7(e12)))) )
      & ( {$box} @ (qmltpeq(h7(op1(e10,e13)),op2(h7(e10),h7(e13)))) )
      & ( {$box} @ (qmltpeq(h7(op1(e11,e10)),op2(h7(e11),h7(e10)))) )
      & ( {$box} @ (qmltpeq(h7(op1(e11,e11)),op2(h7(e11),h7(e11)))) )
      & ( {$box} @ (qmltpeq(h7(op1(e11,e12)),op2(h7(e11),h7(e12)))) )
      & ( {$box} @ (qmltpeq(h7(op1(e11,e13)),op2(h7(e11),h7(e13)))) )
      & ( {$box} @ (qmltpeq(h7(op1(e12,e10)),op2(h7(e12),h7(e10)))) )
      & ( {$box} @ (qmltpeq(h7(op1(e12,e11)),op2(h7(e12),h7(e11)))) )
      & ( {$box} @ (qmltpeq(h7(op1(e12,e12)),op2(h7(e12),h7(e12)))) )
      & ( {$box} @ (qmltpeq(h7(op1(e12,e13)),op2(h7(e12),h7(e13)))) )
      & ( {$box} @ (qmltpeq(h7(op1(e13,e10)),op2(h7(e13),h7(e10)))) )
      & ( {$box} @ (qmltpeq(h7(op1(e13,e11)),op2(h7(e13),h7(e11)))) )
      & ( {$box} @ (qmltpeq(h7(op1(e13,e12)),op2(h7(e13),h7(e12)))) )
      & ( {$box} @ (qmltpeq(h7(op1(e13,e13)),op2(h7(e13),h7(e13)))) )
      & ( ( {$box} @ (qmltpeq(h7(e10),e20)) )
        | ( {$box} @ (qmltpeq(h7(e11),e20)) )
        | ( {$box} @ (qmltpeq(h7(e12),e20)) )
        | ( {$box} @ (qmltpeq(h7(e13),e20)) ) )
      & ( ( {$box} @ (qmltpeq(h7(e10),e21)) )
        | ( {$box} @ (qmltpeq(h7(e11),e21)) )
        | ( {$box} @ (qmltpeq(h7(e12),e21)) )
        | ( {$box} @ (qmltpeq(h7(e13),e21)) ) )
      & ( ( {$box} @ (qmltpeq(h7(e10),e22)) )
        | ( {$box} @ (qmltpeq(h7(e11),e22)) )
        | ( {$box} @ (qmltpeq(h7(e12),e22)) )
        | ( {$box} @ (qmltpeq(h7(e13),e22)) ) )
      & ( ( {$box} @ (qmltpeq(h7(e10),e23)) )
        | ( {$box} @ (qmltpeq(h7(e11),e23)) )
        | ( {$box} @ (qmltpeq(h7(e12),e23)) )
        | ( {$box} @ (qmltpeq(h7(e13),e23)) ) ) )
    | ( ( {$box} @ (qmltpeq(h8(op1(e10,e10)),op2(h8(e10),h8(e10)))) )
      & ( {$box} @ (qmltpeq(h8(op1(e10,e11)),op2(h8(e10),h8(e11)))) )
      & ( {$box} @ (qmltpeq(h8(op1(e10,e12)),op2(h8(e10),h8(e12)))) )
      & ( {$box} @ (qmltpeq(h8(op1(e10,e13)),op2(h8(e10),h8(e13)))) )
      & ( {$box} @ (qmltpeq(h8(op1(e11,e10)),op2(h8(e11),h8(e10)))) )
      & ( {$box} @ (qmltpeq(h8(op1(e11,e11)),op2(h8(e11),h8(e11)))) )
      & ( {$box} @ (qmltpeq(h8(op1(e11,e12)),op2(h8(e11),h8(e12)))) )
      & ( {$box} @ (qmltpeq(h8(op1(e11,e13)),op2(h8(e11),h8(e13)))) )
      & ( {$box} @ (qmltpeq(h8(op1(e12,e10)),op2(h8(e12),h8(e10)))) )
      & ( {$box} @ (qmltpeq(h8(op1(e12,e11)),op2(h8(e12),h8(e11)))) )
      & ( {$box} @ (qmltpeq(h8(op1(e12,e12)),op2(h8(e12),h8(e12)))) )
      & ( {$box} @ (qmltpeq(h8(op1(e12,e13)),op2(h8(e12),h8(e13)))) )
      & ( {$box} @ (qmltpeq(h8(op1(e13,e10)),op2(h8(e13),h8(e10)))) )
      & ( {$box} @ (qmltpeq(h8(op1(e13,e11)),op2(h8(e13),h8(e11)))) )
      & ( {$box} @ (qmltpeq(h8(op1(e13,e12)),op2(h8(e13),h8(e12)))) )
      & ( {$box} @ (qmltpeq(h8(op1(e13,e13)),op2(h8(e13),h8(e13)))) )
      & ( ( {$box} @ (qmltpeq(h8(e10),e20)) )
        | ( {$box} @ (qmltpeq(h8(e11),e20)) )
        | ( {$box} @ (qmltpeq(h8(e12),e20)) )
        | ( {$box} @ (qmltpeq(h8(e13),e20)) ) )
      & ( ( {$box} @ (qmltpeq(h8(e10),e21)) )
        | ( {$box} @ (qmltpeq(h8(e11),e21)) )
        | ( {$box} @ (qmltpeq(h8(e12),e21)) )
        | ( {$box} @ (qmltpeq(h8(e13),e21)) ) )
      & ( ( {$box} @ (qmltpeq(h8(e10),e22)) )
        | ( {$box} @ (qmltpeq(h8(e11),e22)) )
        | ( {$box} @ (qmltpeq(h8(e12),e22)) )
        | ( {$box} @ (qmltpeq(h8(e13),e22)) ) )
      & ( ( {$box} @ (qmltpeq(h8(e10),e23)) )
        | ( {$box} @ (qmltpeq(h8(e11),e23)) )
        | ( {$box} @ (qmltpeq(h8(e12),e23)) )
        | ( {$box} @ (qmltpeq(h8(e13),e23)) ) ) )
    | ( ( {$box} @ (qmltpeq(h9(op1(e10,e10)),op2(h9(e10),h9(e10)))) )
      & ( {$box} @ (qmltpeq(h9(op1(e10,e11)),op2(h9(e10),h9(e11)))) )
      & ( {$box} @ (qmltpeq(h9(op1(e10,e12)),op2(h9(e10),h9(e12)))) )
      & ( {$box} @ (qmltpeq(h9(op1(e10,e13)),op2(h9(e10),h9(e13)))) )
      & ( {$box} @ (qmltpeq(h9(op1(e11,e10)),op2(h9(e11),h9(e10)))) )
      & ( {$box} @ (qmltpeq(h9(op1(e11,e11)),op2(h9(e11),h9(e11)))) )
      & ( {$box} @ (qmltpeq(h9(op1(e11,e12)),op2(h9(e11),h9(e12)))) )
      & ( {$box} @ (qmltpeq(h9(op1(e11,e13)),op2(h9(e11),h9(e13)))) )
      & ( {$box} @ (qmltpeq(h9(op1(e12,e10)),op2(h9(e12),h9(e10)))) )
      & ( {$box} @ (qmltpeq(h9(op1(e12,e11)),op2(h9(e12),h9(e11)))) )
      & ( {$box} @ (qmltpeq(h9(op1(e12,e12)),op2(h9(e12),h9(e12)))) )
      & ( {$box} @ (qmltpeq(h9(op1(e12,e13)),op2(h9(e12),h9(e13)))) )
      & ( {$box} @ (qmltpeq(h9(op1(e13,e10)),op2(h9(e13),h9(e10)))) )
      & ( {$box} @ (qmltpeq(h9(op1(e13,e11)),op2(h9(e13),h9(e11)))) )
      & ( {$box} @ (qmltpeq(h9(op1(e13,e12)),op2(h9(e13),h9(e12)))) )
      & ( {$box} @ (qmltpeq(h9(op1(e13,e13)),op2(h9(e13),h9(e13)))) )
      & ( ( {$box} @ (qmltpeq(h9(e10),e20)) )
        | ( {$box} @ (qmltpeq(h9(e11),e20)) )
        | ( {$box} @ (qmltpeq(h9(e12),e20)) )
        | ( {$box} @ (qmltpeq(h9(e13),e20)) ) )
      & ( ( {$box} @ (qmltpeq(h9(e10),e21)) )
        | ( {$box} @ (qmltpeq(h9(e11),e21)) )
        | ( {$box} @ (qmltpeq(h9(e12),e21)) )
        | ( {$box} @ (qmltpeq(h9(e13),e21)) ) )
      & ( ( {$box} @ (qmltpeq(h9(e10),e22)) )
        | ( {$box} @ (qmltpeq(h9(e11),e22)) )
        | ( {$box} @ (qmltpeq(h9(e12),e22)) )
        | ( {$box} @ (qmltpeq(h9(e13),e22)) ) )
      & ( ( {$box} @ (qmltpeq(h9(e10),e23)) )
        | ( {$box} @ (qmltpeq(h9(e11),e23)) )
        | ( {$box} @ (qmltpeq(h9(e12),e23)) )
        | ( {$box} @ (qmltpeq(h9(e13),e23)) ) ) )
    | ( ( {$box} @ (qmltpeq(h10(op1(e10,e10)),op2(h10(e10),h10(e10)))) )
      & ( {$box} @ (qmltpeq(h10(op1(e10,e11)),op2(h10(e10),h10(e11)))) )
      & ( {$box} @ (qmltpeq(h10(op1(e10,e12)),op2(h10(e10),h10(e12)))) )
      & ( {$box} @ (qmltpeq(h10(op1(e10,e13)),op2(h10(e10),h10(e13)))) )
      & ( {$box} @ (qmltpeq(h10(op1(e11,e10)),op2(h10(e11),h10(e10)))) )
      & ( {$box} @ (qmltpeq(h10(op1(e11,e11)),op2(h10(e11),h10(e11)))) )
      & ( {$box} @ (qmltpeq(h10(op1(e11,e12)),op2(h10(e11),h10(e12)))) )
      & ( {$box} @ (qmltpeq(h10(op1(e11,e13)),op2(h10(e11),h10(e13)))) )
      & ( {$box} @ (qmltpeq(h10(op1(e12,e10)),op2(h10(e12),h10(e10)))) )
      & ( {$box} @ (qmltpeq(h10(op1(e12,e11)),op2(h10(e12),h10(e11)))) )
      & ( {$box} @ (qmltpeq(h10(op1(e12,e12)),op2(h10(e12),h10(e12)))) )
      & ( {$box} @ (qmltpeq(h10(op1(e12,e13)),op2(h10(e12),h10(e13)))) )
      & ( {$box} @ (qmltpeq(h10(op1(e13,e10)),op2(h10(e13),h10(e10)))) )
      & ( {$box} @ (qmltpeq(h10(op1(e13,e11)),op2(h10(e13),h10(e11)))) )
      & ( {$box} @ (qmltpeq(h10(op1(e13,e12)),op2(h10(e13),h10(e12)))) )
      & ( {$box} @ (qmltpeq(h10(op1(e13,e13)),op2(h10(e13),h10(e13)))) )
      & ( ( {$box} @ (qmltpeq(h10(e10),e20)) )
        | ( {$box} @ (qmltpeq(h10(e11),e20)) )
        | ( {$box} @ (qmltpeq(h10(e12),e20)) )
        | ( {$box} @ (qmltpeq(h10(e13),e20)) ) )
      & ( ( {$box} @ (qmltpeq(h10(e10),e21)) )
        | ( {$box} @ (qmltpeq(h10(e11),e21)) )
        | ( {$box} @ (qmltpeq(h10(e12),e21)) )
        | ( {$box} @ (qmltpeq(h10(e13),e21)) ) )
      & ( ( {$box} @ (qmltpeq(h10(e10),e22)) )
        | ( {$box} @ (qmltpeq(h10(e11),e22)) )
        | ( {$box} @ (qmltpeq(h10(e12),e22)) )
        | ( {$box} @ (qmltpeq(h10(e13),e22)) ) )
      & ( ( {$box} @ (qmltpeq(h10(e10),e23)) )
        | ( {$box} @ (qmltpeq(h10(e11),e23)) )
        | ( {$box} @ (qmltpeq(h10(e12),e23)) )
        | ( {$box} @ (qmltpeq(h10(e13),e23)) ) ) )
    | ( ( {$box} @ (qmltpeq(h11(op1(e10,e10)),op2(h11(e10),h11(e10)))) )
      & ( {$box} @ (qmltpeq(h11(op1(e10,e11)),op2(h11(e10),h11(e11)))) )
      & ( {$box} @ (qmltpeq(h11(op1(e10,e12)),op2(h11(e10),h11(e12)))) )
      & ( {$box} @ (qmltpeq(h11(op1(e10,e13)),op2(h11(e10),h11(e13)))) )
      & ( {$box} @ (qmltpeq(h11(op1(e11,e10)),op2(h11(e11),h11(e10)))) )
      & ( {$box} @ (qmltpeq(h11(op1(e11,e11)),op2(h11(e11),h11(e11)))) )
      & ( {$box} @ (qmltpeq(h11(op1(e11,e12)),op2(h11(e11),h11(e12)))) )
      & ( {$box} @ (qmltpeq(h11(op1(e11,e13)),op2(h11(e11),h11(e13)))) )
      & ( {$box} @ (qmltpeq(h11(op1(e12,e10)),op2(h11(e12),h11(e10)))) )
      & ( {$box} @ (qmltpeq(h11(op1(e12,e11)),op2(h11(e12),h11(e11)))) )
      & ( {$box} @ (qmltpeq(h11(op1(e12,e12)),op2(h11(e12),h11(e12)))) )
      & ( {$box} @ (qmltpeq(h11(op1(e12,e13)),op2(h11(e12),h11(e13)))) )
      & ( {$box} @ (qmltpeq(h11(op1(e13,e10)),op2(h11(e13),h11(e10)))) )
      & ( {$box} @ (qmltpeq(h11(op1(e13,e11)),op2(h11(e13),h11(e11)))) )
      & ( {$box} @ (qmltpeq(h11(op1(e13,e12)),op2(h11(e13),h11(e12)))) )
      & ( {$box} @ (qmltpeq(h11(op1(e13,e13)),op2(h11(e13),h11(e13)))) )
      & ( ( {$box} @ (qmltpeq(h11(e10),e20)) )
        | ( {$box} @ (qmltpeq(h11(e11),e20)) )
        | ( {$box} @ (qmltpeq(h11(e12),e20)) )
        | ( {$box} @ (qmltpeq(h11(e13),e20)) ) )
      & ( ( {$box} @ (qmltpeq(h11(e10),e21)) )
        | ( {$box} @ (qmltpeq(h11(e11),e21)) )
        | ( {$box} @ (qmltpeq(h11(e12),e21)) )
        | ( {$box} @ (qmltpeq(h11(e13),e21)) ) )
      & ( ( {$box} @ (qmltpeq(h11(e10),e22)) )
        | ( {$box} @ (qmltpeq(h11(e11),e22)) )
        | ( {$box} @ (qmltpeq(h11(e12),e22)) )
        | ( {$box} @ (qmltpeq(h11(e13),e22)) ) )
      & ( ( {$box} @ (qmltpeq(h11(e10),e23)) )
        | ( {$box} @ (qmltpeq(h11(e11),e23)) )
        | ( {$box} @ (qmltpeq(h11(e12),e23)) )
        | ( {$box} @ (qmltpeq(h11(e13),e23)) ) ) )
    | ( ( {$box} @ (qmltpeq(h12(op1(e10,e10)),op2(h12(e10),h12(e10)))) )
      & ( {$box} @ (qmltpeq(h12(op1(e10,e11)),op2(h12(e10),h12(e11)))) )
      & ( {$box} @ (qmltpeq(h12(op1(e10,e12)),op2(h12(e10),h12(e12)))) )
      & ( {$box} @ (qmltpeq(h12(op1(e10,e13)),op2(h12(e10),h12(e13)))) )
      & ( {$box} @ (qmltpeq(h12(op1(e11,e10)),op2(h12(e11),h12(e10)))) )
      & ( {$box} @ (qmltpeq(h12(op1(e11,e11)),op2(h12(e11),h12(e11)))) )
      & ( {$box} @ (qmltpeq(h12(op1(e11,e12)),op2(h12(e11),h12(e12)))) )
      & ( {$box} @ (qmltpeq(h12(op1(e11,e13)),op2(h12(e11),h12(e13)))) )
      & ( {$box} @ (qmltpeq(h12(op1(e12,e10)),op2(h12(e12),h12(e10)))) )
      & ( {$box} @ (qmltpeq(h12(op1(e12,e11)),op2(h12(e12),h12(e11)))) )
      & ( {$box} @ (qmltpeq(h12(op1(e12,e12)),op2(h12(e12),h12(e12)))) )
      & ( {$box} @ (qmltpeq(h12(op1(e12,e13)),op2(h12(e12),h12(e13)))) )
      & ( {$box} @ (qmltpeq(h12(op1(e13,e10)),op2(h12(e13),h12(e10)))) )
      & ( {$box} @ (qmltpeq(h12(op1(e13,e11)),op2(h12(e13),h12(e11)))) )
      & ( {$box} @ (qmltpeq(h12(op1(e13,e12)),op2(h12(e13),h12(e12)))) )
      & ( {$box} @ (qmltpeq(h12(op1(e13,e13)),op2(h12(e13),h12(e13)))) )
      & ( ( {$box} @ (qmltpeq(h12(e10),e20)) )
        | ( {$box} @ (qmltpeq(h12(e11),e20)) )
        | ( {$box} @ (qmltpeq(h12(e12),e20)) )
        | ( {$box} @ (qmltpeq(h12(e13),e20)) ) )
      & ( ( {$box} @ (qmltpeq(h12(e10),e21)) )
        | ( {$box} @ (qmltpeq(h12(e11),e21)) )
        | ( {$box} @ (qmltpeq(h12(e12),e21)) )
        | ( {$box} @ (qmltpeq(h12(e13),e21)) ) )
      & ( ( {$box} @ (qmltpeq(h12(e10),e22)) )
        | ( {$box} @ (qmltpeq(h12(e11),e22)) )
        | ( {$box} @ (qmltpeq(h12(e12),e22)) )
        | ( {$box} @ (qmltpeq(h12(e13),e22)) ) )
      & ( ( {$box} @ (qmltpeq(h12(e10),e23)) )
        | ( {$box} @ (qmltpeq(h12(e11),e23)) )
        | ( {$box} @ (qmltpeq(h12(e12),e23)) )
        | ( {$box} @ (qmltpeq(h12(e13),e23)) ) ) ) ) ).

%------------------------------------------------------------------------------
