% semantics
thf(semantics,logic,$modal ==
[$constants == $rigid,
$quantification == $cumulative,
$modalities == $modal_system_S4]).

% modalities

% propositions

% individual constants
thf(raven_type,type,(raven : ($i))).
thf(cheese_type,type,(cheese : ($i))).

% predicates
thf(dropped_type,type,(dropped : ($i>$o))).
thf(charmed_type,type,(charmed : ($i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : MML005+1 : QMLTP v1.1
% Domain   : Multi-modal logic (Epistemic Logic Puzzles)
% Problem  : The Fox and the Raven
% Version  : Especial.
% English  : The fox believes that if he praises the raven, then the raven is
%            charmed, and the fox believes that in any moment,if the raven is
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
thf(i_always_praise_1_1,axiom-local,((({$box(#always)}@(dropped@cheese))=>({$box(#praise)}@({$box(#always)}@(dropped@cheese)))))).
thf(i_always_praise_2_2,axiom-local,(({$box(#always)}@(~((dropped@cheese))))=>({$box(#praise)}@({$box(#always)}@(~((dropped@cheese))))))).
thf(i_always_praise_1_3,axiom-local,((({$box(#always)}@(charmed@raven))=>({$box(#praise)}@({$box(#always)}@(charmed@raven)))))).
thf(i_always_praise_2_4,axiom-local,(({$box(#always)}@(~((charmed@cheese))))=>({$box(#praise)}@({$box(#always)}@(~((charmed@raven))))))).
thf(i_always_praise_1_5,axiom-local,((({$box(#always)}@(dropped@cheese))=>({$box(#sing)}@({$box(#always)}@(dropped@cheese)))))).
thf(i_always_praise_2_6,axiom-local,(({$box(#always)}@(~((dropped@cheese))))=>({$box(#sing)}@({$box(#always)}@(~((dropped@cheese))))))).
thf(i_always_praise_1_7,axiom-local,((({$box(#always)}@(charmed@raven))=>({$box(#sing)}@({$box(#always)}@(charmed@raven)))))).
thf(i_always_praise_2_8,axiom-local,(({$box(#always)}@(~((charmed@cheese))))=>({$box(#sing)}@({$box(#always)}@(~((charmed@raven))))))).
thf(axiom_1,axiom-local,({$box(#fox)}@({$box(#praise)}@(charmed@raven)))).
thf(axiom_2,axiom-local,({$box(#fox)}@({$box(#always)}@((charmed@raven)=>({$box(#sing)}@(dropped@cheese)))))).
thf(conj,conjecture,({$box(#fox)}@({$box(#praise)}@({$box(#sing)}@((dropped@cheese)))))).