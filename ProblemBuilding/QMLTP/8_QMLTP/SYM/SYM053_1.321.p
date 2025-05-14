%------------------------------------------------------------------------------
% File     : SYM053_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Forbes problem
% Version  : Especial.
% English  :

% Refs     : [For94] Forbes (1994), Modern Logic. A Text in Elementary Symb
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM053+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    4 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   18 (   0 equ)
%            Maximal formula atoms :    7 (  18 avg)
%            Number of connectives :   13 (   2   ~;   0   |;   2   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   6 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    5 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    6 (   6 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    5 (   3 usr;   1 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    3 (;   2   !;   1   ?;   3   :)
% SPC      : NX0_UNK_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_u_f_l,logic,
    $modal == 
      [ $domains == $cumulative,
        $designation == $flexible,
        $terms == $local,
        $modalities == $modal_system_K ] ).

tff(a_decl,type,
    a: $o ).

tff(e_decl,type,
    e: $i > $o ).

tff(f_decl,type,
    f: $i > $o ).

tff(con,conjecture,
    ( ( ( {$box}
        @ (! [X: $i] : ( {$box} @ (e(X)) )) )
      & a
      & ( {$dia}
        @ (! [X: $i] :
             ( f(X)
            => ( {$box}
               @ (( a
                 => ~ f(X) )) ) )) ) )
   => ( {$box}
      @ (? [X: $i] : ( {$dia} @ (~ f(X)) )) ) ) ).

%------------------------------------------------------------------------------
