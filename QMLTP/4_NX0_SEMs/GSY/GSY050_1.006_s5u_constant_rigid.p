%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY050+1 [QMLTP]
%          : GSY050_1.006_s5u_constant_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    5 (   0 unt;   4 typ;   0 def)
%            Number of atoms       :   33 (   0 equ)
%            Maximal formula atoms :    2 (  33 avg)
%            Number of connectives :   19 (   0   ~;   0   |;   3   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (  13 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   13 (  13 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    4 (   4   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    5 (   4 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    7 (;   3   !;   4   ?;   7   :)
% SPC      : NX0_THM_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_constant_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == $modal_system_S5U ] ).

tff(big_s_decl,type,
    big_s: $i > $o ).

tff(big_q_decl,type,
    big_q: $i > $o ).

tff(big_r_decl,type,
    big_r: $i > $o ).

tff(big_p_decl,type,
    big_p: $i > $o ).

tff(pel20,conjecture,
    ( {$box}
    @ (( ( {$box}
         @ (! [X: $i] :
              ( {$box}
              @ (! [Y: $i] :
                 ? [Z: $i] :
                   ( {$box}
                   @ (! [W: $i] :
                        ( {$box}
                        @ (( ( ( {$box} @ (big_p(X)) )
                             & ( {$box} @ (big_q(Y)) ) )
                          => ( ( {$box} @ (big_r(Z)) )
                             & ( {$box} @ (big_s(W)) ) ) )) )) )) )) )
      => ? [X1: $i,Y1: $i] :
           ( {$box}
           @ (( ( ( {$box} @ (big_p(X1)) )
                & ( {$box} @ (big_q(Y1)) ) )
             => ? [Z1: $i] : ( {$box} @ (big_r(Z1)) ) )) ) )) ) ).

%------------------------------------------------------------------------------
