tff(logic_spec,logic,
    $$modal_old ==
        [ $domains == $constant,
          $designation == $rigid,
          $terms == $local,
          $modalities == $modal_system_D ] ).

%----Conflict when you're obliged to do A and B, but it's not possible to do so
tff(moral_conflict,axiom,
    ! [A: $o,B: $o] :
      ( ( ({$obligatory} @ (A))
        & ({$obligatory} @ (B)) )
      & ~ ({$possible} @ (A & B)) ) ).

%----Obligatory things are possible
tff(p,axiom,
    ! [A: $o] :
      ( ({$obligatory} @ (A))
     => ({$possible} @ (A)) ) ).

%----I don't agree with this axiom, but it's in the paper
tff(c,axiom,
    ! [A: $o,B: $o] :
      ( ( ({$obligatory} @ (A))
        & ({$obligatory} @ (B)) )
     => ({$obligatory} @ (A & B)) ) ).

