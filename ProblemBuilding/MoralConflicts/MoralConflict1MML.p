tff(logic_spec,logic,
    $$modal_old ==
        [ $domains == $constant,
          $designation == $rigid,
          $terms == $local,
          $modalities == $modal_system_D ] ).

%----Conflict when you're obliged to do A and B, but it's not dia(#alethic) to do so
tff(moral_conflict,axiom,
    ! [A: $o,B: $o] :
      ( ( ({$box(#deontic)} @ (A))
        & ({$box(#deontic)} @ (B)) )
      & ~ ({$dia(#alethic)} @ (A & B)) ) ).

%----Obligatory things are dia(#alethic)
tff(p,axiom,
    ! [A: $o] :
      ( ({$box(#deontic)} @ (A))
     => ({$dia(#alethic)} @ (A)) ) ).

%----I don't agree with this axiom, but it's in the paper
tff(c,axiom,
    ! [A: $o,B: $o] :
      ( ( ({$box(#deontic)} @ (A))
        & ({$box(#deontic)} @ (B)) )
     => ({$box(#deontic)} @ (A & B)) ) ).

