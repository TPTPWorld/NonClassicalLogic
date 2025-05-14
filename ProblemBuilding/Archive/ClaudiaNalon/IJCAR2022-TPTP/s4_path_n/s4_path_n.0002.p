tff('s4_path_n.0002',logic,
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

tff(p31_decl,type,
    p31: $o ).

tff(p32_decl,type,
    p32: $o ).

tff(p33_decl,type,
    p33: $o ).

tff(p34_decl,type,
    p34: $o ).

tff(p35_decl,type,
    p35: $o ).

tff(p36_decl,type,
    p36: $o ).

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
        | <.> <.> ( ~ p21
                  & [.] p31 )
        | <.> <.> ( ~ p21
                  & [.] p33 )
        | <.> <.> ( ~ p21
                  & [.] p35 )
        | false
        | false
        | <.> ( ~ p14
              & [.] p22 )
        | <.> ( ~ p16
              & [.] p22 )
        | <.> <.> ( ~ p23
                  & [.] p31 )
        | <.> <.> ( ~ p23
                  & [.] p33 )
        | <.> <.> ( ~ p23
                  & [.] p35 )
        | false
        | false
        | <.> ( ~ p14
              & [.] p24 )
        | <.> ( ~ p16
              & [.] p24 )
        | <.> <.> ( ~ p25
                  & [.] p31 )
        | <.> <.> ( ~ p25
                  & [.] p33 )
        | <.> <.> ( ~ p25
                  & [.] p32 )
        | <.> <.> ( ~ p25
                  & [.] p35 )
        | false
        | false
        | <.> ( ~ p14
              & [.] p26 )
        | <.> ( ~ p16
              & [.] p26 )
        | false
        | false
        | false
        | <.> <.> ( ~ p22
                  & [.] p32 )
        | <.> <.> ( ~ p24
                  & [.] p32 )
        | <.> <.> ( ~ p26
                  & [.] p32 )
        | false
        | false
        | false
        | <.> <.> ( ~ p22
                  & [.] p34 )
        | <.> <.> ( ~ p24
                  & [.] p34 )
        | <.> <.> ( ~ p26
                  & [.] p34 )
        | false
        | false
        | false
        | <.> <.> ( ~ p22
                  & [.] p36 )
        | <.> <.> ( ~ p24
                  & [.] p36 )
        | <.> <.> ( ~ p26
                  & [.] p36 )
        | <.> ( <.> ~ p32
              | <.> ~ p34
              | <.> ~ p32
              | <.> ~ p36 ) ) ).
