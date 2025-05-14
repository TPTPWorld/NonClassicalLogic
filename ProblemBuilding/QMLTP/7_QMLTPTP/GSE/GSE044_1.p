%------------------------------------------------------------------------------
% File     : GSE044_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Set Theory
% Problem  : Anti-Russell Sets
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP SET044+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSE044+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :   46 (   0 equ)
%            Maximal formula atoms :    2 (  46 avg)
%            Number of connectives :   29 (   3   ~;   0   |;   2   &)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%                                         (  19 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   19 (  19 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   1   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    5 (;   3   !;   2   ?;   5   :)
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

tff(pel40,conjecture,
    ( {$box}
    @ (( ? [Y: $i] :
           ( {$box}
           @ (! [X: $i] :
                ( ( {$box}
                  @ (( ( {$box} @ (element(X,Y)) )
                    => ( {$box} @ (element(X,X)) ) )) )
                & ( {$box}
                  @ (( ( {$box} @ (element(X,X)) )
                    => ( {$box} @ (element(X,Y)) ) )) ) )) )
      => ( {$box}
         @ (~ ( {$box}
              @ (! [X1: $i] :
                 ? [Y1: $i] :
                   ( {$box}
                   @ (! [Z: $i] :
                        ( ( {$box}
                          @ (( ( {$box} @ (element(Z,Y1)) )
                            => ( {$box}
                               @ (~ ( {$box} @ (element(Z,X1)) )) ) )) )
                        & ( {$box}
                          @ (( ( {$box}
                               @ (~ ( {$box} @ (element(Z,X1)) )) )
                            => ( {$box} @ (element(Z,Y1)) ) )) ) )) )) )) ) )) ) ).

%------------------------------------------------------------------------------
