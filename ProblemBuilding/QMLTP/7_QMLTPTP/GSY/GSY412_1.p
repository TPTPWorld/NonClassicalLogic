%------------------------------------------------------------------------------
% File     : GSY412_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Kalish and Montague Problem 255
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP SYN412+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY412+1 [QMLTP]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :   24 (   0 equ)
%            Maximal formula atoms :    2 (  24 avg)
%            Number of connectives :   16 (   3   ~;   0   |;   1   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (  10 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   10 (  10 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   1   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    2 (;   1   !;   1   ?;   2   :)
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
    f: ( $i * $i ) > $o ).

tff(kalish255,conjecture,
    ( {$box}
    @ (~ ? [X: $i] :
           ( {$box}
           @ (! [Y: $i] :
                ( ( {$box}
                  @ (( ( {$box} @ (f(X,Y)) )
                    => ( {$box}
                       @ (~ ( {$box} @ (f(X,X)) )) ) )) )
                & ( {$box}
                  @ (( ( {$box}
                       @ (~ ( {$box} @ (f(X,X)) )) )
                    => ( {$box} @ (f(X,Y)) ) )) ) )) )) ) ).

%------------------------------------------------------------------------------
