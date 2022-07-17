%--------------------------------------------------------------------------
% File     : MML004+1 : QMLTP v1.1
% Domain   : Multi-modal logic (Epistemic Logic Puzzles)
% Problem  : Yale shooting problem (simple version)
% Version  : Especial.
% English  : After any sequence of actions ("always") ended by "load" the 
%            gun is loaded. After any sequence of actions, if the gun is
%            loaded then after a shoot the turkey is not alive. Then, after
%            the actions load and shoot the turkey is not alive.

% Refs     : [Bal98] Baldoni (1998), Normal Multimodal Logics: Automatic De

% Source   : 
% Names    : 

% Status   : Theorem   
% Rating   : 0.00      v 1.1

%            domain condition for all modalities: cumulative
%            term conditions  for all terms: 
%            designation: rigid,  extension: local    
%
% Comments :
%--------------------------------------------------------------------------

tpi(4,set_logic,modal([cumulative,rigid,local],
                      [(always,s4),(load,s4),(shoot,s4)])).

qmf(i_always_load_1,axiom,
((#box(always) : loaded) => (#box(load) : loaded))).

qmf(i_always_load_2,axiom,
((#box(always) : (~ loaded)) => (#box(load) : (~ loaded)))).

qmf(i_always_alive_1,axiom,
((#box(always) : alive) => (#box(load) : alive))).

qmf(i_always_alive_2,axiom,
((#box(always) : (~ alive)) => (#box(load) : (~ alive)))).

qmf(i_always_load_1,axiom,
((#box(always) : loaded) => (#box(shoot) : loaded))).

qmf(i_always_load_2,axiom,
((#box(always) : (~ loaded)) => (#box(shoot) : (~ loaded)))).

qmf(i_always_alive_1,axiom,
((#box(always) : alive) => (#box(shoot) : alive))).

qmf(i_always_alive_2,axiom,
((#box(always) : (~ alive)) => (#box(shoot) : (~ alive)))).

qmf(axiom_1,axiom,
(#box(always) : (#box(load) : loaded))).

qmf(axiom_2,axiom,
(#box(always) : (loaded => #box(shoot) : (~ alive)))).

qmf(conj,conjecture,
 (#box(load) : (#box(shoot) : (~ alive)))).
