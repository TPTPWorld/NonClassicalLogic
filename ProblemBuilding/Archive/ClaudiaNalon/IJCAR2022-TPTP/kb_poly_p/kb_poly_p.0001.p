tff('kb_poly_p.0001',logic,
    $modal == 
      [ $modalities == $modal_system_KB ] ).

tff(p1_decl,type,
    p1: $o ).

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

tff(z1_decl,type,
    z1: $o ).

tff(z2_decl,type,
    z2: $o ).

tff(z3_decl,type,
    z3: $o ).

tff(z4_decl,type,
    z4: $o ).

tff(z5_decl,type,
    z5: $o ).

tff(z6_decl,type,
    z6: $o ).

tff(z8_decl,type,
    z8: $o ).

tff(prove,conjecture,
    ~ ( <.> <.> <.> <.> ( ~ p1
                        | ( ~ z1
                          & <.> [.] z1 )
                        | ~ p2
                        | ( ~ z2
                          & <.> [.] z2 )
                        | ~ p3
                        | ( ~ z3
                          & <.> [.] z3 )
                        | ~ p4
                        | ( ~ z4
                          & <.> [.] z4 ) )
      & [.] ( [.] ( [.] [.] ( ( ( p1
                                | ( ~ z1
                                  & <.> [.] z1 ) )
                              & ( ~ p2
                                | ( ~ z2
                                  & <.> [.] z2 ) ) )
                            | ( ( p2
                                | ( ~ z2
                                  & <.> [.] z2 ) )
                              & ( ~ p1
                                | ( ~ z1
                                  & <.> [.] z1 ) ) ) )
                  & <.> ( ~ p3
                        | ( ~ z3
                          & <.> [.] z3 ) )
                  & [.] [.] ( ( ( p2
                                | ( ~ z2
                                  & <.> [.] z2 ) )
                              & ( ~ p3
                                | ( ~ z3
                                  & <.> [.] z3 ) ) )
                            | ( ( p3
                                | ( ~ z3
                                  & <.> [.] z3 ) )
                              & ( ~ p2
                                | ( ~ z2
                                  & <.> [.] z2 ) ) ) ) )
            & <.> ( ~ p4
                  | ( ~ z4
                    & <.> [.] z4 ) )
            & [.] [.] [.] ( ( ( p3
                              | ( ~ z3
                                & <.> [.] z3 ) )
                            & ( ~ p1
                              | ( ~ z1
                                & <.> [.] z1 ) ) )
                          | ( ( p1
                              | ( ~ z1
                                & <.> [.] z1 ) )
                            & ( ~ p3
                              | ( ~ z3
                                & <.> [.] z3 ) ) ) ) )
      & <.> ( ~ p5
            | ( ~ z5
              & <.> [.] z5 ) )
      & <.> <.> <.> <.> ( p2
                        | ( ~ z2
                          & <.> [.] z2 )
                        | p4
                        | ( ~ z4
                          & <.> [.] z4 )
                        | p6
                        | ( ~ z6
                          & <.> [.] z6 )
                        | p8
                        | ( ~ z8
                          & <.> [.] z8 ) ) ) ).
