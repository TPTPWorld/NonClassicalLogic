%------------------------------------------------------------------------------
% File     : GSY409_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Kalish and Montague Problem 246
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP SYN409+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY409+1 [QMLTP]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :   34 (   0 equ)
%            Maximal formula atoms :    4 (  34 avg)
%            Number of connectives :   19 (   0   ~;   0   |;   3   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (  14 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   14 (  14 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    6 (;   6   !;   0   ?;   6   :)
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

tff(kalish246,conjecture,
    ( ( {$box}
      @ (( ( {$box}
           @ (! [X: $i] : ( {$box} @ (f(X)) )) )
        => ( {$box}
           @ (! [Y: $i] :
                ( {$box}
                @ (! [Z: $i] :
                     ( ( {$box} @ (f(Y)) )
                     & ( {$box} @ (f(Z)) ) )) )) ) )) )
    & ( {$box}
      @ (( ( {$box}
           @ (! [Y: $i] :
                ( {$box}
                @ (! [Z: $i] :
                     ( ( {$box} @ (f(Y)) )
                     & ( {$box} @ (f(Z)) ) )) )) )
        => ( {$box}
           @ (! [X: $i] : ( {$box} @ (f(X)) )) ) )) ) ) ).

%------------------------------------------------------------------------------
