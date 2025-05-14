tff(simple_k,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == $modal_system_K ] ).

tff('1',conjecture,
    ( $false
    | [.] ( ( p1
            & [.] p1 )
         => p1 )
    | [.] ( ( p1
            & [.] p1 )
         => p1 )
    | ~ ( ( [.] ( ( ( p1
                    & [.] p1
                    & p1 )
                 => p2 )
                | ( ~ p1
                 => ~ ( [.] p2
                      & p2 ) ) )
          & [.] ( [.] ( ( p1
                        & [.] p1
                        & p1 )
                     => p2 )
                | ( ~ p1
                 => ~ ( [.] p2
                      & p2 ) ) )
          & [.] ( ( ( p1
                    & [.] p1
                    & p1 )
                 => p2 )
                | [.] ( ~ p1
                     => ~ ( [.] p2
                          & p2 ) ) ) )
       => ( [.] ( ( p1
                  & [.] p1
                  & p1 )
               => p2 )
          | [.] ( ~ p1
               => ~ ( [.] p2
                    & p2 ) ) ) ) ) ).
