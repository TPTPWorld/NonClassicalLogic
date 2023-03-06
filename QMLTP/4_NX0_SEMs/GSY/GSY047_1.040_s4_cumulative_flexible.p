%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY047+1 [QMLTP]
%          : GSY047_1.040_s4_cumulative_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    5 (   0 unt;   4 typ;   0 def)
%            Number of atoms       :   84 (   0 equ)
%            Maximal formula atoms :    4 (  84 avg)
%            Number of connectives :   57 (   6   ~;   8   |;   5   &)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%                                         (  32 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :   32 (  32 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    5 (   4 usr;   4 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_cumulative_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $cumulative,
        $modalities == $modal_system_S4 ] ).

tff(p_decl,type,
    p: $o ).

tff(q_decl,type,
    q: $o ).

tff(r_decl,type,
    r: $o ).

tff(s_decl,type,
    s: $o ).

tff(pel17,conjecture,
    ( ( {$box}
      @ (( ( {$box}
           @ (( ( ( {$box} @ (p) )
                & ( {$box}
                  @ (( ( {$box} @ (q) )
                    => ( {$box} @ (r) ) )) ) )
             => ( {$box} @ (s) ) )) )
        => ( ( ( {$box}
               @ (~ ( {$box} @ (p) )) )
             | ( {$box} @ (q) )
             | ( {$box} @ (s) ) )
           & ( ( {$box}
               @ (~ ( {$box} @ (p) )) )
             | ( {$box}
               @ (~ ( {$box} @ (r) )) )
             | ( {$box} @ (s) ) ) ) )) )
    & ( {$box}
      @ (( ( ( ( {$box}
               @ (~ ( {$box} @ (p) )) )
             | ( {$box} @ (q) )
             | ( {$box} @ (s) ) )
           & ( ( {$box}
               @ (~ ( {$box} @ (p) )) )
             | ( {$box}
               @ (~ ( {$box} @ (r) )) )
             | ( {$box} @ (s) ) ) )
        => ( {$box}
           @ (( ( ( {$box} @ (p) )
                & ( {$box}
                  @ (( ( {$box} @ (q) )
                    => ( {$box} @ (r) ) )) ) )
             => ( {$box} @ (s) ) )) ) )) ) ) ).

%------------------------------------------------------------------------------
