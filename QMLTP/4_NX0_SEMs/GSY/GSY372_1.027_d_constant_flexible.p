%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY372+1 [QMLTP]
%          : GSY372_1.027_d_constant_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   20 (   0 equ)
%            Maximal formula atoms :    2 (  20 avg)
%            Number of connectives :   11 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   8 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    8 (   8 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    3 (;   1   !;   2   ?;   3   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_constant_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $constant,
        $modalities == $modal_system_D ] ).

tff(big_q_decl,type,
    big_q: $i > $o ).

tff(big_p_decl,type,
    big_p: $i > $o ).

tff(x2123,conjecture,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (( ? [Y: $i] :
                ( {$box}
                @ (( ( {$box} @ (big_p(Y)) )
                  => ( {$box} @ (big_q(X)) ) )) )
           => ? [Y: $i] :
                ( {$box}
                @ (( ( {$box} @ (big_p(Y)) )
                  => ( {$box} @ (big_q(Y)) ) )) ) )) )) ) ).

%------------------------------------------------------------------------------
