%------------------------------------------------------------------------------
% File     : Name : QMLTP v1.1
% Domain   : ?
% Problem  : ?
% Version  : ?
% English  : A person was driving a car on the main street while smoking with a child in it. The car was not designed as livinig accommodation. We expect the person to be liable for a fine
%

% Source   :
% Names    :

% Status   : Theorem
% Rating   : 0.00  v1.1

%            domain condition for all modalities: const
%            term conditions  for all terms:
%            designation: rigid
%
% Comments :
%------------------------------------------------------------------------------

tpi(10,set_logic,modal([const,rigid,local],
                       [(i,d),(a,d)])).

qmf(axiom_0,axiom,(article1_offence__const <=> (((((article1_condition_adult__const & article1_condition_smoke__const) & article1_condition_car__const) & article1_condition_child__const) & article1_condition_public_space__const) & (~ (article1_condition_designed_homecar__const & article1_condition_used_homecar__const))))).

qmf(axiom_1,axiom,(((((article1_condition_adult__const & article1_offence__const) => ((#dia(i) : punishment_fine__const) & (#dia(a) : ~ punishment_fine__const))) & ((#box(i) : ((#dia(i) : (article1_condition_adult__const & article1_offence__const)) & (#dia(a) : ~ (article1_condition_adult__const & article1_offence__const)))) => (#box(i) : ((#dia(i) : punishment_fine__const) & (#dia(a) : ~ punishment_fine__const)))))) & ((((~ (article1_condition_adult__const & article1_offence__const)) => ((#box(i) : (~ punishment_fine__const)) & (#box(a) : ~ (~ punishment_fine__const)))) & ((#box(i) : ((#box(i) : (~ (article1_condition_adult__const & article1_offence__const))) & (#box(a) : ~ (~ (article1_condition_adult__const & article1_offence__const))))) => (#box(i) : ((#box(i) : (~ punishment_fine__const)) & (#box(a) : ~ (~ punishment_fine__const))))))))).

qmf(axiom_2,axiom,(((((article_b1_condition_officer__const & article_b1_condition_reason_to_believe__const) => ((#dia(i) : article_b1_punishment_notice__const) & (#dia(a) : ~ article_b1_punishment_notice__const))) & ((#box(i) : ((#dia(i) : (article_b1_condition_officer__const & article_b1_condition_reason_to_believe__const)) & (#dia(a) : ~ (article_b1_condition_officer__const & article_b1_condition_reason_to_believe__const)))) => (#box(i) : ((#dia(i) : article_b1_punishment_notice__const) & (#dia(a) : ~ article_b1_punishment_notice__const)))))) & ((((~ (article_b1_condition_officer__const & article_b1_condition_reason_to_believe__const)) => ((#box(i) : (~ article_b1_punishment_notice__const)) & (#box(a) : ~ (~ article_b1_punishment_notice__const)))) & ((#box(i) : ((#box(i) : (~ (article_b1_condition_officer__const & article_b1_condition_reason_to_believe__const))) & (#box(a) : ~ (~ (article_b1_condition_officer__const & article_b1_condition_reason_to_believe__const))))) => (#box(i) : ((#box(i) : (~ article_b1_punishment_notice__const)) & (#box(a) : ~ (~ article_b1_punishment_notice__const))))))))).

qmf(axiom_3,axiom,((((((article1_condition_adult__const & article_b1_punishment_notice__const) & (~ article1_offence__const)) & article_b6_condition_before_expiry__const) => ((#dia(i) : article_b6_contest_hearing__const) & (#dia(a) : ~ article_b6_contest_hearing__const))) & ((#box(i) : ((#dia(i) : (((article1_condition_adult__const & article_b1_punishment_notice__const) & (~ article1_offence__const)) & article_b6_condition_before_expiry__const)) & (#dia(a) : ~ (((article1_condition_adult__const & article_b1_punishment_notice__const) & (~ article1_offence__const)) & article_b6_condition_before_expiry__const)))) => (#box(i) : ((#dia(i) : article_b6_contest_hearing__const) & (#dia(a) : ~ article_b6_contest_hearing__const))))))).

qmf(axiom_4,axiom,(((~ (article1_condition_adult__const & article1_offence__const)) & punishment_fine__const) => violation__const)).

qmf(axiom_5,axiom,(((~ (article_b1_condition_officer__const & article_b1_condition_reason_to_believe__const)) & article_b1_punishment_notice__const) => violation__const)).

qmf(axiom_6,axiom,article1_condition_adult__const).

qmf(axiom_7,axiom,article1_condition_car__const).

qmf(axiom_8,axiom,article1_condition_public_space__const).

qmf(axiom_9,axiom,article1_condition_smoke__const).

qmf(axiom_10,axiom,article1_condition_child__const).

qmf(axiom_11,axiom,(~ article1_condition_designed_homecar__const)).

qmf(con,conjecture,(((#dia(i) : punishment_fine__const) & (#dia(a) : ~ punishment_fine__const)))).
