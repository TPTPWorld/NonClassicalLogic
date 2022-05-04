%----------------------------------------------------------------------------
% File     : MML014+1 : QMLTP v1.1
% Domain   : Multi-Modal Logic (Dialog System)
% Problem  : Schema Instantiation Example
% Version  : Especial.
% English  : Alice intends Bob to believe that portland is a big city.

% Refs     : [BS96] P. Bretier, M. D. Sadek. A Rational Agent as the Kernel
%            of a Cooperative Spoken Dialogue System: Implementing a Logical
%            Theory of Interaction. ATAL 1996: 189-203, 1996.

% Source   : 
% Names    : 

% Status   : Theorem
% Rating   : 0.00  v1.1
%
%            domain condition for all modalities: cumulative
%            term conditions  for all terms: 
%            designation: rigid,  extension: local    
%
% Comments : 
%--------------------------------------------------------------------------

tpi(14,set_logic,modal([cumulative,rigid,local],
                       [(b(alice),s5),(b(bob),s5),(i(alice),s5)])).

qmf(axiom_1_alice,axiom,
 (#box(b(alice)) : ((bigcity(portland) & (#box(b(alice)) : (#box(b(bob)) : (~ bigcity(portland))))) => (#box(i(alice)) : (#box(b(bob)) : (bigcity(portland))))))).

qmf(axiom_1_bob,axiom,
 (#box(b(bob)) : ((bigcity(portland) & (#box(b(bob)) : (#box(b(alice)) : (~ bigcity(portland))))) => (#box(i(bob)) : (#box(b(alice)) : (bigcity(portland))))))).

qmf(axiom_2,axiom,
 (#box(b(alice)) : (bigcity(portland)))).

qmf(axiom_3,axiom,
 (#box(b(alice)) : (#box(b(bob)) : (~ bigcity(portland))))).

qmf(con,conjecture,
 (#box(i(alice)) : (#box(b(bob)) : (bigcity(portland))))).
