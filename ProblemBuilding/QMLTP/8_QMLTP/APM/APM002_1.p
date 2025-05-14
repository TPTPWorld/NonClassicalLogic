%------------------------------------------------------------------------------
% File     : APM002_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Software Verification
% Problem  : Conflict detection of 2 conceptual schemata (e.g. UML-schemata)
% Version  : Especial.
% English  :

% Refs     : [BE04]  Boeva & Ekenberg (2004), A Transition Logic for Schema
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [BE04]
% Names    : APM002+1 [QMLTP]

% Status   : Satisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    8 (   0 unt;   5 typ;   0 def)
%            Number of atoms       :   24 (   0 equ)
%            Maximal formula atoms :   10 (   8 avg)
%            Number of connectives :   27 (   6   ~;   2   |;   7   &)
%                                         (   2 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   3 {.};   0 {#})
%            Maximal formula depth :    6 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    3 (   3 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-1 aty)
%            Number of functors    :    3 (   3 usr;   3 con; 0-0 aty)
%            Number of variables   :    1 (   1   !;   0   ?;   1   :)
% SPC      : NX0_SAT_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(modal_system,logic,
    $modal == 
      [ $domains == $constant,
        $designation == $rigid,
        $terms == $local,
        $modalities == $modal_system_M ] ).

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

%------------------------------------------------------------------------------
