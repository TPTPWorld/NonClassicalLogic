# semantics error: multiple definitions per logic
thf(1,logic,(
    $modal ==
          $consequence == $local,
          $quantification == $constan )).

thf(2,logic,(
    $modal ==
        [ $constants == $rigid,
          $modalities == $modal_system_S5 )).

thf(3, axiom, ({box:a} @ $true)).
