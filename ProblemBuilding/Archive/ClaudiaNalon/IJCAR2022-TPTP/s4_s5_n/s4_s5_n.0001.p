tff('s4_s5_n.0001',logic,
    $modal == 
      [ $modalities == $modal_system_S4 ] ).

tff(false_decl,type,
    false: $o ).

tff(p1_decl,type,
    p1: $o ).

tff(p6_decl,type,
    p6: $o ).

tff(prove,conjecture,
    ~ ~ ( [.] <.> ( [.] p6
                  | false )
        | [.] ( <.> p1
             => ~ p6 ) ) ).
