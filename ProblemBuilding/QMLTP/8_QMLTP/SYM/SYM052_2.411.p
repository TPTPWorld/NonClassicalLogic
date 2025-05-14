%------------------------------------------------------------------------------
% File     : SYM052_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Forbes problem
% Version  : Especial.
% English  :

% Refs     : [For94] Forbes (1994), Modern Logic. A Text in Elementary Symb
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM052+1 [QMLTP]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    8 (   1 unt;   3 typ;   0 def)
%            Number of atoms       :   22 (   0 equ)
%            Maximal formula atoms :    6 (   4 avg)
%            Number of connectives :   15 (   2   ~;   0   |;   4   &)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%                                         (   4 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    6 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    4 (   4 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    3 (   2   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    5 (   3 usr;   1 prp; 0-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   13 (;   9   !;   4   ?;  13   :)
% SPC      : NX0_CSA_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_d_r_l,logic,
    $modal == 
      [ $domains == $decreasing,
        $designation == $rigid,
        $terms == $local,
        $modalities == $modal_system_D ] ).

tff(a_decl,type,
    a: $o ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(e_decl,type,
    e: $i > $o ).

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

tff(e_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & e(A) )
     => e(B) ) ).

tff(con,conjecture,
    ( ( ( {$dia}
        @ (? [X: $i] :
             ( {$dia}
             @ (? [Y: $i] : ~ qmltpeq(X,Y)) )) )
      & a
      & ( {$box}
        @ (! [X: $i] :
             ( {$box}
             @ (( a
               => e(X) )) )) ) )
   => ? [X: $i,Y: $i] : ~ qmltpeq(X,Y) ) ).

%------------------------------------------------------------------------------
