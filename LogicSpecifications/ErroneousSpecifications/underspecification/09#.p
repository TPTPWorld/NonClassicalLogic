# underspecification: missing modality value
thf(1,logic,(
    $modal ==
        [ $constants == $rigid,
          $quantification == $local,
          $consequence == $local,
          $modalities == [a == $modal_system_S5 ]] )).

thf(2, axiom, ({$box:a} @ $true)).
thf(3, axiom, ({$box:b} @ $true)).