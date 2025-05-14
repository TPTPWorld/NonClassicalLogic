tff(simple_k,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == $modal_system_K ] ).

tff('2',conjecture,
    ( <.> ( ( p101
            | [.] p102 )
          & ( p201
            | p202 )
          & ( p301
            | p302 ) )
   => <.> ( ( p101
            & p201 )
          | ( p101
            & p301 )
          | ( p201
            & p301 )
          | ( [.] p102
            & ~ p202 )
          | ( [.] p102
            & p302 )
          | ( ~ p202
            & p302 ) ) ) ).
