%------------------------------------------------------------------------------
% File     : SYM182_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Syntactic
% Problem  : Popcorn problem
% Version  : Especial.
% English  :

% Refs     : [Pop95] Popkorn (1995), First Steps in Modal Logic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [TPTP]
% Names    : SYM182+1 [QMLTP]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   12 (   0 equ)
%            Maximal formula atoms :    8 (  12 avg)
%            Number of connectives :    7 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   4 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    4 (   4 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :    4 (   4 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   2 usr;   2 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : NX0_UNK_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_c_f_g,logic,
    $modal == 
      [ $domains == $constant,
        $designation == $flexible,
        $terms == $global,
        $modalities == $modal_system_S5 ] ).

tff(p_decl,type,
    p: $o ).

tff(q_decl,type,
    q: $o ).

tff(con,conjecture,
    ( ( ( {$dia} @ (p) )
     => ( {$box} @ (q) ) )
   => ( ( {$box} @ (p) )
     => ( {$box} @ (q) ) ) ) ).

%------------------------------------------------------------------------------
