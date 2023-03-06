%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : NLP005+1 [QMLTP]
%          : NLP005_1.024_s5u_decreasing_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   48 (   1 unt;  21 typ;   0 def)
%            Number of atoms       :  193 (   0 equ)
%            Maximal formula atoms :  118 (   7 avg)
%            Number of connectives :  170 (   4   ~;   0   |; 139   &)
%                                         (   0 <=>;  27  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   43 (   7 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   25 (  21   >;   4   *;   0   +;   0  <<)
%            Number of predicates  :   21 (  21 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   96 (;  58   !;  38   ?;  96   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_decreasing_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $decreasing,
        $modalities == $modal_system_S5U ] ).

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
    ( ( ? [U: $i,V: $i,W: $i,X: $i,Y: $i,Z: $i,X1: $i,X3: $i,X4: $i] :
          ( seat(U)
          & furniture(U)
          & front(U)
          & hollywood(V)
          & city(V)
          & event(W)
          & chevy(X)
          & car(X)
          & white(X)
          & dirty(X)
          & old(X)
          & street(Y)
          & way(Y)
          & lonely(Y)
          & barrel(W,X)
          & down(W,Y)
          & in(W,V)
          & ~ qmltpeq(Z,X1)
          & fellow(Z)
          & man(Z)
          & young(Z)
          & fellow(X1)
          & man(X1)
          & young(X1)
          & qmltpeq(Z,X3)
          & in(X3,U)
          & qmltpeq(X1,X4)
          & in(X4,U) )
     => ? [X5: $i,X6: $i,X7: $i,X8: $i,X9: $i,X10: $i,X11: $i,X12: $i,X14: $i,X15: $i] :
          ( seat(X5)
          & furniture(X5)
          & front(X5)
          & seat(X6)
          & furniture(X6)
          & front(X6)
          & hollywood(X7)
          & city(X7)
          & event(X8)
          & street(X9)
          & way(X9)
          & lonely(X9)
          & chevy(X10)
          & car(X10)
          & white(X10)
          & dirty(X10)
          & old(X10)
          & barrel(X8,X10)
          & down(X8,X9)
          & in(X8,X7)
          & ~ qmltpeq(X11,X12)
          & fellow(X11)
          & man(X11)
          & young(X11)
          & fellow(X12)
          & man(X12)
          & young(X12)
          & qmltpeq(X11,X14)
          & in(X14,X5)
          & qmltpeq(X12,X15)
          & in(X15,X6) ) )
    & ( ? [X16: $i,X17: $i,X18: $i,X19: $i,X20: $i,X21: $i,X22: $i,X23: $i,X25: $i,X26: $i] :
          ( seat(X16)
          & furniture(X16)
          & front(X16)
          & seat(X17)
          & furniture(X17)
          & front(X17)
          & hollywood(X18)
          & city(X18)
          & event(X19)
          & street(X20)
          & way(X20)
          & lonely(X20)
          & chevy(X21)
          & car(X21)
          & white(X21)
          & dirty(X21)
          & old(X21)
          & barrel(X19,X21)
          & down(X19,X20)
          & in(X19,X18)
          & ~ qmltpeq(X22,X23)
          & fellow(X22)
          & man(X22)
          & young(X22)
          & fellow(X23)
          & man(X23)
          & young(X23)
          & qmltpeq(X22,X25)
          & in(X25,X16)
          & qmltpeq(X23,X26)
          & in(X26,X17) )
     => ? [X27: $i,X28: $i,X29: $i,X30: $i,X31: $i,X32: $i,X33: $i,X35: $i,X36: $i] :
          ( seat(X27)
          & furniture(X27)
          & front(X27)
          & hollywood(X28)
          & city(X28)
          & event(X29)
          & chevy(X30)
          & car(X30)
          & white(X30)
          & dirty(X30)
          & old(X30)
          & street(X31)
          & way(X31)
          & lonely(X31)
          & barrel(X29,X30)
          & down(X29,X31)
          & in(X29,X28)
          & ~ qmltpeq(X32,X33)
          & fellow(X32)
          & man(X32)
          & young(X32)
          & fellow(X33)
          & man(X33)
          & young(X33)
          & qmltpeq(X32,X35)
          & in(X35,X27)
          & qmltpeq(X33,X36)
          & in(X36,X27) ) ) ) ).

%------------------------------------------------------------------------------
