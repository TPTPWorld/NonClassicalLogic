%----------------------------------------------------------------------------
% File     : MML020+1 : QMLTP v1.1
% Domain   : Multi-Modal Logic (Dialogue System)
% Problem  : Coffee and Ticket Example (adapted)
% Version  : Especial.
% English  : When I can get ticket and coffee I can take a journey
%           

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
%--------------------------------------------------------------------------

tpi(20,set_logic,modal([cumulative,rigid,local],
                       [(ticket,s4),(coffee,s4)])).

qmf(axiom_1,axiom,
 (! [X] : (#box(ticket) : (usemachine(X) | usewindow(X))))).

qmf(axiom_2,axiom,
 (! [X] : (#box(ticket) : (usemachine(X) => getticket(X))))).

qmf(axiom_3,axiom,
 (! [X] : (#box(ticket) : (usewindow(X) => getticket(X))))).

qmf(axiom_4,axiom,
 (! [X] : (#box(coffee) : (visitdonuts(X) | visitstarbucks(X))))).

qmf(axiom_5,axiom,
 (! [X] : (#box(coffee) : (visitdonuts(X) => getcoffee(X))))).

qmf(axiom_6,axiom,
 (! [X] : (#box(coffee) : (visitstarbuck(X) => getcoffee(X))))).

qmf(axiom_7,axiom,
 (! [X] : (((#box(ticket) : (getticket(X))) & (#box(coffee) : (getcoffee(X)))) => (takejourney(X))))).

qmf(con,conjecture,
 (takejourney(passenger))).
