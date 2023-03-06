%------------------------------------------------------------------------------
% File     : MML020_1.026 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Natural Language Processing
% Problem  : Coffee and ticket example (adapted)
% Version  : [QMLTP] axioms.
% English  : When I can get ticket and coffee I can take a journey

% Refs     : [Sto99] Stone (1999), Indefinite Information in Modal Logic Pr
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : MML020+1 [QMLTP]
%          : MML020_1.026_t_constant_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   17 (   1 unt;   9 typ;   0 def)
%            Number of atoms       :   32 (   0 equ)
%            Maximal formula atoms :    5 (   4 avg)
%            Number of connectives :   16 (   0   ~;   2   |;   1   &)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%                                         (   8 {}@;   8 {#};   0 {.})
%            Maximal formula depth :    5 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    8 (   8 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    8 (   8   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    9 (   8 usr;   0 prp; 1-1 aty)
%            Number of functors    :    3 (   1 usr;   3 con; 0-0 aty)
%            Number of variables   :    7 (;   7   !;   0   ?;   7   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(t_constant_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $constant,
        $modalities == $modal_system_M ] ).

tff(passenger_decl,type,
    passenger: $i ).

tff(takejourney_decl,type,
    takejourney: $i > $o ).

tff(usemachine_decl,type,
    usemachine: $i > $o ).

tff(visitdonuts_decl,type,
    visitdonuts: $i > $o ).

tff(usewindow_decl,type,
    usewindow: $i > $o ).

tff(getticket_decl,type,
    getticket: $i > $o ).

tff(visitstarbucks_decl,type,
    visitstarbucks: $i > $o ).

tff(getcoffee_decl,type,
    getcoffee: $i > $o ).

tff(visitstarbuck_decl,type,
    visitstarbuck: $i > $o ).

tff(axiom_1,axiom-local,
    ! [X: $i] :
      ( {$box(#ticket)}
      @ (( usemachine(X)
         | usewindow(X) )) ) ).

tff(axiom_2,axiom-local,
    ! [X: $i] :
      ( {$box(#ticket)}
      @ (( usemachine(X)
        => getticket(X) )) ) ).

tff(axiom_3,axiom-local,
    ! [X: $i] :
      ( {$box(#ticket)}
      @ (( usewindow(X)
        => getticket(X) )) ) ).

tff(axiom_4,axiom-local,
    ! [X: $i] :
      ( {$box(#coffee)}
      @ (( visitdonuts(X)
         | visitstarbucks(X) )) ) ).

tff(axiom_5,axiom-local,
    ! [X: $i] :
      ( {$box(#coffee)}
      @ (( visitdonuts(X)
        => getcoffee(X) )) ) ).

tff(axiom_6,axiom-local,
    ! [X: $i] :
      ( {$box(#coffee)}
      @ (( visitstarbuck(X)
        => getcoffee(X) )) ) ).

tff(axiom_7,axiom-local,
    ! [X: $i] :
      ( ( ( {$box(#ticket)} @ (getticket(X)) )
        & ( {$box(#coffee)} @ (getcoffee(X)) ) )
     => takejourney(X) ) ).

tff(con,conjecture,
    takejourney(passenger) ).

%------------------------------------------------------------------------------
