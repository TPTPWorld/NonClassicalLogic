tff(k_constant_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $constant,
     $modalities == $modal_system_K
    ] )).

tff(prove,axiom,
    ~ ( d0
      & ~d1
      & ( d1 => d0 )
      & ( d2 => d1 )
      & ( d0
       => ( ( p0
           => {$box(#r)}(d0 => p0) )
          & ( ~p0
           => {$box(#r)}(d0 => ~p0) ) ) )
      & ( d1
       => ( ( p1
           => {$box(#r)}(d1 => p1) )
          & ( ~p1
           => {$box(#r)}(d1 => ~p1) ) ) )
      & ( ( d0 & ~d1 )
       => ( {$dia(#r)}( d1 & ~d2 & p1 )
          & {$dia(#r)}( d1 & ~d2 & ~p1 ) ) )
      & {$box(#r)} 
          ( ( d1 => d0 )
          & ( d2 => d1 )
          & ( d0
           => ( ( p0 => {$box(#r)}( d0 => p0 ) )
              & ( ~p0 => {$box(#r)}( d0 => ~p0 ) ) ) )
          & ( d1
           => ( ( p1 => {$box(#r)}( d1 => p1 ) )
              & ( ~p1 => {$box(#r)}( d1 => ~p1 ) ) ) )
          & ( ( d0 & ~d1 )
           => ( {$dia(#r)}( d1 & ~d2 & p1 )
              & {$dia(#r)}( d1 & ~d2 & ~p1 ) ) ) ) ) ).
