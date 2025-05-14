tff(logic_spec,logic,
    $$modal_old ==
        [ $domains == $constant,
          $designation == $rigid,
          $terms == $local,
          $modalities == $modal_system_D ] ).

%----Conflict when you're obliged to do A and B, but it's not possible to do so
tff(moral_conflict,axiom,
    ! [A: $o,B: $o] :
      ( ( {$box(#deontic)} @ ((A)) )
      & ( {$box(#deontic)} @ ((B)) )
      & ~ ( {$dia(#alethic)} @ (A & B) ) ) ).

%----Actions are obliged
tff(nm,axiom,
    ! [A: $o,B: $o] :
      ( ( {$box(#alethic)}
        @ (( (A)
          => (B) )) )
     => ( ( {$box(#deontic)} @ (A) )
       => ( {$box(#deontic)} @ (B) ) ) ) ).

%----Negated obligation
tff(d,axiom,
    ! [A: $o] :
      ( ( {$box(#deontic)} @ (A) )
     => ~ ( {$box(#deontic)} @ (~ A) ) ) ).
