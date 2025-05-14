%------------------------------------------------------------------------------
% File     : SYM039_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Forbes problem
% Version  : Especial.
% English  :

% Refs     : [For94] Forbes (1994), Modern Logic. A Text in Elementary Symb
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM039+1 [QMLTP]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    4 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   18 (   0 equ)
%            Maximal formula atoms :    6 (  18 avg)
%            Number of connectives :   14 (   2   ~;   0   |;   3   &)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   5 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    4 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    5 (   5 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    5 (   3 usr;   2 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    2 (;   1   !;   1   ?;   2   :)
% SPC      : NX0_CSA_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_u_r_l,logic,
    $modal == 
      [ $domains == $cumulative,
        $designation == $rigid,
        $terms == $local,
        $modalities == $modal_system_D ] ).

tff(a_decl,type,
    a: $o ).

tff(b_decl,type,
    b: $o ).

tff(f_decl,type,
    f: $i > $o ).

tff(con,conjecture,
    ( ( ( {$dia}
        @ (! [X: $i] :
             ( f(X)
            => ( {$box}
               @ (( a
                 => ~ f(X) )) ) )) )
      & ( {$box}
        @ (? [X: $i] :
             ( f(X)
             & ( {$box}
               @ (( b
                 => f(X) )) ) )) ) )
   => ~ ( {$dia}
        @ (( a
           & b )) ) ) ).

%------------------------------------------------------------------------------
