%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : NLP004+1 [QMLTP]
%          : NLP004_1.034_s4_varying_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   48 (   1 unt;  21 typ;   0 def)
%            Number of atoms       :  199 (   0 equ)
%            Maximal formula atoms :  124 (   7 avg)
%            Number of connectives :  176 (   4   ~;   0   |; 145   &)
%                                         (   0 <=>;  27  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   43 (   7 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   25 (  21   >;   4   *;   0   +;   0  <<)
%            Number of predicates  :   21 (  21 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   98 (;  58   !;  40   ?;  98   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_varying_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $varying,
        $modalities == $modal_system_S4 ] ).

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
    ! [X: $i] : qmltpeq(X,X) ).

tff(symmetry,axiom-local,
    ! [X: $i,Y: $i] :
      ( qmltpeq(X,Y)
     => qmltpeq(Y,X) ) ).

tff(transitivity,axiom-local,
    ! [X: $i,Y: $i,Z: $i] :
      ( ( qmltpeq(X,Y)
        & qmltpeq(Y,Z) )
     => qmltpeq(X,Z) ) ).

tff(barrel_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & barrel(A,C) )
     => barrel(B,C) ) ).

tff(barrel_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & barrel(C,A) )
     => barrel(C,B) ) ).

tff(car_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & car(A) )
     => car(B) ) ).

tff(chevy_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & chevy(A) )
     => chevy(B) ) ).

tff(city_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & city(A) )
     => city(B) ) ).

tff(dirty_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & dirty(A) )
     => dirty(B) ) ).

tff(down_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & down(A,C) )
     => down(B,C) ) ).

tff(down_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & down(C,A) )
     => down(C,B) ) ).

tff(event_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & event(A) )
     => event(B) ) ).

tff(fellow_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & fellow(A) )
     => fellow(B) ) ).

tff(front_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & front(A) )
     => front(B) ) ).

tff(furniture_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & furniture(A) )
     => furniture(B) ) ).

tff(hollywood_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & hollywood(A) )
     => hollywood(B) ) ).

tff(in_substitution_1,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & in(A,C) )
     => in(B,C) ) ).

tff(in_substitution_2,axiom-local,
    ! [A: $i,B: $i,C: $i] :
      ( ( qmltpeq(A,B)
        & in(C,A) )
     => in(C,B) ) ).

tff(lonely_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & lonely(A) )
     => lonely(B) ) ).

tff(man_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & man(A) )
     => man(B) ) ).

tff(old_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & old(A) )
     => old(B) ) ).

tff(seat_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & seat(A) )
     => seat(B) ) ).

tff(street_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & street(A) )
     => street(B) ) ).

tff(way_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & way(A) )
     => way(B) ) ).

tff(white_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & white(A) )
     => white(B) ) ).

tff(young_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & young(A) )
     => young(B) ) ).

tff(co1,conjecture,
    ( ( ? [U: $i,V: $i,W: $i,X: $i,Y: $i,Z: $i,X1: $i,X2: $i,X4: $i,X5: $i] :
          ( seat(U)
          & furniture(U)
          & front(U)
          & seat(V)
          & furniture(V)
          & front(V)
          & hollywood(W)
          & city(W)
          & event(X)
          & street(Y)
          & way(Y)
          & lonely(Y)
          & chevy(Z)
          & car(Z)
          & white(Z)
          & dirty(Z)
          & old(Z)
          & barrel(X,Z)
          & down(X,Y)
          & in(X,W)
          & ~ qmltpeq(X1,X2)
          & fellow(X1)
          & man(X1)
          & young(X1)
          & fellow(X2)
          & man(X2)
          & young(X2)
          & qmltpeq(X1,X4)
          & in(X4,U)
          & qmltpeq(X2,X5)
          & in(X5,V) )
     => ? [X6: $i,X7: $i,X8: $i,X9: $i,X10: $i,X11: $i,X12: $i,X13: $i,X15: $i,X16: $i] :
          ( seat(X6)
          & furniture(X6)
          & front(X6)
          & seat(X7)
          & furniture(X7)
          & front(X7)
          & hollywood(X8)
          & city(X8)
          & event(X9)
          & chevy(X10)
          & car(X10)
          & white(X10)
          & dirty(X10)
          & old(X10)
          & street(X11)
          & way(X11)
          & lonely(X11)
          & barrel(X9,X10)
          & down(X9,X11)
          & in(X9,X8)
          & ~ qmltpeq(X12,X13)
          & fellow(X12)
          & man(X12)
          & young(X12)
          & fellow(X13)
          & man(X13)
          & young(X13)
          & qmltpeq(X12,X15)
          & in(X15,X6)
          & qmltpeq(X13,X16)
          & in(X16,X7) ) )
    & ( ? [X17: $i,X18: $i,X19: $i,X20: $i,X21: $i,X22: $i,X23: $i,X24: $i,X26: $i,X27: $i] :
          ( seat(X17)
          & furniture(X17)
          & front(X17)
          & seat(X18)
          & furniture(X18)
          & front(X18)
          & hollywood(X19)
          & city(X19)
          & event(X20)
          & chevy(X21)
          & car(X21)
          & white(X21)
          & dirty(X21)
          & old(X21)
          & street(X22)
          & way(X22)
          & lonely(X22)
          & barrel(X20,X21)
          & down(X20,X22)
          & in(X20,X19)
          & ~ qmltpeq(X23,X24)
          & fellow(X23)
          & man(X23)
          & young(X23)
          & fellow(X24)
          & man(X24)
          & young(X24)
          & qmltpeq(X23,X26)
          & in(X26,X17)
          & qmltpeq(X24,X27)
          & in(X27,X18) )
     => ? [X28: $i,X29: $i,X30: $i,X31: $i,X32: $i,X33: $i,X34: $i,X35: $i,X37: $i,X38: $i] :
          ( seat(X28)
          & furniture(X28)
          & front(X28)
          & seat(X29)
          & furniture(X29)
          & front(X29)
          & hollywood(X30)
          & city(X30)
          & event(X31)
          & street(X32)
          & way(X32)
          & lonely(X32)
          & chevy(X33)
          & car(X33)
          & white(X33)
          & dirty(X33)
          & old(X33)
          & barrel(X31,X33)
          & down(X31,X32)
          & in(X31,X30)
          & ~ qmltpeq(X34,X35)
          & fellow(X34)
          & man(X34)
          & young(X34)
          & fellow(X35)
          & man(X35)
          & young(X35)
          & qmltpeq(X34,X37)
          & in(X37,X28)
          & qmltpeq(X35,X38)
          & in(X38,X29) ) ) ) ).

%------------------------------------------------------------------------------
