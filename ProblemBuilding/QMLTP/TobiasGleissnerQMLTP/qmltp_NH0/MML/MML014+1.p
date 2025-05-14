% semantics
thf(semantics,logic,$modal ==
[$constants == $rigid,
$quantification == $cumulative,
$modalities == $modal_system_S5]).

% modalities

% propositions

% individual constants
thf(portland_type,type,(portland : ($i))).

% predicates
thf(bigcity_type,type,(bigcity : ($i>$o))).

% functions

% converted problem
%----------------------------------------------------------------------------
% File     : MML014+1 : QMLTP v1.1
% Domain   : Multi-Modal Logic (Dialog System)
% Problem  : Schema Instantiation Example
% Version  : Especial.
% English  : Alice intends Bob to believe that portland is a big city.
% Refs     : [BS96] P. Bretier, M. D. Sadek. A Rational Agent as the Kernel
%            of a Cooperative Spoken Dialogue System: Implementing a Logical
%            Theory of Interaction. ATAL 1996: 189-203, 1996.
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
thf(axiom_1_alice,axiom,({$box(#b_alice)}@(((bigcity@portland)&({$box(#b_alice)}@({$box(#b_bob)}@(~((bigcity@portland))))))=>({$box(#i_alice)}@({$box(#b_bob)}@((bigcity@portland))))))).
thf(axiom_1_bob,axiom,({$box(#b_bob)}@(((bigcity@portland)&({$box(#b_bob)}@({$box(#b_alice)}@(~((bigcity@portland))))))=>({$box(#i_bob)}@({$box(#b_alice)}@((bigcity@portland))))))).
thf(axiom_2,axiom,({$box(#b_alice)}@((bigcity@portland)))).
thf(axiom_3,axiom,({$box(#b_alice)}@({$box(#b_bob)}@(~((bigcity@portland)))))).
thf(con,conjecture,({$box(#i_alice)}@({$box(#b_bob)}@((bigcity@portland))))).
