%------------------------------------------------------------------------------
% File     : GLC464_1.013 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Logic Calculi
% Problem  : Prove Hilbert's implies_2 axiom from Lukasiewicz's axiomatization
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP LCL464+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GLC464+1 [QMLTP]
%          : GLC464_1.013_k_cumulative_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   95 (   0 unt;  39 typ;   0 def)
%            Number of atoms       :  931 (   0 equ)
%            Maximal formula atoms :    4 (  16 avg)
%            Number of connectives :  489 (   0   ~;   0   |;  30   &)
%                                         (   0 <=>;  73  =>;   0  <=;   0 <~>)
%                                         ( 386 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   2 avg)
%            Maximal term depth    :    5 (   2 avg)
%            Number of FOOLs       :  386 ( 386 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   12 (   7   >;   5   *;   0   +;   0  <<)
%            Number of predicates  :   35 (  34 usr;  32 prp; 0-2 aty)
%            Number of functors    :    5 (   5 usr;   0 con; 1-2 aty)
%            Number of variables   :  154 (; 154   !;   0   ?; 154   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_cumulative_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $cumulative,
        $modalities == $modal_system_K ] ).

tff(r2_decl,type,
    r2: $o ).

tff(r3_decl,type,
    r3: $o ).

tff(r4_decl,type,
    r4: $o ).

tff(r5_decl,type,
    r5: $o ).

tff(equivalence_1_decl,type,
    equivalence_1: $o ).

tff(equivalence_2_decl,type,
    equivalence_2: $o ).

tff(cn2_decl,type,
    cn2: $o ).

tff(cn1_decl,type,
    cn1: $o ).

tff(cn3_decl,type,
    cn3: $o ).

tff(kn2_decl,type,
    kn2: $o ).

tff(kn1_decl,type,
    kn1: $o ).

tff(kn3_decl,type,
    kn3: $o ).

tff(equivalence_3_decl,type,
    equivalence_3: $o ).

tff(op_implies_or_decl,type,
    op_implies_or: $o ).

tff(op_and_decl,type,
    op_and: $o ).

tff(and_2_decl,type,
    and_2: $o ).

tff(and_3_decl,type,
    and_3: $o ).

tff(and_1_decl,type,
    and_1: $o ).

tff(implies_2_decl,type,
    implies_2: $o ).

tff(implies_3_decl,type,
    implies_3: $o ).

tff(op_implies_and_decl,type,
    op_implies_and: $o ).

tff(implies_1_decl,type,
    implies_1: $o ).

tff(substitution_of_equivalents_decl,type,
    substitution_of_equivalents: $o ).

tff(op_or_decl,type,
    op_or: $o ).

tff(modus_tollens_decl,type,
    modus_tollens: $o ).

tff(or_1_decl,type,
    or_1: $o ).

tff(or_2_decl,type,
    or_2: $o ).

tff(or_3_decl,type,
    or_3: $o ).

tff(op_equiv_decl,type,
    op_equiv: $o ).

tff(modus_ponens_decl,type,
    modus_ponens: $o ).

tff(op_implies_decl,type,
    op_implies: $o ).

tff(r1_decl,type,
    r1: $o ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(is_a_theorem_decl,type,
    is_a_theorem: $i > $o ).

tff(equiv_decl,type,
    equiv: ( $i * $i ) > $i ).

tff(not_decl,type,
    not: $i > $i ).

tff(or_decl,type,
    or: ( $i * $i ) > $i ).

tff(and_decl,type,
    and: ( $i * $i ) > $i ).

tff(implies_decl,type,
    implies: ( $i * $i ) > $i ).

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

tff(and_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(and(A,C),and(B,C))) ) )) )) )) )) ) ).

tff(and_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(and(C,A),and(C,B))) ) )) )) )) )) ) ).

tff(equiv_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(equiv(A,C),equiv(B,C))) ) )) )) )) )) ) ).

tff(equiv_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(equiv(C,A),equiv(C,B))) ) )) )) )) )) ) ).

tff(implies_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(implies(A,C),implies(B,C))) ) )) )) )) )) ) ).

tff(implies_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(implies(C,A),implies(C,B))) ) )) )) )) )) ) ).

tff(not_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(A,B)) )
                => ( {$box} @ (qmltpeq(not(A),not(B))) ) )) )) )) ) ).

tff(or_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(or(A,C),or(B,C))) ) )) )) )) )) ) ).

tff(or_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (qmltpeq(A,B)) )
                     => ( {$box} @ (qmltpeq(or(C,A),or(C,B))) ) )) )) )) )) ) ).

tff(is_a_theorem_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (is_a_theorem(A)) ) )
                => ( {$box} @ (is_a_theorem(B)) ) )) )) )) ) ).

tff(modus_ponens_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (modus_ponens) )
        => ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] :
                     ( {$box}
                     @ (( ( ( {$box} @ (is_a_theorem(X)) )
                          & ( {$box} @ (is_a_theorem(implies(X,Y))) ) )
                       => ( {$box} @ (is_a_theorem(Y)) ) )) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] :
                     ( {$box}
                     @ (( ( ( {$box} @ (is_a_theorem(X)) )
                          & ( {$box} @ (is_a_theorem(implies(X,Y))) ) )
                       => ( {$box} @ (is_a_theorem(Y)) ) )) )) )) )
        => ( {$box} @ (modus_ponens) ) )) ) ) ).

tff(substitution_of_equivalents_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (substitution_of_equivalents) )
        => ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] :
                     ( {$box}
                     @ (( ( {$box} @ (is_a_theorem(equiv(X,Y))) )
                       => ( {$box} @ (qmltpeq(X,Y)) ) )) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] :
                     ( {$box}
                     @ (( ( {$box} @ (is_a_theorem(equiv(X,Y))) )
                       => ( {$box} @ (qmltpeq(X,Y)) ) )) )) )) )
        => ( {$box} @ (substitution_of_equivalents) ) )) ) ) ).

tff(modus_tollens_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (modus_tollens) )
        => ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] : ( {$box} @ (is_a_theorem(implies(implies(not(Y),not(X)),implies(X,Y)))) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] : ( {$box} @ (is_a_theorem(implies(implies(not(Y),not(X)),implies(X,Y)))) )) )) )
        => ( {$box} @ (modus_tollens) ) )) ) ) ).

tff(implies_1_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (implies_1) )
        => ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] : ( {$box} @ (is_a_theorem(implies(X,implies(Y,X)))) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] : ( {$box} @ (is_a_theorem(implies(X,implies(Y,X)))) )) )) )
        => ( {$box} @ (implies_1) ) )) ) ) ).

tff(implies_2_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (implies_2) )
        => ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] : ( {$box} @ (is_a_theorem(implies(implies(X,implies(X,Y)),implies(X,Y)))) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] : ( {$box} @ (is_a_theorem(implies(implies(X,implies(X,Y)),implies(X,Y)))) )) )) )
        => ( {$box} @ (implies_2) ) )) ) ) ).

tff(implies_3_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (implies_3) )
        => ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] :
                     ( {$box}
                     @ (! [Z: $i] : ( {$box} @ (is_a_theorem(implies(implies(X,Y),implies(implies(Y,Z),implies(X,Z))))) )) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] :
                     ( {$box}
                     @ (! [Z: $i] : ( {$box} @ (is_a_theorem(implies(implies(X,Y),implies(implies(Y,Z),implies(X,Z))))) )) )) )) )
        => ( {$box} @ (implies_3) ) )) ) ) ).

tff(and_1_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (and_1) )
        => ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] : ( {$box} @ (is_a_theorem(implies(and(X,Y),X))) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] : ( {$box} @ (is_a_theorem(implies(and(X,Y),X))) )) )) )
        => ( {$box} @ (and_1) ) )) ) ) ).

tff(and_2_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (and_2) )
        => ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] : ( {$box} @ (is_a_theorem(implies(and(X,Y),Y))) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] : ( {$box} @ (is_a_theorem(implies(and(X,Y),Y))) )) )) )
        => ( {$box} @ (and_2) ) )) ) ) ).

tff(and_3_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (and_3) )
        => ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] : ( {$box} @ (is_a_theorem(implies(X,implies(Y,and(X,Y))))) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] : ( {$box} @ (is_a_theorem(implies(X,implies(Y,and(X,Y))))) )) )) )
        => ( {$box} @ (and_3) ) )) ) ) ).

tff(or_1_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (or_1) )
        => ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] : ( {$box} @ (is_a_theorem(implies(X,or(X,Y)))) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] : ( {$box} @ (is_a_theorem(implies(X,or(X,Y)))) )) )) )
        => ( {$box} @ (or_1) ) )) ) ) ).

tff(or_2_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (or_2) )
        => ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] : ( {$box} @ (is_a_theorem(implies(Y,or(X,Y)))) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] : ( {$box} @ (is_a_theorem(implies(Y,or(X,Y)))) )) )) )
        => ( {$box} @ (or_2) ) )) ) ) ).

tff(or_3_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (or_3) )
        => ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] :
                     ( {$box}
                     @ (! [Z: $i] : ( {$box} @ (is_a_theorem(implies(implies(X,Z),implies(implies(Y,Z),implies(or(X,Y),Z))))) )) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] :
                     ( {$box}
                     @ (! [Z: $i] : ( {$box} @ (is_a_theorem(implies(implies(X,Z),implies(implies(Y,Z),implies(or(X,Y),Z))))) )) )) )) )
        => ( {$box} @ (or_3) ) )) ) ) ).

tff(equivalence_1_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (equivalence_1) )
        => ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] : ( {$box} @ (is_a_theorem(implies(equiv(X,Y),implies(X,Y)))) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] : ( {$box} @ (is_a_theorem(implies(equiv(X,Y),implies(X,Y)))) )) )) )
        => ( {$box} @ (equivalence_1) ) )) ) ) ).

tff(equivalence_2_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (equivalence_2) )
        => ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] : ( {$box} @ (is_a_theorem(implies(equiv(X,Y),implies(Y,X)))) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] : ( {$box} @ (is_a_theorem(implies(equiv(X,Y),implies(Y,X)))) )) )) )
        => ( {$box} @ (equivalence_2) ) )) ) ) ).

tff(equivalence_3_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (equivalence_3) )
        => ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] : ( {$box} @ (is_a_theorem(implies(implies(X,Y),implies(implies(Y,X),equiv(X,Y))))) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] : ( {$box} @ (is_a_theorem(implies(implies(X,Y),implies(implies(Y,X),equiv(X,Y))))) )) )) )
        => ( {$box} @ (equivalence_3) ) )) ) ) ).

tff(kn1_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (kn1) )
        => ( {$box}
           @ (! [P: $i] : ( {$box} @ (is_a_theorem(implies(P,and(P,P)))) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [P: $i] : ( {$box} @ (is_a_theorem(implies(P,and(P,P)))) )) )
        => ( {$box} @ (kn1) ) )) ) ) ).

tff(kn2_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (kn2) )
        => ( {$box}
           @ (! [P: $i] :
                ( {$box}
                @ (! [Q: $i] : ( {$box} @ (is_a_theorem(implies(and(P,Q),P))) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [P: $i] :
                ( {$box}
                @ (! [Q: $i] : ( {$box} @ (is_a_theorem(implies(and(P,Q),P))) )) )) )
        => ( {$box} @ (kn2) ) )) ) ) ).

tff(kn3_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (kn3) )
        => ( {$box}
           @ (! [P: $i] :
                ( {$box}
                @ (! [Q: $i] :
                     ( {$box}
                     @ (! [R: $i] : ( {$box} @ (is_a_theorem(implies(implies(P,Q),implies(not(and(Q,R)),not(and(R,P)))))) )) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [P: $i] :
                ( {$box}
                @ (! [Q: $i] :
                     ( {$box}
                     @ (! [R: $i] : ( {$box} @ (is_a_theorem(implies(implies(P,Q),implies(not(and(Q,R)),not(and(R,P)))))) )) )) )) )
        => ( {$box} @ (kn3) ) )) ) ) ).

tff(cn1_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (cn1) )
        => ( {$box}
           @ (! [P: $i] :
                ( {$box}
                @ (! [Q: $i] :
                     ( {$box}
                     @ (! [R: $i] : ( {$box} @ (is_a_theorem(implies(implies(P,Q),implies(implies(Q,R),implies(P,R))))) )) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [P: $i] :
                ( {$box}
                @ (! [Q: $i] :
                     ( {$box}
                     @ (! [R: $i] : ( {$box} @ (is_a_theorem(implies(implies(P,Q),implies(implies(Q,R),implies(P,R))))) )) )) )) )
        => ( {$box} @ (cn1) ) )) ) ) ).

tff(cn2_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (cn2) )
        => ( {$box}
           @ (! [P: $i] :
                ( {$box}
                @ (! [Q: $i] : ( {$box} @ (is_a_theorem(implies(P,implies(not(P),Q)))) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [P: $i] :
                ( {$box}
                @ (! [Q: $i] : ( {$box} @ (is_a_theorem(implies(P,implies(not(P),Q)))) )) )) )
        => ( {$box} @ (cn2) ) )) ) ) ).

tff(cn3_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (cn3) )
        => ( {$box}
           @ (! [P: $i] : ( {$box} @ (is_a_theorem(implies(implies(not(P),P),P))) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [P: $i] : ( {$box} @ (is_a_theorem(implies(implies(not(P),P),P))) )) )
        => ( {$box} @ (cn3) ) )) ) ) ).

tff(r1_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (r1) )
        => ( {$box}
           @ (! [P: $i] : ( {$box} @ (is_a_theorem(implies(or(P,P),P))) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [P: $i] : ( {$box} @ (is_a_theorem(implies(or(P,P),P))) )) )
        => ( {$box} @ (r1) ) )) ) ) ).

tff(r2_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (r2) )
        => ( {$box}
           @ (! [P: $i] :
                ( {$box}
                @ (! [Q: $i] : ( {$box} @ (is_a_theorem(implies(Q,or(P,Q)))) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [P: $i] :
                ( {$box}
                @ (! [Q: $i] : ( {$box} @ (is_a_theorem(implies(Q,or(P,Q)))) )) )) )
        => ( {$box} @ (r2) ) )) ) ) ).

tff(r3_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (r3) )
        => ( {$box}
           @ (! [P: $i] :
                ( {$box}
                @ (! [Q: $i] : ( {$box} @ (is_a_theorem(implies(or(P,Q),or(Q,P)))) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [P: $i] :
                ( {$box}
                @ (! [Q: $i] : ( {$box} @ (is_a_theorem(implies(or(P,Q),or(Q,P)))) )) )) )
        => ( {$box} @ (r3) ) )) ) ) ).

tff(r4_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (r4) )
        => ( {$box}
           @ (! [P: $i] :
                ( {$box}
                @ (! [Q: $i] :
                     ( {$box}
                     @ (! [R: $i] : ( {$box} @ (is_a_theorem(implies(or(P,or(Q,R)),or(Q,or(P,R))))) )) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [P: $i] :
                ( {$box}
                @ (! [Q: $i] :
                     ( {$box}
                     @ (! [R: $i] : ( {$box} @ (is_a_theorem(implies(or(P,or(Q,R)),or(Q,or(P,R))))) )) )) )) )
        => ( {$box} @ (r4) ) )) ) ) ).

tff(r5_0,axiom-local,
    ( ( {$box}
      @ (( ( {$box} @ (r5) )
        => ( {$box}
           @ (! [P: $i] :
                ( {$box}
                @ (! [Q: $i] :
                     ( {$box}
                     @ (! [R: $i] : ( {$box} @ (is_a_theorem(implies(implies(Q,R),implies(or(P,Q),or(P,R))))) )) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [P: $i] :
                ( {$box}
                @ (! [Q: $i] :
                     ( {$box}
                     @ (! [R: $i] : ( {$box} @ (is_a_theorem(implies(implies(Q,R),implies(or(P,Q),or(P,R))))) )) )) )) )
        => ( {$box} @ (r5) ) )) ) ) ).

tff(op_or_0,axiom-local,
    ( {$box}
    @ (( ( {$box} @ (op_or) )
      => ( {$box}
         @ (! [X: $i] :
              ( {$box}
              @ (! [Y: $i] : ( {$box} @ (qmltpeq(or(X,Y),not(and(not(X),not(Y))))) )) )) ) )) ) ).

tff(op_and_0,axiom-local,
    ( {$box}
    @ (( ( {$box} @ (op_and) )
      => ( {$box}
         @ (! [X: $i] :
              ( {$box}
              @ (! [Y: $i] : ( {$box} @ (qmltpeq(and(X,Y),not(or(not(X),not(Y))))) )) )) ) )) ) ).

tff(op_implies_and_0,axiom-local,
    ( {$box}
    @ (( ( {$box} @ (op_implies_and) )
      => ( {$box}
         @ (! [X: $i] :
              ( {$box}
              @ (! [Y: $i] : ( {$box} @ (qmltpeq(implies(X,Y),not(and(X,not(Y))))) )) )) ) )) ) ).

tff(op_implies_or_0,axiom-local,
    ( {$box}
    @ (( ( {$box} @ (op_implies_or) )
      => ( {$box}
         @ (! [X: $i] :
              ( {$box}
              @ (! [Y: $i] : ( {$box} @ (qmltpeq(implies(X,Y),or(not(X),Y))) )) )) ) )) ) ).

tff(op_equiv_0,axiom-local,
    ( {$box}
    @ (( ( {$box} @ (op_equiv) )
      => ( {$box}
         @ (! [X: $i] :
              ( {$box}
              @ (! [Y: $i] : ( {$box} @ (qmltpeq(equiv(X,Y),and(implies(X,Y),implies(Y,X)))) )) )) ) )) ) ).

tff(luka_op_or,axiom-local,
    {$box} @ (op_or) ).

tff(luka_op_implies,axiom-local,
    {$box} @ (op_implies) ).

tff(luka_op_equiv,axiom-local,
    {$box} @ (op_equiv) ).

tff(luka_modus_ponens,axiom-local,
    {$box} @ (modus_ponens) ).

tff(luka_cn1,axiom-local,
    {$box} @ (cn1) ).

tff(luka_cn2,axiom-local,
    {$box} @ (cn2) ).

tff(luka_cn3,axiom-local,
    {$box} @ (cn3) ).

tff(substitution_of_equivalents_1,axiom-local,
    {$box} @ (substitution_of_equivalents) ).

tff(hilbert_op_or,axiom-local,
    {$box} @ (op_or) ).

tff(hilbert_op_implies_and,axiom-local,
    {$box} @ (op_implies_and) ).

tff(hilbert_op_equiv,axiom-local,
    {$box} @ (op_equiv) ).

tff(hilbert_implies_2,conjecture,
    {$box} @ (implies_2) ).

%------------------------------------------------------------------------------
