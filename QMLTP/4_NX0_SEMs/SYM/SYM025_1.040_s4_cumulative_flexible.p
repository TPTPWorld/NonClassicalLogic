%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SYM025+1 [QMLTP]
%          : SYM025_1.040_s4_cumulative_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    3 (   0 unt;   2 typ;   0 def)
%            Number of atoms       :   10 (   0 equ)
%            Maximal formula atoms :    6 (  10 avg)
%            Number of connectives :    6 (   0   ~;   0   |;   2   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   3 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    4 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    3 (   3 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    3 (;   0   !;   3   ?;   3   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_cumulative_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $cumulative,
        $modalities == $modal_system_S4 ] ).

tff(p_decl,type,
    p: $i > $o ).

tff(q_decl,type,
    q: $i > $o ).

tff(con,conjecture,
    ( ( ( {$dia}
        @ (? [X: $i] : p(X)) )
      & ( {$dia}
        @ (? [X: $i] : q(X)) ) )
   => ? [X: $i] :
        ( {$dia}
        @ (( p(X)
           & q(X) )) ) ) ).

%------------------------------------------------------------------------------
