tff(simple_k,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == 
          [$modal_system_D] ] ).

tff('5',conjecture,
    ( ( [.] ( [.] ( [.] p0
                 => [.] [.] p0 )
            & ( [.] ( [.] ( p0
                         => [.] p0 )
                   => p0 )
             => ( <.> [.] p0
               => ( p0
                  | [.] p0 ) ) ) )
      & [.] [.] ( [.] ( [.] p0
                     => [.] [.] p0 )
                & ( [.] ( [.] ( p0
                             => [.] p0 )
                       => p0 )
                 => ( <.> [.] p0
                   => ( p0
                      | [.] p0 ) ) ) )
      & ~ [.] [.] [.] [.] [.] [.] ( [.] ( [.] ( p0
                                             => [.] p0 )
                                       => p0 )
                                 => ( <.> [.] p0
                                   => p0 ) ) )
   => ( <.> <.> <.> <.> <.> <.> ~ ( ( [.] ( [.] ( p0
                                               => [.] p0 )
                                         => p0 )
                                   => [.] [.] ( [.] ( p0
                                                   => [.] p0 )
                                             => p0 ) )
                                  & [.] ( [.] p0
                                       => [.] [.] p0 )
                                  & ( [.] ( [.] ( p0
                                               => [.] p0 )
                                         => p0 )
                                   => ( <.> [.] p0
                                     => ( p0
                                        | [.] p0 ) ) )
                                  & ( [.] ( [.] ( ( p0
                                                 => [.] p0 )
                                               => [.] ( p0
                                                     => [.] p0 ) )
                                         => ( p0
                                           => [.] p0 ) )
                                   => ( <.> [.] ( p0
                                               => [.] p0 )
                                     => ( ( p0
                                         => [.] p0 )
                                        | [.] ( p0
                                             => [.] p0 ) ) ) ) )
      | <.> <.> <.> <.> ~ ( [.] ( [.] p0
                               => [.] [.] p0 )
                          & ( [.] ( [.] ( p0
                                       => [.] p0 )
                                 => p0 )
                           => ( <.> [.] p0
                             => ( p0
                                | [.] p0 ) ) ) ) ) ) ).
