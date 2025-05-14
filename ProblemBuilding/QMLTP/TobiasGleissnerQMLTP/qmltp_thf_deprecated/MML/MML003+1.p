% semantics
thf(semantics,logic,($modal :=
[$constants := $rigid,
$quantification := $cumulative,
$consequence := $local,
$modalities := [a := $modal_system_S5 , b := $modal_system_S5 , c := $modal_system_S5]])).

% modalities
thf(index_type_type , type , (index_type : $tType ) ).
thf(rel_a_type,type,(a : index_type)).
thf(rel_b_type,type,(b : index_type)).
thf(rel_c_type,type,(c : index_type)).

% propositions
thf(mfb_type,type,(mfb : ($o))).
thf(mfa_type,type,(mfa : ($o))).
thf(mfc_type,type,(mfc : ($o))).
thf(s_type,type,(s : ($o))).

% individual constants

% predicates

% functions

% converted problem
%------------------------------------------------------------------------------
% File     : MML003+1 : QMLTP v1.1
% Domain   : Multi-modal logic (Epistemic Logic Puzzles)
% Problem  : The muddy forehead puzzle
% Version  : [Ben08] axioms.
% English  : Three children are playing together outside. After playing they
%            come inside, and their mother says to them, at least one of you
%            has mud on your head. Each child can see the mud on others but
%            cannot see his or her own forehead. She then asks the following
%            question over and over: can you tell for sure whether or not you
%            have mud on your head? Assuming that all of the children are
%            intelligent, honest, and answer simultaneously, what will happen?
% Refs     : [Fit07] Fitting (2007), Modal Proof Theory
%          : [Ben08] Benzmueller (2008), Email to G. Sutcliffe
% Source   : [Ben08]
% Names    : Fitting-HB-Knowledge-2b [Ben08]
% Status   : Unsolved
% Rating   : 1.00 v1.1
%            domain condition for all modalities: cumulative
%            term conditions  for all terms:
%            designation: rigid,  extension: local
%
% Comments:
%------------------------------------------------------------------------------
tpi(3,set_logic,).
thf(what_a_knows_about_b,axiom,($box@index_type@a@(($box@index_type@a@(mfb))|($box@index_type@a@(~(mfb)))))).
thf(what_a_knows_about_c,axiom,($box@index_type@a@(($box@index_type@a@(mfc))|($box@index_type@a@(~(mfc)))))).
thf(what_b_knows_about_a,axiom,($box@index_type@a@(($box@index_type@b@(mfa))|($box@index_type@b@(~(mfa)))))).
thf(what_b_knows_about_c,axiom,($box@index_type@a@(($box@index_type@b@(mfc))|($box@index_type@b@(~(mfc)))))).
thf(what_c_knows_about_a,axiom,($box@index_type@a@(($box@index_type@c@(mfa))|($box@index_type@c@(~(mfa)))))).
thf(what_c_knows_about_b,axiom,($box@index_type@a@(($box@index_type@c@(mfa))|($box@index_type@c@(~(mfa)))))).
thf(what_a_knows_about_b_0,axiom,($box@index_type@b@(($box@index_type@a@(mfb))|($box@index_type@a@(~(mfb)))))).
thf(what_a_knows_about_c_0,axiom,($box@index_type@b@(($box@index_type@a@(mfc))|($box@index_type@a@(~(mfc)))))).
thf(what_b_knows_about_a_0,axiom,($box@index_type@b@(($box@index_type@b@(mfa))|($box@index_type@b@(~(mfa)))))).
thf(what_b_knows_about_c_0,axiom,($box@index_type@b@(($box@index_type@b@(mfc))|($box@index_type@b@(~(mfc)))))).
thf(what_c_knows_about_a_0,axiom,($box@index_type@b@(($box@index_type@c@(mfa))|($box@index_type@c@(~(mfa)))))).
thf(what_c_knows_about_b_0,axiom,($box@index_type@b@(($box@index_type@c@(mfa))|($box@index_type@c@(~(mfa)))))).
thf(what_a_knows_about_b_1,axiom,($box@index_type@c@(($box@index_type@a@(mfb))|($box@index_type@a@(~(mfb)))))).
thf(what_a_knows_about_c_1,axiom,($box@index_type@c@(($box@index_type@a@(mfc))|($box@index_type@a@(~(mfc)))))).
thf(what_b_knows_about_a_1,axiom,($box@index_type@c@(($box@index_type@b@(mfa))|($box@index_type@b@(~(mfa)))))).
thf(what_b_knows_about_c_1,axiom,($box@index_type@c@(($box@index_type@b@(mfc))|($box@index_type@b@(~(mfc)))))).
thf(what_c_knows_about_a_1,axiom,($box@index_type@c@(($box@index_type@c@(mfa))|($box@index_type@c@(~(mfa)))))).
thf(what_c_knows_about_b_1,axiom,($box@index_type@c@(($box@index_type@c@(mfa))|($box@index_type@c@(~(mfa)))))).
thf(someone_knows_its_forhead,axiom,(s<=>(($box@index_type@a@(mfa|(~(mfa))))|($box@index_type@b@(mfb|(~(mfb))))|($box@index_type@c@(mfc|(~(mfc))))))).
thf(con,conjecture,((~((($box@index_type@a@(~((($box@index_type@a@(mfa|mfb|mfc))=>s))))=>s)))&(~((($box@index_type@a@(~((($box@index_type@b@(mfa|mfb|mfc))=>s))))=>s)))&(~((($box@index_type@a@(~((($box@index_type@c@(mfa|mfb|mfc))=>s))))=>s)))&(~((($box@index_type@b@(~((($box@index_type@a@(mfa|mfb|mfc))=>s))))=>s)))&(~((($box@index_type@b@(~((($box@index_type@b@(mfa|mfb|mfc))=>s))))=>s)))&(~((($box@index_type@b@(~((($box@index_type@c@(mfa|mfb|mfc))=>s))))=>s)))&(~((($box@index_type@c@(~((($box@index_type@a@(mfa|mfb|mfc))=>s))))=>s)))&(~((($box@index_type@c@(~((($box@index_type@b@(mfa|mfb|mfc))=>s))))=>s)))&(~((($box@index_type@c@(~((($box@index_type@c@(mfa|mfb|mfc))=>s))))=>s))))).