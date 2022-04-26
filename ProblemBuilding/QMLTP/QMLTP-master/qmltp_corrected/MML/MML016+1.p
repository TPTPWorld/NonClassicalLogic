%----------------------------------------------------------------------------
% File     : MML016+1 : QMLTP v1.1
% Domain   : Multi-Modal Logic (Dialogue System)
% Problem  : Ticket Example
% Version  : Especial.
% English  : 

% Refs     : [FHL+98] L. Farinas del Cerro, A. Herzig, D. Longin, O. Rifi. 
%            Belief Reconstruction in Cooperative Dialogues. AIMSA 1998, 
%            LNCS 1480, p. 254-266. 1998.

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

tpi(16,set_logic,modal([cumulative,rigid,local],
                       [(b_s,s5),(b_u,s5)])).

qmf(axiom_1,axiom,
 (#box(b_s) : ((dest(paris) & class(first)) => price(ninetyfive)))).

qmf(axiom_2,axiom,
 (#box(b_s) : ((dest(paris) & class(second)) => price(seventy)))).

qmf(axiom_3_s,axiom,
 (#box(b_s) : (~ (class(first) & class(second))))).

qmf(axiom_3_u,axiom,
 (#box(b_u) : (~ (class(first) & class(second))))).

qmf(axiom_4_s,axiom,
 (#box(b_s) : (~ (price(seventy) & price(ninetyfive))))).

qmf(axiom_4_u,axiom,
 (#box(b_u) : (~ (price(seventy) & price(ninetyfive))))).

qmf(axiom_5,axiom,
 (#box(b_s) : (dest(paris) & class(second)))).

qmf(con,conjecture,
 (#box(b_s) : (price(seventy)))).
 