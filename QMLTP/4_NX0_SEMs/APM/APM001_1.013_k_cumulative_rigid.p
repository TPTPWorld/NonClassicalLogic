%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : Natural Language Processing
% Problem  : Ticket example
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [FH+98] Farinas del Cerro et al. (1998), Belief Reconstruction
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : APM001+1 [QMLTP]
%          : APM001_1.013_k_cumulative_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   15 (   0 unt;   8 typ;   0 def)
%            Number of atoms       :   27 (   0 equ)
%            Maximal formula atoms :    2 (   3 avg)
%            Number of connectives :   15 (   2   ~;   0   |;   4   &)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   7 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    7 (   7 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-1 aty)
%            Number of functors    :    5 (   5 usr;   5 con; 0-0 aty)
%            Number of variables   :    0 (;   0   !;   0   ?;   0   :)
% SPC      : NX0_THM_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(k_cumulative_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $cumulative,
        $modalities == $modal_system_K ] ).

tff(seventy_decl,type,
    seventy: $i ).

tff(ninetyfive_decl,type,
    ninetyfive: $i ).

tff(second_decl,type,
    second: $i ).

tff(paris_decl,type,
    paris: $i ).

tff(first_decl,type,
    first: $i ).

tff(price_decl,type,
    price: $i > $o ).

tff(dest_decl,type,
    dest: $i > $o ).

tff(class_decl,type,
    class: $i > $o ).

tff(law1,axiom-local,
    ( {$box}
    @ (( ( dest(paris)
         & class(first) )
      => price(ninetyfive) )) ) ).

tff(law2,axiom-local,
    ( {$box}
    @ (( ( dest(paris)
         & class(second) )
      => price(seventy) )) ) ).

tff(law3,axiom-local,
    ( {$box}
    @ (~ ( class(first)
         & class(second) )) ) ).

tff(law4,axiom-local,
    ( {$box}
    @ (~ ( price(ninetyfive)
         & price(seventy) )) ) ).

tff(belief1,axiom-local,
    {$box} @ (dest(paris)) ).

tff(belief2,axiom-local,
    {$box} @ (class(second)) ).

tff(con,conjecture,
    {$box} @ (price(seventy)) ).

%------------------------------------------------------------------------------
