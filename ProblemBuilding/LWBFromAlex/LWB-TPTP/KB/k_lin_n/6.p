tff(simple_k,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == 
          [$modal_system_KB] ] ).

tff('6',conjecture,
    ( ~ ( [.] ( ( <.> p1
                & [.] <.> p1 )
             => p2 )
        | [.] ( ( p2
                & [.] p2 )
             => <.> p1 ) )
    | ~ ( [.] ( ( ( p1
                 => [.] p2 )
                & [.] ( p1
                     => [.] p2 ) )
             => p2 )
        | [.] ( ( p2
                & [.] p2 )
             => ( p1
               => [.] p2 ) ) )
    | ~ ( [.] ( ( <.> p2
                & [.] <.> p2 )
             => p3 )
        | [.] ( ( p3
                & [.] p3 )
             => <.> p2 ) )
    | ~ ( [.] ( ( ( p2
                 => [.] p3 )
                & [.] ( p2
                     => [.] p3 ) )
             => p3 )
        | [.] ( ( p3
                & [.] p3 )
             => ( p2
               => [.] p3 ) ) )
    | ~ ( [.] ( ( <.> p3
                & [.] <.> p3 )
             => p4 )
        | [.] ( ( p4
                & [.] p4 )
             => <.> p3 ) )
    | ~ ( [.] ( ( ( p3
                 => [.] p4 )
                & [.] ( p3
                     => [.] p4 ) )
             => p4 )
        | [.] ( ( p4
                & [.] p4 )
             => ( p3
               => [.] p4 ) ) )
    | ~ ( [.] ( ( <.> p4
                & [.] <.> p4 )
             => p5 )
        | [.] ( ( p5
                & [.] p5 )
             => <.> p4 ) )
    | ~ ( [.] ( ( ( p4
                 => [.] p5 )
                & [.] ( p4
                     => [.] p5 ) )
             => p5 )
        | [.] ( ( p5
                & [.] p5 )
             => ( p4
               => [.] p5 ) ) )
    | ~ ( [.] ( ( <.> p5
                & [.] <.> p5 )
             => p6 )
        | [.] ( ( p6
                & [.] p6 )
             => <.> p5 ) )
    | ~ ( [.] ( ( ( p5
                 => [.] p6 )
                & [.] ( p5
                     => [.] p6 ) )
             => p6 )
        | [.] ( ( p6
                & [.] p6 )
             => ( p5
               => [.] p6 ) ) )
    | ~ ( [.] ( ( <.> p6
                & [.] <.> p6 )
             => p7 )
        | [.] ( ( p7
                & [.] p7 )
             => <.> p6 ) )
    | ~ ( [.] ( ( ( p6
                 => [.] p7 )
                & [.] ( p6
                     => [.] p7 ) )
             => p7 )
        | [.] ( ( p7
                & [.] p7 )
             => ( p6
               => [.] p7 ) ) )
    | ~ ( [.] ( ( <.> p7
                & [.] <.> p7 )
             => p8 )
        | [.] ( ( p8
                & [.] p8 )
             => <.> p7 ) )
    | ~ ( [.] ( ( ( p7
                 => [.] p8 )
                & [.] ( p7
                     => [.] p8 ) )
             => p8 )
        | [.] ( ( p8
                & [.] p8 )
             => ( p7
               => [.] p8 ) ) )
    | ~ ( [.] ( ( <.> p8
                & [.] <.> p8 )
             => p9 )
        | [.] ( ( p9
                & [.] p9 )
             => <.> p8 ) )
    | ~ ( [.] ( ( ( p8
                 => [.] p9 )
                & [.] ( p8
                     => [.] p9 ) )
             => p9 )
        | [.] ( ( p9
                & [.] p9 )
             => ( p8
               => [.] p9 ) ) )
    | ~ ( [.] ( ( <.> p9
                & [.] <.> p9 )
             => p10 )
        | [.] ( ( p10
                & [.] p10 )
             => <.> p9 ) )
    | ~ ( [.] ( ( ( p9
                 => [.] p10 )
                & [.] ( p9
                     => [.] p10 ) )
             => p10 )
        | [.] ( ( p10
                & [.] p10 )
             => ( p9
               => [.] p10 ) ) )
    | ~ ( [.] ( ( <.> p10
                & [.] <.> p10 )
             => p11 )
        | [.] ( ( p11
                & [.] p11 )
             => <.> p10 ) )
    | ~ ( [.] ( ( ( p10
                 => [.] p11 )
                & [.] ( p10
                     => [.] p11 ) )
             => p11 )
        | [.] ( ( p11
                & [.] p11 )
             => ( p10
               => [.] p11 ) ) )
    | [.] ( [.] p6
         => p6 )
    | [.] ( [.] p6
         => p6 )
    | ~ ( [.] ( ( <.> p12
                & [.] <.> p12 )
             => p13 )
        | [.] ( ( p13
                & [.] p13 )
             => <.> p12 ) )
    | ~ ( [.] ( ( ( p12
                 => [.] p13 )
                & [.] ( p12
                     => [.] p13 ) )
             => p13 )
        | [.] ( ( p13
                & [.] p13 )
             => ( p12
               => [.] p13 ) ) )
    | ~ ( [.] ( ( <.> p13
                & [.] <.> p13 )
             => p14 )
        | [.] ( ( p14
                & [.] p14 )
             => <.> p13 ) )
    | ~ ( [.] ( ( ( p13
                 => [.] p14 )
                & [.] ( p13
                     => [.] p14 ) )
             => p14 )
        | [.] ( ( p14
                & [.] p14 )
             => ( p13
               => [.] p14 ) ) )
    | ~ ( [.] ( ( <.> p14
                & [.] <.> p14 )
             => p15 )
        | [.] ( ( p15
                & [.] p15 )
             => <.> p14 ) )
    | ~ ( [.] ( ( ( p14
                 => [.] p15 )
                & [.] ( p14
                     => [.] p15 ) )
             => p15 )
        | [.] ( ( p15
                & [.] p15 )
             => ( p14
               => [.] p15 ) ) )
    | ~ ( [.] ( ( <.> p15
                & [.] <.> p15 )
             => p16 )
        | [.] ( ( p16
                & [.] p16 )
             => <.> p15 ) )
    | ~ ( [.] ( ( ( p15
                 => [.] p16 )
                & [.] ( p15
                     => [.] p16 ) )
             => p16 )
        | [.] ( ( p16
                & [.] p16 )
             => ( p15
               => [.] p16 ) ) )
    | ~ ( [.] ( ( <.> p16
                & [.] <.> p16 )
             => p17 )
        | [.] ( ( p17
                & [.] p17 )
             => <.> p16 ) )
    | ~ ( [.] ( ( ( p16
                 => [.] p17 )
                & [.] ( p16
                     => [.] p17 ) )
             => p17 )
        | [.] ( ( p17
                & [.] p17 )
             => ( p16
               => [.] p17 ) ) )
    | ~ ( [.] ( ( <.> p17
                & [.] <.> p17 )
             => p18 )
        | [.] ( ( p18
                & [.] p18 )
             => <.> p17 ) )
    | ~ ( [.] ( ( ( p17
                 => [.] p18 )
                & [.] ( p17
                     => [.] p18 ) )
             => p18 )
        | [.] ( ( p18
                & [.] p18 )
             => ( p17
               => [.] p18 ) ) )
    | ~ ( [.] ( ( <.> p18
                & [.] <.> p18 )
             => p19 )
        | [.] ( ( p19
                & [.] p19 )
             => <.> p18 ) )
    | ~ ( [.] ( ( ( p18
                 => [.] p19 )
                & [.] ( p18
                     => [.] p19 ) )
             => p19 )
        | [.] ( ( p19
                & [.] p19 )
             => ( p18
               => [.] p19 ) ) )
    | ~ ( [.] ( ( <.> p19
                & [.] <.> p19 )
             => p20 )
        | [.] ( ( p20
                & [.] p20 )
             => <.> p19 ) )
    | ~ ( [.] ( ( ( p19
                 => [.] p20 )
                & [.] ( p19
                     => [.] p20 ) )
             => p20 )
        | [.] ( ( p20
                & [.] p20 )
             => ( p19
               => [.] p20 ) ) )
    | ~ ( [.] ( ( <.> p20
                & [.] <.> p20 )
             => p21 )
        | [.] ( ( p21
                & [.] p21 )
             => <.> p20 ) )
    | ~ ( [.] ( ( ( p20
                 => [.] p21 )
                & [.] ( p20
                     => [.] p21 ) )
             => p21 )
        | [.] ( ( p21
                & [.] p21 )
             => ( p20
               => [.] p21 ) ) ) ) ).
