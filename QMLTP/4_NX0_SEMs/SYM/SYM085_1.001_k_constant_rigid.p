%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SYM085+1 [QMLTP]
%          : SYM085_1.001_k_constant_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    9 (   1 unt;   3 typ;   0 def)
%            Number of atoms       :   24 (   0 equ)
%            Maximal formula atoms :    7 (   4 avg)
%            Number of connectives :   16 (   0   ~;   0   |;   7   &)
%                                         (   0 <=>;   7  =>;   0  <=;   0 <~>)
%                                         (   2 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    7 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    2 (   2 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    4 (   3   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :   14 (;  12   !;   2   ?;  14   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_constant_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == $modal_system_K ] ).

tff(qmltpeq_decl,type,
    qmltpeq: ( $i * $i ) > $o ).

tff(n_decl,type,
    n: $i > $o ).

tff(o_decl,type,
    o: $i > $o ).

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

tff(n_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & n(A) )
     => n(B) ) ).

tff(o_substitution_1,axiom-local,
    ! [A: $i,B: $i] :
      ( ( qmltpeq(A,B)
        & o(A) )
     => o(B) ) ).

tff(con,conjecture,
    ( ? [X: $i] :
        ( n(X)
        & ! [Y: $i] :
            ( n(Y)
           => qmltpeq(Y,X) )
        & ( {$box} @ (o(X)) ) )
   => ( {$box}
      @ (? [X: $i] :
           ( n(X)
           & ! [Y: $i] :
               ( n(Y)
              => qmltpeq(Y,X) )
           & o(X) )) ) ) ).

%------------------------------------------------------------------------------
