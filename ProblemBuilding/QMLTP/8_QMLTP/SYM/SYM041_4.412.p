%------------------------------------------------------------------------------
% File     : SYM041_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Forbes problem
% Version  : Especial.
% English  : "if something is material, then necessary it is so if it "exists 
%            at all" does not entail "each actual entity is material at every 
%            world at which it exists"

% Refs     : [For94] Forbes (1994), Modern Logic. A Text in Elementary Symb
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM041+1 [QMLTP]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :    9 (   0 equ)
%            Maximal formula atoms :    5 (   9 avg)
%            Number of connectives :    7 (   1   ~;   0   |;   0   &)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (   2 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    6 (   6 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    2 (   2 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    2 (;   2   !;   0   ?;   2   :)
% SPC      : NX0_CSA_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_d_r_g,logic,
    $modal == 
      [ $domains == $decreasing,
        $designation == $rigid,
        $terms == $global,
        $modalities == $modal_system_S4 ] ).

tff(e_decl,type,
    e: $i > $o ).

tff(m_decl,type,
    m: $i > $o ).

tff(con,conjecture,
    ~ ( ! [X: $i] :
          ( m(X)
         => ( {$box}
            @ (( e(X)
              => m(X) )) ) )
     => ! [X: $i] :
          ( {$box}
          @ (( e(X)
            => m(X) )) ) ) ).

%------------------------------------------------------------------------------
