% semantics
thf(semantics,logic,$modal ==
[$constants == $rigid,
$quantification == $cumulative,
$modalities == $modal_system_S4]).

% modalities

% propositions

% individual constants
thf(n0_type,type,(n0 : ($i))).
thf(n1_type,type,(n1 : ($i))).
thf(n2_type,type,(n2 : ($i))).
thf(n3_type,type,(n3 : ($i))).
thf(n4_type,type,(n4 : ($i))).
thf(n5_type,type,(n5 : ($i))).
thf(n6_type,type,(n6 : ($i))).

% predicates
thf(a_type,type,(a : ($i>$o))).
thf(b_type,type,(b : ($i>$o))).
thf(succ_type,type,(succ : ($i>$i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : MML008+1 : QMLTP v1.1
% Domain   : Multi-modal logic (Epistemic Logic Puzzles)
% Problem  : Consecutive numbers (Example 2.4)
% Version  : Especial.
% English  : Two agents, Anne and Bill, are facing each other. They see a
%            number on each other's forehead, and those numbers are
%            consecutive numbers n and n+1 for a certain n in N. They both
%            know this, and they know that they know it, etc. However, they
%            do not have any other a priori knowledge about their own number
%            If Anne's number is 3 and Bill's number is 2, then
%            Anne knows that Bill knows that Anne knows that Bill's number
%            is 0, 2 or 4, and
%            Bill knows that Anne knows that Bill knows that Anne's number
%            is 1, 3 or 5.
% Refs     : [DHB07] H. van Ditmarsch, W. van de Hoek, B. Kooi (2007).
%                    Dynamic Epistemic Logic
% Source   :
% Names    :
% Status   : Theorem
% Rating   : 0.00      v 1.1
%            domain condition for all modalities: cumulative
%            term conditions  for all terms:
%            designation: rigid,  extension: local
%
%--------------------------------------------------------------------------
thf(axiom_1,axiom-local,({$box(#fool)}@((succ@n0@n1)))).
thf(axiom_2,axiom-local,({$box(#fool)}@((succ@n1@n2)))).
thf(axiom_3,axiom-local,({$box(#fool)}@((succ@n2@n3)))).
thf(axiom_4,axiom-local,({$box(#fool)}@((succ@n3@n4)))).
thf(axiom_5,axiom-local,({$box(#fool)}@((succ@n4@n5)))).
thf(axiom_6,axiom-local,({$box(#fool)}@((succ@n5@n6)))).
thf(axiom_7,axiom-local,({$box(#fool)}@(?[X:$i]:(?[Y:$i]:((a@X)&(b@Y)&((succ@X@Y)|(succ@Y@X))))))).
thf(axiom_8,axiom-local,(![X:$i]:((a@X)=>({$box(#bill)}@(a@X))))).
thf(axiom_9,axiom-local,(![X:$i]:((b@X)=>({$box(#bill)}@(b@X))))).
thf(axiom_i_for_fool_a_1,axiom-local,(![X:$i]:(({$box(#fool)}@((a@X)))=>({$box(#anne)}@((a@X)))))).
thf(axiom_i_for_fool_a_2,axiom-local,(![X:$i]:(({$box(#fool)}@(~(((a@X)))))=>({$box(#anne)}@(~((a@X))))))).
thf(axiom_i_for_fool_a_3,axiom-local,(![X:$i]:(({$box(#fool)}@((b@X)))=>({$box(#anne)}@((b@X)))))).
thf(axiom_i_for_fool_a_4,axiom-local,(![X:$i]:(({$box(#fool)}@(~(((b@X)))))=>({$box(#anne)}@(~((b@X))))))).
thf(axiom_i_for_fool_b_1,axiom-local,(![X:$i]:(({$box(#fool)}@((a@X)))=>({$box(#bill)}@((a@X)))))).
thf(axiom_i_for_fool_b_2,axiom-local,(![X:$i]:(({$box(#fool)}@(~(((a@X)))))=>({$box(#bill)}@(~((a@X))))))).
thf(axiom_i_for_fool_b_3,axiom-local,(![X:$i]:(({$box(#fool)}@((b@X)))=>({$box(#bill)}@((b@X)))))).
thf(axiom_i_for_fool_b_4,axiom-local,(![X:$i]:(({$box(#fool)}@(~(((b@X)))))=>({$box(#bill)}@(~((b@X))))))).
thf(axiom_a3,axiom-local,((a@n3))).
thf(axiom_b2,axiom-local,((b@n2))).
thf(con,conjecture,(({$box(#anne)}@({$box(#bill)}@({$box(#anne)}@((b@n0)|(b@n2)|(b@n4)))))&({$box(#bill)}@({$box(#anne)}@({$box(#bill)}@((a@n1)|(a@n3)|(a@n5))))))).