tff('kd45_t4p_p.0005',logic,
    $modal == 
      [ $modalities == $modal_system_D45 ] ).

tff(p0_decl,type,
    p0: $o ).

tff(p1_decl,type,
    p1: $o ).

tff(p3_decl,type,
    p3: $o ).

tff(p4_decl,type,
    p4: $o ).

tff(y0_decl,type,
    y0: $o ).

tff(y1_decl,type,
    y1: $o ).

tff(y3_decl,type,
    y3: $o ).

tff(y4_decl,type,
    y4: $o ).

tff(z0_decl,type,
    z0: $o ).

tff(z1_decl,type,
    z1: $o ).

tff(z3_decl,type,
    z3: $o ).

tff(z4_decl,type,
    z4: $o ).

tff(prove,conjecture,
    ~ ( [.] ( <.> ( p1
                  | ( [.] y1
                    & [.] ~ y1 )
                  | ( [.] z1
                    & <.> [.] y1
                    & <.> <.> ( ~ z1
                              | ~ y1 ) ) )
            | [.] [.] ( ~ p1
                      | ( [.] y1
                        & [.] ~ y1 )
                      | ( [.] z1
                        & <.> [.] y1
                        & <.> <.> ( ~ z1
                                  | ~ y1 ) ) ) )
      & <.> ( [.] ( <.> ( p1
                        | ( [.] y1
                          & [.] ~ y1 )
                        | ( [.] z1
                          & <.> [.] y1
                          & <.> <.> ( ~ z1
                                    | ~ y1 ) ) )
                  | [.] [.] ( ~ p1
                            | ( [.] y1
                              & [.] ~ y1 )
                            | ( [.] z1
                              & <.> [.] y1
                              & <.> <.> ( ~ z1
                                        | ~ y1 ) ) ) )
            & <.> ( [.] ( <.> ( p1
                              | ( [.] y1
                                & [.] ~ y1 )
                              | ( [.] z1
                                & <.> [.] y1
                                & <.> <.> ( ~ z1
                                          | ~ y1 ) ) )
                        | [.] [.] ( ~ p1
                                  | ( [.] y1
                                    & [.] ~ y1 )
                                  | ( [.] z1
                                    & <.> [.] y1
                                    & <.> <.> ( ~ z1
                                              | ~ y1 ) ) ) )
                  & <.> ( [.] ( <.> ( p1
                                    | ( [.] y1
                                      & [.] ~ y1 )
                                    | ( [.] z1
                                      & <.> [.] y1
                                      & <.> <.> ( ~ z1
                                                | ~ y1 ) ) )
                              | [.] [.] ( ~ p1
                                        | ( [.] y1
                                          & [.] ~ y1 )
                                        | ( [.] z1
                                          & <.> [.] y1
                                          & <.> <.> ( ~ z1
                                                    | ~ y1 ) ) ) )
                        & <.> ( [.] ( <.> ( p1
                                          | ( [.] y1
                                            & [.] ~ y1 )
                                          | ( [.] z1
                                            & <.> [.] y1
                                            & <.> <.> ( ~ z1
                                                      | ~ y1 ) ) )
                                    | [.] [.] ( ~ p1
                                              | ( [.] y1
                                                & [.] ~ y1 )
                                              | ( [.] z1
                                                & <.> [.] y1
                                                & <.> <.> ( ~ z1
                                                          | ~ y1 ) ) ) )
                              & <.> [.] <.> ( ~ p0
                                            | ( [.] y0
                                              & [.] ~ y0 )
                                            | ( [.] z0
                                              & <.> [.] y0
                                              & <.> <.> ( ~ z0
                                                        | ~ y0 ) ) )
                              & <.> ( <.> ( ~ p1
                                          | ( [.] y1
                                            & [.] ~ y1 )
                                          | ( [.] z1
                                            & <.> [.] y1
                                            & <.> <.> ( ~ z1
                                                      | ~ y1 ) ) )
                                    & <.> [.] ( p1
                                              | ( [.] y1
                                                & [.] ~ y1 )
                                              | ( [.] z1
                                                & <.> [.] y1
                                                & <.> <.> ( ~ z1
                                                          | ~ y1 ) ) ) ) )
                        & <.> ( <.> ( ~ p1
                                    | ( [.] y1
                                      & [.] ~ y1 )
                                    | ( [.] z1
                                      & <.> [.] y1
                                      & <.> <.> ( ~ z1
                                                | ~ y1 ) ) )
                              & <.> [.] ( p1
                                        | ( [.] y1
                                          & [.] ~ y1 )
                                        | ( [.] z1
                                          & <.> [.] y1
                                          & <.> <.> ( ~ z1
                                                    | ~ y1 ) ) ) ) )
                  & <.> ( <.> ( ~ p1
                              | ( [.] y1
                                & [.] ~ y1 )
                              | ( [.] z1
                                & <.> [.] y1
                                & <.> <.> ( ~ z1
                                          | ~ y1 ) ) )
                        & <.> [.] ( p1
                                  | ( [.] y1
                                    & [.] ~ y1 )
                                  | ( [.] z1
                                    & <.> [.] y1
                                    & <.> <.> ( ~ z1
                                              | ~ y1 ) ) ) ) )
            & <.> ( <.> ( ~ p1
                        | ( [.] y1
                          & [.] ~ y1 )
                        | ( [.] z1
                          & <.> [.] y1
                          & <.> <.> ( ~ z1
                                    | ~ y1 ) ) )
                  & <.> [.] ( p1
                            | ( [.] y1
                              & [.] ~ y1 )
                            | ( [.] z1
                              & <.> [.] y1
                              & <.> <.> ( ~ z1
                                        | ~ y1 ) ) ) ) )
      & <.> ( <.> ( ~ p1
                  | ( [.] y1
                    & [.] ~ y1 )
                  | ( [.] z1
                    & <.> [.] y1
                    & <.> <.> ( ~ z1
                              | ~ y1 ) ) )
            & <.> [.] ( p1
                      | ( [.] y1
                        & [.] ~ y1 )
                      | ( [.] z1
                        & <.> [.] y1
                        & <.> <.> ( ~ z1
                                  | ~ y1 ) ) ) )
      & [.] ( <.> ( ~ p1
                  | ( [.] y1
                    & [.] ~ y1 )
                  | ( [.] z1
                    & <.> [.] y1
                    & <.> <.> ( ~ z1
                              | ~ y1 ) ) )
            | [.] [.] ( p1
                      | ( [.] y1
                        & [.] ~ y1 )
                      | ( [.] z1
                        & <.> [.] y1
                        & <.> <.> ( ~ z1
                                  | ~ y1 ) ) ) )
      & [.] ( [.] ( <.> ( ~ p1
                        | ( [.] y1
                          & [.] ~ y1 )
                        | ( [.] z1
                          & <.> [.] y1
                          & <.> <.> ( ~ z1
                                    | ~ y1 ) ) )
                  | [.] [.] ( p1
                            | ( [.] y1
                              & [.] ~ y1 )
                            | ( [.] z1
                              & <.> [.] y1
                              & <.> <.> ( ~ z1
                                        | ~ y1 ) ) ) )
            & [.] ( [.] ( <.> ( ~ p1
                              | ( [.] y1
                                & [.] ~ y1 )
                              | ( [.] z1
                                & <.> [.] y1
                                & <.> <.> ( ~ z1
                                          | ~ y1 ) ) )
                        | [.] [.] ( p1
                                  | ( [.] y1
                                    & [.] ~ y1 )
                                  | ( [.] z1
                                    & <.> [.] y1
                                    & <.> <.> ( ~ z1
                                              | ~ y1 ) ) ) )
                  & [.] ( [.] ( <.> ( ~ p1
                                    | ( [.] y1
                                      & [.] ~ y1 )
                                    | ( [.] z1
                                      & <.> [.] y1
                                      & <.> <.> ( ~ z1
                                                | ~ y1 ) ) )
                              | [.] [.] ( p1
                                        | ( [.] y1
                                          & [.] ~ y1 )
                                        | ( [.] z1
                                          & <.> [.] y1
                                          & <.> <.> ( ~ z1
                                                    | ~ y1 ) ) ) )
                        & [.] ( [.] ( <.> ( ~ p1
                                          | ( [.] y1
                                            & [.] ~ y1 )
                                          | ( [.] z1
                                            & <.> [.] y1
                                            & <.> <.> ( ~ z1
                                                      | ~ y1 ) ) )
                                    | [.] [.] ( p1
                                              | ( [.] y1
                                                & [.] ~ y1 )
                                              | ( [.] z1
                                                & <.> [.] y1
                                                & <.> <.> ( ~ z1
                                                          | ~ y1 ) ) ) )
                              & [.] ( ( <.> [.] ( ~ p0
                                                | ( [.] y0
                                                  & [.] ~ y0 )
                                                | ( [.] z0
                                                  & <.> [.] y0
                                                  & <.> <.> ( ~ z0
                                                            | ~ y0 ) ) )
                                      | <.> ( ( p0
                                              | ( [.] y0
                                                & [.] ~ y0 )
                                              | ( [.] z0
                                                & <.> [.] y0
                                                & <.> <.> ( ~ z0
                                                          | ~ y0 ) ) )
                                            & <.> ( ~ p3
                                                  | ( [.] y3
                                                    & [.] ~ y3 )
                                                  | ( [.] z3
                                                    & <.> [.] y3
                                                    & <.> <.> ( ~ z3
                                                              | ~ y3 ) ) ) ) )
                                    & [.] ( <.> [.] <.> ( ( p0
                                                          | ( [.] y0
                                                            & [.] ~ y0 )
                                                          | ( [.] z0
                                                            & <.> [.] y0
                                                            & <.> <.> ( ~ z0
                                                                      | ~ y0 ) ) )
                                                        & <.> ( ~ p3
                                                              | ( [.] y3
                                                                & [.] ~ y3 )
                                                              | ( [.] z3
                                                                & <.> [.] y3
                                                                & <.> <.> ( ~ z3
                                                                          | ~ y3 ) ) ) )
                                          | <.> [.] ( ~ p0
                                                    | ( [.] y0
                                                      & [.] ~ y0 )
                                                    | ( [.] z0
                                                      & <.> [.] y0
                                                      & <.> <.> ( ~ z0
                                                                | ~ y0 ) ) ) )
                                    & ( <.> [.] ( ~ p0
                                                | ( [.] y0
                                                  & [.] ~ y0 )
                                                | ( [.] z0
                                                  & <.> [.] y0
                                                  & <.> <.> ( ~ z0
                                                            | ~ y0 ) ) )
                                      | [.] [.] <.> ( ( p0
                                                      | ( [.] y0
                                                        & [.] ~ y0 )
                                                      | ( [.] z0
                                                        & <.> [.] y0
                                                        & <.> <.> ( ~ z0
                                                                  | ~ y0 ) ) )
                                                    & <.> ( ~ p3
                                                          | ( [.] y3
                                                            & [.] ~ y3 )
                                                          | ( [.] z3
                                                            & <.> [.] y3
                                                            & <.> <.> ( ~ z3
                                                                      | ~ y3 ) ) ) ) )
                                    & [.] ( [.] <.> [.] ( ~ p0
                                                        | ( [.] y0
                                                          & [.] ~ y0 )
                                                        | ( [.] z0
                                                          & <.> [.] y0
                                                          & <.> <.> ( ~ z0
                                                                    | ~ y0 ) ) )
                                          | ~ p0
                                          | ( [.] y0
                                            & [.] ~ y0 )
                                          | ( [.] z0
                                            & <.> [.] y0
                                            & <.> <.> ( ~ z0
                                                      | ~ y0 ) )
                                          | [.] ( ( p0
                                                  | ( [.] y0
                                                    & [.] ~ y0 )
                                                  | ( [.] z0
                                                    & <.> [.] y0
                                                    & <.> <.> ( ~ z0
                                                              | ~ y0 ) ) )
                                                & <.> ( ~ p3
                                                      | ( [.] y3
                                                        & [.] ~ y3 )
                                                      | ( [.] z3
                                                        & <.> [.] y3
                                                        & <.> <.> ( ~ z3
                                                                  | ~ y3 ) ) ) ) )
                                    & [.] <.> ( ( p0
                                                | ( [.] y0
                                                  & [.] ~ y0 )
                                                | ( [.] z0
                                                  & <.> [.] y0
                                                  & <.> <.> ( ~ z0
                                                            | ~ y0 ) ) )
                                              & <.> ( ~ p3
                                                    | ( [.] y3
                                                      & [.] ~ y3 )
                                                    | ( [.] z3
                                                      & <.> [.] y3
                                                      & <.> <.> ( ~ z3
                                                                | ~ y3 ) ) ) ) )
                              & [.] ( <.> [.] ( ~ p1
                                              | ( [.] y1
                                                & [.] ~ y1 )
                                              | ( [.] z1
                                                & <.> [.] y1
                                                & <.> <.> ( ~ z1
                                                          | ~ y1 ) ) )
                                    | [.] [.] <.> ( p1
                                                  | ( [.] y1
                                                    & [.] ~ y1 )
                                                  | ( [.] z1
                                                    & <.> [.] y1
                                                    & <.> <.> ( ~ z1
                                                              | ~ y1 ) ) ) ) )
                        & [.] ( <.> [.] ( ~ p1
                                        | ( [.] y1
                                          & [.] ~ y1 )
                                        | ( [.] z1
                                          & <.> [.] y1
                                          & <.> <.> ( ~ z1
                                                    | ~ y1 ) ) )
                              | [.] [.] <.> ( p1
                                            | ( [.] y1
                                              & [.] ~ y1 )
                                            | ( [.] z1
                                              & <.> [.] y1
                                              & <.> <.> ( ~ z1
                                                        | ~ y1 ) ) ) ) )
                  & [.] ( <.> [.] ( ~ p1
                                  | ( [.] y1
                                    & [.] ~ y1 )
                                  | ( [.] z1
                                    & <.> [.] y1
                                    & <.> <.> ( ~ z1
                                              | ~ y1 ) ) )
                        | [.] [.] <.> ( p1
                                      | ( [.] y1
                                        & [.] ~ y1 )
                                      | ( [.] z1
                                        & <.> [.] y1
                                        & <.> <.> ( ~ z1
                                                  | ~ y1 ) ) ) ) )
            & [.] ( <.> [.] ( ~ p1
                            | ( [.] y1
                              & [.] ~ y1 )
                            | ( [.] z1
                              & <.> [.] y1
                              & <.> <.> ( ~ z1
                                        | ~ y1 ) ) )
                  | [.] [.] <.> ( p1
                                | ( [.] y1
                                  & [.] ~ y1 )
                                | ( [.] z1
                                  & <.> [.] y1
                                  & <.> <.> ( ~ z1
                                            | ~ y1 ) ) ) ) )
      & [.] ( <.> [.] ( ~ p1
                      | ( [.] y1
                        & [.] ~ y1 )
                      | ( [.] z1
                        & <.> [.] y1
                        & <.> <.> ( ~ z1
                                  | ~ y1 ) ) )
            | [.] [.] <.> ( p1
                          | ( [.] y1
                            & [.] ~ y1 )
                          | ( [.] z1
                            & <.> [.] y1
                            & <.> <.> ( ~ z1
                                      | ~ y1 ) ) ) )
      & [.] ( ~ p4
            | ( [.] y4
              & [.] ~ y4 )
            | ( [.] z4
              & <.> [.] y4
              & <.> <.> ( ~ z4
                        | ~ y4 ) ) ) ) ).
