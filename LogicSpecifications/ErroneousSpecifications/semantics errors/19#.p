# semantics error: multiple default values
thf(1,logic,(
    $modal ==
        [ $constants == [$rigid, $rigid],
          $consequence == $local,
          $quantification == $constant,
          $modalities == $modal_system_S5 )).

thf(2, axiom, ({box:a} @ $true)).
