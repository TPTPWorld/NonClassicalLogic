tff('k5d_ph_p.0001',logic,
    $modal == 
      [ $modalities == $modal_system_D5 ] ).

tff(p101_decl,type,
    p101: $o ).

tff(p201_decl,type,
    p201: $o ).

tff(y101_decl,type,
    y101: $o ).

tff(y201_decl,type,
    y201: $o ).

tff(z101_decl,type,
    z101: $o ).

tff(z201_decl,type,
    z201: $o ).

tff(prove,conjecture,
    ~ ( <.> ( ( p101
              | ( [.] y101
                & [.] ~ y101 )
              | ( <.> [.] z101
                & <.> ~ z101 ) )
            & ( p201
              | ( [.] y201
                & [.] ~ y201 )
              | ( <.> [.] z201
                & <.> ~ z201 ) ) )
      & [.] ( ~ p101
            | ( [.] y101
              & [.] ~ y101 )
            | ( <.> [.] z101
              & <.> ~ z101 )
            | ~ p201
            | ( [.] y201
              & [.] ~ y201 )
            | ( <.> [.] z201
              & <.> ~ z201 ) ) ) ).
