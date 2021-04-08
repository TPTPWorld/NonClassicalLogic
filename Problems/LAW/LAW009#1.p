%------------------------------------------------------------------------------
% File     : LAW009#1 : TPTP v8.0.0. Released v8.0.0.
% Domain   : ?
% Problem  : ?
% Version  : ?
% English  : A person was driving a car on the street while smoking with a 
%            child in it. The car was designed and used as a living 
%            accommodation. We expect the person not to be liable for a fine.

% Refs     :
% Source   :
% Names    :

% Status   : Theorem
% Rating   : ? v8.0.0
% Syntax   :
% SPC      : 

% Comments :
%------------------------------------------------------------------------------
%----semantics
thf(semantics,logic,(
    $modal := 
      [ $constants := $rigid, 
        $quantification := $constant, 
        $consequence := $local, 
        $modalities := 
          [ $box_int @ 0 := $modal_system_D, 
            $box_int @ 1 := $modal_system_D ] ] )).

%----propositions
thf(article1_condition_adult__const_type,type,(
    article1_condition_adult__const: $o )).

thf(article1_offence__const_type,type,(
    article1_offence__const: $o )).

thf(article1_condition_car__const_type,type,(
    article1_condition_car__const: $o )).

thf(article1_condition_public_space__const_type,type,(
    article1_condition_public_space__const: $o )).

thf(article_b1_condition_reason_to_believe__const_type,type,(
    article_b1_condition_reason_to_believe__const: $o )).

thf(article1_condition_child__const_type,type,(
    article1_condition_child__const: $o )).

thf(punishment_fine__const_type,type,(
    punishment_fine__const: $o )).

thf(article1_condition_designed_homecar__const_type,type,(
    article1_condition_designed_homecar__const: $o )).

thf(article_b6_contest_hearing__const_type,type,(
    article_b6_contest_hearing__const: $o )).

thf(article_b1_condition_officer__const_type,type,(
    article_b1_condition_officer__const: $o )).

thf(article1_condition_smoke__const_type,type,(
    article1_condition_smoke__const: $o )).

thf(violation__const_type,type,(
    violation__const: $o )).

thf(article_b1_punishment_notice__const_type,type,(
    article_b1_punishment_notice__const: $o )).

thf(article_b6_condition_before_expiry__const_type,type,(
    article_b6_condition_before_expiry__const: $o )).

thf(article1_condition_used_homecar__const_type,type,(
    article1_condition_used_homecar__const: $o )).

thf(axiom_0,axiom,
    ( article1_offence__const
  <=> ( article1_condition_adult__const
      & article1_condition_smoke__const
      & article1_condition_car__const
      & article1_condition_child__const
      & article1_condition_public_space__const
      & ~ ( article1_condition_designed_homecar__const
          & article1_condition_used_homecar__const ) ) )).

thf(axiom_1,axiom,
    ( ( ( article1_condition_adult__const
        & article1_offence__const )
     => ( ( $dia_int @ 0 @ punishment_fine__const )
        & ( $dia_int @ 1 @ ~ punishment_fine__const ) ) )
    & ( ( $box_int @ 0
        @ ( ( $dia_int @ 0
            @ ( article1_condition_adult__const
              & article1_offence__const ) )
          & ( $dia_int @ 1
            @ ~ ( article1_condition_adult__const
                & article1_offence__const ) ) ) )
     => ( $box_int @ 0
        @ ( ( $dia_int @ 0 @ punishment_fine__const )
          & ( $dia_int @ 1 @ ~ punishment_fine__const ) ) ) )
    & ( ~ ( article1_condition_adult__const
          & article1_offence__const )
     => ( ( $box_int @ 0 @ ~ punishment_fine__const )
        & ( $box_int @ 1 @ ~ ~ punishment_fine__const ) ) )
    & ( ( $box_int @ 0
        @ ( ( $box_int @ 0
            @ ~ ( article1_condition_adult__const
                & article1_offence__const ) )
          & ( $box_int @ 1
            @ ~ ~ ( article1_condition_adult__const
                  & article1_offence__const ) ) ) )
     => ( $box_int @ 0
        @ ( ( $box_int @ 0 @ ~ punishment_fine__const )
          & ( $box_int @ 1 @ ~ ~ punishment_fine__const ) ) ) ) )).

thf(axiom_2,axiom,
    ( ( ( article_b1_condition_officer__const
        & article_b1_condition_reason_to_believe__const )
     => ( ( $dia_int @ 0 @ article_b1_punishment_notice__const )
        & ( $dia_int @ 1 @ ~ article_b1_punishment_notice__const ) ) )
    & ( ( $box_int @ 0
        @ ( ( $dia_int @ 0
            @ ( article_b1_condition_officer__const
              & article_b1_condition_reason_to_believe__const ) )
          & ( $dia_int @ 1
            @ ~ ( article_b1_condition_officer__const
                & article_b1_condition_reason_to_believe__const ) ) ) )
     => ( $box_int @ 0
        @ ( ( $dia_int @ 0 @ article_b1_punishment_notice__const )
          & ( $dia_int @ 1 @ ~ article_b1_punishment_notice__const ) ) ) )
    & ( ~ ( article_b1_condition_officer__const
          & article_b1_condition_reason_to_believe__const )
     => ( ( $box_int @ 0 @ ~ article_b1_punishment_notice__const )
        & ( $box_int @ 1 @ ~ ~ article_b1_punishment_notice__const ) ) )
    & ( ( $box_int @ 0
        @ ( ( $box_int @ 0
            @ ~ ( article_b1_condition_officer__const
                & article_b1_condition_reason_to_believe__const ) )
          & ( $box_int @ 1
            @ ~ ~ ( article_b1_condition_officer__const
                  & article_b1_condition_reason_to_believe__const ) ) ) )
     => ( $box_int @ 0
        @ ( ( $box_int @ 0 @ ~ article_b1_punishment_notice__const )
          & ( $box_int @ 1 @ ~ ~ article_b1_punishment_notice__const ) ) ) ) )).

thf(axiom_3,axiom,
    ( ( ( article1_condition_adult__const
        & article_b1_punishment_notice__const
        & ~ article1_offence__const
        & article_b6_condition_before_expiry__const )
     => ( ( $dia_int @ 0 @ article_b6_contest_hearing__const )
        & ( $dia_int @ 1 @ ~ article_b6_contest_hearing__const ) ) )
    & ( ( $box_int @ 0
        @ ( ( $dia_int @ 0
            @ ( article1_condition_adult__const
              & article_b1_punishment_notice__const
              & ~ article1_offence__const
              & article_b6_condition_before_expiry__const ) )
          & ( $dia_int @ 1
            @ ~ ( article1_condition_adult__const
                & article_b1_punishment_notice__const
                & ~ article1_offence__const
                & article_b6_condition_before_expiry__const ) ) ) )
     => ( $box_int @ 0
        @ ( ( $dia_int @ 0 @ article_b6_contest_hearing__const )
          & ( $dia_int @ 1 @ ~ article_b6_contest_hearing__const ) ) ) ) )).

thf(axiom_4,axiom,
    ( ( ~ ( article1_condition_adult__const
          & article1_offence__const )
      & punishment_fine__const )
   => violation__const )).

thf(axiom_5,axiom,
    ( ( ~ ( article_b1_condition_officer__const
          & article_b1_condition_reason_to_believe__const )
      & article_b1_punishment_notice__const )
   => violation__const )).

thf(axiom_6,axiom,(
    article1_condition_adult__const )).

thf(axiom_7,axiom,(
    article1_condition_car__const )).

thf(axiom_8,axiom,(
    article1_condition_public_space__const )).

thf(axiom_9,axiom,(
    article1_condition_smoke__const )).

thf(axiom_10,axiom,(
    article1_condition_child__const )).

thf(axiom_11,axiom,(
    article1_condition_designed_homecar__const )).

thf(axiom_12,axiom,(
    article1_condition_used_homecar__const )).

thf(con,conjecture,
    ( ( $box_int @ 0 @ ~ punishment_fine__const )
    & ( $box_int @ 1 @ ~ ~ punishment_fine__const ) )).

%------------------------------------------------------------------------------
