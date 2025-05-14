%------------------------------------------------------------------------------
% File     : SYM040_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Forbes problem
% Version  : Especial.
% English  : "each actual entity is material at every world at which it exists"
%            does not entail "each actual entity is material at each world"

% Refs     : [For94] Forbes (1994), Modern Logic. A Text in Elementary Symb
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM040+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :    7 (   0 equ)
%            Maximal formula atoms :    4 (   7 avg)
%            Number of connectives :    5 (   1   ~;   0   |;   0   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   2 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    5 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    2 (   2 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    2 (;   2   !;   0   ?;   2   :)
% SPC      : NX0_UNK_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(m_d_f_g,logic,
    $modal == 
      [ $domains == $decreasing,
        $designation == $flexible,
        $terms == $global,
        $modalities == $modal_system_M ] ).

tff(e_decl,type,
    e: $i > $o ).

tff(m_decl,type,
    m: $i > $o ).

tff(con,conjecture,
    ~ ( ! [X: $i] :
          ( {$box}
          @ (( e(X)
            => m(X) )) )
     => ! [X: $i] : ( {$box} @ (m(X)) ) ) ).

%------------------------------------------------------------------------------
