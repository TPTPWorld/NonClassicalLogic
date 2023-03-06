%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY359+1 [QMLTP]
%          : GSY359_1.018_s5u_cumulative_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   33 (   0 equ)
%            Maximal formula atoms :    2 (  33 avg)
%            Number of connectives :   19 (   0   ~;   0   |;   3   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (  13 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   13 (  13 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    3 (   2   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    7 (;   3   !;   4   ?;   7   :)
% SPC      : NX0_THM_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_cumulative_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $cumulative,
        $modalities == $modal_system_S5U ] ).

tff(big_q_decl,type,
    big_q: ( $i * $i ) > $o ).

tff(big_r_decl,type,
    big_r: $i > $o ).

tff(x2110,conjecture,
    ( {$box}
    @ (( ( ? [X: $i] : ( {$box} @ (big_r(X)) )
         & ( {$box}
           @ (! [Y: $i] :
                ( {$box}
                @ (( ( {$box} @ (big_r(Y)) )
                  => ? [Z: $i] : ( {$box} @ (big_q(Y,Z)) ) )) )) )
         & ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (! [Y: $i] :
                     ( {$box}
                     @ (( ( {$box} @ (big_q(X,Y)) )
                       => ( {$box} @ (big_q(X,X)) ) )) )) )) ) )
      => ? [X: $i,Y: $i] :
           ( ( {$box} @ (big_q(X,Y)) )
           & ( {$box} @ (big_r(Y)) ) ) )) ) ).

%------------------------------------------------------------------------------
