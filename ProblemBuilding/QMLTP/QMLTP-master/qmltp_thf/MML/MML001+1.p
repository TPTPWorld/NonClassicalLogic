% semantics
thf(semantics,logic,($modal :=
[$constants := $rigid,
$quantification := $cumulative,
$consequence := $local,
$modalities := [fool := $modal_system_S4 , a := $modal_system_S4 , b := $modal_system_S4 , c := $modal_system_S4]])).

% modalities
thf(index_type_type , type , (index_type : $tType ) ).
thf(rel_fool_type,type,(fool : index_type)).
thf(rel_a_type,type,(a : index_type)).
thf(rel_b_type,type,(b : index_type)).
thf(rel_c_type,type,(c : index_type)).

% propositions

% individual constants
thf(a_type,type,(a : ($i))).
thf(b_type,type,(b : ($i))).
thf(c_type,type,(c : ($i))).

% predicates
thf(ws_type,type,(ws : ($i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : MML001+1 : QMLTP v1.1
% Domain   : Multi-modal logic (Epistemic Logic Puzzles)
% Problem  : Wise men puzzle
% Version  : [Ben09] axioms.
% English  : Once upon a time, a king wanted to find the wisest out of his
%            three wisest men. He arranged them in a circle and told them that
%            he would put a white or a black spot on their foreheads and that
%            one of the three spots would certainly be white. The three wise
%            men could see and hear each other but, of course, they could not
%            see their faces reflected anywhere. The king, then, asked to each
%            of them to find out the colour of his own spot. After a while, the
%            wisest correctly answered that his spot was white.
% Refs     : [Gol92] Goldblatt (1992), Logics of Time and Computation
%          : [Bal98] Baldoni (1998), Normal Multimodal Logics: Automatic De
%          : [Ben09] Benzmueller (2009), Email to Geoff Sutcliffe
% Source   : [Ben09]
% Names    : mmex4.p [Ben09]
% Status   : Theorem
% Rating   : 0.50      v 1.1
%            domain condition for all modalities: cumulative
%            term conditions  for all terms:
%            designation: rigid,  extension: local
%
% Comments :
%--------------------------------------------------------------------------
tpi(1,set_logic,).
thf(axiom_1,axiom,($box@index_type@fool@((ws@a)|(ws@b)|(ws@c)))).
thf(axiom_2,axiom,($box@index_type@fool@((ws@a)=>($box@index_type@b@((ws@a)))))).
thf(axiom_3,axiom,($box@index_type@fool@((ws@a)=>($box@index_type@c@((ws@a)))))).
thf(axiom_4,axiom,($box@index_type@fool@((ws@b)=>($box@index_type@a@((ws@b)))))).
thf(axiom_5,axiom,($box@index_type@fool@((ws@b)=>($box@index_type@c@((ws@b)))))).
thf(axiom_6,axiom,($box@index_type@fool@((ws@c)=>($box@index_type@a@((ws@c)))))).
thf(axiom_7,axiom,($box@index_type@fool@((ws@c)=>($box@index_type@b@((ws@c)))))).
thf(axiom_8,axiom,($box@index_type@fool@((~(((ws@a))))=>($box@index_type@b@(~(((ws@a)))))))).
thf(axiom_9,axiom,($box@index_type@fool@((~(((ws@a))))=>($box@index_type@c@(~(((ws@a)))))))).
thf(axiom_10,axiom,($box@index_type@fool@((~(((ws@b))))=>($box@index_type@a@(~(((ws@b)))))))).
thf(axiom_11,axiom,($box@index_type@fool@((~(((ws@b))))=>($box@index_type@c@(~(((ws@b)))))))).
thf(axiom_12,axiom,($box@index_type@fool@((~(((ws@c))))=>($box@index_type@a@(~(((ws@c)))))))).
thf(axiom_13,axiom,($box@index_type@fool@((~(((ws@c))))=>($box@index_type@b@(~(((ws@c)))))))).
% commonly known: what is known is true (soundness)
%qmf(axiom_t_for_fool_1,axiom,
%(! [X] : ((#box(fool) : ws(X)) => ws(X)))).
%qmf(axiom_t_for_fool_2,axiom,
%(! [X] : ((#box(fool) : (~ (ws(X)))) => (~ (ws(X)))))).
% commonly known: what is known is known to be known (positive introspection)
%qmf(axiom_4_for_fool_1,axiom,
%(! [X] : ((#box(fool) : ws(X)) => (#box(fool) : (#box(fool) : (ws(X))))))).
%qmf(axiom_4_for_fool_2,axiom,
%(! [X] : ((#box(fool) : (~ (ws(X))) => (#box(fool) : (#box(fool) : (~ (ws(X))))))))).
%  what is commonly known is known to a, b and c
thf(axiom_i_for_fool_a_1,axiom,(![X:$i]:(($box@index_type@fool@((ws@X)))=>($box@index_type@a@((ws@X)))))).
thf(axiom_i_for_fool_a_2,axiom,(![X:$i]:(($box@index_type@fool@(~(((ws@X)))))=>($box@index_type@a@(~((ws@X))))))).
thf(axiom_i_for_fool_b_1,axiom,(![X:$i]:(($box@index_type@fool@((ws@X)))=>($box@index_type@b@((ws@X)))))).
thf(axiom_i_for_fool_b_2,axiom,(![X:$i]:(($box@index_type@fool@(~(((ws@X)))))=>($box@index_type@b@(~((ws@X))))))).
thf(axiom_i_for_fool_c_1,axiom,(![X:$i]:(($box@index_type@fool@((ws@X)))=>($box@index_type@c@((ws@X)))))).
thf(axiom_i_for_fool_c_2,axiom,(![X:$i]:(($box@index_type@fool@(~(((ws@X)))))=>($box@index_type@c@(~((ws@X))))))).
%  if a man knows/doesn't know something then the other two know that
%  (a man tells everything he knows/doesnt know to the others)
thf(axiom_a7_for_fool_ab_1,axiom,(![X:$i]:(($box@index_type@a@((ws@X)))=>($box@index_type@b@($box@index_type@a@((ws@X))))))).
thf(axiom_a7_for_fool_ab_2,axiom,(![X:$i]:(($box@index_type@a@(~(((ws@X)))))=>($box@index_type@b@($box@index_type@a@(~(((ws@X))))))))).
thf(axiom_a7_for_fool_ac_1,axiom,(![X:$i]:(($box@index_type@a@((ws@X)))=>($box@index_type@c@($box@index_type@a@((ws@X))))))).
thf(axiom_a7_for_fool_ac_2,axiom,(![X:$i]:(($box@index_type@a@(~(((ws@X)))))=>($box@index_type@c@($box@index_type@a@(~(((ws@X))))))))).
thf(axiom_a7_for_fool_ba_1,axiom,(![X:$i]:(($box@index_type@b@((ws@X)))=>($box@index_type@a@($box@index_type@b@((ws@X))))))).
thf(axiom_a7_for_fool_ba_2,axiom,(![X:$i]:(($box@index_type@b@(~(((ws@X)))))=>($box@index_type@a@($box@index_type@b@(~(((ws@X))))))))).
thf(axiom_a7_for_fool_bc_1,axiom,(![X:$i]:(($box@index_type@b@((ws@X)))=>($box@index_type@c@($box@index_type@b@((ws@X))))))).
thf(axiom_a7_for_fool_bc_2,axiom,(![X:$i]:(($box@index_type@b@(~(((ws@X)))))=>($box@index_type@c@($box@index_type@b@(~(((ws@X))))))))).
thf(axiom_a7_for_fool_ca_1,axiom,(![X:$i]:(($box@index_type@c@((ws@X)))=>($box@index_type@a@($box@index_type@c@((ws@X))))))).
thf(axiom_a7_for_fool_ca_2,axiom,(![X:$i]:(($box@index_type@c@(~(((ws@X)))))=>($box@index_type@a@($box@index_type@c@(~(((ws@X))))))))).
thf(axiom_a7_for_fool_cb_1,axiom,(![X:$i]:(($box@index_type@c@((ws@X)))=>($box@index_type@b@($box@index_type@c@((ws@X))))))).
thf(axiom_a7_for_fool_cb_2,axiom,(![X:$i]:(($box@index_type@c@(~(((ws@X)))))=>($box@index_type@b@($box@index_type@c@(~(((ws@X))))))))).
thf(axiom_a6_for_fool_ab_1,axiom,(![X:$i]:((~(($box@index_type@a@((ws@X)))))=>($box@index_type@b@(~(($box@index_type@a@((ws@X))))))))).
thf(axiom_a6_for_fool_ab_2,axiom,(![X:$i]:((~(($box@index_type@a@(~(((ws@X)))))))=>($box@index_type@b@(~(($box@index_type@a@(~(((ws@X))))))))))).
thf(axiom_a6_for_fool_ac_1,axiom,(![X:$i]:((~(($box@index_type@a@((ws@X)))))=>($box@index_type@c@(~(($box@index_type@a@((ws@X))))))))).
thf(axiom_a6_for_fool_ac_2,axiom,(![X:$i]:((~(($box@index_type@a@(~(((ws@X)))))))=>($box@index_type@c@(~(($box@index_type@a@(~(((ws@X))))))))))).
thf(axiom_a6_for_fool_ba_1,axiom,(![X:$i]:((~(($box@index_type@b@((ws@X)))))=>($box@index_type@a@(~(($box@index_type@b@((ws@X))))))))).
thf(axiom_a6_for_fool_ba_2,axiom,(![X:$i]:((~(($box@index_type@b@(~(((ws@X)))))))=>($box@index_type@a@(~(($box@index_type@b@(~(((ws@X))))))))))).
thf(axiom_a6_for_fool_bc_1,axiom,(![X:$i]:((~(($box@index_type@b@((ws@X)))))=>($box@index_type@c@(~(($box@index_type@b@((ws@X))))))))).
thf(axiom_a6_for_fool_bc_2,axiom,(![X:$i]:((~(($box@index_type@b@(~(((ws@X)))))))=>($box@index_type@c@(~(($box@index_type@b@(~(((ws@X))))))))))).
thf(axiom_a6_for_fool_ca_1,axiom,(![X:$i]:((~(($box@index_type@c@((ws@X)))))=>($box@index_type@a@(~(($box@index_type@c@((ws@X))))))))).
thf(axiom_a6_for_fool_ca_2,axiom,(![X:$i]:((~(($box@index_type@c@(~(((ws@X)))))))=>($box@index_type@a@(~(($box@index_type@c@(~(((ws@X))))))))))).
thf(axiom_a6_for_fool_cb_1,axiom,(![X:$i]:((~(($box@index_type@c@((ws@X)))))=>($box@index_type@b@(~(($box@index_type@c@((ws@X))))))))).
thf(axiom_a6_for_fool_cb_2,axiom,(![X:$i]:((~(($box@index_type@c@(~(((ws@X)))))))=>($box@index_type@b@(~(($box@index_type@c@(~(((ws@X))))))))))).
thf(axiom_14,axiom,(~(($box@index_type@a@((ws@a)))))).
thf(axiom_14_0,axiom,(~(($box@index_type@b@((ws@b)))))).
thf(con,conjecture,($box@index_type@c@((ws@c)))).