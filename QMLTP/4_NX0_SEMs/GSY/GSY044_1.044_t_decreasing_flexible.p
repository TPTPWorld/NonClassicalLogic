%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY044+1 [QMLTP]
%          : GSY044_1.044_t_decreasing_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
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
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(t_decreasing_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $decreasing,
        $modalities == $modal_system_M ] ).

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
