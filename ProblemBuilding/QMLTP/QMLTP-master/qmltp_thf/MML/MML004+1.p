% semantics
thf(semantics,logic,($modal :=
[$constants := $rigid,
$quantification := $cumulative,
$consequence := $local,
$modalities := [always := $modal_system_S4 , load := $modal_system_S4 , shoot := $modal_system_S4]])).

% modalities
thf(index_type_type , type , (index_type : $tType ) ).
thf(rel_always_type,type,(always : index_type)).
thf(rel_load_type,type,(load : index_type)).
thf(rel_shoot_type,type,(shoot : index_type)).

% propositions
thf(alive_type,type,(alive : ($o))).
thf(loaded_type,type,(loaded : ($o))).

% individual constants

% predicates

% functions

% converted problem
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
tpi(4,set_logic,).
thf(i_always_load_1,axiom,(($box@index_type@always@loaded)=>($box@index_type@load@loaded))).
thf(i_always_load_2,axiom,(($box@index_type@always@(~(loaded)))=>($box@index_type@load@(~(loaded))))).
thf(i_always_alive_1,axiom,(($box@index_type@always@alive)=>($box@index_type@load@alive))).
thf(i_always_alive_2,axiom,(($box@index_type@always@(~(alive)))=>($box@index_type@load@(~(alive))))).
thf(i_always_load_1_0,axiom,(($box@index_type@always@loaded)=>($box@index_type@shoot@loaded))).
thf(i_always_load_2_0,axiom,(($box@index_type@always@(~(loaded)))=>($box@index_type@shoot@(~(loaded))))).
thf(i_always_alive_1_0,axiom,(($box@index_type@always@alive)=>($box@index_type@shoot@alive))).
thf(i_always_alive_2_0,axiom,(($box@index_type@always@(~(alive)))=>($box@index_type@shoot@(~(alive))))).
thf(axiom_1,axiom,($box@index_type@always@($box@index_type@load@loaded))).
thf(axiom_2,axiom,($box@index_type@always@(loaded=>($box@index_type@shoot@(~(alive)))))).
thf(conj,conjecture,($box@index_type@load@($box@index_type@shoot@(~(alive))))).