%------------------------------------------------------------------------------
% File     : GAL020_1.007 : TPTP v9.0.0. Released v9.0.0.
% Domain   : General Algebra
% Problem  : Groups 4: REPRESENTATIVES-PAIRWISE-NOT-ISO-PROBLEM-1
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP ALG020+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GAL020+1 [QMLTP]
%          : GAL020_1.007_k_varying_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   28 (   0 unt;  13 typ;   0 def)
%            Number of atoms       :  570 (   0 equ)
%            Maximal formula atoms :   32 (  38 avg)
%            Number of connectives :  374 (  29   ~;  24   |; 102   &)
%                                         (   0 <=>;   9  =>;   0  <=;   0 <~>)
%                                         ( 210 {}@;   0 {#};   0 {.})
%            Maximal formula depth :   17 (   6 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of FOOLs       :  210 ( 210 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    8 (   5   >;   3   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :   12 (  12 usr;   8 con; 0-2 aty)
%            Number of variables   :   22 (;  22   !;   0   ?;  22   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_varying_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $varying,
        $modalities == $modal_system_K ] ).

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

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(op2_decl,type,
    op2: ( $i * $i ) > $i ).

tff(op1_decl,type,
    op1: ( $i * $i ) > $i ).

tff(h_decl,type,
    h: $i > $i ).

tff(j_decl,type,
    j: $i > $i ).

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

tff(h_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(h(A),h(B))) ) )) )) )) ) ).

tff(j_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(j(A),j(B))) ) )) )) )) ) ).

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

tff(ax2,axiom-local,
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

tff(ax3,axiom-local,
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

tff(ax4,axiom-local,
    ( ( {$box} @ (qmltpeq(op1(e10,e10),e10)) )
    & ( {$box} @ (qmltpeq(op1(e10,e11),e11)) )
    & ( {$box} @ (qmltpeq(op1(e10,e12),e12)) )
    & ( {$box} @ (qmltpeq(op1(e10,e13),e13)) )
    & ( {$box} @ (qmltpeq(op1(e11,e10),e11)) )
    & ( {$box} @ (qmltpeq(op1(e11,e11),e10)) )
    & ( {$box} @ (qmltpeq(op1(e11,e12),e13)) )
    & ( {$box} @ (qmltpeq(op1(e11,e13),e12)) )
    & ( {$box} @ (qmltpeq(op1(e12,e10),e12)) )
    & ( {$box} @ (qmltpeq(op1(e12,e11),e13)) )
    & ( {$box} @ (qmltpeq(op1(e12,e12),e10)) )
    & ( {$box} @ (qmltpeq(op1(e12,e13),e11)) )
    & ( {$box} @ (qmltpeq(op1(e13,e10),e13)) )
    & ( {$box} @ (qmltpeq(op1(e13,e11),e12)) )
    & ( {$box} @ (qmltpeq(op1(e13,e12),e11)) )
    & ( {$box} @ (qmltpeq(op1(e13,e13),e10)) ) ) ).

tff(ax5,axiom-local,
    ( ( {$box} @ (qmltpeq(op2(e20,e20),e20)) )
    & ( {$box} @ (qmltpeq(op2(e20,e21),e21)) )
    & ( {$box} @ (qmltpeq(op2(e20,e22),e22)) )
    & ( {$box} @ (qmltpeq(op2(e20,e23),e23)) )
    & ( {$box} @ (qmltpeq(op2(e21,e20),e21)) )
    & ( {$box} @ (qmltpeq(op2(e21,e21),e23)) )
    & ( {$box} @ (qmltpeq(op2(e21,e22),e20)) )
    & ( {$box} @ (qmltpeq(op2(e21,e23),e22)) )
    & ( {$box} @ (qmltpeq(op2(e22,e20),e22)) )
    & ( {$box} @ (qmltpeq(op2(e22,e21),e20)) )
    & ( {$box} @ (qmltpeq(op2(e22,e22),e23)) )
    & ( {$box} @ (qmltpeq(op2(e22,e23),e21)) )
    & ( {$box} @ (qmltpeq(op2(e23,e20),e23)) )
    & ( {$box} @ (qmltpeq(op2(e23,e21),e22)) )
    & ( {$box} @ (qmltpeq(op2(e23,e22),e21)) )
    & ( {$box} @ (qmltpeq(op2(e23,e23),e20)) ) ) ).

tff(co1,conjecture,
    ( {$box}
    @ (( ( ( ( {$box} @ (qmltpeq(h(e10),e20)) )
           | ( {$box} @ (qmltpeq(h(e10),e21)) )
           | ( {$box} @ (qmltpeq(h(e10),e22)) )
           | ( {$box} @ (qmltpeq(h(e10),e23)) ) )
         & ( ( {$box} @ (qmltpeq(h(e11),e20)) )
           | ( {$box} @ (qmltpeq(h(e11),e21)) )
           | ( {$box} @ (qmltpeq(h(e11),e22)) )
           | ( {$box} @ (qmltpeq(h(e11),e23)) ) )
         & ( ( {$box} @ (qmltpeq(h(e12),e20)) )
           | ( {$box} @ (qmltpeq(h(e12),e21)) )
           | ( {$box} @ (qmltpeq(h(e12),e22)) )
           | ( {$box} @ (qmltpeq(h(e12),e23)) ) )
         & ( ( {$box} @ (qmltpeq(h(e13),e20)) )
           | ( {$box} @ (qmltpeq(h(e13),e21)) )
           | ( {$box} @ (qmltpeq(h(e13),e22)) )
           | ( {$box} @ (qmltpeq(h(e13),e23)) ) )
         & ( ( {$box} @ (qmltpeq(j(e20),e10)) )
           | ( {$box} @ (qmltpeq(j(e20),e11)) )
           | ( {$box} @ (qmltpeq(j(e20),e12)) )
           | ( {$box} @ (qmltpeq(j(e20),e13)) ) )
         & ( ( {$box} @ (qmltpeq(j(e21),e10)) )
           | ( {$box} @ (qmltpeq(j(e21),e11)) )
           | ( {$box} @ (qmltpeq(j(e21),e12)) )
           | ( {$box} @ (qmltpeq(j(e21),e13)) ) )
         & ( ( {$box} @ (qmltpeq(j(e22),e10)) )
           | ( {$box} @ (qmltpeq(j(e22),e11)) )
           | ( {$box} @ (qmltpeq(j(e22),e12)) )
           | ( {$box} @ (qmltpeq(j(e22),e13)) ) )
         & ( ( {$box} @ (qmltpeq(j(e23),e10)) )
           | ( {$box} @ (qmltpeq(j(e23),e11)) )
           | ( {$box} @ (qmltpeq(j(e23),e12)) )
           | ( {$box} @ (qmltpeq(j(e23),e13)) ) ) )
      => ( {$box}
         @ (~ ( ( {$box} @ (qmltpeq(h(op1(e10,e10)),op2(h(e10),h(e10)))) )
              & ( {$box} @ (qmltpeq(h(op1(e10,e11)),op2(h(e10),h(e11)))) )
              & ( {$box} @ (qmltpeq(h(op1(e10,e12)),op2(h(e10),h(e12)))) )
              & ( {$box} @ (qmltpeq(h(op1(e10,e13)),op2(h(e10),h(e13)))) )
              & ( {$box} @ (qmltpeq(h(op1(e11,e10)),op2(h(e11),h(e10)))) )
              & ( {$box} @ (qmltpeq(h(op1(e11,e11)),op2(h(e11),h(e11)))) )
              & ( {$box} @ (qmltpeq(h(op1(e11,e12)),op2(h(e11),h(e12)))) )
              & ( {$box} @ (qmltpeq(h(op1(e11,e13)),op2(h(e11),h(e13)))) )
              & ( {$box} @ (qmltpeq(h(op1(e12,e10)),op2(h(e12),h(e10)))) )
              & ( {$box} @ (qmltpeq(h(op1(e12,e11)),op2(h(e12),h(e11)))) )
              & ( {$box} @ (qmltpeq(h(op1(e12,e12)),op2(h(e12),h(e12)))) )
              & ( {$box} @ (qmltpeq(h(op1(e12,e13)),op2(h(e12),h(e13)))) )
              & ( {$box} @ (qmltpeq(h(op1(e13,e10)),op2(h(e13),h(e10)))) )
              & ( {$box} @ (qmltpeq(h(op1(e13,e11)),op2(h(e13),h(e11)))) )
              & ( {$box} @ (qmltpeq(h(op1(e13,e12)),op2(h(e13),h(e12)))) )
              & ( {$box} @ (qmltpeq(h(op1(e13,e13)),op2(h(e13),h(e13)))) )
              & ( {$box} @ (qmltpeq(j(op2(e20,e20)),op1(j(e20),j(e20)))) )
              & ( {$box} @ (qmltpeq(j(op2(e20,e21)),op1(j(e20),j(e21)))) )
              & ( {$box} @ (qmltpeq(j(op2(e20,e22)),op1(j(e20),j(e22)))) )
              & ( {$box} @ (qmltpeq(j(op2(e20,e23)),op1(j(e20),j(e23)))) )
              & ( {$box} @ (qmltpeq(j(op2(e21,e20)),op1(j(e21),j(e20)))) )
              & ( {$box} @ (qmltpeq(j(op2(e21,e21)),op1(j(e21),j(e21)))) )
              & ( {$box} @ (qmltpeq(j(op2(e21,e22)),op1(j(e21),j(e22)))) )
              & ( {$box} @ (qmltpeq(j(op2(e21,e23)),op1(j(e21),j(e23)))) )
              & ( {$box} @ (qmltpeq(j(op2(e22,e20)),op1(j(e22),j(e20)))) )
              & ( {$box} @ (qmltpeq(j(op2(e22,e21)),op1(j(e22),j(e21)))) )
              & ( {$box} @ (qmltpeq(j(op2(e22,e22)),op1(j(e22),j(e22)))) )
              & ( {$box} @ (qmltpeq(j(op2(e22,e23)),op1(j(e22),j(e23)))) )
              & ( {$box} @ (qmltpeq(j(op2(e23,e20)),op1(j(e23),j(e20)))) )
              & ( {$box} @ (qmltpeq(j(op2(e23,e21)),op1(j(e23),j(e21)))) )
              & ( {$box} @ (qmltpeq(j(op2(e23,e22)),op1(j(e23),j(e22)))) )
              & ( {$box} @ (qmltpeq(j(op2(e23,e23)),op1(j(e23),j(e23)))) )
              & ( {$box} @ (qmltpeq(h(j(e20)),e20)) )
              & ( {$box} @ (qmltpeq(h(j(e21)),e21)) )
              & ( {$box} @ (qmltpeq(h(j(e22)),e22)) )
              & ( {$box} @ (qmltpeq(h(j(e23)),e23)) )
              & ( {$box} @ (qmltpeq(j(h(e10)),e10)) )
              & ( {$box} @ (qmltpeq(j(h(e11)),e11)) )
              & ( {$box} @ (qmltpeq(j(h(e12)),e12)) )
              & ( {$box} @ (qmltpeq(j(h(e13)),e13)) ) )) ) )) ) ).

%------------------------------------------------------------------------------
