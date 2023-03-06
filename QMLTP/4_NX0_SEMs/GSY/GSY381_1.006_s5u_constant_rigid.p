%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY381+1 [QMLTP]
%          : GSY381_1.006_s5u_constant_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   37 (   0 equ)
%            Maximal formula atoms :    2 (  37 avg)
%            Number of connectives :   21 (   0   ~;   1   |;   2   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (  15 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   15 (  15 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    3 (   2   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    7 (;   5   !;   2   ?;   7   :)
% SPC      : NX0_THM_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_constant_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == $modal_system_S5U ] ).

tff(big_q_decl,type,
    big_q: ( $i * $i ) > $o ).

tff(big_p_decl,type,
    big_p: $i > $o ).

tff(x2133,conjecture,
    ( {$box}
    @ (( ( ( {$box}
           @ (! [X: $i] :
                ( {$box}
                @ (( ? [Y: $i] : ( {$box} @ (big_q(X,Y)) )
                  => ( {$box} @ (big_p(X)) ) )) )) )
         & ( {$box}
           @ (! [V: $i] :
              ? [U: $i] : ( {$box} @ (big_q(U,V)) )) )
         & ( {$box}
           @ (! [W: $i] :
                ( {$box}
                @ (! [Z: $i] :
                     ( {$box}
                     @ (( ( {$box} @ (big_q(W,Z)) )
                       => ( ( {$box} @ (big_q(Z,W)) )
                          | ( {$box} @ (big_q(Z,Z)) ) ) )) )) )) ) )
      => ( {$box}
         @ (! [Z: $i] : ( {$box} @ (big_p(Z)) )) ) )) ) ).

%------------------------------------------------------------------------------
