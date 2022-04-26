% semantics
thf(semantics,logic,$modal ==
[$constants == $rigid,
$quantification == $cumulative,
$modalities == $modal_system_S5]).

% modalities

% propositions
thf(c0_type,type,(c0 : ($o))).
thf(c1_type,type,(c1 : ($o))).
thf(b0_type,type,(b0 : ($o))).
thf(c2_type,type,(c2 : ($o))).
thf(b1_type,type,(b1 : ($o))).
thf(a0_type,type,(a0 : ($o))).
thf(b2_type,type,(b2 : ($o))).
thf(a1_type,type,(a1 : ($o))).
thf(a2_type,type,(a2 : ($o))).
thf(cb_type,type,(cb : ($o))).

% individual constants

% predicates

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : MML007+1 : QMLTP v1.1
% Domain   : Multi-modal logic (Epistemic Logic Puzzles)
% Problem  : Russian Card problem (very simple variant)
% Version  : Especial.
% English  : Anne, Bill and Cath draw 0, 1, and 2.
%            Anne knows that Bill knows that Cath knows her own card.
%            Anne has card 0. Then she but she does not consider it possible
%            considers it possible that Bill considers it possible that
%            Cath knows that Anne does not have card 0
% Refs     : H. P. van Ditmarsch, B. P. Kooi (2006). The Secret of My Success
%            Synthese 151(2): 201-232, 2006.
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
thf(axiom_knows_a_b_c,axiom,({$box(#a)}@({$box(#b)}@(({$box(#c)}@c0)|({$box(#c)}@c1)|({$box(#c)}@c2))))).
thf(axiom_knows_b_a_c,axiom,({$box(#b)}@({$box(#a)}@(({$box(#c)}@c0)|({$box(#c)}@c1)|({$box(#c)}@c2))))).
thf(axiom_knows_a_b_c_0,axiom,({$box(#a)}@({$box(#b)}@(({$box(#c)}@c0)|({$box(#c)}@c1)|({$box(#c)}@c2))))).
thf(axiom_knows_a_c_b,axiom,({$box(#a)}@({$box(#c)}@(({$box(#b)}@b0)|({$box(#b)}@b1)|({$box(#b)}@b2))))).
thf(axiom_knows_c_a_b,axiom,({$box(#c)}@({$box(#a)}@(({$box(#b)}@cb)|({$box(#b)}@b1)|({$box(#b)}@b2))))).
thf(axiom_knows_c_b_a,axiom,({$box(#c)}@({$box(#b)}@(({$box(#a)}@a0)|({$box(#a)}@a1)|({$box(#a)}@a2))))).
thf(axiom_knows_b_c_a,axiom,({$box(#b)}@({$box(#c)}@(({$box(#a)}@a0)|({$box(#a)}@a1)|({$box(#a)}@a2))))).
thf(axiom_a0,axiom,(a0)).
thf(con,conjecture,({$box(#b)}@(~(({$dia(#a)}@({$dia(#b)}@({$box(#c)}@(~((a0)))))))))).
