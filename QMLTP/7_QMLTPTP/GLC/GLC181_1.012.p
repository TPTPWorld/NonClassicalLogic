%------------------------------------------------------------------------------
% File     : GLC181_1.012 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Logic Calculi
% Problem  : Principia Mathematica 2.15
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP LCL181+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GLC181+1 [QMLTP]
%          : GLC181_1.012_s5u_varying_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
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
% SPC      : NX0_THM_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_varying_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $varying,
        $modalities == $modal_system_S5U ] ).

tff(p_decl,type,
    p: $o ).

tff(q_decl,type,
    q: $o ).

tff(pel4,conjecture,
    ( ( {$box}
      @ (( ( {$box}
           @ (( ( {$box}
                @ (~ ( {$box} @ (p) )) )
             => ( {$box} @ (q) ) )) )
        => ( {$box}
           @ (( ( {$box}
                @ (~ ( {$box} @ (q) )) )
             => ( {$box} @ (p) ) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (( ( {$box}
                @ (~ ( {$box} @ (q) )) )
             => ( {$box} @ (p) ) )) )
        => ( {$box}
           @ (( ( {$box}
                @ (~ ( {$box} @ (p) )) )
             => ( {$box} @ (q) ) )) ) )) ) ) ).

%------------------------------------------------------------------------------
