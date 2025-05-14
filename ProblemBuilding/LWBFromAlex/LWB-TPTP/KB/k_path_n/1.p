tff(simple_k,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == 
          [$modal_system_KB] ] ).

tff('1',conjecture,
    ( [.] p1
    | [.] p2
    | [.] p3
    | [.] p5
    | <.> ( ~ p1
          & [.] p1 )
    | <.> ( ~ p1
          & [.] p3 )
    | $false
    | $false
    | $false
    | <.> ( ~ p3
          & [.] p1 )
    | <.> ( ~ p3
          & [.] p3 )
    | $false
    | $false
    | $false
    | <.> ( ~ p5
          & [.] p1 )
    | <.> ( ~ p5
          & [.] p3 )
    | $false
    | $false
    | $false
    | $false
    | $false
    | $false
    | <.> ( ~ p4
          & [.] p2 )
    | <.> ( ~ p6
          & [.] p2 )
    | $false
    | $false
    | $false
    | <.> ( ~ p4
          & [.] p4 )
    | <.> ( ~ p6
          & [.] p4 )
    | $false
    | $false
    | $false
    | <.> ( ~ p4
          & [.] p6 )
    | <.> ( ~ p6
          & [.] p6 )
    | <.> <.> ~ p2
    | <.> <.> ~ p4
    | <.> <.> ~ p5
    | <.> <.> ~ p6 ) ).
