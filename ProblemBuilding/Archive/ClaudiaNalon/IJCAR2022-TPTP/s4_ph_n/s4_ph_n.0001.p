tff('s4_ph_n.0001',logic,
    $modal == 
      [ $modalities == $modal_system_S4 ] ).

tff(p101_decl,type,
    p101: $o ).

tff(p201_decl,type,
    p201: $o ).

tff(prove,conjecture,
    ~ ~ ( ( p101
          & p201 )
       => <.> <.> ( ~ p101
                  & p201 ) ) ).
