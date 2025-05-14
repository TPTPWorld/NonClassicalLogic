tff(simple_k,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == 
          [$modal_system_K4] ] ).

tff('1',conjecture,
    ( [.] [.] [.] [.] [.] ( p1
                          & p2
                          & p3
                          & p4
                          & p5 )
    | <.> ( <.> ( <.> ( <.> ( $false
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
                          <=> p1 ) )
    | [.] p6
    | [.] [.] [.] [.] [.] ( ~ p2
                          & ~ p4
                          & ~ p6
                          & ~ p8
                          & ~ p10 ) ) ).
