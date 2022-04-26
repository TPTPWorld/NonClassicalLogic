%--------------------------------------------------------------------------
% File     : GNL004+1 : QMLTP v1.1
% Domain   : GNL (Goedel translation of Natural Language Processing)       
% Problem  : Goedel translation of NLP004+1 (from TPTP-v5.0.0)      
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
( ( #box : (( ? [U, V, W, X, Y, Z, X1, X2, X4, X5] : ( ( #box : (seat(U))) & ( ( #box : (furniture(U))) & ( ( #box : (front(U))) & ( ( #box : (seat(V))) & ( ( #box : (furniture(V))) & ( ( #box : (front(V))) & ( ( #box : (hollywood(W))) & ( ( #box : (city(W))) & ( ( #box : (event(X))) & ( ( #box : (street(Y))) & ( ( #box : (way(Y))) & ( ( #box : (lonely(Y))) & ( ( #box : (chevy(Z))) & ( ( #box : (car(Z))) & ( ( #box : (white(Z))) & ( ( #box : (dirty(Z))) & ( ( #box : (old(Z))) & ( ( #box : (barrel(X, Z))) & ( ( #box : (down(X, Y))) & ( ( #box : (in(X, W))) & ( ( #box : (~ ( #box : (qmltpeq(X1, X2))) )) & ( ( #box : (fellow(X1))) & ( ( #box : (man(X1))) & ( ( #box : (young(X1))) & ( ( #box : (fellow(X2))) & ( ( #box : (man(X2))) & ( ( #box : (young(X2))) & ( ( #box : (qmltpeq(X1, X4))) & ( ( #box : (in(X4, U))) & ( ( #box : (qmltpeq(X2, X5))) & ( #box : (in(X5, V))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) => ( ? [X6, X7, X8, X9, X10, X11, X12, X13, X15, X16] : ( ( #box : (seat(X6))) & ( ( #box : (furniture(X6))) & ( ( #box : (front(X6))) & ( ( #box : (seat(X7))) & ( ( #box : (furniture(X7))) & ( ( #box : (front(X7))) & ( ( #box : (hollywood(X8))) & ( ( #box : (city(X8))) & ( ( #box : (event(X9))) & ( ( #box : (chevy(X10))) & ( ( #box : (car(X10))) & ( ( #box : (white(X10))) & ( ( #box : (dirty(X10))) & ( ( #box : (old(X10))) & ( ( #box : (street(X11))) & ( ( #box : (way(X11))) & ( ( #box : (lonely(X11))) & ( ( #box : (barrel(X9, X10))) & ( ( #box : (down(X9, X11))) & ( ( #box : (in(X9, X8))) & ( ( #box : (~ ( #box : (qmltpeq(X12, X13))) )) & ( ( #box : (fellow(X12))) & ( ( #box : (man(X12))) & ( ( #box : (young(X12))) & ( ( #box : (fellow(X13))) & ( ( #box : (man(X13))) & ( ( #box : (young(X13))) & ( ( #box : (qmltpeq(X12, X15))) & ( ( #box : (in(X15, X6))) & ( ( #box : (qmltpeq(X13, X16))) & ( #box : (in(X16, X7))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )) & ( #box : (( ? [X17, X18, X19, X20, X21, X22, X23, X24, X26, X27] : ( ( #box : (seat(X17))) & ( ( #box : (furniture(X17))) & ( ( #box : (front(X17))) & ( ( #box : (seat(X18))) & ( ( #box : (furniture(X18))) & ( ( #box : (front(X18))) & ( ( #box : (hollywood(X19))) & ( ( #box : (city(X19))) & ( ( #box : (event(X20))) & ( ( #box : (chevy(X21))) & ( ( #box : (car(X21))) & ( ( #box : (white(X21))) & ( ( #box : (dirty(X21))) & ( ( #box : (old(X21))) & ( ( #box : (street(X22))) & ( ( #box : (way(X22))) & ( ( #box : (lonely(X22))) & ( ( #box : (barrel(X20, X21))) & ( ( #box : (down(X20, X22))) & ( ( #box : (in(X20, X19))) & ( ( #box : (~ ( #box : (qmltpeq(X23, X24))) )) & ( ( #box : (fellow(X23))) & ( ( #box : (man(X23))) & ( ( #box : (young(X23))) & ( ( #box : (fellow(X24))) & ( ( #box : (man(X24))) & ( ( #box : (young(X24))) & ( ( #box : (qmltpeq(X23, X26))) & ( ( #box : (in(X26, X17))) & ( ( #box : (qmltpeq(X24, X27))) & ( #box : (in(X27, X18))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) => ( ? [X28, X29, X30, X31, X32, X33, X34, X35, X37, X38] : ( ( #box : (seat(X28))) & ( ( #box : (furniture(X28))) & ( ( #box : (front(X28))) & ( ( #box : (seat(X29))) & ( ( #box : (furniture(X29))) & ( ( #box : (front(X29))) & ( ( #box : (hollywood(X30))) & ( ( #box : (city(X30))) & ( ( #box : (event(X31))) & ( ( #box : (street(X32))) & ( ( #box : (way(X32))) & ( ( #box : (lonely(X32))) & ( ( #box : (chevy(X33))) & ( ( #box : (car(X33))) & ( ( #box : (white(X33))) & ( ( #box : (dirty(X33))) & ( ( #box : (old(X33))) & ( ( #box : (barrel(X31, X33))) & ( ( #box : (down(X31, X32))) & ( ( #box : (in(X31, X30))) & ( ( #box : (~ ( #box : (qmltpeq(X34, X35))) )) & ( ( #box : (fellow(X34))) & ( ( #box : (man(X34))) & ( ( #box : (young(X34))) & ( ( #box : (fellow(X35))) & ( ( #box : (man(X35))) & ( ( #box : (young(X35))) & ( ( #box : (qmltpeq(X34, X37))) & ( ( #box : (in(X37, X28))) & ( ( #box : (qmltpeq(X35, X38))) & ( #box : (in(X38, X29))) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )) )) )).

