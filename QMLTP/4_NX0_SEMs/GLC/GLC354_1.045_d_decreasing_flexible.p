%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : Logic Calculi
% Problem  : Independence of an Axiom for Temporal Intervals
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP LCL354+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GLC354+1 [QMLTP]
%          : GLC354_1.045_d_decreasing_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    5 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :  135 (   0 equ)
%            Maximal formula atoms :    2 (  33 avg)
%            Number of connectives :   82 (   4   ~;   0   |;  16   &)
%                                         (   0 <=>;   9  =>;   0  <=;   0 <~>)
%                                         (  53 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   53 (  53 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   1   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   22 (;  11   !;  11   ?;  22   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_decreasing_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $decreasing,
        $modalities == $modal_system_D ] ).

tff(meets_decl,type,
    meets: ( $i * $i ) > $o ).

tff(m1,axiom-local,
    ( {$box}
    @ (! [P: $i] :
         ( {$box}
         @ (! [Q: $i] :
              ( {$box}
              @ (! [R: $i] :
                   ( {$box}
                   @ (! [S: $i] :
                        ( {$box}
                        @ (( ( ( {$box} @ (meets(P,Q)) )
                             & ( {$box} @ (meets(P,S)) )
                             & ( {$box} @ (meets(R,Q)) ) )
                          => ( {$box} @ (meets(R,S)) ) )) )) )) )) )) ) ).

tff(m2,axiom-local,
    ( {$box}
    @ (! [P: $i] :
         ( {$box}
         @ (! [Q: $i] :
              ( {$box}
              @ (! [R: $i] :
                   ( {$box}
                   @ (! [S: $i] :
                        ( {$box}
                        @ (( ( ( {$box} @ (meets(P,Q)) )
                             & ( {$box} @ (meets(R,S)) ) )
                          => ( {$box}
                             @ (~ ( ( {$box}
                                    @ (( ( {$box}
                                         @ (~ ( ( {$box}
                                                @ (( ( {$box} @ (meets(P,S)) )
                                                  => ? [T: $i] :
                                                       ( ( {$box} @ (meets(P,T)) )
                                                       & ( {$box} @ (meets(T,S)) ) ) )) )
                                              & ( {$box}
                                                @ (( ? [T: $i] :
                                                       ( ( {$box} @ (meets(P,T)) )
                                                       & ( {$box} @ (meets(T,S)) ) )
                                                  => ( {$box} @ (meets(P,S)) ) )) ) )) )
                                      => ? [T: $i] :
                                           ( ( {$box} @ (meets(R,T)) )
                                           & ( {$box} @ (meets(T,Q)) ) ) )) )
                                  & ( {$box}
                                    @ (( ? [T: $i] :
                                           ( ( {$box} @ (meets(R,T)) )
                                           & ( {$box} @ (meets(T,Q)) ) )
                                      => ( {$box}
                                         @ (~ ( ( {$box}
                                                @ (( ( {$box} @ (meets(P,S)) )
                                                  => ? [T: $i] :
                                                       ( ( {$box} @ (meets(P,T)) )
                                                       & ( {$box} @ (meets(T,S)) ) ) )) )
                                              & ( {$box}
                                                @ (( ? [T: $i] :
                                                       ( ( {$box} @ (meets(P,T)) )
                                                       & ( {$box} @ (meets(T,S)) ) )
                                                  => ( {$box} @ (meets(P,S)) ) )) ) )) ) )) ) )) ) )) )) )) )) )) ) ).

tff(m3,axiom-local,
    ( {$box}
    @ (! [P: $i] :
       ? [Q: $i,R: $i] :
         ( ( {$box} @ (meets(Q,P)) )
         & ( {$box} @ (meets(P,R)) ) )) ) ).

tff(not_m5,axiom-local,
    ( {$box}
    @ (~ ( {$box}
         @ (! [P: $i] :
              ( {$box}
              @ (! [Q: $i] :
                   ( {$box}
                   @ (( ( {$box} @ (meets(P,Q)) )
                     => ? [R: $i,S: $i,T: $i] :
                          ( ( {$box} @ (meets(R,P)) )
                          & ( {$box} @ (meets(Q,S)) )
                          & ( {$box} @ (meets(R,T)) )
                          & ( {$box} @ (meets(T,S)) ) ) )) )) )) )) ) ).

%------------------------------------------------------------------------------
