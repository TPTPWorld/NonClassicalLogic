%------------------------------------------------------------------------------
% File     : SYM015_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Girle problem
% Version  : Especial.
% English  :

% Refs     : [Gir00] Girle (2000), Modal Logics and Philosophy
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM015+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   12 (   0 equ)
%            Maximal formula atoms :    6 (  12 avg)
%            Number of connectives :    8 (   1   ~;   1   |;   0   &)
%                                         (   1 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   4 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    5 (   5 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    4 (   4 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-1 aty)
%            Number of functors    :    1 (   1 usr;   1 con; 0-0 aty)
%            Number of variables   :    1 (;   1   !;   0   ?;   1   :)
% SPC      : NX0_UNK_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(m_u_f_g,logic,
    $modal == 
      [ $domains == $cumulative,
        $designation == $flexible,
        $terms == $global,
        $modalities == $modal_system_M ] ).

tff(a_decl,type,
    a: $i ).

tff(f_decl,type,
    f: $i > $o ).

tff(con,conjecture,
    ( ! [X: $i] :
        ( ( {$box} @ (f(X)) )
        | ( {$box} @ (~ f(X)) ) )
   => ( {$box}
      @ (( ( {$box} @ (f(a)) )
       <=> f(a) )) ) ) ).

%------------------------------------------------------------------------------
