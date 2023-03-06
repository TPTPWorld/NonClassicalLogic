%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSY370+1 [QMLTP]
%          : GSY370_1.016_s4_cumulative_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : CounterSatisfiable
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    5 (   0 unt;   4 typ;   0 def)
%            Number of atoms       :   13 (   0 equ)
%            Maximal formula atoms :    2 (  13 avg)
%            Number of connectives :    7 (   0   ~;   1   |;   0   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   5 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    3 (   3 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of FOOLs       :    5 (   5 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    5 (   3   >;   2   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-3 aty)
%            Number of functors    :    3 (   3 usr;   1 con; 0-1 aty)
%            Number of variables   :    3 (;   1   !;   2   ?;   3   :)
% SPC      : NX0_CSA_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_cumulative_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $cumulative,
        $modalities == $modal_system_S4 ] ).

tff(a_decl,type,
    a: $i ).

tff(big_p_decl,type,
    big_p: ( $i * $i * $i ) > $o ).

tff(f_decl,type,
    f: $i > $i ).

tff(h_decl,type,
    h: $i > $i ).

tff(x2121,conjecture,
    ? [V: $i] :
      ( {$box}
      @ (! [Y: $i] :
         ? [Z: $i] :
           ( {$box}
           @ (( ( ( {$box} @ (big_p(a,Y,h(Y))) )
                | ( {$box} @ (big_p(V,Y,f(Y))) ) )
             => ( {$box} @ (big_p(V,Y,Z)) ) )) )) ) ).

%------------------------------------------------------------------------------
