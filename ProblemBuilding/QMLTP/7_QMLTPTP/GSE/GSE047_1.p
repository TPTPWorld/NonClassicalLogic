%------------------------------------------------------------------------------
% File     : GSE047_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Set Theory
% Problem  : Set equality is symmetric
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP SET047+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSE047+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    4 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   70 (   0 equ)
%            Maximal formula atoms :    2 (  35 avg)
%            Number of connectives :   40 (   0   ~;   0   |;   4   &)
%                                         (   0 <=>;   8  =>;   0  <=;   0 <~>)
%                                         (  28 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   28 (  28 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    4 (   2   >;   2   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    6 (;   6   !;   0   ?;   6   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_constant_rigid,logic,
    $modal == 
      [ $domains == $constant,
        $designation == $rigid,
        $terms == $local,
        $modalities == $modal_system_K ] ).

tff(set_equal_decl,type,
    set_equal: ( $i * $i ) > $o ).

tff(element_decl,type,
    element: ( $i * $i ) > $o ).

tff(pel43_1,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Y: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (set_equal(X,Y)) )
                  => ( {$box}
                     @ (! [Z: $i] :
                          ( ( {$box}
                            @ (( ( {$box} @ (element(Z,X)) )
                              => ( {$box} @ (element(Z,Y)) ) )) )
                          & ( {$box}
                            @ (( ( {$box} @ (element(Z,Y)) )
                              => ( {$box} @ (element(Z,X)) ) )) ) )) ) )) )
              & ( {$box}
                @ (( ( {$box}
                     @ (! [Z: $i] :
                          ( ( {$box}
                            @ (( ( {$box} @ (element(Z,X)) )
                              => ( {$box} @ (element(Z,Y)) ) )) )
                          & ( {$box}
                            @ (( ( {$box} @ (element(Z,Y)) )
                              => ( {$box} @ (element(Z,X)) ) )) ) )) )
                  => ( {$box} @ (set_equal(X,Y)) ) )) ) )) )) ) ).

tff(pel43,conjecture,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Y: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (set_equal(X,Y)) )
                  => ( {$box} @ (set_equal(Y,X)) ) )) )
              & ( {$box}
                @ (( ( {$box} @ (set_equal(Y,X)) )
                  => ( {$box} @ (set_equal(X,Y)) ) )) ) )) )) ) ).

%------------------------------------------------------------------------------
