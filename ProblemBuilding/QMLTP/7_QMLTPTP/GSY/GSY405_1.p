%------------------------------------------------------------------------------
% File     : GSY405_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Kalish and Montague Problem 239
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP SYN405+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY405+1 [QMLTP]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   16 (   0 equ)
%            Maximal formula atoms :    2 (  16 avg)
%            Number of connectives :    9 (   0   ~;   0   |;   2   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   6 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    6 (   6 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    3 (;   1   !;   2   ?;   3   :)
% SPC      : NX0_CSA_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_constant_rigid,logic,
    $modal == 
      [ $domains == $constant,
        $designation == $rigid,
        $terms == $local,
        $modalities == $modal_system_K ] ).

tff(f_decl,type,
    f: $i > $o ).

tff(g_decl,type,
    g: $i > $o ).

tff(kalish239,conjecture,
    ( {$box}
    @ (( ( ( {$box}
           @ (! [X: $i] : ( {$box} @ (f(X)) )) )
         & ? [Y: $i] : ( {$box} @ (g(Y)) ) )
      => ? [Z: $i] :
           ( ( {$box} @ (f(Z)) )
           & ( {$box} @ (g(Z)) ) ) )) ) ).

%------------------------------------------------------------------------------
