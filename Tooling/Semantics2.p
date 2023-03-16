tff(semantics2,logic,
    $alethic_modal ==
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities ==
          [ $modal_system_K,
            ( #1 ==
                [ $modal_axiom_K,
                  ! [P: $o] :
                    ( [.] (P)
                   => [.] [.] (P) ) ] ),
            ( #2 ==
                [ ! [X: $ki_world] : ~ $ki_accessible(X,X),
                  ! [X: $ki_world,Y: $ki_world] :
                    ( $ki_accessible(X,Y)
                   => ~ $ki_accessible(Y,X) ) ] ) ] ] ).
