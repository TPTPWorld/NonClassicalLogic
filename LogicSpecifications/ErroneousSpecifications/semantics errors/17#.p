# semantics error: conflicting double specification
thf(1,logic,(
    $modal ==
        [ $constants == $rigid,
          $consequence == $local,
          $quantification == $constant,
          $modalities == [a == $modal_system_S5, a == $modal_system_K] )).

thf(2, axiom, ({box:a} @ $true)).
