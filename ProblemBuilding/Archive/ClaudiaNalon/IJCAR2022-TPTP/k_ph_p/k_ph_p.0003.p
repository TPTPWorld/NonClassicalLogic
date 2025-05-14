tff('k_ph_p.0003',logic,
    $modal == 
      [ $modalities == $modal_system_K ] ).

tff(p101_decl,type,
    p101: $o ).

tff(p102_decl,type,
    p102: $o ).

tff(p103_decl,type,
    p103: $o ).

tff(p201_decl,type,
    p201: $o ).

tff(p202_decl,type,
    p202: $o ).

tff(p203_decl,type,
    p203: $o ).

tff(p301_decl,type,
    p301: $o ).

tff(p302_decl,type,
    p302: $o ).

tff(p303_decl,type,
    p303: $o ).

tff(p401_decl,type,
    p401: $o ).

tff(p402_decl,type,
    p402: $o ).

tff(p403_decl,type,
    p403: $o ).

tff(prove,conjecture,
    ~ ~ ( <.> ( ( p101
                | [.] p102
                | [.] p103 )
              & ( p201
                | p202
                | [.] p203 )
              & ( p301
                | p302
                | p303 )
              & ( p401
                | p402
                | p403 ) )
       => <.> ( ( p101
                & p201 )
              | ( p101
                & p301 )
              | ( p101
                & p401 )
              | ( p201
                & p301 )
              | ( p201
                & p401 )
              | ( p301
                & p401 )
              | ( [.] p102
                & p202 )
              | ( [.] p102
                & p302 )
              | ( [.] p102
                & p402 )
              | ( p202
                & p302 )
              | ( p202
                & p402 )
              | ( p302
                & p402 )
              | ( [.] p103
                & [.] p203 )
              | ( [.] p103
                & p303 )
              | ( [.] p103
                & p403 )
              | ( [.] p203
                & p303 )
              | ( [.] p203
                & p403 )
              | ( p303
                & p403 ) ) ) ).
