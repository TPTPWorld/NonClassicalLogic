%------------------------------------------------------------------------------
% File     : GSY051_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Pelletier Problem 21
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP SYN051+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY051+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    5 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   32 (   0 equ)
%            Maximal formula atoms :    4 (  10 avg)
%            Number of connectives :   17 (   0   ~;   0   |;   1   &)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (  12 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    4 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   12 (  12 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   1 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    3 (;   0   !;   3   ?;   3   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_constant_rigid,logic,
    $modal == 
      [ $domains == $constant,
        $designation == $rigid,
        $terms == $local,
        $modalities == $modal_system_K ] ).

tff(p_decl,type,
    p: $o ).

tff(big_f_decl,type,
    big_f: $i > $o ).

tff(pel21_1,axiom-local,
    ? [X: $i] :
      ( {$box}
      @ (( ( {$box} @ (p) )
        => ( {$box} @ (big_f(X)) ) )) ) ).

tff(pel21_2,axiom-local,
    ? [X: $i] :
      ( {$box}
      @ (( ( {$box} @ (big_f(X)) )
        => ( {$box} @ (p) ) )) ) ).

tff(pel21,conjecture,
    ? [X: $i] :
      ( ( {$box}
        @ (( ( {$box} @ (p) )
          => ( {$box} @ (big_f(X)) ) )) )
      & ( {$box}
        @ (( ( {$box} @ (big_f(X)) )
          => ( {$box} @ (p) ) )) ) ) ).

%------------------------------------------------------------------------------
