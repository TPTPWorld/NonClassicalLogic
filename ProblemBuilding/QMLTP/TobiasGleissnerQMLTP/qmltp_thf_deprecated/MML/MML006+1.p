% semantics
thf(semantics,logic,($modal :=
[$constants := $rigid,
$quantification := $cumulative,
$consequence := $local,
$modalities := [make_c := $modal_system_K , pour_a := $modal_system_K , poor_b := $modal_system_K]])).

% modalities
thf(index_type_type , type , (index_type : $tType ) ).
thf(rel_make_c_type,type,(make_c : index_type)).
thf(rel_pour_a_type,type,(pour_a : index_type)).
thf(rel_poor_b_type,type,(poor_b : index_type)).

% propositions
thf(acid_type,type,(acid : ($o))).

% individual constants

% predicates

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : MML006+1 : QMLTP v1.1
% Domain   : Multi-modal logic (Epistemic Logic Puzzles)
% Problem  : The Bungling Chemist
% Version  : Especial.
% English  : Assume that a chemical compound c is made by pouring the elements
%            a and b into the same beaker. The two elements a and b are not
%            acid. It is possible that after making the compound c it results
%            acid.
%            Then it is possible that pouring elementa a results not acid and
%            pouring a and b in the beaker results acid
% Refs     : [Bal98] Baldoni (1998), Normal Multimodal Logics: Automatic De
% Source   :
% Names    :
% Status   : Theorem
% Rating   : 0.00 v1.1
%            domain condition for all modalities: cumulative
%            term conditions  for all terms:
%            designation: rigid,  extension: local
% Comments :
%--------------------------------------------------------------------------
tpi(6,set_logic,).
thf(pour_ab_make_axiom_1,axiom,(($box@index_type@pour_a@($box@index_type@pour_b@acid))=>($box@index_type@make_c@acid))).
thf(pour_ab_make_axiom_2,axiom,(($box@index_type@pour_a@($box@index_type@pour_b@(~(acid))))=>($box@index_type@make_c@(~(acid))))).
thf(pour_ba_make_axiom_1,axiom,(($box@index_type@pour_b@($box@index_type@pour_a@acid))=>($box@index_type@make_c@acid))).
thf(pour_ba_make_axiom_2,axiom,(($box@index_type@pour_b@($box@index_type@pour_a@(~(acid))))=>($box@index_type@make_c@(~(acid))))).
thf(pour_a_acid,axiom,($box@index_type@pour_a@(~(acid)))).
thf(make_c_acid,axiom,($dia@index_type@make_c@acid)).
thf(conj,conjecture,(($dia@index_type@pour_a@(~(acid)))&($dia@index_type@pour_a@($dia@index_type@pour_b@acid)))).