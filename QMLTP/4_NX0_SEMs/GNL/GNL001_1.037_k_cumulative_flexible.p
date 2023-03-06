%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : Natural Language Processing
% Problem  : "The old dirty white Chevy" problem
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP NLP001+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GNL001+1 [QMLTP]
%          : GNL001_1.037_k_cumulative_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   15 (   0 unt;  14 typ;   0 def)
%            Number of atoms       :  172 (   0 equ)
%            Maximal formula atoms :    4 ( 172 avg)
%            Number of connectives :  113 (   0   ~;   0   |;  53   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (  58 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   58 (  58 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   17 (  14   >;   3   *;   0   +;   0  <<)
%            Number of predicates  :   15 (  14 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   16 (;   0   !;  16   ?;  16   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_cumulative_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $cumulative,
        $modalities == $modal_system_K ] ).

tff(chevy_decl,type,
    chevy: $i > $o ).

tff(dirty_decl,type,
    dirty: $i > $o ).

tff(barrel_decl,type,
    barrel: ( $i * $i ) > $o ).

tff(hollywood_decl,type,
    hollywood: $i > $o ).

tff(city_decl,type,
    city: $i > $o ).

tff(in_decl,type,
    in: ( $i * $i ) > $o ).

tff(old_decl,type,
    old: $i > $o ).

tff(down_decl,type,
    down: ( $i * $i ) > $o ).

tff(way_decl,type,
    way: $i > $o ).

tff(white_decl,type,
    white: $i > $o ).

tff(car_decl,type,
    car: $i > $o ).

tff(street_decl,type,
    street: $i > $o ).

tff(event_decl,type,
    event: $i > $o ).

tff(lonely_decl,type,
    lonely: $i > $o ).

tff(co1,conjecture,
    ( ( {$box}
      @ (( ? [U: $i,V: $i,W: $i,X: $i] :
             ( ( {$box} @ (hollywood(U)) )
             & ( {$box} @ (city(U)) )
             & ( {$box} @ (event(V)) )
             & ( {$box} @ (street(W)) )
             & ( {$box} @ (way(W)) )
             & ( {$box} @ (lonely(W)) )
             & ( {$box} @ (chevy(X)) )
             & ( {$box} @ (car(X)) )
             & ( {$box} @ (white(X)) )
             & ( {$box} @ (dirty(X)) )
             & ( {$box} @ (old(X)) )
             & ( {$box} @ (barrel(V,X)) )
             & ( {$box} @ (down(V,W)) )
             & ( {$box} @ (in(V,U)) ) )
        => ? [Y: $i,Z: $i,X1: $i,X2: $i] :
             ( ( {$box} @ (hollywood(Y)) )
             & ( {$box} @ (city(Y)) )
             & ( {$box} @ (event(Z)) )
             & ( {$box} @ (chevy(X1)) )
             & ( {$box} @ (car(X1)) )
             & ( {$box} @ (white(X1)) )
             & ( {$box} @ (dirty(X1)) )
             & ( {$box} @ (old(X1)) )
             & ( {$box} @ (street(X2)) )
             & ( {$box} @ (way(X2)) )
             & ( {$box} @ (lonely(X2)) )
             & ( {$box} @ (barrel(Z,X1)) )
             & ( {$box} @ (down(Z,X2)) )
             & ( {$box} @ (in(Z,Y)) ) ) )) )
    & ( {$box}
      @ (( ? [X3: $i,X4: $i,X5: $i,X6: $i] :
             ( ( {$box} @ (hollywood(X3)) )
             & ( {$box} @ (city(X3)) )
             & ( {$box} @ (event(X4)) )
             & ( {$box} @ (chevy(X5)) )
             & ( {$box} @ (car(X5)) )
             & ( {$box} @ (white(X5)) )
             & ( {$box} @ (dirty(X5)) )
             & ( {$box} @ (old(X5)) )
             & ( {$box} @ (street(X6)) )
             & ( {$box} @ (way(X6)) )
             & ( {$box} @ (lonely(X6)) )
             & ( {$box} @ (barrel(X4,X5)) )
             & ( {$box} @ (down(X4,X6)) )
             & ( {$box} @ (in(X4,X3)) ) )
        => ? [X7: $i,X8: $i,X9: $i,X10: $i] :
             ( ( {$box} @ (hollywood(X7)) )
             & ( {$box} @ (city(X7)) )
             & ( {$box} @ (event(X8)) )
             & ( {$box} @ (street(X9)) )
             & ( {$box} @ (way(X9)) )
             & ( {$box} @ (lonely(X9)) )
             & ( {$box} @ (chevy(X10)) )
             & ( {$box} @ (car(X10)) )
             & ( {$box} @ (white(X10)) )
             & ( {$box} @ (dirty(X10)) )
             & ( {$box} @ (old(X10)) )
             & ( {$box} @ (barrel(X8,X10)) )
             & ( {$box} @ (down(X8,X9)) )
             & ( {$box} @ (in(X8,X7)) ) ) )) ) ) ).

%------------------------------------------------------------------------------
