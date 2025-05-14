tff('k_poly_n.0001',logic,
    $modal == 
      [ $modalities == $modal_system_K ] ).

tff(false_decl,type,
    false: $o ).

tff(p1_decl,type,
    p1: $o ).

tff(p10_decl,type,
    p10: $o ).

tff(p2_decl,type,
    p2: $o ).

tff(p3_decl,type,
    p3: $o ).

tff(p4_decl,type,
    p4: $o ).

tff(p5_decl,type,
    p5: $o ).

tff(p6_decl,type,
    p6: $o ).

tff(p8_decl,type,
    p8: $o ).

tff(prove,conjecture,
    ~ ~ ( [.] [.] [.] [.] [.] ( p1
                              & p2
                              & p3
                              & p4
                              & p5 )
        | <.> ( <.> ( <.> ( <.> ( false
                                | <.> ( p1
                                    <=> p2 ) )
                          | [.] p3
                          | <.> <.> ( p2
                                  <=> p3 ) )
                    | [.] p4
                    | <.> <.> <.> ( p3
                                <=> p4 ) )
              | [.] p5
              | <.> <.> <.> <.> ( p4
                              <=> p1 ) )
        | [.] p6
        | [.] [.] [.] [.] [.] ( ~ p2
                              & ~ p4
                              & ~ p6
                              & ~ p8
                              & ~ p10 ) ) ).
