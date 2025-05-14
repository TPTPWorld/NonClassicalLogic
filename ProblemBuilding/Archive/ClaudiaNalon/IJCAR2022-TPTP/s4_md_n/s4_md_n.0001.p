tff('s4_md_n.0001',logic,
    $modal == 
      [ $modalities == $modal_system_S4 ] ).

tff(false_decl,type,
    false: $o ).

tff(p1_decl,type,
    p1: $o ).

tff(prove,conjecture,
    ~ ~ ( p1
        | false ) ).
