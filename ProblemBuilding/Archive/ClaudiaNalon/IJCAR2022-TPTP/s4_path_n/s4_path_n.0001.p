tff('s4_path_n.0001',logic,
    $modal == 
      [ $modalities == $modal_system_S4 ] ).

tff(false_decl,type,
    false: $o ).

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

tff(p21_decl,type,
    p21: $o ).

tff(p22_decl,type,
    p22: $o ).

tff(p23_decl,type,
    p23: $o ).

tff(p24_decl,type,
    p24: $o ).

tff(p25_decl,type,
    p25: $o ).

tff(p26_decl,type,
    p26: $o ).

tff(prove,conjecture,
    ~ ~ ( [.] [.] p11
        | [.] [.] p12
        | [.] [.] p13
        | [.] [.] p15
        | <.> ( ~ p11
              & [.] p21 )
        | <.> ( ~ p11
              & [.] p23 )
        | false
        | false
        | false
        | <.> ( ~ p13
              & [.] p21 )
        | <.> ( ~ p13
              & [.] p23 )
        | false
        | false
        | false
        | <.> ( ~ p15
              & [.] p21 )
        | <.> ( ~ p15
              & [.] p23 )
        | false
        | false
        | false
        | false
        | false
        | false
        | <.> ( ~ p14
              & [.] p22 )
        | <.> ( ~ p16
              & [.] p22 )
        | false
        | false
        | false
        | <.> ( ~ p14
              & [.] p24 )
        | <.> ( ~ p16
              & [.] p24 )
        | false
        | false
        | false
        | <.> ( ~ p14
              & [.] p26 )
        | <.> ( ~ p16
              & [.] p26 )
        | <.> ( <.> ~ p22
              | <.> ~ p24
              | <.> ~ p25
              | <.> ~ p26 ) ) ).
