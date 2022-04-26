% semantics
thf(semantics,logic,($modal :=
[$constants := $rigid,
$quantification := $cumulative,
$consequence := $local,
$modalities := [u := $modal_system_S4 , c := $modal_system_S4]])).

% modalities
thf(index_type_type , type , (index_type : $tType ) ).
thf(rel_u_type,type,(u : index_type)).
thf(rel_c_type,type,(c : index_type)).

% propositions
thf(charge_type,type,(charge : ($o))).
thf(called_type,type,(called : ($o))).
thf(paid_type,type,(paid : ($o))).

% individual constants

% predicates

% functions

% converted problem
%----------------------------------------------------------------------------
% File     : MML011+1 : QMLTP v1.1
% Domain   : Multi-Modal Logic (Security Protocols)
% Problem  : Phone User and Company (requirement 1)
% Version  : Especial.
% English  : Phone user U and phone company C have following relationship:
%            U does not pay a call before he has dialled it. Both U nd C
%            are able to prove when U is being carged.
%            U is able to prove that C can prove that U has made a call,
%            C is able to prove that U can prove that U has paid his call,
%            U is able to prove that C cannot prove that U has made a call,
%            C is able to prove that U cannot prove that he has paid his call,
%            whenever these facts are true, respectively.
%            Then, the following requirement is true:
%            From U's point of view, C should charge U only if he has made a
%            call that is not yet paid.
% Refs     : [HA97] Huima and Aura (1997) Using Multimodal Logic to Express
%                   Conflicting Interests in Security Protocols.
% Source   :
% Names    :
% Status   : Theorem
% Rating   : 0.00  v1.1
%
%            domain condition for all modalities: cumulative
%            term conditions  for all terms:
%            designation: rigid,  extension: local
%
% Comments :
%--------------------------------------------------------------------------
tpi(11,set_logic,).
thf(aciom_paid_charge,axiom,(paid=>called)).
thf(axiom_charge_u,axiom,(charge=>(($box@index_type@u@charge)&($box@index_type@c@charge)))).
thf(axiom_1,axiom,($box@index_type@u@(called=>($box@index_type@c@called)))).
thf(axiom_2,axiom,($box@index_type@c@(paid=>($box@index_type@u@paid)))).
thf(axiom_3,axiom,((~(($box@index_type@c@called)))=>($box@index_type@u@(~(($box@index_type@c@called)))))).
thf(axiom_4,axiom,((~(($box@index_type@u@paid)))=>($box@index_type@c@(~(($box@index_type@u@paid)))))).
thf(requirement_1,conjecture,((~((charge=>(called&(~(paid))))))=>($box@index_type@u@(~((charge=>(called&(~(paid))))))))).