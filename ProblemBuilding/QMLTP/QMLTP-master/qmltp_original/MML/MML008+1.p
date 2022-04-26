%--------------------------------------------------------------------------
% File     : MML008+1 : QMLTP v1.1
% Domain   : Multi-modal logic (Epistemic Logic Puzzles)
% Problem  : Consecutive numbers (Example 2.4)
% Version  : Especial.
% English  : Two agents, Anne and Bill, are facing each other. They see a 
%            number on each other's forehead, and those numbers are 
%            consecutive numbers n and n+1 for a certain n in N. They both
%            know this, and they know that they know it, etc. However, they
%            do not have any other a priori knowledge about their own number
%            If Anne's number is 3 and Bill's number is 2, then
%            Anne knows that Bill knows that Anne knows that Bill's number
%            is 0, 2 or 4, and
%            Bill knows that Anne knows that Bill knows that Anne's number
%            is 1, 3 or 5.

% Refs     : [DHB07] H. van Ditmarsch, W. van de Hoek, B. Kooi (2007). 
%                    Dynamic Epistemic Logic

% Source   : 
% Names    : 

% Status   : Theorem   
% Rating   : 0.00      v 1.1

%            domain condition for all modalities: cumulative
%            term conditions  for all terms: 
%            designation: rigid,  extension: local    
%
%--------------------------------------------------------------------------

tpi(8,set_logic,modal([cumulative,rigid,local],
                      [(fool,s4),(anne,s4),(bill,s4)])).

qmf(axiom_1,axiom,
(#box(fool) : (succ(n0,n1)))).

qmf(axiom_2,axiom,
(#box(fool) : (succ(n1,n2)))).

qmf(axiom_3,axiom,
(#box(fool) : (succ(n2,n3)))).

qmf(axiom_4,axiom,
(#box(fool) : (succ(n3,n4)))).

qmf(axiom_5,axiom,
(#box(fool) : (succ(n4,n5)))).

qmf(axiom_6,axiom,
(#box(fool) : (succ(n5,n6)))).

qmf(axiom_7,axiom,
(#box(fool) : (? [X] : (? [Y] : (a(X) & b(Y) & (succ(X,Y) | succ(Y,X))))))).

qmf(axiom_8,axiom,
(! [X] : (a(X) => (#box(bill) : a(X))))).
).

qmf(axiom_9,axiom,
(! [X] : (b(X) => (#box(bill) : b(X))))).

qmf(axiom_i_for_fool_a_1,axiom,
(! [X] : ((#box(fool) : (a(X))) => (#box(anne) : (a(X)))))).

qmf(axiom_i_for_fool_a_2,axiom,
(! [X] : ((#box(fool) : (~ (a(X)))) => (#box(anne) : (~ a(X)))))).

qmf(axiom_i_for_fool_a_3,axiom,
(! [X] : ((#box(fool) : (b(X))) => (#box(anne) : (b(X)))))).

qmf(axiom_i_for_fool_a_4,axiom,
(! [X] : ((#box(fool) : (~ (b(X)))) => (#box(anne) : (~ b(X)))))).

qmf(axiom_i_for_fool_b_1,axiom,
(! [X] : ((#box(fool) : (a(X))) => (#box(bill) : (a(X)))))).

qmf(axiom_i_for_fool_b_2,axiom,
(! [X] : ((#box(fool) : (~ (a(X)))) => (#box(bill) : (~ a(X)))))).

qmf(axiom_i_for_fool_b_3,axiom,
(! [X] : ((#box(fool) : (b(X))) => (#box(bill) : (b(X)))))).

qmf(axiom_i_for_fool_b_4,axiom,
(! [X] : ((#box(fool) : (~ (b(X)))) => (#box(bill) : (~ b(X)))))).

qmf(axiom_a3,axiom,
(a(n3))).

qmf(axiom_b2,axiom,
(b(n2))).

qmf(con,conjecture,
((#box(anne) : (#box(bill) : (#box(anne) : (b(n0) | b(n2) | b(n4))))) &
 (#box(bill) : (#box(anne) : (#box(bill) : (a(n1) | a(n3) | a(n5))))))).
