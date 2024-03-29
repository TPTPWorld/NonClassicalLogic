%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY391+1 [QMLTP]
%          : GSY391_1.001_k_constant_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   36 (   0 equ)
%            Maximal formula atoms :    2 (  36 avg)
%            Number of connectives :   26 (   5   ~;   4   |;   2   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (  14 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :   14 (  14 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   2 prp; 0-1 aty)
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

tff(p1_decl,type,
    p1: $o ).

tff(p2_decl,type,
    p2: $o ).

tff(pel9,conjecture,
    ( {$box}
    @ (( ( ( ( {$box} @ (p1) )
           | ( {$box} @ (p2) ) )
         & ( ( {$box}
             @ (~ ( {$box} @ (p1) )) )
           | ( {$box} @ (p2) ) )
         & ( ( {$box} @ (p1) )
           | ( {$box}
             @ (~ ( {$box} @ (p2) )) ) ) )
      => ( {$box}
         @ (~ ( ( {$box}
                @ (~ ( {$box} @ (p1) )) )
              | ( {$box}
                @ (~ ( {$box} @ (p2) )) ) )) ) )) ) ).

%------------------------------------------------------------------------------
