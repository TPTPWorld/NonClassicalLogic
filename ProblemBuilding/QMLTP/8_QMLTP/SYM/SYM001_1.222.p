%------------------------------------------------------------------------------
% File     : SYM001_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Barcan scheme instance
% Version  : Especial.
% English  : If for all x necessarily f(x), then it is necessary that for
%            all x f(x)

% Refs     : [Bar46] Barcan (1946), A Functional Calculus of First Order Ba
%          : [Sid10] Sider (2010), Logic for Philosophy
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM001+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    2 (   0 unt;   1 typ;   0 def)
%            Number of atoms       :    6 (   0 equ)
%            Maximal formula atoms :    4 (   6 avg)
%            Number of connectives :    3 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   2 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    4 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    2 (   2 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    2 (;   2   !;   0   ?;   2   :)
% SPC      : NX0_UNK_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_v_f_g,logic,
    $modal == 
      [ $domains == $varying,
        $designation == $flexible,
        $terms == $global,
        $modalities == $modal_system_K ] ).

tff(f_decl,type,
    f: $i > $o ).

tff(con,conjecture,
    ( ! [X: $i] : ( {$box} @ (f(X)) )
   => ( {$box}
      @ (! [X: $i] : f(X)) ) ) ).

%------------------------------------------------------------------------------
