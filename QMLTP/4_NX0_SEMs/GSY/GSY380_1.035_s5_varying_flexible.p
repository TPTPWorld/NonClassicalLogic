%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY380+1 [QMLTP]
%          : GSY380_1.035_s5_varying_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   24 (   0 equ)
%            Maximal formula atoms :    2 (  24 avg)
%            Number of connectives :   15 (   2   ~;   0   |;   1   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (  10 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   10 (  10 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    4 (   2   >;   2   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    4 (;   2   !;   2   ?;   4   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_varying_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $varying,
        $modalities == $modal_system_S5 ] ).

tff(big_q_decl,type,
    big_q: ( $i * $i ) > $o ).

tff(big_r_decl,type,
    big_r: ( $i * $i ) > $o ).

tff(x2132,conjecture,
    ( {$box}
    @ (( ( {$box}
         @ (! [W: $i] :
              ( {$box}
              @ (~ ( {$box} @ (big_r(W,W)) )) )) )
      => ? [X: $i,Y: $i] :
           ( ( {$box}
             @ (~ ( {$box} @ (big_r(X,Y)) )) )
           & ( {$box}
             @ (( ( {$box} @ (big_q(Y,X)) )
               => ( {$box}
                  @ (! [Z: $i] : ( {$box} @ (big_q(Z,Z)) )) ) )) ) ) )) ) ).

%------------------------------------------------------------------------------
