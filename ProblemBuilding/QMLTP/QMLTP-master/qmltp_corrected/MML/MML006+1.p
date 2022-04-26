%--------------------------------------------------------------------------
% File     : MML006+1 : QMLTP v1.1
% Domain   : Multi-modal logic (Epistemic Logic Puzzles)
% Problem  : The Bungling Chemist
% Version  : Especial.
% English  : Assume that a chemical compound c is made by pouring the elements 
%            a and b into the same beaker. The two elements a and b are not 
%            acid. It is possible that after making the compound c it results
%            acid.
%            Then it is possible that pouring elementa a results not acid and
%            pouring a and b in the beaker results acid

% Refs     : [Bal98] Baldoni (1998), Normal Multimodal Logics: Automatic De

% Source   : 
% Names    : 

% Status   : Theorem
% Rating   : 0.00 v1.1

%            domain condition for all modalities: cumulative
%            term conditions  for all terms: 
%            designation: rigid,  extension: local    
% Comments :
%--------------------------------------------------------------------------

tpi(6,set_logic,modal([cumulative,rigid,local],
                      [(make_c,k),(pour_a,k),(poor_b,k)])).


qmf(pour_ab_make_axiom_1,axiom,
((#box(pour_a) : (#box(pour_b) : acid)) => (#box(make_c) : acid))).

qmf(pour_ab_make_axiom_2,axiom,
((#box(pour_a) : (#box(pour_b) : (~ acid))) => (#box(make_c) : (~ acid)))).

qmf(pour_ba_make_axiom_1,axiom,
((#box(pour_b) : (#box(pour_a) : acid)) => (#box(make_c) : acid))).

qmf(pour_ba_make_axiom_2,axiom,
((#box(pour_b) : (#box(pour_a) : (~ acid))) => (#box(make_c) : (~ acid)))).

qmf(pour_a_acid,axiom,
(#box(pour_a) : (~ acid))).

qmf(make_c_acid,axiom,
(#dia(make_c) : acid)).

qmf(conj,conjecture,
 ((#dia(pour_a) : (~ acid)) & (#dia(pour_a) : (#dia(pour_b) : acid)))).
