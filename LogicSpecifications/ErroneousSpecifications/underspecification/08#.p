# underspecification: missing quantification value
thf(1,logic,(
    $modal ==
        [ $constants == $rigid,
          $quantification == [($i > $o) == $constant],
          $consequence == $local,
          $modalities == $modal_system_S5 ] )).

thf(2, type, p: ($i > $o)).
thf(3, type, a: $i).