%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSE046+1 [QMLTP]
%          : GSE046_1.007_k_varying_rigid.p [QMLTP/4_NX0_SEMs]

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
tff(k_varying_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $varying,
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
