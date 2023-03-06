%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSE574+1 [QMLTP]
%          : GSE574_3.046_s4_decreasing_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    5 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   55 (   0 equ)
%            Maximal formula atoms :    2 (  18 avg)
%            Number of connectives :   30 (   0   ~;   0   |;   4   &)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (  22 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   22 (  22 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    4 (   2   >;   2   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    9 (;   7   !;   2   ?;   9   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_decreasing_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $decreasing,
        $modalities == $modal_system_S4 ] ).

tff(intersect_decl,type,
    intersect: ( $i * $i ) > $o ).

tff(member_decl,type,
    member: ( $i * $i ) > $o ).

tff(intersect_defn,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (intersect(B,C)) )
                  => ? [D: $i] :
                       ( ( {$box} @ (member(D,B)) )
                       & ( {$box} @ (member(D,C)) ) ) )) )
              & ( {$box}
                @ (( ? [D: $i] :
                       ( ( {$box} @ (member(D,B)) )
                       & ( {$box} @ (member(D,C)) ) )
                  => ( {$box} @ (intersect(B,C)) ) )) ) )) )) ) ).

tff(symmetry_of_intersect,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] :
              ( {$box}
              @ (( ( {$box} @ (intersect(B,C)) )
                => ( {$box} @ (intersect(C,B)) ) )) )) )) ) ).

tff(prove_th13,conjecture,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] :
              ( {$box}
              @ (! [D: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (member(B,C)) )
                        & ( {$box} @ (member(B,D)) ) )
                     => ( {$box} @ (intersect(C,D)) ) )) )) )) )) ) ).

%------------------------------------------------------------------------------
