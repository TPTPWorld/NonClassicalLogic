%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY040+1 [QMLTP]
%          : GSY040_1.015_d_cumulative_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   44 (   0 equ)
%            Maximal formula atoms :    4 (  44 avg)
%            Number of connectives :   29 (   4   ~;   0   |;   1   &)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%                                         (  18 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :   18 (  18 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   2 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : NX0_CSA_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_cumulative_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $cumulative,
        $modalities == $modal_system_D ] ).

tff(p_decl,type,
    p: $o ).

tff(q_decl,type,
    q: $o ).

tff(pel1,conjecture,
    ( ( {$box}
      @ (( ( {$box}
           @ (( ( {$box} @ (p) )
             => ( {$box} @ (q) ) )) )
        => ( {$box}
           @ (( ( {$box}
                @ (~ ( {$box} @ (q) )) )
             => ( {$box}
                @ (~ ( {$box} @ (p) )) ) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (( ( {$box}
                @ (~ ( {$box} @ (q) )) )
             => ( {$box}
                @ (~ ( {$box} @ (p) )) ) )) )
        => ( {$box}
           @ (( ( {$box} @ (p) )
             => ( {$box} @ (q) ) )) ) )) ) ) ).

%------------------------------------------------------------------------------
