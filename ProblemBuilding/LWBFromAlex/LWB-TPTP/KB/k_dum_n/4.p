tff(simple_k,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == 
          [$modal_system_KB] ] ).

tff('4',conjecture,
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
      & ~ [.] [.] [.] [.] [.] ( [.] ( [.] ( p0
                                         => [.] p0 )
                                   => p0 )
                             => ( <.> [.] p0
                               => p0 ) ) )
   => ( <.> <.> <.> <.> <.> ~ ( ( [.] ( [.] ( p0
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
      | $false ) ) ).
