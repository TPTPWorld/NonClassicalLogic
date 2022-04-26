%----------------------------------------------------------------------------
% File     : MML015+1 : QMLTP v1.1
% Domain   : Multi-Modal Logic (Dialog System)
% Problem  : Schema Instantiation Example 2
% Version  : Especial.
% English  : 

% Refs     : [BS96] P. Bretier, M. D. Sadek. A Rational Agent as the Kernel
%            of a Cooperative Spoken Dialogue System: Implementing a Logical
%            Theory of Interaction. ATAL 1996: 189-203, 1996.

% Source   : 
% Names    : 

% Status   : Theorem
% Rating   : 0.00 v1.1
%
%            domain condition for all modalities: cumulative
%            term conditions  for all terms: 
%            designation: rigid,  extension: local    
%
% Comments : 
%--------------------------------------------------------------------------

tpi(15,set_logic,modal([cumulative,rigid,local],
                       [(b(alice),s5),(b(bob),s5),(i(alice),s5)])).

qmf(axiom_1_a,axiom,
 ((#box(b(alice)) : (bigcity(portland))) => (~ (#box(i(alice) : (bigcity(portland))))))).

qmf(axiom_1_b,axiom,
 ((#box(b(bob)) : (bigcity(portland))) => (~ (#box(i(bob) : (bigcity(portland))))))).

qmf(axiom_1_c,axiom,
 ((#box(b(alice)) : (beautycity(portland))) => (~ (#box(i(alice)) : (beautycity(portland)))))).

qmf(axiom_1_d,axiom,
 ((#box(b(bob)) : (beautycity(portland))) => (~ (#box(i(bob)) : (beautycity(portland)))))).

qmf(axiom_2,axiom,
 (#box(b(alice)) : ((#box(b(bob)): (#box(b(alice)) : (bigcity(portland)))) |
                    (#box(b(bob)): (#box(b(alice)) : (beautycity(portland))))))).
 
qmf(con,conjecture,
 (#box(b(alice)) : (#box(b(bob)): ((#box(alice) : (bigcity(portland))) => (~ (#box(i(alice)) : (bigcity(portland))))) & ((#box(alice) : (beautycity(portland))) => (~ (#box(i(alice)) : (beautycity(portland)))))))).


 
