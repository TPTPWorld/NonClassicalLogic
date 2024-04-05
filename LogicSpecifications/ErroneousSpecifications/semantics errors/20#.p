# semantics error: default value not in first position
thf(1,logic,(
    $modal ==
        [ $constants == [a == $flexible, $rigid],
          $consequence == $local,
          $quantification == $constant,
          $modalities == $modal_system_S5 )).

thf(2, type, a: $i).
thf(3, type, b: $i).
