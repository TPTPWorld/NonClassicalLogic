% semantics
thf(semantics,logic,($modal :=
[$constants := $rigid,
$quantification := $cumulative,
$consequence := $local,
$modalities := [a := $modal_system_S4 , b := $modal_system_S4]])).

% modalities
thf(index_type_type , type , (index_type : $tType ) ).
thf(rel_a_type,type,(a : index_type)).
thf(rel_b_type,type,(b : index_type)).

% propositions
thf(p_type,type,(p : ($o))).

% individual constants

% predicates

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : MML013+1 : QMLTP v1.1
% Domain   : Multi-modal logic (Security Protocols)
% Problem  : Proving disprovability
% Version  : Especial.
% English  : If A can prove that B can prove p whenever it is true, and
%            if A can prove that B cannot prove p if that is true,
%            and if p is not true,
%            then A can prove that p is not true.
% Refs     : [HA97] Huima and Aura (1997) Using Multimodal Logic to Express
%                   Conflicting Interests in Security Protocols.
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
tpi(13,set_logic,).
thf(ab_axiom_1,axiom,(($box@index_type@a@(p=>($box@index_type@b@p))))).
thf(ab_axiom_2,axiom,((~(($box@index_type@b@p)))=>($box@index_type@a@(~(($box@index_type@b@p)))))).
thf(not_a_axiom_1,axiom,((~(p)))).
thf(conj,conjecture,(($box@index_type@a@(~(p))))).