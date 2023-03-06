%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY379+1 [QMLTP]
%          : GSY379_1.040_s4_cumulative_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   28 (   0 equ)
%            Maximal formula atoms :    2 (  28 avg)
%            Number of connectives :   17 (   2   ~;   0   |;   1   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (  12 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   12 (  12 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    4 (   2   >;   2   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-3 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    5 (;   4   !;   1   ?;   5   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_cumulative_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $cumulative,
        $modalities == $modal_system_S4 ] ).

tff(big_q_decl,type,
    big_q: ( $i * $i * $i ) > $o ).

tff(big_p_decl,type,
    big_p: $i > $o ).

tff(x2131,conjecture,
    ( {$box}
    @ (( ( {$box}
         @ (! [X: $i] : ( {$box} @ (big_p(X)) )) )
      => ? [Y: $i] :
           ( {$box}
           @ (( ( {$box}
                @ (! [X: $i] :
                     ( {$box}
                     @ (! [Z: $i] : ( {$box} @ (big_q(X,Y,Z)) )) )) )
             => ( {$box}
                @ (~ ( {$box}
                     @ (! [Z: $i] :
                          ( ( {$box} @ (big_p(Z)) )
                          & ( {$box}
                            @ (~ ( {$box} @ (big_q(Y,Y,Z)) )) ) )) )) ) )) ) )) ) ).

%------------------------------------------------------------------------------
