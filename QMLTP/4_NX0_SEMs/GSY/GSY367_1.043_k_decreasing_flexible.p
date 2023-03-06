%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY367+1 [QMLTP]
%          : GSY367_1.043_k_decreasing_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    4 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   28 (   0 equ)
%            Maximal formula atoms :    2 (  28 avg)
%            Number of connectives :   17 (   1   ~;   2   |;   2   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (  11 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   11 (  11 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   1 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    3 (;   3   !;   0   ?;   3   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_decreasing_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $decreasing,
        $modalities == $modal_system_K ] ).

tff(p_decl,type,
    p: $o ).

tff(big_q_decl,type,
    big_q: $i > $o ).

tff(big_r_decl,type,
    big_r: $i > $o ).

tff(x2118,conjecture,
    ( {$box}
    @ (( ( {$box}
         @ (! [X: $i] :
              ( ( ( {$box} @ (p) )
                & ( {$box} @ (big_q(X)) ) )
              | ( ( {$box}
                  @ (~ ( {$box} @ (p) )) )
                & ( {$box} @ (big_r(X)) ) ) )) )
      => ( ( {$box}
           @ (! [X: $i] : ( {$box} @ (big_q(X)) )) )
         | ( {$box}
           @ (! [X: $i] : ( {$box} @ (big_r(X)) )) ) ) )) ) ).

%------------------------------------------------------------------------------
