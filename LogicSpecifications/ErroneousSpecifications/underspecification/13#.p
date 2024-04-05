# underspecification: missing identifier for quantification
thf(1,logic,(
    $modal ==
        [ $constants == $rigid,
          $consequence == $local,
          $modalities == $modal_system_S5] )).

thf(2, type, p: $i > $o).
thf(3, axiom, (![X:$i]: ({$box} @ (p(X))))).