%------------------------------------------------------------------------------
% File     : GSY049_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Pelletier Problem 19
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP SYN049+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY049+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   22 (   0 equ)
%            Maximal formula atoms :    2 (  22 avg)
%            Number of connectives :   12 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   9 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    9 (   9 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    3 (;   2   !;   1   ?;   3   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_constant_rigid,logic,
    $modal == 
      [ $domains == $constant,
        $designation == $rigid,
        $terms == $local,
        $modalities == $modal_system_K ] ).

tff(big_q_decl,type,
    big_q: $i > $o ).

tff(big_p_decl,type,
    big_p: $i > $o ).

tff(pel19,conjecture,
    ? [X: $i] :
      ( {$box}
      @ (! [Y: $i] :
           ( {$box}
           @ (! [Z: $i] :
                ( {$box}
                @ (( ( {$box}
                     @ (( ( {$box} @ (big_p(Y)) )
                       => ( {$box} @ (big_q(Z)) ) )) )
                  => ( {$box}
                     @ (( ( {$box} @ (big_p(X)) )
                       => ( {$box} @ (big_q(X)) ) )) ) )) )) )) ) ).

%------------------------------------------------------------------------------
