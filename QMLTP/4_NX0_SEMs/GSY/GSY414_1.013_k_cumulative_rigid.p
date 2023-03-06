%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY414+1 [QMLTP]
%          : GSY414_1.013_k_cumulative_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    4 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   76 (   0 equ)
%            Maximal formula atoms :    4 (  76 avg)
%            Number of connectives :   45 (   0   ~;   0   |;   9   &)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%                                         (  30 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   30 (  30 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    4 (   3   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   12 (;   8   !;   4   ?;  12   :)
% SPC      : NX0_CSA_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_cumulative_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $cumulative,
        $modalities == $modal_system_K ] ).

tff(f_decl,type,
    f: $i > $o ).

tff(g_decl,type,
    g: $i > $o ).

tff(h_decl,type,
    h: ( $i * $i ) > $o ).

tff(kalish265,conjecture,
    ( ( {$box}
      @ (( ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (( ? [Y: $i] :
                       ( ( {$box} @ (h(X,Y)) )
                       & ( {$box} @ (f(Y)) ) )
                  => ? [Z: $i] :
                       ( ( {$box} @ (h(X,Z)) )
                       & ( {$box} @ (g(Z)) ) ) )) )) )
        => ( {$box}
           @ (! [U: $i] :
                ( {$box}
                @ (! [V: $i] :
                     ( {$box}
                     @ (! [W: $i] :
                          ( {$box}
                          @ (( ( ( {$box} @ (h(U,V)) )
                               & ( {$box} @ (f(V)) ) )
                            => ( ( {$box} @ (h(U,W)) )
                               & ( {$box} @ (g(W)) ) ) )) )) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [U: $i] :
                ( {$box}
                @ (! [V: $i] :
                     ( {$box}
                     @ (! [W: $i] :
                          ( {$box}
                          @ (( ( ( {$box} @ (h(U,V)) )
                               & ( {$box} @ (f(V)) ) )
                            => ( ( {$box} @ (h(U,W)) )
                               & ( {$box} @ (g(W)) ) ) )) )) )) )) )
        => ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (( ? [Y: $i] :
                       ( ( {$box} @ (h(X,Y)) )
                       & ( {$box} @ (f(Y)) ) )
                  => ? [Z: $i] :
                       ( ( {$box} @ (h(X,Z)) )
                       & ( {$box} @ (g(Z)) ) ) )) )) ) )) ) ) ).

%------------------------------------------------------------------------------
