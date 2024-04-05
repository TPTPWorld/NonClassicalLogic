% underspecification: missing constant value
thf(1,logic,(
    $modal ==
        [ $constants == [a == $rigid],
          $quantification == $constant,
          $consequence == $local,
          $modalities == $modal_system_S5 ] )).

thf(2, type, a: $i).
thf(3, type, b: $i).