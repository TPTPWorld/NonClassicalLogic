%------------------------------------------------------------------------------
% File     : GSY403_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Kalish and Montague Problem 234
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP SYN403+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY403+1 [QMLTP]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    4 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   28 (   0 equ)
%            Maximal formula atoms :    2 (  28 avg)
%            Number of connectives :   16 (   0   ~;   0   |;   1   &)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (  11 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   11 (  11 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    1 (;   1   !;   0   ?;   1   :)
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

tff(h_decl,type,
    h: $i > $o ).

tff(kalish234,conjecture,
    ( {$box}
    @ (! [X: $i] :
         ( {$box}
         @ (( ( ( {$box}
                @ (( ( {$box} @ (f(X)) )
                  => ( {$box} @ (g(X)) ) )) )
              & ( {$box}
                @ (( ( {$box} @ (g(X)) )
                  => ( {$box} @ (h(X)) ) )) ) )
           => ( {$box}
              @ (( ( {$box} @ (f(X)) )
                => ( {$box} @ (h(X)) ) )) ) )) )) ) ).

%------------------------------------------------------------------------------
