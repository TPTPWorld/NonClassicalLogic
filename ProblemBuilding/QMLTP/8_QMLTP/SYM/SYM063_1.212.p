%------------------------------------------------------------------------------
% File     : SYM063_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Fitting and Mendelsohn problem
% Version  : Especial.
% English  :

% Refs     : [FM98]  Fitting & Mendelsohn (1998), First-Order Modal Logic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM063+1 [QMLTP]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :   22 (   0 equ)
%            Maximal formula atoms :   10 (  22 avg)
%            Number of connectives :   13 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   5  =>;   0  <=;   0 <~>)
%                                         (   8 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    6 (   6 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    8 (   8 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    6 (;   6   !;   0   ?;   6   :)
% SPC      : NX0_CSA_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_v_r_g,logic,
    $modal == 
      [ $domains == $varying,
        $designation == $rigid,
        $terms == $global,
        $modalities == $modal_system_K ] ).

tff(a_decl,type,
    a: $i > $o ).

tff(con,conjecture,
    ( ( ( {$box}
        @ (! [Y: $i] :
             ( ! [X: $i] : ( {$box} @ (a(X)) )
            => ( {$box} @ (a(Y)) ) )) )
     => ! [Y: $i] :
          ( ( {$box}
            @ (! [X: $i] : ( {$box} @ (a(X)) )) )
         => ( {$box} @ (a(Y)) ) ) )
   => ( ! [X: $i] : ( {$box} @ (a(X)) )
     => ( {$box}
        @ (! [X: $i] : a(X)) ) ) ) ).

%------------------------------------------------------------------------------
