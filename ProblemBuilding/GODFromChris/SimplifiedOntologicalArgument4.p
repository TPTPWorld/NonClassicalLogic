thf(multi_spec,logic,
       $modal == [
         $constants == $rigid,
         $quantification == $constant,
         $modalities == [ $modal_system_T ] ] ).

thf(entity_decl, type, entity : $tType).
thf(god_like_decl, type, god_like : entity > $o).
thf(positive_property_decl, type, positive_property : (entity > $o) > $o).

thf(coro1, axiom, (~ (positive_property @ (^[X : entity]: (~ ((X = X))))))). 
thf(coro2, axiom, (![P1 : entity > $o, P2 : entity > $o]: (((positive_property @ P1) & (![Y : entity]: ((P1 @ Y) => (P2 @ Y)))) => (positive_property @ P2)))). 
thf(axiom3, axiom, (positive_property @ god_like)). 

thf(conj_4, conjecture, ({$possible} @ (?[X : entity]: (god_like @ X)))).
