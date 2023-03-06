%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSE573+1 [QMLTP]
%          : GSE573_3.031_k_varying_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    7 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   81 (   0 equ)
%            Maximal formula atoms :    2 (  20 avg)
%            Number of connectives :   47 (   3   ~;   0   |;   5   &)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%                                         (  33 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   33 (  33 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    6 (   3   >;   3   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   11 (;   9   !;   2   ?;  11   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_varying_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $varying,
        $modalities == $modal_system_K ] ).

tff(intersect_decl,type,
    intersect: ( $i * $i ) > $o ).

tff(disjoint_decl,type,
    disjoint: ( $i * $i ) > $o ).

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

tff(disjoint_defn,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (disjoint(B,C)) )
                  => ( {$box}
                     @ (~ ( {$box} @ (intersect(B,C)) )) ) )) )
              & ( {$box}
                @ (( ( {$box}
                     @ (~ ( {$box} @ (intersect(B,C)) )) )
                  => ( {$box} @ (disjoint(B,C)) ) )) ) )) )) ) ).

tff(symmetry_of_intersect,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] :
              ( {$box}
              @ (( ( {$box} @ (intersect(B,C)) )
                => ( {$box} @ (intersect(C,B)) ) )) )) )) ) ).

tff(prove_th12,conjecture,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] :
              ( {$box}
              @ (! [D: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (member(B,C)) )
                        & ( {$box} @ (disjoint(C,D)) ) )
                     => ( {$box}
                        @ (~ ( {$box} @ (member(B,D)) )) ) )) )) )) )) ) ).

%------------------------------------------------------------------------------
