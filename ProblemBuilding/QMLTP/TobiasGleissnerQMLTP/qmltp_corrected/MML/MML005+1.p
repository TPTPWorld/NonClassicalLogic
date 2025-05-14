%--------------------------------------------------------------------------
% File     : MML005+1 : QMLTP v1.1
% Domain   : Multi-modal logic (Epistemic Logic Puzzles)
% Problem  : The Fox and the Raven
% Version  : Especial.
% English  : The fox believes that if he praises the raven, then the raven is
%            charmed, and the fox believes that in any moment , if the raven is
%            charmed then it is possible that the raven sings and so it drops 
%            cheese. Then the fox believes that after praising the raven may
%            sing and so it drops the cheese.

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

tpi(5,set_logic,modal([cumulative,rigid,local],
                      [(always,s4),(praise,s4),(fox,s4),(sing,s4)])).

qmf(i_always_praise_1_1,axiom,
(((#box(always) : dropped(cheese)) => (#box(praise) : (#box(always) : dropped(cheese)))))).

qmf(i_always_praise_2_2,axiom,
((#box(always) : (~ dropped(cheese))) => (#box(praise) : (#box(always) : (~ dropped(cheese)))))).

qmf(i_always_praise_1_3,axiom,
(((#box(always) : charmed(raven)) => (#box(praise) : (#box(always) : charmed(raven)))))).

qmf(i_always_praise_2_4,axiom,
((#box(always) : (~ charmed(cheese))) => (#box(praise) : (#box(always) : (~ charmed(raven)))))).

qmf(i_always_praise_1_5,axiom,
(((#box(always) : dropped(cheese)) => (#box(sing) : (#box(always) : dropped(cheese)))))).

qmf(i_always_praise_2_6,axiom,
((#box(always) : (~ dropped(cheese))) => (#box(sing) : (#box(always) : (~ dropped(cheese)))))).

qmf(i_always_praise_1_7,axiom,
(((#box(always) : charmed(raven)) => (#box(sing) : (#box(always) : charmed(raven)))))).

qmf(i_always_praise_2_8,axiom,
((#box(always) : (~ charmed(cheese))) => (#box(sing) : (#box(always) : (~ charmed(raven)))))).

qmf(axiom_1,axiom,
(#box(fox) : (#box(praise) : charmed(raven)))).

qmf(axiom_2,axiom,
(#box(fox) : (#box(always) : (charmed(raven) => (#box(sing) : dropped(cheese)))))).

qmf(conj,conjecture,
 (#box(fox) : (#box(praise) : (#box(sing) : (dropped(cheese)))))).
