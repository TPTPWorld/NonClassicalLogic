%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : Data Structures
% Problem  : Database querying
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Rei92] Reiter (1992), What Should a Database Know?
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : APM008+1 [QMLTP]
%          : APM008_1.037_k_cumulative_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    9 (   0 unt;   7 typ;   0 def)
%            Number of atoms       :    9 (   0 equ)
%            Maximal formula atoms :    2 (   4 avg)
%            Number of connectives :    5 (   0   ~;   0   |;   3   &)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   2 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    2 (   2 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    2 (   1   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-2 aty)
%            Number of functors    :    6 (   6 usr;   6 con; 0-0 aty)
%            Number of variables   :    2 (;   0   !;   2   ?;   2   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_cumulative_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $cumulative,
        $modalities == $modal_system_K ] ).

tff(cs_decl,type,
    cs: $i ).

tff(sue_decl,type,
    sue: $i ).

tff(mary_decl,type,
    mary: $i ).

tff(john_decl,type,
    john: $i ).

tff(math_decl,type,
    math: $i ).

tff(psych_decl,type,
    psych: $i ).

tff(teach_decl,type,
    teach: ( $i * $i ) > $o ).

tff(db,axiom-local,
    ( {$box}
    @ (( teach(john,math)
       & ? [X: $i] : teach(X,cs)
       & teach(mary,psych)
       & teach(sue,psych) )) ) ).

tff(query,conjecture,
    ? [X: $i] : ( {$box} @ (teach(john,X)) ) ).

%------------------------------------------------------------------------------
