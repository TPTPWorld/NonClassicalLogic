%------------------------------------------------------------------------------
% File     : GSY365_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Peter Andrews Problem X2116
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP SYN365+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY365+1 [QMLTP]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    5 (   0 unt;   4 typ;   0 def)
%            Number of atoms       :   41 (   0 equ)
%            Maximal formula atoms :    2 (  41 avg)
%            Number of connectives :   24 (   0   ~;   0   |;   4   &)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (  16 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    3 (   1 avg)
%            Number of FOOLs       :   16 (  16 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    5 (   4   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    2 (   2 usr;   0 con; 1-1 aty)
%            Number of variables   :    5 (;   3   !;   2   ?;   5   :)
% SPC      : NX0_THM_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_constant_rigid,logic,
    $modal == 
      [ $domains == $constant,
        $designation == $rigid,
        $terms == $local,
        $modalities == $modal_system_K ] ).

tff(big_r_decl,type,
    big_r: ( $i * $i ) > $o ).

tff(big_p_decl,type,
    big_p: $i > $o ).

tff(g_decl,type,
    g: $i > $i ).

tff(h_decl,type,
    h: $i > $i ).

tff(x2116,conjecture,
    ( {$box}
    @ (( ( ( {$box}
           @ (! [X: $i] :
              ? [Y: $i] :
                ( {$box}
                @ (( ( {$box} @ (big_p(X)) )
                  => ( ( {$box} @ (big_r(X,g(h(Y)))) )
                     & ( {$box} @ (big_p(Y)) ) ) )) )) )
         & ( {$box}
           @ (! [W: $i] :
                ( {$box}
                @ (( ( {$box} @ (big_p(W)) )
                  => ( ( {$box} @ (big_p(g(W))) )
                     & ( {$box} @ (big_p(h(W))) ) ) )) )) ) )
      => ( {$box}
         @ (! [X: $i] :
              ( {$box}
              @ (( ( {$box} @ (big_p(X)) )
                => ? [Y: $i] :
                     ( ( {$box} @ (big_r(X,Y)) )
                     & ( {$box} @ (big_p(Y)) ) ) )) )) ) )) ) ).

%------------------------------------------------------------------------------
