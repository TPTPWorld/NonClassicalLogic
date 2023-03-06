%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY045+1 [QMLTP]
%          : GSY045_1.044_t_decreasing_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    4 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   46 (   0 equ)
%            Maximal formula atoms :    4 (  46 avg)
%            Number of connectives :   29 (   0   ~;   6   |;   5   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (  16 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :   16 (  16 fml;   0 var)
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

tff(pel13,conjecture,
    ( ( {$box}
      @ (( ( ( {$box} @ (p) )
           | ( ( {$box} @ (q) )
             & ( {$box} @ (r) ) ) )
        => ( ( ( {$box} @ (p) )
             | ( {$box} @ (q) ) )
           & ( ( {$box} @ (p) )
             | ( {$box} @ (r) ) ) ) )) )
    & ( {$box}
      @ (( ( ( ( {$box} @ (p) )
             | ( {$box} @ (q) ) )
           & ( ( {$box} @ (p) )
             | ( {$box} @ (r) ) ) )
        => ( ( {$box} @ (p) )
           | ( ( {$box} @ (q) )
             & ( {$box} @ (r) ) ) ) )) ) ) ).

%------------------------------------------------------------------------------
