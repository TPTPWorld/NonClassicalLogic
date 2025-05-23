%------------------------------------------------------------------------------
% File     : GSY050_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Pelletier Problem 20
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP SYN050+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY050+1 [QMLTP]

% Status   : Unknown
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
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_constant_rigid,logic,
    $modal == 
      [ $domains == $constant,
        $designation == $rigid,
        $terms == $local,
        $modalities == $modal_system_K ] ).

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
