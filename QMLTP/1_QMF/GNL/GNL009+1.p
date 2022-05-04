%--------------------------------------------------------------------------
% File     : GNL009+1 : QMLTP v1.1
% Domain   : GNL (Goedel translation of Natural Language Processing)       
% Problem  : Goedel translation of NLP009+1 (from TPTP-v5.0.0)      
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
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         1.00         1.00          v1.1
%             D   0.50         0.67         0.67          v1.1
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

qmf(barrel_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (barrel(A, C))) ) => ( #box : (barrel(B, C))) ))))))))).

qmf(barrel_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (barrel(C, A))) ) => ( #box : (barrel(C, B))) ))))))))).

qmf(car_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (car(A))) ) => ( #box : (car(B))) ))))))).

qmf(chevy_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (chevy(A))) ) => ( #box : (chevy(B))) ))))))).

qmf(city_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (city(A))) ) => ( #box : (city(B))) ))))))).

qmf(dirty_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (dirty(A))) ) => ( #box : (dirty(B))) ))))))).

qmf(down_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (down(A, C))) ) => ( #box : (down(B, C))) ))))))))).

qmf(down_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (down(C, A))) ) => ( #box : (down(C, B))) ))))))))).

qmf(event_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (event(A))) ) => ( #box : (event(B))) ))))))).

qmf(fellow_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (fellow(A))) ) => ( #box : (fellow(B))) ))))))).

qmf(front_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (front(A))) ) => ( #box : (front(B))) ))))))).

qmf(furniture_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (furniture(A))) ) => ( #box : (furniture(B))) ))))))).

qmf(hollywood_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (hollywood(A))) ) => ( #box : (hollywood(B))) ))))))).

qmf(in_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (in(A, C))) ) => ( #box : (in(B, C))) ))))))))).

qmf(in_substitution_2,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (in(C, A))) ) => ( #box : (in(C, B))) ))))))))).

qmf(lonely_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (lonely(A))) ) => ( #box : (lonely(B))) ))))))).

qmf(man_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (man(A))) ) => ( #box : (man(B))) ))))))).

qmf(old_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (old(A))) ) => ( #box : (old(B))) ))))))).

qmf(seat_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (seat(A))) ) => ( #box : (seat(B))) ))))))).

qmf(street_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (street(A))) ) => ( #box : (street(B))) ))))))).

qmf(way_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (way(A))) ) => ( #box : (way(B))) ))))))).

qmf(white_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (white(A))) ) => ( #box : (white(B))) ))))))).

qmf(young_substitution_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( ( #box : (qmltpeq(A, B))) & ( #box : (young(A))) ) => ( #box : (young(B))) ))))))).

qmf(co1,conjecture,
( ( #box : (( ? [U, V, W, X, Y, Z, X1, X2, X3] : ( ( #box : (hollywood(U))) & ( ( #box : (city(U))) & ( ( #box : (event(V))) & ( ( #box : (street(W))) & ( ( #box : (way(W))) & ( ( #box : (lonely(W))) & ( ( #box : (chevy(X))) & ( ( #box : (car(X))) & ( ( #box : (white(X))) & ( ( #box : (dirty(X))) & ( ( #box : (old(X))) & ( ( #box : (barrel(V, X))) & ( ( #box : (down(V, W))) & ( ( #box : (in(V, U))) & ( ( #box : (seat(X1))) & ( ( #box : (furniture(X1))) & ( ( #box : (front(X1))) & ( ( #box : (~ ( #box : (qmltpeq(Y, Z))) )) & ( ( #box : (fellow(Y))) & ( ( #box : (man(Y))) & ( ( #box : (young(Y))) & ( ( #box : (fellow(Z))) & ( ( #box : (man(Z))) & ( ( #box : (young(Z))) & ( ( #box : (qmltpeq(Y, X2))) & ( ( #box : (in(X2, X1))) & ( ( #box : (qmltpeq(Z, X3))) & ( #box : (in(X3, X1))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) => ( ? [X4, X5, X6, X7, X8, X9, X10, X11, X12] : ( ( #box : (hollywood(X4))) & ( ( #box : (city(X4))) & ( ( #box : (event(X5))) & ( ( #box : (chevy(X6))) & ( ( #box : (car(X6))) & ( ( #box : (white(X6))) & ( ( #box : (dirty(X6))) & ( ( #box : (old(X6))) & ( ( #box : (street(X7))) & ( ( #box : (way(X7))) & ( ( #box : (lonely(X7))) & ( ( #box : (barrel(X5, X6))) & ( ( #box : (down(X5, X7))) & ( ( #box : (in(X5, X4))) & ( ( #box : (seat(X10))) & ( ( #box : (furniture(X10))) & ( ( #box : (front(X10))) & ( ( #box : (~ ( #box : (qmltpeq(X8, X9))) )) & ( ( #box : (fellow(X8))) & ( ( #box : (man(X8))) & ( ( #box : (young(X8))) & ( ( #box : (fellow(X9))) & ( ( #box : (man(X9))) & ( ( #box : (young(X9))) & ( ( #box : (qmltpeq(X8, X11))) & ( ( #box : (in(X11, X10))) & ( ( #box : (qmltpeq(X9, X12))) & ( #box : (in(X12, X10))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )) & ( #box : (( ? [X13, X14, X15, X16, X17, X18, X19, X20, X21] : ( ( #box : (hollywood(X13))) & ( ( #box : (city(X13))) & ( ( #box : (event(X14))) & ( ( #box : (chevy(X15))) & ( ( #box : (car(X15))) & ( ( #box : (white(X15))) & ( ( #box : (dirty(X15))) & ( ( #box : (old(X15))) & ( ( #box : (street(X16))) & ( ( #box : (way(X16))) & ( ( #box : (lonely(X16))) & ( ( #box : (barrel(X14, X15))) & ( ( #box : (down(X14, X16))) & ( ( #box : (in(X14, X13))) & ( ( #box : (seat(X19))) & ( ( #box : (furniture(X19))) & ( ( #box : (front(X19))) & ( ( #box : (~ ( #box : (qmltpeq(X17, X18))) )) & ( ( #box : (fellow(X17))) & ( ( #box : (man(X17))) & ( ( #box : (young(X17))) & ( ( #box : (fellow(X18))) & ( ( #box : (man(X18))) & ( ( #box : (young(X18))) & ( ( #box : (qmltpeq(X17, X20))) & ( ( #box : (in(X20, X19))) & ( ( #box : (qmltpeq(X18, X21))) & ( #box : (in(X21, X19))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) => ( ? [X22, X23, X24, X25, X26, X27, X28, X29, X30] : ( ( #box : (hollywood(X22))) & ( ( #box : (city(X22))) & ( ( #box : (event(X23))) & ( ( #box : (street(X24))) & ( ( #box : (way(X24))) & ( ( #box : (lonely(X24))) & ( ( #box : (chevy(X25))) & ( ( #box : (car(X25))) & ( ( #box : (white(X25))) & ( ( #box : (dirty(X25))) & ( ( #box : (old(X25))) & ( ( #box : (barrel(X23, X25))) & ( ( #box : (down(X23, X24))) & ( ( #box : (in(X23, X22))) & ( ( #box : (seat(X28))) & ( ( #box : (furniture(X28))) & ( ( #box : (front(X28))) & ( ( #box : (~ ( #box : (qmltpeq(X26, X27))) )) & ( ( #box : (fellow(X26))) & ( ( #box : (man(X26))) & ( ( #box : (young(X26))) & ( ( #box : (fellow(X27))) & ( ( #box : (man(X27))) & ( ( #box : (young(X27))) & ( ( #box : (qmltpeq(X26, X29))) & ( ( #box : (in(X29, X28))) & ( ( #box : (qmltpeq(X27, X30))) & ( #box : (in(X30, X28))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )) )).

