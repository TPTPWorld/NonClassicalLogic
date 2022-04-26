% semantics
thf(semantics,logic,($modal :=
[$constants := $rigid,
$quantification := $cumulative,
$consequence := $local,
$modalities := [always := $modal_system_S4 , praise := $modal_system_S4 , fox := $modal_system_S4 , sing := $modal_system_S4]])).

% modalities
thf(index_type_type , type , (index_type : $tType ) ).
thf(rel_always_type,type,(always : index_type)).
thf(rel_praise_type,type,(praise : index_type)).
thf(rel_fox_type,type,(fox : index_type)).
thf(rel_sing_type,type,(sing : index_type)).

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
tpi(5,set_logic,).
thf(i_always_praise_1_1,axiom,((($box@index_type@always@(dropped@cheese))=>($box@index_type@praise@($box@index_type@always@(dropped@cheese)))))).
thf(i_always_praise_2_2,axiom,(($box@index_type@always@(~((dropped@cheese))))=>($box@index_type@praise@($box@index_type@always@(~((dropped@cheese))))))).
thf(i_always_praise_1_3,axiom,((($box@index_type@always@(charmed@raven))=>($box@index_type@praise@($box@index_type@always@(charmed@raven)))))).
thf(i_always_praise_2_4,axiom,(($box@index_type@always@(~((charmed@cheese))))=>($box@index_type@praise@($box@index_type@always@(~((charmed@raven))))))).
thf(i_always_praise_1_5,axiom,((($box@index_type@always@(dropped@cheese))=>($box@index_type@sing@($box@index_type@always@(dropped@cheese)))))).
thf(i_always_praise_2_6,axiom,(($box@index_type@always@(~((dropped@cheese))))=>($box@index_type@sing@($box@index_type@always@(~((dropped@cheese))))))).
thf(i_always_praise_1_7,axiom,((($box@index_type@always@(charmed@raven))=>($box@index_type@sing@($box@index_type@always@(charmed@raven)))))).
thf(i_always_praise_2_8,axiom,(($box@index_type@always@(~((charmed@cheese))))=>($box@index_type@sing@($box@index_type@always@(~((charmed@raven))))))).
thf(axiom_1,axiom,($box@index_type@fox@($box@index_type@praise@(charmed@raven)))).
thf(axiom_2,axiom,($box@index_type@fox@($box@index_type@always@((charmed@raven)=>($box@index_type@sing@(dropped@cheese)))))).
thf(conj,conjecture,($box@index_type@fox@($box@index_type@praise@($box@index_type@sing@((dropped@cheese)))))).