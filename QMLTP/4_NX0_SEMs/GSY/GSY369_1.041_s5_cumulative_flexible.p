%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY369+1 [QMLTP]
%          : GSY369_1.041_s5_cumulative_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :   19 (   0 equ)
%            Maximal formula atoms :    2 (  19 avg)
%            Number of connectives :   10 (   0   ~;   1   |;   0   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   8 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    8 (   8 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   1   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    5 (;   4   !;   1   ?;   5   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_cumulative_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $cumulative,
        $modalities == $modal_system_S5 ] ).

tff(big_p_decl,type,
    big_p: ( $i * $i ) > $o ).

tff(x2120,conjecture,
    ( {$box}
    @ (( ( {$box}
         @ (! [U: $i] :
              ( {$box}
              @ (! [V: $i] :
                   ( {$box}
                   @ (! [W: $i] :
                        ( ( {$box} @ (big_p(U,V)) )
                        | ( {$box} @ (big_p(V,W)) ) )) )) )) )
      => ? [X: $i] :
           ( {$box}
           @ (! [Y: $i] : ( {$box} @ (big_p(X,Y)) )) ) )) ) ).

%------------------------------------------------------------------------------
