%------------------------------------------------------------------------------
% File     : GSY044_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Pelletier Problem 10
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP SYN044+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY044+1 [QMLTP]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    7 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   46 (   0 equ)
%            Maximal formula atoms :    4 (  11 avg)
%            Number of connectives :   25 (   0   ~;   1   |;   2   &)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%                                         (  17 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   2 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :   17 (  17 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   3 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : NX0_THM_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_constant_rigid,logic,
    $modal == 
      [ $domains == $constant,
        $designation == $rigid,
        $terms == $local,
        $modalities == $modal_system_K ] ).

tff(p_decl,type,
    p: $o ).

tff(q_decl,type,
    q: $o ).

tff(r_decl,type,
    r: $o ).

tff(pel10_1,axiom-local,
    ( {$box}
    @ (( ( {$box} @ (q) )
      => ( {$box} @ (r) ) )) ) ).

tff(pel10_2,axiom-local,
    ( {$box}
    @ (( ( {$box} @ (r) )
      => ( ( {$box} @ (p) )
         & ( {$box} @ (q) ) ) )) ) ).

tff(pel10_3,axiom-local,
    ( {$box}
    @ (( ( {$box} @ (p) )
      => ( ( {$box} @ (q) )
         | ( {$box} @ (r) ) ) )) ) ).

tff(pel10,conjecture,
    ( ( {$box}
      @ (( ( {$box} @ (p) )
        => ( {$box} @ (q) ) )) )
    & ( {$box}
      @ (( ( {$box} @ (q) )
        => ( {$box} @ (p) ) )) ) ) ).

%------------------------------------------------------------------------------
