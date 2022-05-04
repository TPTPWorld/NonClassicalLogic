%----------------------------------------------------------------------------
% File     : MML018+1 : QMLTP v1.1
% Domain   : Multi-Modal Logic (Dialogue System)
% Problem  : Bank Example (variant 2)
% Version  : Especial.
% English  : Patron p wishes to find out from a bank teller t the balance of
%            p's account, number 42.

% Refs     : [Sto99] M. Stone. Indefinite Information in Modal Logic 
%            Programming. TR-56, Rutgers University, 1999.

% Source   : 
% Names    : 

% Status   : Theorem
% Rating   : 0.00  v1.1

%            domain condition for all modalities: cumulative
%            term conditions  for all terms: 
%            designation: rigid,  extension: local    
%
% Comments : 
%------------------------------------------------------------------------------

tpi(18,set_logic,modal([cumulative,rigid,local],
                       [(p,s4),(t,s4),(c,s4),(cr,s4)])).


qmf(axiom_1,axiom,
 (#box(bank) : (! [X] : (#box(cr) : (account(p,X) => (? [B] : (#box(t) : (balance(p,B))))))))).

qmf(axiom_1,axiom,
 (#box(cr) : (account(p,fortytwo)))).

qmf(con,conjecture,
 (? [B] : (#box(t) : (balance(p,B))))).

