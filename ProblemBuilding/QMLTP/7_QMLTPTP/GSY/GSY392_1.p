%------------------------------------------------------------------------------
% File     : GSY392_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Pelletier 14
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP SYN392+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY392+1 [QMLTP]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   68 (   0 equ)
%            Maximal formula atoms :    4 (  68 avg)
%            Number of connectives :   45 (   4   ~;   4   |;   5   &)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%                                         (  26 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :   26 (  26 fml;   0 var)
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
      [ $domains == $constant,
        $designation == $rigid,
        $terms == $local,
        $modalities == $modal_system_K ] ).

tff(p1_decl,type,
    p1: $o ).

tff(p2_decl,type,
    p2: $o ).

tff(pel14,conjecture,
    ( ( {$box}
      @ (( ( ( {$box}
             @ (( ( {$box} @ (p1) )
               => ( {$box} @ (p2) ) )) )
           & ( {$box}
             @ (( ( {$box} @ (p2) )
               => ( {$box} @ (p1) ) )) ) )
        => ( ( ( {$box} @ (p2) )
             | ( {$box}
               @ (~ ( {$box} @ (p1) )) ) )
           & ( ( {$box}
               @ (~ ( {$box} @ (p2) )) )
             | ( {$box} @ (p1) ) ) ) )) )
    & ( {$box}
      @ (( ( ( ( {$box} @ (p2) )
             | ( {$box}
               @ (~ ( {$box} @ (p1) )) ) )
           & ( ( {$box}
               @ (~ ( {$box} @ (p2) )) )
             | ( {$box} @ (p1) ) ) )
        => ( ( {$box}
             @ (( ( {$box} @ (p1) )
               => ( {$box} @ (p2) ) )) )
           & ( {$box}
             @ (( ( {$box} @ (p2) )
               => ( {$box} @ (p1) ) )) ) ) )) ) ) ).

%------------------------------------------------------------------------------
