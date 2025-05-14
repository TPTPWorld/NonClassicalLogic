tff('k_ph_p.0002',logic,
    $modal == 
      [ $modalities == $modal_system_K ] ).

tff(p101_decl,type,
    p101: $o ).

tff(p102_decl,type,
    p102: $o ).

tff(p201_decl,type,
    p201: $o ).

tff(p202_decl,type,
    p202: $o ).

tff(p301_decl,type,
    p301: $o ).

tff(p302_decl,type,
    p302: $o ).

tff(prove,conjecture,
    ~ ~ ( <.> ( ( p101
                | [.] p102 )
              & ( p201
                | p202 )
              & ( p301
                | p302 ) )
       => <.> ( ( p101
                & p201 )
              | ( p101
                & p301 )
              | ( p201
                & p301 )
              | ( [.] p102
                & p202 )
              | ( [.] p102
                & p302 )
              | ( p202
                & p302 ) ) ) ).
