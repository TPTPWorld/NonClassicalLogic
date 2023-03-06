%------------------------------------------------------------------------------
% File     : APM002_1.022 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Software Verification
% Problem  : Conflict detection of 2 conceptual schemata (e.g. UML-schemata)
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [BE04]  Boeva & Ekenberg (2004), A Transition Logic for Schema
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : APM002+1 [QMLTP]
%          : APM002_1.022_s4_decreasing_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    9 (   1 unt;   5 typ;   0 def)
%            Number of atoms       :   25 (   0 equ)
%            Maximal formula atoms :   10 (   6 avg)
%            Number of connectives :   24 (   6   ~;   2   |;   7   &)
%                                         (   2 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   3 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    6 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    3 (   3 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   2 usr;   1 prp; 0-1 aty)
%            Number of functors    :    3 (   3 usr;   3 con; 0-0 aty)
%            Number of variables   :    1 (;   1   !;   0   ?;   1   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_decreasing_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $decreasing,
        $modalities == $modal_system_S4 ] ).

tff(a_decl,type,
    a: $i ).

tff(b_decl,type,
    b: $i ).

tff(c_decl,type,
    c: $i ).

tff(p_decl,type,
    p: $i > $o ).

tff(r_decl,type,
    r: $i > $o ).

tff(schema1,axiom-local,
    ( ( ~ r(a)
      | r(b) )
    & ( r(c)
    <=> r(a) )
    & ( r(a)
     => ( {$dia} @ (r(b)) ) )
    & ( ~ r(a)
     => ( {$dia}
        @ (( ~ r(b)
           & ~ r(c) )) ) ) ) ).

tff(schema2,axiom-local,
    ( ( p(a)
     => p(b) )
    & ( p(c)
      | ~ p(b) )
    & ( ( p(a)
        & p(b) )
     => ( {$dia} @ (~ p(b)) ) ) ) ).

tff(integration_assertion,axiom-local,
    ! [X: $i] :
      ( p(X)
    <=> r(X) ) ).

tff(con,conjecture,
    $false ).

%------------------------------------------------------------------------------
