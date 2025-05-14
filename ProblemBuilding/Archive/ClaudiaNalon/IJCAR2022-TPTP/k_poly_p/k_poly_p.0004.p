tff('k_poly_p.0004',logic,
    $modal == 
      [ $modalities == $modal_system_K ] ).

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

tff(p18_decl,type,
    p18: $o ).

tff(p2_decl,type,
    p2: $o ).

tff(p20_decl,type,
    p20: $o ).

tff(p22_decl,type,
    p22: $o ).

tff(p24_decl,type,
    p24: $o ).

tff(p26_decl,type,
    p26: $o ).

tff(p28_decl,type,
    p28: $o ).

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
    ~ ~ ( [.] [.] [.] [.] [.] [.] [.] [.] [.] [.] [.] [.] [.] [.] ( p1
                                                                  & p2
                                                                  & p3
                                                                  & p4
                                                                  & p5
                                                                  & p6
                                                                  & p7
                                                                  & p8
                                                                  & p9
                                                                  & p10
                                                                  & p11
                                                                  & p12
                                                                  & p13
                                                                  & p14 )
        | <.> ( <.> ( <.> ( <.> ( <.> ( <.> ( <.> ( <.> ( <.> ( <.> ( <.> ( <.> ( <.> ( false
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
                                                                                    <=> p5 ) )
                                                              | [.] p6
                                                              | <.> <.> <.> <.> <.> ( p5
                                                                                  <=> p6 ) )
                                                        | [.] p7
                                                        | <.> <.> <.> <.> <.> <.> ( p6
                                                                                <=> p7 ) )
                                                  | [.] p8
                                                  | <.> <.> <.> <.> <.> <.> <.> ( p7
                                                                              <=> p8 ) )
                                            | [.] p9
                                            | <.> <.> <.> <.> <.> <.> <.> <.> ( p8
                                                                            <=> p9 ) )
                                      | [.] p10
                                      | <.> <.> <.> <.> <.> <.> <.> <.> <.> ( p9
                                                                          <=> p10 ) )
                                | [.] p11
                                | <.> <.> <.> <.> <.> <.> <.> <.> <.> <.> ( p10
                                                                        <=> p11 ) )
                          | [.] p12
                          | <.> <.> <.> <.> <.> <.> <.> <.> <.> <.> <.> ( p11
                                                                      <=> p12 ) )
                    | [.] p13
                    | <.> <.> <.> <.> <.> <.> <.> <.> <.> <.> <.> <.> ( p12
                                                                    <=> p13 ) )
              | [.] p14
              | <.> <.> <.> <.> <.> <.> <.> <.> <.> <.> <.> <.> <.> ( p13
                                                                  <=> p1 ) )
        | [.] p15
        | [.] [.] [.] [.] [.] [.] [.] [.] [.] [.] [.] [.] [.] [.] ( ~ p2
                                                                  & ~ p4
                                                                  & ~ p6
                                                                  & ~ p8
                                                                  & ~ p10
                                                                  & ~ p12
                                                                  & ~ p14
                                                                  & ~ p16
                                                                  & ~ p18
                                                                  & ~ p20
                                                                  & ~ p22
                                                                  & ~ p24
                                                                  & ~ p26
                                                                  & ~ p28 ) ) ).
