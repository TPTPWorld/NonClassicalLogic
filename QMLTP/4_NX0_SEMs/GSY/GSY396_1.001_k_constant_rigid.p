%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY396+1 [QMLTP]
%          : GSY396_1.001_k_constant_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :   28 (   0 equ)
%            Maximal formula atoms :    4 (  28 avg)
%            Number of connectives :   19 (   4   ~;   0   |;   1   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (  12 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   12 (  12 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    4 (;   2   !;   2   ?;   4   :)
% SPC      : NX0_CSA_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_constant_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == $modal_system_K ] ).

tff(f_decl,type,
    f: $i > $o ).

tff(kalish203,conjecture,
    ( ( {$box}
      @ (( ( {$box}
           @ (~ ( {$box}
                @ (! [X: $i] : ( {$box} @ (f(X)) )) )) )
        => ? [Y: $i] :
             ( {$box}
             @ (~ ( {$box} @ (f(Y)) )) ) )) )
    & ( {$box}
      @ (( ? [Y: $i] :
             ( {$box}
             @ (~ ( {$box} @ (f(Y)) )) )
        => ( {$box}
           @ (~ ( {$box}
                @ (! [X: $i] : ( {$box} @ (f(X)) )) )) ) )) ) ) ).

%------------------------------------------------------------------------------
