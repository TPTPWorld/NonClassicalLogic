%----------------------------------------------------------------------------
% File     : MML012+1 : QMLTP v1.1
% Domain   : Multi-Modal Logic (Security Protocols)
% Problem  : Phone User and Company (requirement 2)
% Version  : Especial.
% English  : Phone user U and phone company C have following relationship:
%            U does not pay a call before he has dialled it. Both U nd C
%            are able to prove when U is being carged. 
%            U is able to prove that C can prove that U has made a call, 
%            C is able to prove that U can prove that U has paid his call, 
%            U is able to prove that C cannot prove that U has made a call, 
%            C is able to prove that U cannot prove that he has paid his call,
%            whenever these facts are true, respectively.
%            Then, the following requirement is true:
%            From U's point of view, C should charge U only if he has made a 
%            call that is not yet paid. 

% Refs     : [HA97] Huima and Aura (1997) Using Multimodal Logic to Express 
%                   Conflicting Interests in Security Protocols.

% Source   : 
% Names    : 

% Status   : Unsolved
% Rating   : 1.00  v1.1
%            domain condition for all modalities: cumulative
%            term conditions  for all terms: 
%            designation: rigid,  extension: local    
%
% Comments : 
%--------------------------------------------------------------------------

tpi(12,set_logic,modal([cumulative,rigid,local],
                       [(u,s4),(c,s4)])).

qmf(aciom_paid_charge,axiom,
 (paid => called)).

qmf(axiom_charge_u,axiom,
 (charge => ((#box(u) : charge) & (#box(c): charge)))).

qmf(axiom_1,axiom,
 (#box(u) : (called => (#box(c) : called)))).

qmf(axiom_2,axiom,
 (#box(c) : (paid => (#box(u) : paid)))).

qmf(axiom_3,axiom,
 ((~ (#box(c) : called)) => (#box(u) : (~ (#box(c) : called))))).

qmf(axiom_4,axiom,
 ((~ (#box(u) : paid)) => (#box(c) : (~ (#box(u) : paid))))).

qmf(requirement_1,conjecture,
 ((~ ((called & (~ paid)) => charge)) => (#box(c): (~ ((called & (~ paid)) => charge))))).

