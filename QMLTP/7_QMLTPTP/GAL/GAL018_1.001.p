%------------------------------------------------------------------------------
% File     : GAL018_1.001 : TPTP v9.0.0. Released v9.0.0.
% Domain   : General Algebra
% Problem  : Groups 4: CPROPS-SORTED-DISCRIMINANT-PROBLEM-1
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP ALG018+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GAL018+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   23 (   0 unt;   7 typ;   0 def)
%            Number of atoms       :  284 (   0 equ)
%            Maximal formula atoms :    4 (  17 avg)
%            Number of connectives :  153 (   2   ~;   0   |;   9   &)
%                                         (   0 <=>;  25  =>;   0  <=;   0 <~>)
%                                         ( 117 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    4 (   2 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of FOOLs       :  117 ( 117 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   10 (   7   >;   3   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    4 (   4 usr;   0 con; 1-2 aty)
%            Number of variables   :   42 (;  40   !;   2   ?;  42   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(modal_system,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == $modal_system_K ] ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(sorti2_decl,type,
    sorti2: $i > $o ).

tff(sorti1_decl,type,
    sorti1: $i > $o ).

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

tff(sorti1_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (sorti1(A)) ) )
                => ( {$box} @ (sorti1(B)) ) )) )) )) ) ).

tff(sorti2_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (sorti2(A)) ) )
                => ( {$box} @ (sorti2(B)) ) )) )) )) ) ).

tff(ax1,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (sorti1(U)) )
           => ( {$box}
              @ (! [V: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (sorti1(V)) )
                     => ( {$box} @ (sorti1(op1(U,V))) ) )) )) ) )) )) ) ).

tff(ax2,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (( ( {$box} @ (sorti2(U)) )
           => ( {$box}
              @ (! [V: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (sorti2(V)) )
                     => ( {$box} @ (sorti2(op2(U,V))) ) )) )) ) )) )) ) ).

tff(ax3,axiom-local,
    ? [U: $i] :
      ( ( {$box} @ (sorti1(U)) )
      & ( {$box}
        @ (! [V: $i] :
             ( {$box}
             @ (( ( {$box} @ (sorti1(V)) )
               => ( {$box} @ (qmltpeq(op1(V,V),U)) ) )) )) ) ) ).

tff(ax4,axiom-local,
    ( {$box}
    @ (~ ? [U: $i] :
           ( ( {$box} @ (sorti2(U)) )
           & ( {$box}
             @ (! [V: $i] :
                  ( {$box}
                  @ (( ( {$box} @ (sorti2(V)) )
                    => ( {$box} @ (qmltpeq(op2(V,V),U)) ) )) )) ) )) ) ).

tff(co1,conjecture,
    ( {$box}
    @ (( ( ( {$box}
           @ (! [U: $i] :
                ( {$box}
                @ (( ( {$box} @ (sorti1(U)) )
                  => ( {$box} @ (sorti2(h(U))) ) )) )) )
         & ( {$box}
           @ (! [V: $i] :
                ( {$box}
                @ (( ( {$box} @ (sorti2(V)) )
                  => ( {$box} @ (sorti1(j(V))) ) )) )) ) )
      => ( {$box}
         @ (~ ( ( {$box}
                @ (! [W: $i] :
                     ( {$box}
                     @ (( ( {$box} @ (sorti1(W)) )
                       => ( {$box}
                          @ (! [X: $i] :
                               ( {$box}
                               @ (( ( {$box} @ (sorti1(X)) )
                                 => ( {$box} @ (qmltpeq(h(op1(W,X)),op2(h(W),h(X)))) ) )) )) ) )) )) )
              & ( {$box}
                @ (! [Y: $i] :
                     ( {$box}
                     @ (( ( {$box} @ (sorti2(Y)) )
                       => ( {$box}
                          @ (! [Z: $i] :
                               ( {$box}
                               @ (( ( {$box} @ (sorti2(Z)) )
                                 => ( {$box} @ (qmltpeq(j(op2(Y,Z)),op1(j(Y),j(Z)))) ) )) )) ) )) )) )
              & ( {$box}
                @ (! [X1: $i] :
                     ( {$box}
                     @ (( ( {$box} @ (sorti2(X1)) )
                       => ( {$box} @ (qmltpeq(h(j(X1)),X1)) ) )) )) )
              & ( {$box}
                @ (! [X2: $i] :
                     ( {$box}
                     @ (( ( {$box} @ (sorti1(X2)) )
                       => ( {$box} @ (qmltpeq(j(h(X2)),X2)) ) )) )) ) )) ) )) ) ).

%------------------------------------------------------------------------------
