tff(simple_k,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == 
          [$modal_system_K5] ] ).

tff('1',conjecture,
    ( [.] p1
    | [.] p2
    | [.] p3
    | [.] p5
    | $false
    | $false
    | $false
    | $false
    | $false
    | $false
    | $false
    | $false
    | $false
    | $false
    | $false
    | $false
    | <.> ~ p2
    | <.> ~ p4
    | <.> ~ p2
    | <.> ~ p6 ) ).
