%------------------------------------------------------------------------------
% File     : GSY362_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Peter Andrews Problem X2113
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP SYN362+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY362+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   24 (   0 equ)
%            Maximal formula atoms :    2 (  24 avg)
%            Number of connectives :   15 (   2   ~;   0   |;   1   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (  10 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   10 (  10 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    3 (   2   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    5 (;   2   !;   3   ?;   5   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_constant_rigid,logic,
    $modal == 
      [ $domains == $constant,
        $designation == $rigid,
        $terms == $local,
        $modalities == $modal_system_K ] ).

tff(big_r_decl,type,
    big_r: ( $i * $i ) > $o ).

tff(big_p_decl,type,
    big_p: $i > $o ).

tff(x2113,conjecture,
    ( {$box}
    @ (( ( ( {$box}
           @ (! [Y: $i] :
              ? [W: $i] : ( {$box} @ (big_r(Y,W)) )) )
         & ? [Z: $i] :
             ( {$box}
             @ (! [X: $i] :
                  ( {$box}
                  @ (( ( {$box} @ (big_p(X)) )
                    => ( {$box}
                       @ (~ ( {$box} @ (big_r(Z,X)) )) ) )) )) ) )
      => ? [X: $i] :
           ( {$box}
           @ (~ ( {$box} @ (big_p(X)) )) ) )) ) ).

%------------------------------------------------------------------------------
