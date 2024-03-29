%------------------------------------------------------------------------------
% File     : GNL007_1.001 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Natural Language Processing
% Problem  : "The old dirty white Chevy" problem 7
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP NLP007+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GNL007+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   48 (   0 unt;  21 typ;   0 def)
%            Number of atoms       :  775 (   0 equ)
%            Maximal formula atoms :    4 (  28 avg)
%            Number of connectives :  464 (   4   ~;   0   |; 145   &)
%                                         (   0 <=>;  27  =>;   0  <=;   0 <~>)
%                                         ( 288 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :  288 ( 288 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   25 (  21   >;   4   *;   0   +;   0  <<)
%            Number of predicates  :   22 (  21 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   98 (;  58   !;  40   ?;  98   :)
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
      @ (( ? [U: $i,V: $i,W: $i,X: $i,Y: $i,Z: $i,X1: $i,X2: $i,X3: $i,X4: $i] :
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
             & ( {$box} @ (seat(X2)) )
             & ( {$box} @ (furniture(X2)) )
             & ( {$box} @ (front(X2)) )
             & ( {$box}
               @ (~ ( {$box} @ (qmltpeq(Z,X1)) )) )
             & ( {$box} @ (fellow(Z)) )
             & ( {$box} @ (man(Z)) )
             & ( {$box} @ (young(Z)) )
             & ( {$box} @ (fellow(X1)) )
             & ( {$box} @ (man(X1)) )
             & ( {$box} @ (young(X1)) )
             & ( {$box} @ (qmltpeq(Z,X3)) )
             & ( {$box} @ (in(X3,X2)) )
             & ( {$box} @ (qmltpeq(X1,X4)) )
             & ( {$box} @ (in(X4,U)) ) )
        => ? [X5: $i,X6: $i,X7: $i,X8: $i,X9: $i,X10: $i,X11: $i,X12: $i,X13: $i,X14: $i] :
             ( ( {$box} @ (seat(X5)) )
             & ( {$box} @ (furniture(X5)) )
             & ( {$box} @ (front(X5)) )
             & ( {$box} @ (hollywood(X6)) )
             & ( {$box} @ (city(X6)) )
             & ( {$box} @ (event(X7)) )
             & ( {$box} @ (chevy(X8)) )
             & ( {$box} @ (car(X8)) )
             & ( {$box} @ (white(X8)) )
             & ( {$box} @ (dirty(X8)) )
             & ( {$box} @ (old(X8)) )
             & ( {$box} @ (street(X9)) )
             & ( {$box} @ (way(X9)) )
             & ( {$box} @ (lonely(X9)) )
             & ( {$box} @ (barrel(X7,X8)) )
             & ( {$box} @ (down(X7,X9)) )
             & ( {$box} @ (in(X7,X6)) )
             & ( {$box} @ (seat(X12)) )
             & ( {$box} @ (furniture(X12)) )
             & ( {$box} @ (front(X12)) )
             & ( {$box}
               @ (~ ( {$box} @ (qmltpeq(X10,X11)) )) )
             & ( {$box} @ (fellow(X10)) )
             & ( {$box} @ (man(X10)) )
             & ( {$box} @ (young(X10)) )
             & ( {$box} @ (fellow(X11)) )
             & ( {$box} @ (man(X11)) )
             & ( {$box} @ (young(X11)) )
             & ( {$box} @ (qmltpeq(X10,X13)) )
             & ( {$box} @ (in(X13,X5)) )
             & ( {$box} @ (qmltpeq(X11,X14)) )
             & ( {$box} @ (in(X14,X12)) ) ) )) )
    & ( {$box}
      @ (( ? [X15: $i,X16: $i,X17: $i,X18: $i,X19: $i,X20: $i,X21: $i,X22: $i,X23: $i,X24: $i] :
             ( ( {$box} @ (seat(X15)) )
             & ( {$box} @ (furniture(X15)) )
             & ( {$box} @ (front(X15)) )
             & ( {$box} @ (hollywood(X16)) )
             & ( {$box} @ (city(X16)) )
             & ( {$box} @ (event(X17)) )
             & ( {$box} @ (chevy(X18)) )
             & ( {$box} @ (car(X18)) )
             & ( {$box} @ (white(X18)) )
             & ( {$box} @ (dirty(X18)) )
             & ( {$box} @ (old(X18)) )
             & ( {$box} @ (street(X19)) )
             & ( {$box} @ (way(X19)) )
             & ( {$box} @ (lonely(X19)) )
             & ( {$box} @ (barrel(X17,X18)) )
             & ( {$box} @ (down(X17,X19)) )
             & ( {$box} @ (in(X17,X16)) )
             & ( {$box} @ (seat(X22)) )
             & ( {$box} @ (furniture(X22)) )
             & ( {$box} @ (front(X22)) )
             & ( {$box}
               @ (~ ( {$box} @ (qmltpeq(X20,X21)) )) )
             & ( {$box} @ (fellow(X20)) )
             & ( {$box} @ (man(X20)) )
             & ( {$box} @ (young(X20)) )
             & ( {$box} @ (fellow(X21)) )
             & ( {$box} @ (man(X21)) )
             & ( {$box} @ (young(X21)) )
             & ( {$box} @ (qmltpeq(X20,X23)) )
             & ( {$box} @ (in(X23,X15)) )
             & ( {$box} @ (qmltpeq(X21,X24)) )
             & ( {$box} @ (in(X24,X22)) ) )
        => ? [X25: $i,X26: $i,X27: $i,X28: $i,X29: $i,X30: $i,X31: $i,X32: $i,X33: $i,X34: $i] :
             ( ( {$box} @ (seat(X25)) )
             & ( {$box} @ (furniture(X25)) )
             & ( {$box} @ (front(X25)) )
             & ( {$box} @ (hollywood(X26)) )
             & ( {$box} @ (city(X26)) )
             & ( {$box} @ (event(X27)) )
             & ( {$box} @ (chevy(X28)) )
             & ( {$box} @ (car(X28)) )
             & ( {$box} @ (white(X28)) )
             & ( {$box} @ (dirty(X28)) )
             & ( {$box} @ (old(X28)) )
             & ( {$box} @ (street(X29)) )
             & ( {$box} @ (way(X29)) )
             & ( {$box} @ (lonely(X29)) )
             & ( {$box} @ (barrel(X27,X28)) )
             & ( {$box} @ (down(X27,X29)) )
             & ( {$box} @ (in(X27,X26)) )
             & ( {$box} @ (seat(X32)) )
             & ( {$box} @ (furniture(X32)) )
             & ( {$box} @ (front(X32)) )
             & ( {$box}
               @ (~ ( {$box} @ (qmltpeq(X30,X31)) )) )
             & ( {$box} @ (fellow(X30)) )
             & ( {$box} @ (man(X30)) )
             & ( {$box} @ (young(X30)) )
             & ( {$box} @ (fellow(X31)) )
             & ( {$box} @ (man(X31)) )
             & ( {$box} @ (young(X31)) )
             & ( {$box} @ (qmltpeq(X30,X33)) )
             & ( {$box} @ (in(X33,X32)) )
             & ( {$box} @ (qmltpeq(X31,X34)) )
             & ( {$box} @ (in(X34,X25)) ) ) )) ) ) ).

%------------------------------------------------------------------------------
