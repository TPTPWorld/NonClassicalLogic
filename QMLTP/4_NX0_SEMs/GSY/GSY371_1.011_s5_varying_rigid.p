%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY371+1 [QMLTP]
%          : GSY371_1.011_s5_varying_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :   22 (   0 equ)
%            Maximal formula atoms :    2 (  22 avg)
%            Number of connectives :   12 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   9 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    9 (   9 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   1   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    4 (;   2   !;   2   ?;   4   :)
% SPC      : NX0_THM_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_varying_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $varying,
        $modalities == $modal_system_S5 ] ).

tff(big_r_decl,type,
    big_r: ( $i * $i ) > $o ).

tff(x2122,conjecture,
    ( {$box}
    @ (( ( {$box}
         @ (( ? [X: $i] : ( {$box} @ (big_r(X,X)) )
           => ( {$box}
              @ (! [Y: $i] : ( {$box} @ (big_r(Y,Y)) )) ) )) )
      => ? [U: $i] :
           ( {$box}
           @ (! [V: $i] :
                ( {$box}
                @ (( ( {$box} @ (big_r(U,U)) )
                  => ( {$box} @ (big_r(V,V)) ) )) )) ) )) ) ).

%------------------------------------------------------------------------------
