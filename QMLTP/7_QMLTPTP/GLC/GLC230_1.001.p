%------------------------------------------------------------------------------
% File     : GLC230_1.001 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Logic Calculi
% Problem  : Principia Mathematica 2.85
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP LCL230+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GLC230+1 [QMLTP]
%          : GLC230_1.001_k_constant_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    4 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   27 (   0 equ)
%            Maximal formula atoms :    2 (  27 avg)
%            Number of connectives :   16 (   0   ~;   3   |;   0   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (  10 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :   10 (  10 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   3 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : NX0_CSA_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_constant_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == $modal_system_K ] ).

tff(p_decl,type,
    p: $o ).

tff(q_decl,type,
    q: $o ).

tff(r_decl,type,
    r: $o ).

tff(pel5,conjecture,
    ( {$box}
    @ (( ( {$box}
         @ (( ( ( {$box} @ (p) )
              | ( {$box} @ (q) ) )
           => ( ( {$box} @ (p) )
              | ( {$box} @ (r) ) ) )) )
      => ( ( {$box} @ (p) )
         | ( {$box}
           @ (( ( {$box} @ (q) )
             => ( {$box} @ (r) ) )) ) ) )) ) ).

%------------------------------------------------------------------------------
