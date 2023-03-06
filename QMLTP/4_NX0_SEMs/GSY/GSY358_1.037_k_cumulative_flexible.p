%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY358+1 [QMLTP]
%          : GSY358_1.037_k_cumulative_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   28 (   0 equ)
%            Maximal formula atoms :    4 (  28 avg)
%            Number of connectives :   17 (   0   ~;   0   |;   5   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (  10 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   10 (  10 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   1 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    4 (;   0   !;   4   ?;   4   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_cumulative_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $cumulative,
        $modalities == $modal_system_K ] ).

tff(p_decl,type,
    p: $o ).

tff(big_q_decl,type,
    big_q: $i > $o ).

tff(x2109,conjecture,
    ( ( {$box}
      @ (( ? [X: $i] :
             ( ( {$box} @ (p) )
             & ( {$box} @ (big_q(X)) ) )
        => ( ( {$box} @ (p) )
           & ? [X: $i] : ( {$box} @ (big_q(X)) ) ) )) )
    & ( {$box}
      @ (( ( ( {$box} @ (p) )
           & ? [X: $i] : ( {$box} @ (big_q(X)) ) )
        => ? [X: $i] :
             ( ( {$box} @ (p) )
             & ( {$box} @ (big_q(X)) ) ) )) ) ) ).

%------------------------------------------------------------------------------
