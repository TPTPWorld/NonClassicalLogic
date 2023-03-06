%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY363+1 [QMLTP]
%          : GSY363_1.032_t_varying_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    4 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   22 (   0 equ)
%            Maximal formula atoms :    2 (  22 avg)
%            Number of connectives :   12 (   0   ~;   0   |;   1   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   9 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    9 (   9 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   1   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :    2 (   2 usr;   2 con; 0-0 aty)
%            Number of variables   :    5 (;   3   !;   2   ?;   5   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(t_varying_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $varying,
        $modalities == $modal_system_M ] ).

tff(a_decl,type,
    a: $i ).

tff(b_decl,type,
    b: $i ).

tff(big_r_decl,type,
    big_r: ( $i * $i ) > $o ).

tff(x2114,conjecture,
    ( {$box}
    @ (( ( ( {$box}
           @ (! [X: $i] : ( {$box} @ (big_r(X,b)) )) )
         & ( {$box}
           @ (! [Y: $i] :
                ( {$box}
                @ (( ? [Z: $i] : ( {$box} @ (big_r(Y,Z)) )
                  => ( {$box} @ (big_r(a,Y)) ) )) )) ) )
      => ? [U: $i] :
           ( {$box}
           @ (! [V: $i] : ( {$box} @ (big_r(U,V)) )) ) )) ) ).

%------------------------------------------------------------------------------
