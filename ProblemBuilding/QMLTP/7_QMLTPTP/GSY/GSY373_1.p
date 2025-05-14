%------------------------------------------------------------------------------
% File     : GSY373_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Peter Andrews Problem X2124
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP SYN373+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY373+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   40 (   0 equ)
%            Maximal formula atoms :    4 (  40 avg)
%            Number of connectives :   23 (   0   ~;   0   |;   1   &)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%                                         (  16 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   16 (  16 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    6 (;   2   !;   4   ?;   6   :)
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

tff(x2124,conjecture,
    ( ( {$box}
      @ (( ? [X: $i] :
             ( {$box}
             @ (( ( {$box} @ (big_p(X)) )
               => ( {$box} @ (big_q(X)) ) )) )
        => ( {$box}
           @ (( ( {$box}
                @ (! [X: $i] : ( {$box} @ (big_p(X)) )) )
             => ? [X: $i] : ( {$box} @ (big_q(X)) ) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (( ( {$box}
                @ (! [X: $i] : ( {$box} @ (big_p(X)) )) )
             => ? [X: $i] : ( {$box} @ (big_q(X)) ) )) )
        => ? [X: $i] :
             ( {$box}
             @ (( ( {$box} @ (big_p(X)) )
               => ( {$box} @ (big_q(X)) ) )) ) )) ) ) ).

%------------------------------------------------------------------------------
