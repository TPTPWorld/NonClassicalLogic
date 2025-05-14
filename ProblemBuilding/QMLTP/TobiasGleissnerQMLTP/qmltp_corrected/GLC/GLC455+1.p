%--------------------------------------------------------------------------
% File     : GLC455+1 : QMLTP v1.1
% Domain   : GLC (Goedel translation of Logic Calculi)                     
% Problem  : Goedel translation of LCL455+1 (from TPTP-v5.0.0)      
% Version  : Especial.
% English  :

% Refs     : [TPTP] G. Sutcliffe. TPTP library v2.7.0. http://www.tptp.org 
%            [SS98] G. Sutcliffe, C.B. Suttner. The TPTP Problem Library:  
%                   CNF Release v1.2.1. Journal of Automated Reasoning,    
%                   21(2):177--203, 1998.                                  
%            [Goe69] K. Goedel. An interpretation of the intuitionistic    
%                    sentential logic. In J. Hintikka, Ed., The Philosophy 
%                    of Mathematics, pp~128--129. Oxford University Press, 
%                    1969.                                                 
% Source   : [TPTP], [Goe69]
% Names    :

% Status   :      varying      cumulative   constant   
%             K   Unsolved     Unsolved     Unsolved      v1.1
%             D   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         1.00         1.00          v1.1
%             D   0.75         0.83         0.83          v1.1
%             T   0.50         0.67         0.67          v1.1
%             S4  0.50         0.67         0.67          v1.1
%             S5  0.50         0.60         0.60          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
%--------------------------------------------------------------------------

qmf(reflexivity,axiom,
( #box : ( ! [X] : ( #box : (qmltpeq(X, X)))))).

qmf(symmetry,axiom,
( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (( #box : (qmltpeq(X, Y))) => ( #box : (qmltpeq(Y, X))) ))))))).

qmf(transitivity,axiom,
( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : ( ! [Z] : ( #box : (( ( #box : (qmltpeq(X, Y))) & ( #box : (qmltpeq(Y, Z))) ) => ( #box : (qmltpeq(X, Z))) ))))))))).

qmf(and_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(and(A, C), and(B, C)))) ))))))))).

qmf(and_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(and(C, A), and(C, B)))) ))))))))).

qmf(equiv_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(equiv(A, C), equiv(B, C)))) ))))))))).

qmf(equiv_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(equiv(C, A), equiv(C, B)))) ))))))))).

qmf(implies_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(implies(A, C), implies(B, C)))) ))))))))).

qmf(implies_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(implies(C, A), implies(C, B)))) ))))))))).

qmf(not_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(not(A), not(B)))) ))))))).

qmf(or_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(or(A, C), or(B, C)))) ))))))))).

qmf(or_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (qmltpeq(A, B))) => ( #box : (qmltpeq(or(C, A), or(C, B)))) ))))))))).

qmf(is_a_theorem_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (is_a_theorem(A))) ) => ( #box : (is_a_theorem(B))) ))))))).

qmf(modus_ponens,axiom,
(( #box : (( #box : (modus_ponens)) => ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (( ( #box : (is_a_theorem(X))) & ( #box : (is_a_theorem(implies(X, Y)))) ) => ( #box : (is_a_theorem(Y))) )))))) )) & (#box : (( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (( ( #box : (is_a_theorem(X))) & ( #box : (is_a_theorem(implies(X, Y)))) ) => ( #box : (is_a_theorem(Y))) )))))) => ( #box : (modus_ponens)) )))).

qmf(substitution_of_equivalents,axiom,
(( #box : (( #box : (substitution_of_equivalents)) => ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (( #box : (is_a_theorem(equiv(X, Y)))) => ( #box : (qmltpeq(X, Y))) )))))) )) & (#box : (( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (( #box : (is_a_theorem(equiv(X, Y)))) => ( #box : (qmltpeq(X, Y))) )))))) => ( #box : (substitution_of_equivalents)) )))).

qmf(modus_tollens,axiom,
(( #box : (( #box : (modus_tollens)) => ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (is_a_theorem(implies(implies(not(Y), not(X)), implies(X, Y))))))))) )) & (#box : (( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (is_a_theorem(implies(implies(not(Y), not(X)), implies(X, Y))))))))) => ( #box : (modus_tollens)) )))).

qmf(implies_1,axiom,
(( #box : (( #box : (implies_1)) => ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (is_a_theorem(implies(X, implies(Y, X))))))))) )) & (#box : (( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (is_a_theorem(implies(X, implies(Y, X))))))))) => ( #box : (implies_1)) )))).

qmf(implies_2,axiom,
(( #box : (( #box : (implies_2)) => ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (is_a_theorem(implies(implies(X, implies(X, Y)), implies(X, Y))))))))) )) & (#box : (( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (is_a_theorem(implies(implies(X, implies(X, Y)), implies(X, Y))))))))) => ( #box : (implies_2)) )))).

qmf(implies_3,axiom,
(( #box : (( #box : (implies_3)) => ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : ( ! [Z] : ( #box : (is_a_theorem(implies(implies(X, Y), implies(implies(Y, Z), implies(X, Z)))))))))))) )) & (#box : (( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : ( ! [Z] : ( #box : (is_a_theorem(implies(implies(X, Y), implies(implies(Y, Z), implies(X, Z)))))))))))) => ( #box : (implies_3)) )))).

qmf(and_1,axiom,
(( #box : (( #box : (and_1)) => ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (is_a_theorem(implies(and(X, Y), X)))))))) )) & (#box : (( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (is_a_theorem(implies(and(X, Y), X)))))))) => ( #box : (and_1)) )))).

qmf(and_2,axiom,
(( #box : (( #box : (and_2)) => ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (is_a_theorem(implies(and(X, Y), Y)))))))) )) & (#box : (( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (is_a_theorem(implies(and(X, Y), Y)))))))) => ( #box : (and_2)) )))).

qmf(and_3,axiom,
(( #box : (( #box : (and_3)) => ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (is_a_theorem(implies(X, implies(Y, and(X, Y)))))))))) )) & (#box : (( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (is_a_theorem(implies(X, implies(Y, and(X, Y)))))))))) => ( #box : (and_3)) )))).

qmf(or_1,axiom,
(( #box : (( #box : (or_1)) => ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (is_a_theorem(implies(X, or(X, Y))))))))) )) & (#box : (( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (is_a_theorem(implies(X, or(X, Y))))))))) => ( #box : (or_1)) )))).

qmf(or_2,axiom,
(( #box : (( #box : (or_2)) => ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (is_a_theorem(implies(Y, or(X, Y))))))))) )) & (#box : (( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (is_a_theorem(implies(Y, or(X, Y))))))))) => ( #box : (or_2)) )))).

qmf(or_3,axiom,
(( #box : (( #box : (or_3)) => ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : ( ! [Z] : ( #box : (is_a_theorem(implies(implies(X, Z), implies(implies(Y, Z), implies(or(X, Y), Z)))))))))))) )) & (#box : (( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : ( ! [Z] : ( #box : (is_a_theorem(implies(implies(X, Z), implies(implies(Y, Z), implies(or(X, Y), Z)))))))))))) => ( #box : (or_3)) )))).

qmf(equivalence_1,axiom,
(( #box : (( #box : (equivalence_1)) => ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (is_a_theorem(implies(equiv(X, Y), implies(X, Y))))))))) )) & (#box : (( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (is_a_theorem(implies(equiv(X, Y), implies(X, Y))))))))) => ( #box : (equivalence_1)) )))).

qmf(equivalence_2,axiom,
(( #box : (( #box : (equivalence_2)) => ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (is_a_theorem(implies(equiv(X, Y), implies(Y, X))))))))) )) & (#box : (( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (is_a_theorem(implies(equiv(X, Y), implies(Y, X))))))))) => ( #box : (equivalence_2)) )))).

qmf(equivalence_3,axiom,
(( #box : (( #box : (equivalence_3)) => ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (is_a_theorem(implies(implies(X, Y), implies(implies(Y, X), equiv(X, Y)))))))))) )) & (#box : (( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (is_a_theorem(implies(implies(X, Y), implies(implies(Y, X), equiv(X, Y)))))))))) => ( #box : (equivalence_3)) )))).

qmf(kn1,axiom,
(( #box : (( #box : (kn1)) => ( #box : ( ! [P] : ( #box : (is_a_theorem(implies(P, and(P, P))))))) )) & (#box : (( #box : ( ! [P] : ( #box : (is_a_theorem(implies(P, and(P, P))))))) => ( #box : (kn1)) )))).

qmf(kn2,axiom,
(( #box : (( #box : (kn2)) => ( #box : ( ! [P] : ( #box : ( ! [Q] : ( #box : (is_a_theorem(implies(and(P, Q), P)))))))) )) & (#box : (( #box : ( ! [P] : ( #box : ( ! [Q] : ( #box : (is_a_theorem(implies(and(P, Q), P)))))))) => ( #box : (kn2)) )))).

qmf(kn3,axiom,
(( #box : (( #box : (kn3)) => ( #box : ( ! [P] : ( #box : ( ! [Q] : ( #box : ( ! [R] : ( #box : (is_a_theorem(implies(implies(P, Q), implies(not(and(Q, R)), not(and(R, P))))))))))))) )) & (#box : (( #box : ( ! [P] : ( #box : ( ! [Q] : ( #box : ( ! [R] : ( #box : (is_a_theorem(implies(implies(P, Q), implies(not(and(Q, R)), not(and(R, P))))))))))))) => ( #box : (kn3)) )))).

qmf(cn1,axiom,
(( #box : (( #box : (cn1)) => ( #box : ( ! [P] : ( #box : ( ! [Q] : ( #box : ( ! [R] : ( #box : (is_a_theorem(implies(implies(P, Q), implies(implies(Q, R), implies(P, R)))))))))))) )) & (#box : (( #box : ( ! [P] : ( #box : ( ! [Q] : ( #box : ( ! [R] : ( #box : (is_a_theorem(implies(implies(P, Q), implies(implies(Q, R), implies(P, R)))))))))))) => ( #box : (cn1)) )))).

qmf(cn2,axiom,
(( #box : (( #box : (cn2)) => ( #box : ( ! [P] : ( #box : ( ! [Q] : ( #box : (is_a_theorem(implies(P, implies(not(P), Q))))))))) )) & (#box : (( #box : ( ! [P] : ( #box : ( ! [Q] : ( #box : (is_a_theorem(implies(P, implies(not(P), Q))))))))) => ( #box : (cn2)) )))).

qmf(cn3,axiom,
(( #box : (( #box : (cn3)) => ( #box : ( ! [P] : ( #box : (is_a_theorem(implies(implies(not(P), P), P)))))) )) & (#box : (( #box : ( ! [P] : ( #box : (is_a_theorem(implies(implies(not(P), P), P)))))) => ( #box : (cn3)) )))).

qmf(r1,axiom,
(( #box : (( #box : (r1)) => ( #box : ( ! [P] : ( #box : (is_a_theorem(implies(or(P, P), P)))))) )) & (#box : (( #box : ( ! [P] : ( #box : (is_a_theorem(implies(or(P, P), P)))))) => ( #box : (r1)) )))).

qmf(r2,axiom,
(( #box : (( #box : (r2)) => ( #box : ( ! [P] : ( #box : ( ! [Q] : ( #box : (is_a_theorem(implies(Q, or(P, Q))))))))) )) & (#box : (( #box : ( ! [P] : ( #box : ( ! [Q] : ( #box : (is_a_theorem(implies(Q, or(P, Q))))))))) => ( #box : (r2)) )))).

qmf(r3,axiom,
(( #box : (( #box : (r3)) => ( #box : ( ! [P] : ( #box : ( ! [Q] : ( #box : (is_a_theorem(implies(or(P, Q), or(Q, P))))))))) )) & (#box : (( #box : ( ! [P] : ( #box : ( ! [Q] : ( #box : (is_a_theorem(implies(or(P, Q), or(Q, P))))))))) => ( #box : (r3)) )))).

qmf(r4,axiom,
(( #box : (( #box : (r4)) => ( #box : ( ! [P] : ( #box : ( ! [Q] : ( #box : ( ! [R] : ( #box : (is_a_theorem(implies(or(P, or(Q, R)), or(Q, or(P, R)))))))))))) )) & (#box : (( #box : ( ! [P] : ( #box : ( ! [Q] : ( #box : ( ! [R] : ( #box : (is_a_theorem(implies(or(P, or(Q, R)), or(Q, or(P, R)))))))))))) => ( #box : (r4)) )))).

qmf(r5,axiom,
(( #box : (( #box : (r5)) => ( #box : ( ! [P] : ( #box : ( ! [Q] : ( #box : ( ! [R] : ( #box : (is_a_theorem(implies(implies(Q, R), implies(or(P, Q), or(P, R)))))))))))) )) & (#box : (( #box : ( ! [P] : ( #box : ( ! [Q] : ( #box : ( ! [R] : ( #box : (is_a_theorem(implies(implies(Q, R), implies(or(P, Q), or(P, R)))))))))))) => ( #box : (r5)) )))).

qmf(op_or,axiom,
( #box : (( #box : (op_or)) => ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (qmltpeq(or(X, Y), not(and(not(X), not(Y)))))))))) ))).

qmf(op_and,axiom,
( #box : (( #box : (op_and)) => ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (qmltpeq(and(X, Y), not(or(not(X), not(Y)))))))))) ))).

qmf(op_implies_and,axiom,
( #box : (( #box : (op_implies_and)) => ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (qmltpeq(implies(X, Y), not(and(X, not(Y)))))))))) ))).

qmf(op_implies_or,axiom,
( #box : (( #box : (op_implies_or)) => ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (qmltpeq(implies(X, Y), or(not(X), Y)))))))) ))).

qmf(op_equiv,axiom,
( #box : (( #box : (op_equiv)) => ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (qmltpeq(equiv(X, Y), and(implies(X, Y), implies(Y, X))))))))) ))).

qmf(hilbert_op_or,axiom,
( #box : (op_or))).

qmf(hilbert_op_implies_and,axiom,
( #box : (op_implies_and))).

qmf(hilbert_op_equiv,axiom,
( #box : (op_equiv))).

qmf(hilbert_modus_ponens,axiom,
( #box : (modus_ponens))).

qmf(hilbert_modus_tollens,axiom,
( #box : (modus_tollens))).

qmf(hilbert_implies_1,axiom,
( #box : (implies_1))).

qmf(hilbert_implies_2,axiom,
( #box : (implies_2))).

qmf(hilbert_implies_3,axiom,
( #box : (implies_3))).

qmf(hilbert_and_1,axiom,
( #box : (and_1))).

qmf(hilbert_and_2,axiom,
( #box : (and_2))).

qmf(hilbert_and_3,axiom,
( #box : (and_3))).

qmf(hilbert_or_1,axiom,
( #box : (or_1))).

qmf(hilbert_or_2,axiom,
( #box : (or_2))).

qmf(hilbert_or_3,axiom,
( #box : (or_3))).

qmf(hilbert_equivalence_1,axiom,
( #box : (equivalence_1))).

qmf(hilbert_equivalence_2,axiom,
( #box : (equivalence_2))).

qmf(hilbert_equivalence_3,axiom,
( #box : (equivalence_3))).

qmf(substitution_of_equivalents,axiom,
( #box : (substitution_of_equivalents))).

qmf(principia_op_implies_or,axiom,
( #box : (op_implies_or))).

qmf(principia_op_and,axiom,
( #box : (op_and))).

qmf(principia_op_equiv,axiom,
( #box : (op_equiv))).

qmf(principia_r2,conjecture,
( #box : (r2))).

