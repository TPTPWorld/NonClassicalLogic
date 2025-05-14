tff(logic_spec,logic,
    $$modal_old ==
        [ $domains == $constant,
          $designation == $rigid,
          $terms == $local,
          $modalities == $modal_system_D ] ).

%----Conflict when you're obliged to do A and B, but it's not possible to do so
tff(moral_conflict,axiom,
    ! [A: $o,B: $o] :
      ( ( {$obligatory} @ ((A)) )
      & ( {$obligatory} @ ((B)) )
      & ~ ( {$possible}
          @ (( (A)
             & (B) )) ) ) ).

%----Actions are obliged
tff(nm,axiom,
    ! [A: $o,B: $o] :
      ( ( {$necessary}
        @ (( (A)
          => (B) )) )
     => ( ( {$obligatory} @ ((A)) )
       => ( {$obligatory} @ ((B)) ) ) ) ).

%----Negated obligation
tff(d,axiom,
    ! [A: $o] :
      ( ( {$obligatory} @ ((A)) )
     => ~ ( {$obligatory} @ (~ (A)) ) ) ).
