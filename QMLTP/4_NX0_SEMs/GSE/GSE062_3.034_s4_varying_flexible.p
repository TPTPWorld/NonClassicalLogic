%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSE062+1 [QMLTP]
%          : GSE062_3.034_s4_varying_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    9 (   0 unt;   4 typ;   0 def)
%            Number of atoms       :   77 (   0 equ)
%            Maximal formula atoms :    2 (  15 avg)
%            Number of connectives :   43 (   3   ~;   0   |;   2   &)
%                                         (   0 <=>;   6  =>;   0  <=;   0 <~>)
%                                         (  32 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   32 (  32 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    5 (   3   >;   2   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :   10 (;  10   !;   0   ?;  10   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_varying_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $varying,
        $modalities == $modal_system_S4 ] ).

tff(empty_set_decl,type,
    empty_set: $i ).

tff(member_decl,type,
    member: ( $i * $i ) > $o ).

tff(subset_decl,type,
    subset: ( $i * $i ) > $o ).

tff(empty_decl,type,
    empty: $i > $o ).

tff(empty_set_defn,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (~ ( {$box} @ (member(B,empty_set)) )) )) ) ).

tff(subset_defn,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( {$box}
         @ (! [C: $i] :
              ( ( {$box}
                @ (( ( {$box} @ (subset(B,C)) )
                  => ( {$box}
                     @ (! [D: $i] :
                          ( {$box}
                          @ (( ( {$box} @ (member(D,B)) )
                            => ( {$box} @ (member(D,C)) ) )) )) ) )) )
              & ( {$box}
                @ (( ( {$box}
                     @ (! [D: $i] :
                          ( {$box}
                          @ (( ( {$box} @ (member(D,B)) )
                            => ( {$box} @ (member(D,C)) ) )) )) )
                  => ( {$box} @ (subset(B,C)) ) )) ) )) )) ) ).

tff(reflexivity_of_subset,axiom-local,
    ( {$box}
    @ (! [B: $i] : ( {$box} @ (subset(B,B)) )) ) ).

tff(empty_defn,axiom-local,
    ( {$box}
    @ (! [B: $i] :
         ( ( {$box}
           @ (( ( {$box} @ (empty(B)) )
             => ( {$box}
                @ (! [C: $i] :
                     ( {$box}
                     @ (~ ( {$box} @ (member(C,B)) )) )) ) )) )
         & ( {$box}
           @ (( ( {$box}
                @ (! [C: $i] :
                     ( {$box}
                     @ (~ ( {$box} @ (member(C,B)) )) )) )
             => ( {$box} @ (empty(B)) ) )) ) )) ) ).

tff(prove_empty_set_subset,conjecture,
    ( {$box}
    @ (! [B: $i] : ( {$box} @ (subset(empty_set,B)) )) ) ).

%------------------------------------------------------------------------------
