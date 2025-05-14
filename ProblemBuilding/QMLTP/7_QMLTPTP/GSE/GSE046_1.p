%------------------------------------------------------------------------------
% File     : GSE046_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Set Theory
% Problem  : No set of non-circular sets
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP SET046+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSE046+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :   30 (   0 equ)
%            Maximal formula atoms :    2 (  30 avg)
%            Number of connectives :   20 (   3   ~;   0   |;   3   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (  12 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   12 (  12 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   1   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    4 (;   1   !;   3   ?;   4   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_constant_rigid,logic,
    $modal == 
      [ $domains == $constant,
        $designation == $rigid,
        $terms == $local,
        $modalities == $modal_system_K ] ).

tff(element_decl,type,
    element: ( $i * $i ) > $o ).

tff(pel42,conjecture,
    ( {$box}
    @ (~ ? [Y: $i] :
           ( {$box}
           @ (! [X: $i] :
                ( ( {$box}
                  @ (( ( {$box} @ (element(X,Y)) )
                    => ( {$box}
                       @ (~ ? [Z: $i] :
                              ( ( {$box} @ (element(X,Z)) )
                              & ( {$box} @ (element(Z,X)) ) )) ) )) )
                & ( {$box}
                  @ (( ( {$box}
                       @ (~ ? [Z: $i] :
                              ( ( {$box} @ (element(X,Z)) )
                              & ( {$box} @ (element(Z,X)) ) )) )
                    => ( {$box} @ (element(X,Y)) ) )) ) )) )) ) ).

%------------------------------------------------------------------------------
