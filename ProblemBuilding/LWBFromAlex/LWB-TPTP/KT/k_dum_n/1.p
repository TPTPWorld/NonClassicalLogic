tff(simple_k,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == 
          [$modal_system_M] ] ).

tff('1',conjecture,
    ( ( $true
      & ~ [.] [.] ( [.] ( [.] ( p0
                             => [.] p0 )
                       => p0 )
                 => ( <.> [.] p0
                   => p0 ) ) )
   => ( <.> <.> ~ ( ( [.] ( [.] ( p0
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
