%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : SYM146+1 [QMLTP]
%          : SYM146_1.001_k_constant_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    4 (   0 unt;   3 typ;   0 def)
%            Number of atoms       :   16 (   0 equ)
%            Maximal formula atoms :    4 (  16 avg)
%            Number of connectives :   10 (   0   ~;   0   |;   0   &)
%                                         (   2 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   5 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    0 (   0 avg)
%            Number of FOOLs       :    5 (   5 fml;   0 var)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   3 prp; 0-1 aty)
%            Number of functors    :    0 (   0 usr;   0 con; --- aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_constant_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == $modal_system_K ] ).

tff(p_decl,type,
    p: $o ).

tff(q_decl,type,
    q: $o ).

tff(r_decl,type,
    r: $o ).

tff(con,conjecture,
    ( ( {$box}
      @ (( ( {$box}
           @ (( p
            <=> q )) )
        => r )) )
   => ( {$box}
      @ (( ( {$box}
           @ (( p
            <=> q )) )
        => ( {$box} @ (r) ) )) ) ) ).

%------------------------------------------------------------------------------
