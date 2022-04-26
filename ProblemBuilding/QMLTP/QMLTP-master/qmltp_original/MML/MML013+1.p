%--------------------------------------------------------------------------
% File     : MML013+1 : QMLTP v1.1
% Domain   : Multi-modal logic (Security Protocols)
% Problem  : Proving disprovability
% Version  : Especial.
% English  : If A can prove that B can prove p whenever it is true, and
%            if A can prove that B cannot prove p if that is true,
%            and if p is not true,
%            then A can prove that p is not true.

% Refs     : [HA97] Huima and Aura (1997) Using Multimodal Logic to Express 
%                   Conflicting Interests in Security Protocols.

% Source   : 
% Names    : 

% Status   : Theorem
% Rating   : 0.00  v1.1

%            domain condition for all modalities: cumulative
%            term conditions  for all terms: 
%            designation: rigid,  extension: local    
%
% Comments : 
%--------------------------------------------------------------------------

tpi(13,set_logic,modal([cumulative,rigid,local],
                       [(a,s4),(b,s4)])).

qmf(ab_axiom_1,axiom,
((#box(a) : (p => (#box(b) : p))))).

qmf(ab_axiom_2,axiom,
((~ (#box(b) : p)) => (#box(a) : (~ (#box(b) : p))))).

qmf(not_a_axiom_1,axiom,
((~ p)).

qmf(conj,conjecture,
 ((#box(a) : (~ p)))).
