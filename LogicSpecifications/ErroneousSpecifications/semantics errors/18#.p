# semantics error: multiple keywords
thf(1,logic,(
    $modal ==
        [ $constants == $rigid,
          $constants == $rigid,
          $consequence == $local,
          $quantification == $constant,
          $modalities == $modal_system_S5 )).

thf(2, axiom, ({box:a} @ $true)).
