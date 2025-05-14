tff('kd_ph_p.0001',logic,
    $modal == 
      [ $modalities == $modal_system_D ] ).

tff(p101_decl,type,
    p101: $o ).

tff(p201_decl,type,
    p201: $o ).

tff(z101_decl,type,
    z101: $o ).

tff(z201_decl,type,
    z201: $o ).

tff(prove,conjecture,
    ~ ( <.> ( ( p101
              | ( [.] z101
                & [.] ~ z101 ) )
            & ( p201
              | ( [.] z201
                & [.] ~ z201 ) ) )
      & [.] ( ~ p101
            | ( [.] z101
              & [.] ~ z101 )
            | ~ p201
            | ( [.] z201
              & [.] ~ z201 ) ) ) ).
