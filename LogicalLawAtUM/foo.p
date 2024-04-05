tff(simple_spec,logic,
    $alethic_modal == [
      $constants == $rigid,
      $quantification == $constant,
      $modalities == $modal_system_S5 ] ).

tff(propagate,axiom,
    p <=> (? [X: $i] : (q(X) & r(X)))).

tff(about_r,axiom,
    r(a)).

tff(about_q,axiom,
    {$possible} @ (~ q(a)) ).

tff(try,conjecture,
    {$possible} @ (~ p) ).
