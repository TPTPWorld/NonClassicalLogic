%------------------------------------------------------------------------------
% File     : GSY394_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Kalish and Montague Problem 201
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP SYN394+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY394+1 [QMLTP]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   24 (   0 equ)
%            Maximal formula atoms :    2 (  24 avg)
%            Number of connectives :   13 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (  10 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   10 (  10 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    3 (;   3   !;   0   ?;   3   :)
% SPC      : NX0_THM_RFO_NEQ_NAR

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

tff(kalish201,conjecture,
    ( {$box}
    @ (( ( {$box}
         @ (! [X: $i] :
              ( {$box}
              @ (( ( {$box} @ (f(X)) )
                => ( {$box} @ (g(X)) ) )) )) )
      => ( {$box}
         @ (( ( {$box}
              @ (! [Y: $i] : ( {$box} @ (f(Y)) )) )
           => ( {$box}
              @ (! [Z: $i] : ( {$box} @ (g(Z)) )) ) )) ) )) ) ).

%------------------------------------------------------------------------------
