%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : NLP001+1 [QMLTP]
%          : NLP001_1.004_s4_constant_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   15 (   0 unt;  14 typ;   0 def)
%            Number of atoms       :   56 (   0 equ)
%            Maximal formula atoms :   56 (  56 avg)
%            Number of connectives :   55 (   0   ~;   0   |;  53   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   20 (  20 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   17 (  14   >;   3   *;   0   +;   0  <<)
%            Number of predicates  :   14 (  14 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   16 (;   0   !;  16   ?;  16   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_constant_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
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
    ( ( ? [U: $i,V: $i,W: $i,X: $i] :
          ( hollywood(U)
          & city(U)
          & event(V)
          & street(W)
          & way(W)
          & lonely(W)
          & chevy(X)
          & car(X)
          & white(X)
          & dirty(X)
          & old(X)
          & barrel(V,X)
          & down(V,W)
          & in(V,U) )
     => ? [Y: $i,Z: $i,X1: $i,X2: $i] :
          ( hollywood(Y)
          & city(Y)
          & event(Z)
          & chevy(X1)
          & car(X1)
          & white(X1)
          & dirty(X1)
          & old(X1)
          & street(X2)
          & way(X2)
          & lonely(X2)
          & barrel(Z,X1)
          & down(Z,X2)
          & in(Z,Y) ) )
    & ( ? [X3: $i,X4: $i,X5: $i,X6: $i] :
          ( hollywood(X3)
          & city(X3)
          & event(X4)
          & chevy(X5)
          & car(X5)
          & white(X5)
          & dirty(X5)
          & old(X5)
          & street(X6)
          & way(X6)
          & lonely(X6)
          & barrel(X4,X5)
          & down(X4,X6)
          & in(X4,X3) )
     => ? [X7: $i,X8: $i,X9: $i,X10: $i] :
          ( hollywood(X7)
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
          & in(X8,X7) ) ) ) ).

%------------------------------------------------------------------------------
