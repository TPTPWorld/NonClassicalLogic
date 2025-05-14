tff('s4_s5_n.0004',logic,
    $modal == 
      [ $modalities == $modal_system_S4 ] ).

tff(false_decl,type,
    false: $o ).

tff(p1_decl,type,
    p1: $o ).

tff(p10_decl,type,
    p10: $o ).

tff(p11_decl,type,
    p11: $o ).

tff(p12_decl,type,
    p12: $o ).

tff(p13_decl,type,
    p13: $o ).

tff(p14_decl,type,
    p14: $o ).

tff(p15_decl,type,
    p15: $o ).

tff(p16_decl,type,
    p16: $o ).

tff(p17_decl,type,
    p17: $o ).

tff(p18_decl,type,
    p18: $o ).

tff(p19_decl,type,
    p19: $o ).

tff(p2_decl,type,
    p2: $o ).

tff(p24_decl,type,
    p24: $o ).

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

tff(p8_decl,type,
    p8: $o ).

tff(p9_decl,type,
    p9: $o ).

tff(prove,conjecture,
    ~ ~ ( [.] <.> ( [.] p24
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
                                                | [.] ( <.> ( ( p7
                                                              & ~ p8 )
                                                            | ( ~ p7
                                                              & p8 ) )
                                                      | [.] ( <.> ( ( p8
                                                                    & ~ p9 )
                                                                  | ( ~ p8
                                                                    & p9 ) )
                                                            | [.] ( <.> ( ( p9
                                                                          & ~ p10 )
                                                                        | ( ~ p9
                                                                          & p10 ) )
                                                                  | [.] ( <.> ( ( p10
                                                                                & ~ p11 )
                                                                              | ( ~ p10
                                                                                & p11 ) )
                                                                        | [.] ( <.> ( ( p11
                                                                                      & ~ p12 )
                                                                                    | ( ~ p11
                                                                                      & p12 ) )
                                                                              | [.] ( <.> ( ( p12
                                                                                            & ~ p13 )
                                                                                          | ( ~ p12
                                                                                            & p13 ) )
                                                                                    | [.] ( <.> ( ( p13
                                                                                                  & ~ p14 )
                                                                                                | ( ~ p13
                                                                                                  & p14 ) )
                                                                                          | [.] ( <.> ( ( p14
                                                                                                        & ~ p15 )
                                                                                                      | ( ~ p14
                                                                                                        & p15 ) )
                                                                                                | [.] ( <.> ( ( p15
                                                                                                              & ~ p16 )
                                                                                                            | ( ~ p15
                                                                                                              & p16 ) )
                                                                                                      | [.] ( <.> ( ( p16
                                                                                                                    & ~ p17 )
                                                                                                                  | ( ~ p16
                                                                                                                    & p17 ) )
                                                                                                            | [.] ( <.> ( ( p17
                                                                                                                          & ~ p18 )
                                                                                                                        | ( ~ p17
                                                                                                                          & p18 ) )
                                                                                                                  | [.] ( <.> ( ( p18
                                                                                                                                & ~ p19 )
                                                                                                                              | ( ~ p18
                                                                                                                                & p19 ) )
                                                                                                                        | [.] false ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )
        | [.] ( <.> p1
             => ~ p24 ) ) ).
