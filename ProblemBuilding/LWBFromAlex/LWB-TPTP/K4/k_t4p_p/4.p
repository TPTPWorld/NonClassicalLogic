tff(simple_k,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == 
          [$modal_system_K4] ] ).

tff('4',conjecture,
    ( <.> ~ ( [.] ~ p1
           => [.] [.] ~ p1 )
    | [.] ( <.> ~ ( [.] ~ p1
                 => [.] [.] ~ p1 )
          | [.] ( <.> ~ ( [.] ~ p1
                       => [.] [.] ~ p1 )
                | [.] ( <.> ~ ( [.] ~ p1
                             => [.] [.] ~ p1 )
                      | [.] <.> [.] p0
                      | [.] ( ~ [.] p1
                           => [.] ~ [.] p1 ) )
                | [.] ( ~ [.] p1
                     => [.] ~ [.] p1 ) )
          | [.] ( ~ [.] p1
               => [.] ~ [.] p1 ) )
    | [.] ( ~ [.] p1
         => [.] ~ [.] p1 )
    | <.> ( [.] p1
          & <.> <.> ~ p1 )
    | <.> ( <.> ( [.] p1
                & <.> <.> ~ p1 )
          | <.> ( <.> ( [.] p1
                      & <.> <.> ~ p1 )
                | <.> ( <.> ( [.] p1
                            & <.> <.> ~ p1 )
                      | <.> ( ( [.] <.> p0
                              & [.] ( ~ p0
                                    | [.] p3 ) )
                            | <.> ( [.] <.> [.] ( ~ p0
                                                | [.] p3 )
                                  & [.] <.> p0 )
                            | ( [.] <.> p0
                              & <.> <.> [.] ( ~ p0
                                            | [.] p3 ) )
                            | <.> ( <.> [.] <.> p0
                                  & p0
                                  & <.> ( ~ p0
                                        | [.] p3 ) )
                            | <.> [.] ( ~ p0
                                      | [.] p3 ) )
                      | <.> ( [.] <.> p1
                            & <.> <.> [.] ~ p1 ) )
                | <.> ( [.] <.> p1
                      & <.> <.> [.] ~ p1 ) )
          | <.> ( [.] <.> p1
                & <.> <.> [.] ~ p1 ) )
    | <.> ( [.] <.> p1
          & <.> <.> [.] ~ p1 )
    | <.> p4 ) ).
