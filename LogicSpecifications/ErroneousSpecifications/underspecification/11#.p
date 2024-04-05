# underspecification: missing identifier for modality
thf(1,logic,(
    $modal ==
        [ $constants == $rigid,
          $quantification == $local,
          $consequence == $local] )).

thf(2, axiom, ({$box} @ $true)).