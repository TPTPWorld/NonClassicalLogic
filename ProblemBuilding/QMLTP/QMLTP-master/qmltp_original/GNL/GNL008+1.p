%--------------------------------------------------------------------------
% File     : GNL008+1 : QMLTP v1.1
% Domain   : GNL (Goedel translation of Natural Language Processing)       
% Problem  : Goedel translation of NLP008+1 (from TPTP-v5.0.0)      
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
%             D   Unsolved     Unsolved     Unsolved      v1.1
%             T   Unsolved     Unsolved     Unsolved      v1.1
%             S4  Unsolved     Unsolved     Unsolved      v1.1
%             S5  Unsolved     Unsolved     Unsolved      v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         1.00         1.00          v1.1
%             D   1.00         1.00         1.00          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  1.00         1.00         1.00          v1.1
%             S5  1.00         1.00         1.00          v1.1
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
( ( #box : (( ? [U, V, W, X, Y, Z, X1, X3, X4] : ( ( #box : (seat(U))) & ( ( #box : (furniture(U))) & ( ( #box : (front(U))) & ( ( #box : (hollywood(V))) & ( ( #box : (city(V))) & ( ( #box : (event(W))) & ( ( #box : (street(X))) & ( ( #box : (way(X))) & ( ( #box : (lonely(X))) & ( ( #box : (chevy(Y))) & ( ( #box : (car(Y))) & ( ( #box : (white(Y))) & ( ( #box : (dirty(Y))) & ( ( #box : (old(Y))) & ( ( #box : (barrel(W, Y))) & ( ( #box : (down(W, X))) & ( ( #box : (in(W, V))) & ( ( #box : (~ ( #box : (qmltpeq(Z, X1))) )) & ( ( #box : (fellow(Z))) & ( ( #box : (man(Z))) & ( ( #box : (young(Z))) & ( ( #box : (fellow(X1))) & ( ( #box : (man(X1))) & ( ( #box : (young(X1))) & ( ( #box : (qmltpeq(Z, X3))) & ( ( #box : (in(X3, U))) & ( ( #box : (qmltpeq(X1, X4))) & ( #box : (in(X4, U))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) => ( ? [X5, X6, X7, X8, X9, X10, X11, X12, X13, X14] : ( ( #box : (seat(X5))) & ( ( #box : (furniture(X5))) & ( ( #box : (front(X5))) & ( ( #box : (hollywood(X6))) & ( ( #box : (city(X6))) & ( ( #box : (event(X7))) & ( ( #box : (chevy(X8))) & ( ( #box : (car(X8))) & ( ( #box : (white(X8))) & ( ( #box : (dirty(X8))) & ( ( #box : (old(X8))) & ( ( #box : (street(X9))) & ( ( #box : (way(X9))) & ( ( #box : (lonely(X9))) & ( ( #box : (barrel(X7, X8))) & ( ( #box : (down(X7, X9))) & ( ( #box : (in(X7, X6))) & ( ( #box : (seat(X12))) & ( ( #box : (furniture(X12))) & ( ( #box : (front(X12))) & ( ( #box : (~ ( #box : (qmltpeq(X10, X11))) )) & ( ( #box : (fellow(X10))) & ( ( #box : (man(X10))) & ( ( #box : (young(X10))) & ( ( #box : (fellow(X11))) & ( ( #box : (man(X11))) & ( ( #box : (young(X11))) & ( ( #box : (qmltpeq(X10, X13))) & ( ( #box : (in(X13, X12))) & ( ( #box : (qmltpeq(X11, X14))) & ( #box : (in(X14, X5))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )) & ( #box : (( ? [X15, X16, X17, X18, X19, X20, X21, X22, X23, X24] : ( ( #box : (seat(X15))) & ( ( #box : (furniture(X15))) & ( ( #box : (front(X15))) & ( ( #box : (hollywood(X16))) & ( ( #box : (city(X16))) & ( ( #box : (event(X17))) & ( ( #box : (chevy(X18))) & ( ( #box : (car(X18))) & ( ( #box : (white(X18))) & ( ( #box : (dirty(X18))) & ( ( #box : (old(X18))) & ( ( #box : (street(X19))) & ( ( #box : (way(X19))) & ( ( #box : (lonely(X19))) & ( ( #box : (barrel(X17, X18))) & ( ( #box : (down(X17, X19))) & ( ( #box : (in(X17, X16))) & ( ( #box : (seat(X22))) & ( ( #box : (furniture(X22))) & ( ( #box : (front(X22))) & ( ( #box : (~ ( #box : (qmltpeq(X20, X21))) )) & ( ( #box : (fellow(X20))) & ( ( #box : (man(X20))) & ( ( #box : (young(X20))) & ( ( #box : (fellow(X21))) & ( ( #box : (man(X21))) & ( ( #box : (young(X21))) & ( ( #box : (qmltpeq(X20, X23))) & ( ( #box : (in(X23, X22))) & ( ( #box : (qmltpeq(X21, X24))) & ( #box : (in(X24, X15))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) => ( ? [X25, X26, X27, X28, X29, X30, X31, X33, X34] : ( ( #box : (seat(X25))) & ( ( #box : (furniture(X25))) & ( ( #box : (front(X25))) & ( ( #box : (hollywood(X26))) & ( ( #box : (city(X26))) & ( ( #box : (event(X27))) & ( ( #box : (street(X28))) & ( ( #box : (way(X28))) & ( ( #box : (lonely(X28))) & ( ( #box : (chevy(X29))) & ( ( #box : (car(X29))) & ( ( #box : (white(X29))) & ( ( #box : (dirty(X29))) & ( ( #box : (old(X29))) & ( ( #box : (barrel(X27, X29))) & ( ( #box : (down(X27, X28))) & ( ( #box : (in(X27, X26))) & ( ( #box : (~ ( #box : (qmltpeq(X30, X31))) )) & ( ( #box : (fellow(X30))) & ( ( #box : (man(X30))) & ( ( #box : (young(X30))) & ( ( #box : (fellow(X31))) & ( ( #box : (man(X31))) & ( ( #box : (young(X31))) & ( ( #box : (qmltpeq(X30, X33))) & ( ( #box : (in(X33, X25))) & ( ( #box : (qmltpeq(X31, X34))) & ( #box : (in(X34, X25))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )) )).

