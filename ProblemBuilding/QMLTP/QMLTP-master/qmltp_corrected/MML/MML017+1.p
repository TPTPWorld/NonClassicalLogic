%----------------------------------------------------------------------------
% File     : MUL017+1 : QMLTP v1.1
% Domain   : Multi-Modal Logic (Dialogue System)
% Problem  : Bank Example
% Version  : Especial.
% English  : Speaker S wishes to find out from a bank teller A the balance of
%            S's account, number 42.

% Refs     : [Sto97] M. Stone. Applying Theories of Communicative Action in 
%            Generation Using Logic Programming. AAAI Fall Symposium On
%            Communicative Action in Humans and Machines, 1997.

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


tpi(17,set_logic,modal([cumulative,rigid,local],
                       [(s,s4),(a,s4),(cp,s4),(teller,s4)])).

qmf(axiom_1,axiom,
 (#box(bank) : (! [C] : (code(C) => (? [A] : (#box(bank) : (account(A) & number(A,C) & identifiable(A)))))))).

qmf(axiom_2,axiom,
 (#box(bank) : (code(fortytwo)))).

qmf(axiom_3,axiom,
 (#box(bank) : (! [A] : (? [B] : (#box(bank) : (account(A) => balance(A,B))))))).

qmf(axiom_4,axiom,
 (#box(bank) : (! [A] : (! [B] : ((balance(A,B) & identifiable(A)) => identifiable(B)))))).

qmf(axiom_5,axiom,
 (#box(bank) : (! [A] : (! [B] : (balance(A,B) => (? [V] : (#box(a) : (value(B,V))))))))).

qmf(axiom_phi0_aa,axiom,
 (#box(a) : (! [A] : (((#box(a) : (account(A) & number(A,fortytwo) & identifiable(A))) & done(u0(A))) => ((#box(a) : (belongs(A,s))) & (#box(s) : (belong(A,s)))))))).

qmf(axiom_phi0_as,axiom,
 (#box(a) : (! [A] : (((#box(s) : (account(A) & number(A,fortytwo) & identifiable(A))) & done(u0(A))) => ((#box(a) : (belongs(A,s))) & (#box(s) : (belong(A,s)))))))).

qmf(axiom_phi0_sa,axiom,
 (#box(s) : (! [A] : (((#box(a) : (account(A) & number(A,fortytwo) & identifiable(A))) & done(u0(A))) => ((#box(a) : (belongs(A,s))) & (#box(s) : (belong(A,s)))))))).

qmf(axiom_phi0_ss,axiom,
 (#box(s) : (! [A] : (((#box(a) : (account(A) & number(A,fortytwo) & identifiable(A))) & done(u0(A))) => ((#box(a) : (belongs(A,s))) & (#box(s) : (belong(A,s)))))))).

qmf(axiom_phi1_aa,axiom,
 (#box(a) : (! [A] : (! [B] : ((#box(a) : ((account(A) & belongs(A,s) & balance(A,B) & identifiable(B) & (? [V] : (#box(a) : (value(B,V))))) & done(u1(A,B)))) => ((#box(a) : (answerable)) & (#box(s) : (answerable)))))))).

qmf(axiom_phi1_as,axiom,
 (#box(a) : (! [A] : (! [B] : ((#box(s) : ((account(A) & belongs(A,s) & balance(A,B) & identifiable(B) & (? [V] : (#box(a) : (value(B,V))))) & done(u1(A,B)))) => ((#box(a) : (answerable)) & (#box(s) : (answerable)))))))).

qmf(axiom_phi1_sa,axiom,
 (#box(s) : (! [A] : (! [B] : ((#box(a) : ((account(A) & belongs(A,s) & balance(A,B) & identifiable(B) & (? [V] : (#box(a) : (value(B,V))))) & done(u1(A,B)))) => ((#box(a) : (answerable)) & (#box(s) : (answerable)))))))).

qmf(axiom_phi1_ss,axiom,
 (#box(s) : (! [A] : (! [B] : (
 	(#box(s) : ((account(A) & belongs(A,s) & balance(A,B) & identifiable(B) & (? [V] : (#box(a) : (value(B,V))))) & done(u1(A,B)))) => ((#box(a) : (answerable)) & (#box(s) : (answerable)))))))).

qmf(con,conjecture,
 (? [U0] : ((#box(a) : (done(U0) => ((#box(a) : (? [U1] : ((#box(a) : (done(U1) => ((#box(a) : answerable) & (#box(s) : answerable)))) & (#box(s) : (done(U1) => ((#box(a) : answerable) & (#box(s) : answerable))))))) & (#box(s) : (? [U1] : ((#box(a) : (done(U1) => ((#box(a) : answerable) & (#box(s) : answerable)))) & (#box(s) : (done(U1) => ((#box(a) : answerable) & (#box(s) : answerable)))))))))) & (#box(s) : (done(U0) => ((#box(a) : (? [U1] : ((#box(a) : (done(U1) => ((#box(a) : answerable) & (#box(s) : answerable)))) & (#box(s) : (done(U1) => ((#box(a) : answerable) & (#box(s) : answerable))))))) & (#box(s) : (? [U1] : ((#box(a) : (done(U1) => ((#box(a) : answerable) & (#box(s) : answerable)))) & (#box(s) : (done(U1) => ((#box(a) : answerable) & (#box(s) : answerable))))))))))))).
