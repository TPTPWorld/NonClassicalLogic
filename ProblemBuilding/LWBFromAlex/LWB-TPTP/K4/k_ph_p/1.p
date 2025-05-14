tff(simple_k,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == 
          [$modal_system_K4] ] ).

tff('1',conjecture,
    ( <.> ( p101
          & p201 )
   => <.> ( p101
          & p201 ) ) ).
