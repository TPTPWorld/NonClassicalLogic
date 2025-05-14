tff('s4_s5_n.0002',logic,
    $modal == 
      [ $modalities == $modal_system_S4 ] ).

tff(false_decl,type,
    false: $o ).

tff(p1_decl,type,
    p1: $o ).

tff(p12_decl,type,
    p12: $o ).

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

tff(p7_decl,type,
    p7: $o ).

tff(prove,conjecture,
    ~ ~ ( [.] <.> ( [.] p12
                  | <.> ( ( p1
                          & ~ p2 )
                        | ( ~ p1
                          & p2 ) )
                  | [.] ( <.> ( ( p2
                                & ~ p3 )
                              | ( ~ p2
                                & p3 ) )
                        | [.] ( <.> ( ( p3
                                      & ~ p4 )
                                    | ( ~ p3
                                      & p4 ) )
                              | [.] ( <.> ( ( p4
                                            & ~ p5 )
                                          | ( ~ p4
                                            & p5 ) )
                                    | [.] ( <.> ( ( p5
                                                  & ~ p6 )
                                                | ( ~ p5
                                                  & p6 ) )
                                          | [.] ( <.> ( ( p6
                                                        & ~ p7 )
                                                      | ( ~ p6
                                                        & p7 ) )
                                                | [.] false ) ) ) ) ) )
        | [.] ( <.> p1
             => ~ p12 ) ) ).
