%----------------------------------------------------------------------------
% File     : MML019+1 : QMLTP v1.1
% Domain   : Multi-Modal Logic (Dialogue System)
% Problem  : Banker Example (variant 3)
% Version  : Especial.
% English  : Speaker S wishes to find out from a bank teller A the balance of
%            S's account, number 42

% Refs     : [Sto99] M. Stone. Indefinite Information in Modal Logic 
%            Programming. TR-56, Rutgers University, 1999.

% Source   : 
% Names    : 

% Status   : Unsolved
% Rating   : 0.00  v1.1

%            domain condition for all modalities: cumulative
%            term conditions  for all terms: 
%            designation: rigid,  extension: local    
%
% Comments : 
%------------------------------------------------------------------------------

tpi(18,set_logic,modal([cumulative,rigid,local],
                       [(p,s4),(ip,s4),(t,s4),(it,s4),(bank,s4),(cr,s4)])).


qmf(axiom_4,axiom,
 (#box(cr) : (! [A] : (? [U] : (#box(cr) : (((#box(ip) : (belongs(A,p))) & (#box(cr) : (account(A) & number(A,fortytwo) & identifiable(A))) & uttered(p,U)) => (#box(cr) : (belongs(A,p))))))))).


qmf(axiom_5,axiom,
(#box(cr) : (! [A] : (! [B] : (? [U] : ((#box(cr) : ((#box(ip) : (? [V] : (#box(p): (value(B,V))))) => hasanswer(p))) & ((((#box(cr) : (account(A) & belongs(A,p) & balance(A,B) & identifiable(B)))) & uttered(p,U)) => ((#box(cr) : (? [V] : (#box(p) : (value(B,V))))) => hasanswer(p))))))))).


qmf(axiom_6,axiom,
 (#box(cr) : (! [A] : (! [B] : (! [V] : (? [U] : ((#box(cr) : ((#box(it) : (value(B,V))) & (#box(cr) : (account(A) & belongs(A,p) & balance(A,B) & identifiable(B))) & uttered(t,U))) => (#box(cr) : (value(B,V)))))))))).

qmf(axiom_7,axiom,
  (#box(bank) : (code(fortytwo)))).

qmf(axiom_8,axiom,
  (#box(bank) : (! [C] : (code(C) => (? [A] : (#box(bank) : (account(A) & number(A,C) & identifiable(A)))))))).

qmf(axiom_9,axiom,
  (#box(bank) : (! [A]: (? [B] : (#box(bank) : (account(A) => balance(A,B))))))).

qmf(axiom_10,axiom,
  (#box(bank) : (! [A] : (! [B] : ((balance(A,B) & identifiable(A)) => identifiable(B)))))).

qmf(axiom_11,axiom,
  (#box(bank) : (! [A] : (! [B] : (balance(A,B) => (? [V] : (#box(t) : (value(B,V))))))))).

qmf(axiom_12,axiom,
  (#box(ip) : (! [A] : ((account(A) & number(A, fortytwo)) => belongs(A,p))))).

qmf(axiom_13,axiom,
  (#box(ip) : (! [A] : (! [B] : (account(A) & number(A,fortytwo) & balance(A,B) & (? [C] : (#box(p) : (value(B,C))) => (hasanswer(p)))))))).

qmf(axiom_1,axiom,
  ((#box(cr) : (hasanswer(p))) => (#box(p) : (hasanswer(p))))).

qmf(axiom_1,axiom,
  ((#box(cr) : (hasanswer(p))) => (#box(t) : (hasanswer(p))))).

qmf(axiom_1,axiom,
  ((#box(bank) : (hasanswer(p))) => (#box(cr) : (hasanswer(p))))).

qmf(axiom_1,axiom,
  ((#box(t) : (code(fortytwo))) => (#box(it) : (code(fortytwo))))).

qmf(axiom_1,axiom,
  ((#box(cr) : (code(fortytwo))) => (#box(p) : (code(fortytwo))))).

qmf(axiom_1,axiom,
  ((#box(cr) : (code(fortytwo))) => (#box(t) : (code(fortytwo))))).

qmf(axiom_1,axiom,
  ((#box(bank) : (code(fortytwo))) => (#box(cr) : (code(fortytwo))))).

qmf(axiom_1,axiom,
  ((#box(t) : (code(fortytwo))) => (#box(it) : (code(fortytwo))))).

qmf(axiom_1,axiom,
  (! [X] : ((#box(cr) : (identifiable(X))) => (#box(p) : (identifiable(X)))))).

qmf(axiom_1,axiom,
  (! [X] : ((#box(cr) : (identifiable(X))) => (#box(t) : (identifiable(X)))))).

qmf(axiom_1,axiom,
  (! [X] : ((#box(bank) : (identifiable(X))) => (#box(cr) : (identifiable(X)))))).

qmf(axiom_1,axiom,
  (! [X] : ((#box(t) : (identifiable(X))) => (#box(it) : (identifiable(X)))))).

qmf(axiom_1,axiom,
  (! [X] : (! [Y] : (((#box(cr) : (number(X,Y))) => (#box(p) : (number(X,Y)))))))).

qmf(axiom_1,axiom,
  (! [X] : (! [Y] : (((#box(cr) : (number(X,Y))) => (#box(t) : (number(X,Y)))))))).

qmf(axiom_1,axiom,
  (! [X] : (! [Y] : (((#box(bank) : (number(X,Y))) => (#box(cr) : (number(X,Y)))))))).

qmf(axiom_1,axiom,
  (! [X] : (! [Y] : ((#box(t) : (number(X,Y))) => (#box(it) : (number(X,Y))))))).

qmf(axiom_1,axiom,
  (! [X] : ((#box(cr) : (account(X))) => (#box(p) : (account(X)))))).

qmf(axiom_1,axiom,
  (! [X] : ((#box(cr) : (account(X))) => (#box(t) : (account(X)))))).

qmf(axiom_1,axiom,
  (! [X] : ((#box(bank) : (account(X))) => (#box(cr) : (account(X)))))).

qmf(axiom_1,axiom,
  (! [X] : ((#box(t) : (account(X))) => (#box(it) : (account(X)))))).

qmf(axiom_1,axiom,
  (! [X] : (! [Y] : (((#box(cr) : (balance(X,Y))) => (#box(p) : (balance(X,Y)))))))).

qmf(axiom_1,axiom,
  (! [X] : (! [Y] : (((#box(cr) : (balance(X,Y))) => (#box(t) : (balance(X,Y)))))))).

qmf(axiom_1,axiom,
  (! [X] : (! [Y] : (((#box(bank) : (balance(X,Y))) => (#box(cr) : (balance(X,Y)))))))).

qmf(axiom_1,axiom,
  (! [X] : (! [Y] : ((#box(t) : (balance(X,Y))) => (#box(it) : (balance(X,Y))))))).

qmf(axiom_1,axiom,
  (! [X] : (! [Y] : (((#box(cr) : (value(X,Y))) => (#box(p) : (value(X,Y)))))))).

qmf(axiom_1,axiom,
  (! [X] : (! [Y] : (((#box(cr) : (value(X,Y))) => (#box(t) : (value(X,Y)))))))).

qmf(axiom_1,axiom,
  (! [X] : (! [Y] : (((#box(bank) : (value(X,Y))) => (#box(cr) : (value(X,Y)))))))).

qmf(axiom_1,axiom,
  (! [X] : (! [Y] : ((#box(t) : (value(X,Y))) => (#box(it) : (value(X,Y))))))).

qmf(con,conjecture,
 (? [U] : (#box(p) : (uttered(p,U) => (? [U1] : (#box(p) : (uttered(p,U1) => (#box(cr) : (? [U2] : ((#box(t) : (uttered(t,U2))) => (#box(cr) : (hasanswer(p))))))))))))).
