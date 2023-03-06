%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY366+1 [QMLTP]
%          : GSY366_1.027_d_constant_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :   52 (   0 equ)
%            Maximal formula atoms :    2 (  52 avg)
%            Number of connectives :   30 (   0   ~;   0   |;   3   &)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%                                         (  21 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   21 (  21 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   1   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    6 (;   5   !;   1   ?;   6   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_constant_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $constant,
        $modalities == $modal_system_D ] ).

tff(big_r_decl,type,
    big_r: ( $i * $i ) > $o ).

tff(x2117,conjecture,
    ( {$box}
    @ (( ( ( {$box}
           @ (! [U: $i] :
                ( {$box}
                @ (! [V: $i] :
                     ( ( {$box}
                       @ (( ( {$box} @ (big_r(U,U)) )
                         => ( {$box} @ (big_r(U,V)) ) )) )
                     & ( {$box}
                       @ (( ( {$box} @ (big_r(U,V)) )
                         => ( {$box} @ (big_r(U,U)) ) )) ) )) )) )
         & ( {$box}
           @ (! [W: $i] :
                ( {$box}
                @ (! [Z: $i] :
                     ( ( {$box}
                       @ (( ( {$box} @ (big_r(W,W)) )
                         => ( {$box} @ (big_r(Z,W)) ) )) )
                     & ( {$box}
                       @ (( ( {$box} @ (big_r(Z,W)) )
                         => ( {$box} @ (big_r(W,W)) ) )) ) )) )) ) )
      => ( {$box}
         @ (( ? [X: $i] : ( {$box} @ (big_r(X,X)) )
           => ( {$box}
              @ (! [Y: $i] : ( {$box} @ (big_r(Y,Y)) )) ) )) ) )) ) ).

%------------------------------------------------------------------------------
