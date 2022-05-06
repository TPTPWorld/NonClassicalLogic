%------------------------------------------------------------------------------
% File     : LAW006^1 : TPTP v8.0.0. Released v8.0.0.
% Domain   : ?
% Problem  : ?
% Version  : ?
% English  : A person was sitting in a car while smoking with a child in it. 
%            The car was parked in the garage. We expect the person not to be 
%            liable for a fine.

% Refs     :
% Source   :
% Names    :

% Status   : Theorem
% Rating   : ? v8.0.0
% Syntax   :
% SPC      : 

% Comments :
%------------------------------------------------------------------------------
%----declare type for possible worlds
thf(mworld_type,type,(
    mworld: $tType )).

%----declare accessibility relations
thf(mrel_0_type,type,(
    mrel_0: mworld > mworld > $o )).

thf(mrel_1_type,type,(
    mrel_1: mworld > mworld > $o )).

%----define accessibility relation properties
thf(mserial_type,type,(
    mserial: ( mworld > mworld > $o ) > $o )).

thf(mserial_def,definition,
    ( mserial
    = ( ^ [R: mworld > mworld > $o] :
        ! [A: mworld] :
        ? [B: mworld] :
          ( R @ A @ B ) ) )).

%----assign properties to accessibility relations
thf(mrel_0_mserial,axiom,(
    mserial @ mrel_0 )).

thf(mrel_1_mserial,axiom,(
    mserial @ mrel_1 )).

%----define current-world constant and actuality operator
thf(mcurrentworld_type,type,(
    mcurrentworld: mworld )).

thf(mactual_type,type,(
    mactual: ( mworld > $o ) > $o )).

thf(mactual_def,definition,
    ( mactual
    = ( ^ [Phi: mworld > $o] :
          ( Phi @ mcurrentworld ) ) )).

%----define nullary, unary and binary connectives which are no quantifiers
thf(mimplies_type,type,(
    mimplies: ( mworld > $o ) > ( mworld > $o ) > mworld > $o )).

thf(mimplies,definition,
    ( mimplies
    = ( ^ [A: mworld > $o,B: mworld > $o,W: mworld] :
          ( ( A @ W )
         => ( B @ W ) ) ) )).

thf(mnot_type,type,(
    mnot: ( mworld > $o ) > mworld > $o )).

thf(mnot,definition,
    ( mnot
    = ( ^ [A: mworld > $o,W: mworld] :
          ~ ( A @ W ) ) )).

thf(mand_type,type,(
    mand: ( mworld > $o ) > ( mworld > $o ) > mworld > $o )).

thf(mand,definition,
    ( mand
    = ( ^ [A: mworld > $o,B: mworld > $o,W: mworld] :
          ( ( A @ W )
          & ( B @ W ) ) ) )).

thf(mequiv_type,type,(
    mequiv: ( mworld > $o ) > ( mworld > $o ) > mworld > $o )).

thf(mequiv,definition,
    ( mequiv
    = ( ^ [A: mworld > $o,B: mworld > $o,W: mworld] :
          ( ( A @ W )
        <=> ( B @ W ) ) ) )).

thf(mdia_int_0_type,type,(
    mdia_int_0: ( mworld > $o ) > mworld > $o )).

thf(mdia_int_0_def,definition,
    ( mdia_int_0
    = ( ^ [A: mworld > $o,W: mworld] :
        ? [V: mworld] :
          ( ( mrel_0 @ W @ V )
          & ( A @ V ) ) ) )).

thf(mdia_int_1_type,type,(
    mdia_int_1: ( mworld > $o ) > mworld > $o )).

thf(mdia_int_1_def,definition,
    ( mdia_int_1
    = ( ^ [A: mworld > $o,W: mworld] :
        ? [V: mworld] :
          ( ( mrel_1 @ W @ V )
          & ( A @ V ) ) ) )).

thf(mbox_int_0_type,type,(
    mbox_int_0: ( mworld > $o ) > mworld > $o )).

thf(mbox_int_0_def,definition,
    ( mbox_int_0
    = ( ^ [A: mworld > $o,W: mworld] :
        ! [V: mworld] :
          ( ( mrel_0 @ W @ V )
         => ( A @ V ) ) ) )).

thf(mbox_int_1_type,type,(
    mbox_int_1: ( mworld > $o ) > mworld > $o )).

thf(mbox_int_1_def,definition,
    ( mbox_int_1
    = ( ^ [A: mworld > $o,W: mworld] :
        ! [V: mworld] :
          ( ( mrel_1 @ W @ V )
         => ( A @ V ) ) ) )).

%------------------------------------------------------------------------------
%----transformed problem
%------------------------------------------------------------------------------

%----semantics
%----propositions
thf(article1_condition_adult__const_type,type,(
    article1_condition_adult__const: mworld > $o )).

thf(article1_offence__const_type,type,(
    article1_offence__const: mworld > $o )).

thf(article1_condition_car__const_type,type,(
    article1_condition_car__const: mworld > $o )).

thf(article1_condition_public_space__const_type,type,(
    article1_condition_public_space__const: mworld > $o )).

thf(article_b1_condition_reason_to_believe__const_type,type,(
    article_b1_condition_reason_to_believe__const: mworld > $o )).

thf(article1_condition_child__const_type,type,(
    article1_condition_child__const: mworld > $o )).

thf(punishment_fine__const_type,type,(
    punishment_fine__const: mworld > $o )).

thf(article1_condition_designed_homecar__const_type,type,(
    article1_condition_designed_homecar__const: mworld > $o )).

thf(article_b6_contest_hearing__const_type,type,(
    article_b6_contest_hearing__const: mworld > $o )).

thf(article_b1_condition_officer__const_type,type,(
    article_b1_condition_officer__const: mworld > $o )).

thf(article1_condition_smoke__const_type,type,(
    article1_condition_smoke__const: mworld > $o )).

thf(violation__const_type,type,(
    violation__const: mworld > $o )).

thf(article_b1_punishment_notice__const_type,type,(
    article_b1_punishment_notice__const: mworld > $o )).

thf(article_b6_condition_before_expiry__const_type,type,(
    article_b6_condition_before_expiry__const: mworld > $o )).

thf(article1_condition_used_homecar__const_type,type,(
    article1_condition_used_homecar__const: mworld > $o )).

%----individual constants
%----predicates
%----functions
%----converted problem
thf(axiom_0,axiom,(
    mactual @ ( mequiv @ article1_offence__const @ ( mand @ ( mand @ ( mand @ ( mand @ ( mand @ article1_condition_adult__const @ article1_condition_smoke__const ) @ article1_condition_car__const ) @ article1_condition_child__const ) @ article1_condition_public_space__const ) @ ( mnot @ ( mand @ article1_condition_designed_homecar__const @ article1_condition_used_homecar__const ) ) ) ) )).

thf(axiom_1,axiom,(
    mactual @ ( mand @ ( mand @ ( mimplies @ ( mand @ article1_condition_adult__const @ article1_offence__const ) @ ( mand @ ( mdia_int_0 @ punishment_fine__const ) @ ( mdia_int_1 @ ( mnot @ punishment_fine__const ) ) ) ) @ ( mimplies @ ( mbox_int_0 @ ( mand @ ( mdia_int_0 @ ( mand @ article1_condition_adult__const @ article1_offence__const ) ) @ ( mdia_int_1 @ ( mnot @ ( mand @ article1_condition_adult__const @ article1_offence__const ) ) ) ) ) @ ( mbox_int_0 @ ( mand @ ( mdia_int_0 @ punishment_fine__const ) @ ( mdia_int_1 @ ( mnot @ punishment_fine__const ) ) ) ) ) ) @ ( mand @ ( mimplies @ ( mnot @ ( mand @ article1_condition_adult__const @ article1_offence__const ) ) @ ( mand @ ( mbox_int_0 @ ( mnot @ punishment_fine__const ) ) @ ( mbox_int_1 @ ( mnot @ ( mnot @ punishment_fine__const ) ) ) ) ) @ ( mimplies @ ( mbox_int_0 @ ( mand @ ( mbox_int_0 @ ( mnot @ ( mand @ article1_condition_adult__const @ article1_offence__const ) ) ) @ ( mbox_int_1 @ ( mnot @ ( mnot @ ( mand @ article1_condition_adult__const @ article1_offence__const ) ) ) ) ) ) @ ( mbox_int_0 @ ( mand @ ( mbox_int_0 @ ( mnot @ punishment_fine__const ) ) @ ( mbox_int_1 @ ( mnot @ ( mnot @ punishment_fine__const ) ) ) ) ) ) ) ) )).

thf(axiom_2,axiom,(
    mactual @ ( mand @ ( mand @ ( mimplies @ ( mand @ article_b1_condition_officer__const @ article_b1_condition_reason_to_believe__const ) @ ( mand @ ( mdia_int_0 @ article_b1_punishment_notice__const ) @ ( mdia_int_1 @ ( mnot @ article_b1_punishment_notice__const ) ) ) ) @ ( mimplies @ ( mbox_int_0 @ ( mand @ ( mdia_int_0 @ ( mand @ article_b1_condition_officer__const @ article_b1_condition_reason_to_believe__const ) ) @ ( mdia_int_1 @ ( mnot @ ( mand @ article_b1_condition_officer__const @ article_b1_condition_reason_to_believe__const ) ) ) ) ) @ ( mbox_int_0 @ ( mand @ ( mdia_int_0 @ article_b1_punishment_notice__const ) @ ( mdia_int_1 @ ( mnot @ article_b1_punishment_notice__const ) ) ) ) ) ) @ ( mand @ ( mimplies @ ( mnot @ ( mand @ article_b1_condition_officer__const @ article_b1_condition_reason_to_believe__const ) ) @ ( mand @ ( mbox_int_0 @ ( mnot @ article_b1_punishment_notice__const ) ) @ ( mbox_int_1 @ ( mnot @ ( mnot @ article_b1_punishment_notice__const ) ) ) ) ) @ ( mimplies @ ( mbox_int_0 @ ( mand @ ( mbox_int_0 @ ( mnot @ ( mand @ article_b1_condition_officer__const @ article_b1_condition_reason_to_believe__const ) ) ) @ ( mbox_int_1 @ ( mnot @ ( mnot @ ( mand @ article_b1_condition_officer__const @ article_b1_condition_reason_to_believe__const ) ) ) ) ) ) @ ( mbox_int_0 @ ( mand @ ( mbox_int_0 @ ( mnot @ article_b1_punishment_notice__const ) ) @ ( mbox_int_1 @ ( mnot @ ( mnot @ article_b1_punishment_notice__const ) ) ) ) ) ) ) ) )).

thf(axiom_3,axiom,(
    mactual @ ( mand @ ( mimplies @ ( mand @ ( mand @ ( mand @ article1_condition_adult__const @ article_b1_punishment_notice__const ) @ ( mnot @ article1_offence__const ) ) @ article_b6_condition_before_expiry__const ) @ ( mand @ ( mdia_int_0 @ article_b6_contest_hearing__const ) @ ( mdia_int_1 @ ( mnot @ article_b6_contest_hearing__const ) ) ) ) @ ( mimplies @ ( mbox_int_0 @ ( mand @ ( mdia_int_0 @ ( mand @ ( mand @ ( mand @ article1_condition_adult__const @ article_b1_punishment_notice__const ) @ ( mnot @ article1_offence__const ) ) @ article_b6_condition_before_expiry__const ) ) @ ( mdia_int_1 @ ( mnot @ ( mand @ ( mand @ ( mand @ article1_condition_adult__const @ article_b1_punishment_notice__const ) @ ( mnot @ article1_offence__const ) ) @ article_b6_condition_before_expiry__const ) ) ) ) ) @ ( mbox_int_0 @ ( mand @ ( mdia_int_0 @ article_b6_contest_hearing__const ) @ ( mdia_int_1 @ ( mnot @ article_b6_contest_hearing__const ) ) ) ) ) ) )).

thf(axiom_4,axiom,(
    mactual @ ( mimplies @ ( mand @ ( mnot @ ( mand @ article1_condition_adult__const @ article1_offence__const ) ) @ punishment_fine__const ) @ violation__const ) )).

thf(axiom_5,axiom,(
    mactual @ ( mimplies @ ( mand @ ( mnot @ ( mand @ article_b1_condition_officer__const @ article_b1_condition_reason_to_believe__const ) ) @ article_b1_punishment_notice__const ) @ violation__const ) )).

thf(axiom_6,axiom,(
    mactual @ article1_condition_adult__const )).

thf(axiom_7,axiom,(
    mactual @ article1_condition_car__const )).

thf(axiom_8,axiom,(
    mactual @ article1_condition_smoke__const )).

thf(axiom_9,axiom,(
    mactual @ article1_condition_child__const )).

thf(axiom_10,axiom,(
    mactual @ ( mnot @ article1_condition_public_space__const ) )).

thf(con,conjecture,(
    mactual @ ( mand @ ( mbox_int_0 @ ( mnot @ punishment_fine__const ) ) @ ( mbox_int_1 @ ( mnot @ ( mnot @ punishment_fine__const ) ) ) ) )).

%------------------------------------------------------------------------------
