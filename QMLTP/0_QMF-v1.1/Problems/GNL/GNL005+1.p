%--------------------------------------------------------------------------
% File     : GNL005+1 : QMLTP v1.1
% Domain   : GNL (Goedel translation of Natural Language Processing)       
% Problem  : Goedel translation of NLP005+1 (from TPTP-v5.0.0)      
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
( ( #box : (( ? [U, V, W, X, Y, Z, X1, X3, X4] : ( ( #box : (seat(U))) & ( ( #box : (furniture(U))) & ( ( #box : (front(U))) & ( ( #box : (hollywood(V))) & ( ( #box : (city(V))) & ( ( #box : (event(W))) & ( ( #box : (chevy(X))) & ( ( #box : (car(X))) & ( ( #box : (white(X))) & ( ( #box : (dirty(X))) & ( ( #box : (old(X))) & ( ( #box : (street(Y))) & ( ( #box : (way(Y))) & ( ( #box : (lonely(Y))) & ( ( #box : (barrel(W, X))) & ( ( #box : (down(W, Y))) & ( ( #box : (in(W, V))) & ( ( #box : (~ ( #box : (qmltpeq(Z, X1))) )) & ( ( #box : (fellow(Z))) & ( ( #box : (man(Z))) & ( ( #box : (young(Z))) & ( ( #box : (fellow(X1))) & ( ( #box : (man(X1))) & ( ( #box : (young(X1))) & ( ( #box : (qmltpeq(Z, X3))) & ( ( #box : (in(X3, U))) & ( ( #box : (qmltpeq(X1, X4))) & ( #box : (in(X4, U))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) => ( ? [X5, X6, X7, X8, X9, X10, X11, X12, X14, X15] : ( ( #box : (seat(X5))) & ( ( #box : (furniture(X5))) & ( ( #box : (front(X5))) & ( ( #box : (seat(X6))) & ( ( #box : (furniture(X6))) & ( ( #box : (front(X6))) & ( ( #box : (hollywood(X7))) & ( ( #box : (city(X7))) & ( ( #box : (event(X8))) & ( ( #box : (street(X9))) & ( ( #box : (way(X9))) & ( ( #box : (lonely(X9))) & ( ( #box : (chevy(X10))) & ( ( #box : (car(X10))) & ( ( #box : (white(X10))) & ( ( #box : (dirty(X10))) & ( ( #box : (old(X10))) & ( ( #box : (barrel(X8, X10))) & ( ( #box : (down(X8, X9))) & ( ( #box : (in(X8, X7))) & ( ( #box : (~ ( #box : (qmltpeq(X11, X12))) )) & ( ( #box : (fellow(X11))) & ( ( #box : (man(X11))) & ( ( #box : (young(X11))) & ( ( #box : (fellow(X12))) & ( ( #box : (man(X12))) & ( ( #box : (young(X12))) & ( ( #box : (qmltpeq(X11, X14))) & ( ( #box : (in(X14, X5))) & ( ( #box : (qmltpeq(X12, X15))) & ( #box : (in(X15, X6))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )) & ( #box : (( ? [X16, X17, X18, X19, X20, X21, X22, X23, X25, X26] : ( ( #box : (seat(X16))) & ( ( #box : (furniture(X16))) & ( ( #box : (front(X16))) & ( ( #box : (seat(X17))) & ( ( #box : (furniture(X17))) & ( ( #box : (front(X17))) & ( ( #box : (hollywood(X18))) & ( ( #box : (city(X18))) & ( ( #box : (event(X19))) & ( ( #box : (street(X20))) & ( ( #box : (way(X20))) & ( ( #box : (lonely(X20))) & ( ( #box : (chevy(X21))) & ( ( #box : (car(X21))) & ( ( #box : (white(X21))) & ( ( #box : (dirty(X21))) & ( ( #box : (old(X21))) & ( ( #box : (barrel(X19, X21))) & ( ( #box : (down(X19, X20))) & ( ( #box : (in(X19, X18))) & ( ( #box : (~ ( #box : (qmltpeq(X22, X23))) )) & ( ( #box : (fellow(X22))) & ( ( #box : (man(X22))) & ( ( #box : (young(X22))) & ( ( #box : (fellow(X23))) & ( ( #box : (man(X23))) & ( ( #box : (young(X23))) & ( ( #box : (qmltpeq(X22, X25))) & ( ( #box : (in(X25, X16))) & ( ( #box : (qmltpeq(X23, X26))) & ( #box : (in(X26, X17))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) => ( ? [X27, X28, X29, X30, X31, X32, X33, X35, X36] : ( ( #box : (seat(X27))) & ( ( #box : (furniture(X27))) & ( ( #box : (front(X27))) & ( ( #box : (hollywood(X28))) & ( ( #box : (city(X28))) & ( ( #box : (event(X29))) & ( ( #box : (chevy(X30))) & ( ( #box : (car(X30))) & ( ( #box : (white(X30))) & ( ( #box : (dirty(X30))) & ( ( #box : (old(X30))) & ( ( #box : (street(X31))) & ( ( #box : (way(X31))) & ( ( #box : (lonely(X31))) & ( ( #box : (barrel(X29, X30))) & ( ( #box : (down(X29, X31))) & ( ( #box : (in(X29, X28))) & ( ( #box : (~ ( #box : (qmltpeq(X32, X33))) )) & ( ( #box : (fellow(X32))) & ( ( #box : (man(X32))) & ( ( #box : (young(X32))) & ( ( #box : (fellow(X33))) & ( ( #box : (man(X33))) & ( ( #box : (young(X33))) & ( ( #box : (qmltpeq(X32, X35))) & ( ( #box : (in(X35, X27))) & ( ( #box : (qmltpeq(X33, X36))) & ( #box : (in(X36, X27))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )) )).

