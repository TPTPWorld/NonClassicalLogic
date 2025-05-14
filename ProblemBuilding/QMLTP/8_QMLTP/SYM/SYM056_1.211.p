%------------------------------------------------------------------------------
% File     : SYM056_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Fitting and Mendelsohn problem
% Version  : Especial.
% English  :

% Refs     : [FM98]  Fitting & Mendelsohn (1998), First-Order Modal Logic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM056+1 [QMLTP]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    7 (   1 unt;   2 typ;   0 def)
%            Number of atoms       :   18 (   0 equ)
%            Maximal formula atoms :    6 (   3 avg)
%            Number of connectives :   10 (   0   ~;   0   |;   2   &)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%                                         (   3 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    6 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    3 (   3 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    3 (   2   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   12 (;   9   !;   3   ?;  12   :)
% SPC      : NX0_CSA_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_v_r_l,logic,
    $modal == 
      [ $domains == $varying,
        $designation == $rigid,
        $terms == $local,
        $modalities == $modal_system_K ] ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(p_decl,type,
    p: $i > $o ).

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

tff(p_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & p(A) )
     => p(B) ) ).

tff(con,conjecture,
    ( ! [X: $i] :
        ( {$box}
        @ (? [Y: $i] : qmltpeq(X,Y)) )
   => ( ? [X: $i] : ( {$dia} @ (p(X)) )
     => ( {$dia}
        @ (? [X: $i] : p(X)) ) ) ) ).

%------------------------------------------------------------------------------
