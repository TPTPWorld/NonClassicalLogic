% underspecification: missing consequence value
thf(1,logic,(
    $modal ==
        [ $constants == $rigid,
          $quantification == $constant,
          $consequence == [2 == $local],
          $modalities == $modal_system_S5 ] )).

thf(2, axiom, ({$box} @ $true)).
thf(3, axiom, ({$box} @ $true)).