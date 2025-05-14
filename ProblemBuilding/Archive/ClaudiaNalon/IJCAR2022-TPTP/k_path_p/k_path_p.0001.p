tff('k_path_p.0001',logic,
    $modal == 
      [ $modalities == $modal_system_K ] ).

tff(false_decl,type,
    false: $o ).

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

tff(prove,conjecture,
    ~ ~ ( [.] p1
        | [.] p2
        | [.] p3
        | [.] p5
        | false
        | false
        | false
        | false
        | false
        | false
        | false
        | false
        | false
        | false
        | false
        | false
        | <.> ~ p2
        | <.> ~ p4
        | <.> ~ p2
        | <.> ~ p6 ) ).
