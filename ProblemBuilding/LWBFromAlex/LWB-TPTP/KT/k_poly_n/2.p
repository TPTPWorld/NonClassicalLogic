tff(simple_k,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == 
          [$modal_system_M] ] ).

tff('2',conjecture,
    ( [.] [.] [.] [.] [.] [.] [.] ( p1
                                  & p2
                                  & p3
                                  & p4
                                  & p5
                                  & p6
                                  & p7 )
    | <.> ( <.> ( <.> ( <.> ( <.> ( <.> ( $false
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
                                  <=> p1 ) )
    | [.] p8
    | [.] [.] [.] [.] [.] [.] [.] ( ~ p2
                                  & ~ p4
                                  & ~ p6
                                  & ~ p8
                                  & ~ p10
                                  & ~ p12
                                  & ~ p14 ) ) ).
