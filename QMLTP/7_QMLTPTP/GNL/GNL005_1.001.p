%------------------------------------------------------------------------------
% File     : GNL005_1.001 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Natural Language Processing
% Problem  : "The old dirty white Chevy" problem 5
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP NLP005+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GNL005+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   48 (   0 unt;  21 typ;   0 def)
%            Number of atoms       :  757 (   0 equ)
%            Maximal formula atoms :    4 (  28 avg)
%            Number of connectives :  452 (   4   ~;   0   |; 139   &)
%                                         (   0 <=>;  27  =>;   0  <=;   0 <~>)
%                                         ( 282 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :  282 ( 282 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   25 (  21   >;   4   *;   0   +;   0  <<)
%            Number of predicates  :   22 (  21 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   96 (;  58   !;  38   ?;  96   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(modal_system,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
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

tff(young_decl,type,
    young: $i > $o ).

tff(old_decl,type,
    old: $i > $o ).

tff(down_decl,type,
    down: ( $i * $i ) > $o ).

tff(way_decl,type,
    way: $i > $o ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(seat_decl,type,
    seat: $i > $o ).

tff(white_decl,type,
    white: $i > $o ).

tff(car_decl,type,
    car: $i > $o ).

tff(furniture_decl,type,
    furniture: $i > $o ).

tff(street_decl,type,
    street: $i > $o ).

tff(fellow_decl,type,
    fellow: $i > $o ).

tff(front_decl,type,
    front: $i > $o ).

tff(man_decl,type,
    man: $i > $o ).

tff(event_decl,type,
    event: $i > $o ).

tff(lonely_decl,type,
    lonely: $i > $o ).

tff(reflexivity,axiom-local,
    ( {$box}
    @ (! [X: $i] : ( {$box} @ (qmltpeq(X,X)) )) ) ).

tff(symmetry,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Y: $i] :
              ( {$box}
              @ (( ( {$box} @ (qmltpeq(X,Y)) )
                => ( {$box} @ (qmltpeq(Y,X)) ) )) )) )) ) ).

tff(transitivity,axiom-local,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (! [Y: $i] :
              ( {$box}
              @ (! [Z: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(X,Y)) )
                        & ( {$box} @ (qmltpeq(Y,Z)) ) )
                     => ( {$box} @ (qmltpeq(X,Z)) ) )) )) )) )) ) ).

tff(barrel_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (barrel(A,C)) ) )
                     => ( {$box} @ (barrel(B,C)) ) )) )) )) )) ) ).

tff(barrel_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (barrel(C,A)) ) )
                     => ( {$box} @ (barrel(C,B)) ) )) )) )) )) ) ).

tff(car_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (car(A)) ) )
                => ( {$box} @ (car(B)) ) )) )) )) ) ).

tff(chevy_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (chevy(A)) ) )
                => ( {$box} @ (chevy(B)) ) )) )) )) ) ).

tff(city_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (city(A)) ) )
                => ( {$box} @ (city(B)) ) )) )) )) ) ).

tff(dirty_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (dirty(A)) ) )
                => ( {$box} @ (dirty(B)) ) )) )) )) ) ).

tff(down_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (down(A,C)) ) )
                     => ( {$box} @ (down(B,C)) ) )) )) )) )) ) ).

tff(down_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (down(C,A)) ) )
                     => ( {$box} @ (down(C,B)) ) )) )) )) )) ) ).

tff(event_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (event(A)) ) )
                => ( {$box} @ (event(B)) ) )) )) )) ) ).

tff(fellow_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (fellow(A)) ) )
                => ( {$box} @ (fellow(B)) ) )) )) )) ) ).

tff(front_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (front(A)) ) )
                => ( {$box} @ (front(B)) ) )) )) )) ) ).

tff(furniture_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (furniture(A)) ) )
                => ( {$box} @ (furniture(B)) ) )) )) )) ) ).

tff(hollywood_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (hollywood(A)) ) )
                => ( {$box} @ (hollywood(B)) ) )) )) )) ) ).

tff(in_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (in(A,C)) ) )
                     => ( {$box} @ (in(B,C)) ) )) )) )) )) ) ).

tff(in_substitution_2,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (! [C: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                        & ( {$box} @ (in(C,A)) ) )
                     => ( {$box} @ (in(C,B)) ) )) )) )) )) ) ).

tff(lonely_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (lonely(A)) ) )
                => ( {$box} @ (lonely(B)) ) )) )) )) ) ).

tff(man_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (man(A)) ) )
                => ( {$box} @ (man(B)) ) )) )) )) ) ).

tff(old_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (old(A)) ) )
                => ( {$box} @ (old(B)) ) )) )) )) ) ).

tff(seat_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (seat(A)) ) )
                => ( {$box} @ (seat(B)) ) )) )) )) ) ).

tff(street_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (street(A)) ) )
                => ( {$box} @ (street(B)) ) )) )) )) ) ).

tff(way_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (way(A)) ) )
                => ( {$box} @ (way(B)) ) )) )) )) ) ).

tff(white_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (white(A)) ) )
                => ( {$box} @ (white(B)) ) )) )) )) ) ).

tff(young_substitution_1,axiom-local,
    ( {$box}
    @ (! [A: $i] :
         ( {$box}
         @ (! [B: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (qmltpeq(A,B)) )
                   & ( {$box} @ (young(A)) ) )
                => ( {$box} @ (young(B)) ) )) )) )) ) ).

tff(co1,conjecture,
    ( ( {$box}
      @ (( ? [U: $i,V: $i,W: $i,X: $i,Y: $i,Z: $i,X1: $i,X3: $i,X4: $i] :
             ( ( {$box} @ (seat(U)) )
             & ( {$box} @ (furniture(U)) )
             & ( {$box} @ (front(U)) )
             & ( {$box} @ (hollywood(V)) )
             & ( {$box} @ (city(V)) )
             & ( {$box} @ (event(W)) )
             & ( {$box} @ (chevy(X)) )
             & ( {$box} @ (car(X)) )
             & ( {$box} @ (white(X)) )
             & ( {$box} @ (dirty(X)) )
             & ( {$box} @ (old(X)) )
             & ( {$box} @ (street(Y)) )
             & ( {$box} @ (way(Y)) )
             & ( {$box} @ (lonely(Y)) )
             & ( {$box} @ (barrel(W,X)) )
             & ( {$box} @ (down(W,Y)) )
             & ( {$box} @ (in(W,V)) )
             & ( {$box}
               @ (~ ( {$box} @ (qmltpeq(Z,X1)) )) )
             & ( {$box} @ (fellow(Z)) )
             & ( {$box} @ (man(Z)) )
             & ( {$box} @ (young(Z)) )
             & ( {$box} @ (fellow(X1)) )
             & ( {$box} @ (man(X1)) )
             & ( {$box} @ (young(X1)) )
             & ( {$box} @ (qmltpeq(Z,X3)) )
             & ( {$box} @ (in(X3,U)) )
             & ( {$box} @ (qmltpeq(X1,X4)) )
             & ( {$box} @ (in(X4,U)) ) )
        => ? [X5: $i,X6: $i,X7: $i,X8: $i,X9: $i,X10: $i,X11: $i,X12: $i,X14: $i,X15: $i] :
             ( ( {$box} @ (seat(X5)) )
             & ( {$box} @ (furniture(X5)) )
             & ( {$box} @ (front(X5)) )
             & ( {$box} @ (seat(X6)) )
             & ( {$box} @ (furniture(X6)) )
             & ( {$box} @ (front(X6)) )
             & ( {$box} @ (hollywood(X7)) )
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
             & ( {$box} @ (in(X8,X7)) )
             & ( {$box}
               @ (~ ( {$box} @ (qmltpeq(X11,X12)) )) )
             & ( {$box} @ (fellow(X11)) )
             & ( {$box} @ (man(X11)) )
             & ( {$box} @ (young(X11)) )
             & ( {$box} @ (fellow(X12)) )
             & ( {$box} @ (man(X12)) )
             & ( {$box} @ (young(X12)) )
             & ( {$box} @ (qmltpeq(X11,X14)) )
             & ( {$box} @ (in(X14,X5)) )
             & ( {$box} @ (qmltpeq(X12,X15)) )
             & ( {$box} @ (in(X15,X6)) ) ) )) )
    & ( {$box}
      @ (( ? [X16: $i,X17: $i,X18: $i,X19: $i,X20: $i,X21: $i,X22: $i,X23: $i,X25: $i,X26: $i] :
             ( ( {$box} @ (seat(X16)) )
             & ( {$box} @ (furniture(X16)) )
             & ( {$box} @ (front(X16)) )
             & ( {$box} @ (seat(X17)) )
             & ( {$box} @ (furniture(X17)) )
             & ( {$box} @ (front(X17)) )
             & ( {$box} @ (hollywood(X18)) )
             & ( {$box} @ (city(X18)) )
             & ( {$box} @ (event(X19)) )
             & ( {$box} @ (street(X20)) )
             & ( {$box} @ (way(X20)) )
             & ( {$box} @ (lonely(X20)) )
             & ( {$box} @ (chevy(X21)) )
             & ( {$box} @ (car(X21)) )
             & ( {$box} @ (white(X21)) )
             & ( {$box} @ (dirty(X21)) )
             & ( {$box} @ (old(X21)) )
             & ( {$box} @ (barrel(X19,X21)) )
             & ( {$box} @ (down(X19,X20)) )
             & ( {$box} @ (in(X19,X18)) )
             & ( {$box}
               @ (~ ( {$box} @ (qmltpeq(X22,X23)) )) )
             & ( {$box} @ (fellow(X22)) )
             & ( {$box} @ (man(X22)) )
             & ( {$box} @ (young(X22)) )
             & ( {$box} @ (fellow(X23)) )
             & ( {$box} @ (man(X23)) )
             & ( {$box} @ (young(X23)) )
             & ( {$box} @ (qmltpeq(X22,X25)) )
             & ( {$box} @ (in(X25,X16)) )
             & ( {$box} @ (qmltpeq(X23,X26)) )
             & ( {$box} @ (in(X26,X17)) ) )
        => ? [X27: $i,X28: $i,X29: $i,X30: $i,X31: $i,X32: $i,X33: $i,X35: $i,X36: $i] :
             ( ( {$box} @ (seat(X27)) )
             & ( {$box} @ (furniture(X27)) )
             & ( {$box} @ (front(X27)) )
             & ( {$box} @ (hollywood(X28)) )
             & ( {$box} @ (city(X28)) )
             & ( {$box} @ (event(X29)) )
             & ( {$box} @ (chevy(X30)) )
             & ( {$box} @ (car(X30)) )
             & ( {$box} @ (white(X30)) )
             & ( {$box} @ (dirty(X30)) )
             & ( {$box} @ (old(X30)) )
             & ( {$box} @ (street(X31)) )
             & ( {$box} @ (way(X31)) )
             & ( {$box} @ (lonely(X31)) )
             & ( {$box} @ (barrel(X29,X30)) )
             & ( {$box} @ (down(X29,X31)) )
             & ( {$box} @ (in(X29,X28)) )
             & ( {$box}
               @ (~ ( {$box} @ (qmltpeq(X32,X33)) )) )
             & ( {$box} @ (fellow(X32)) )
             & ( {$box} @ (man(X32)) )
             & ( {$box} @ (young(X32)) )
             & ( {$box} @ (fellow(X33)) )
             & ( {$box} @ (man(X33)) )
             & ( {$box} @ (young(X33)) )
             & ( {$box} @ (qmltpeq(X32,X35)) )
             & ( {$box} @ (in(X35,X27)) )
             & ( {$box} @ (qmltpeq(X33,X36)) )
             & ( {$box} @ (in(X36,X27)) ) ) )) ) ) ).

%------------------------------------------------------------------------------
