% semantics
thf(semantics,logic,($modal ==
[$constants == $rigid,
$quantification == $cumulative,
$consequence == $local,
$modalities == [b_alice == $modal_system_S5 , b_bob == $modal_system_S5 , i_alice == $modal_system_S5 , i_bob == $modal_system_S5]])).

% modalities
thf(index_type_type , type , (index_type : $tType ) ).
thf(rel_b_alice_type,type,(b_alice : index_type)).
thf(rel_b_bob_type,type,(b_bob : index_type)).
thf(rel_i_alice_type,type,(i_alice : index_type)).
thf(rel_i_bob_type,type,(i_bob : index_type)).

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
thf(axiom_1_alice,axiom,({$box:#b_alice}@(((bigcity@portland)&({$box:#b_alice}@({$box:#b_bob}@(~((bigcity@portland))))))=>({$box:#i_alice}@({$box:#b_bob}@((bigcity@portland))))))).
thf(axiom_1_bob,axiom,({$box:#b_bob}@(((bigcity@portland)&({$box:#b_bob}@({$box:#b_alice}@(~((bigcity@portland))))))=>({$box:#i_bob}@({$box:#b_alice}@((bigcity@portland))))))).
thf(axiom_2,axiom,({$box:#b_alice}@((bigcity@portland)))).
thf(axiom_3,axiom,({$box:#b_alice}@({$box:#b_bob}@(~((bigcity@portland)))))).
thf(con,conjecture,({$box:#i_alice}@({$box:#b_bob}@((bigcity@portland))))).