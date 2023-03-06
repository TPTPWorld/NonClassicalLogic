%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : Puzzles
% Problem  : Consecutive numbers (Example 2.4)
% Version  : [QMLTP] axioms.
% English  : Two agents, Anne and Bill, are facing each other. They see a
%            number on each other's forehead, and those numbers are
%            consecutive numbers n and n+1 for a certain n in N. They both
%            know this, and they know that they know it, etc. However, they
%            do not have any other a priori knowledge about their own number
%            If Anne's number is 3 and Bill's number is 2, then Anne knows
%            that Bill knows that Anne knows that Bill's number is 0, 2 or 4,
%            and Bill knows that Anne knows that Bill knows that Anne's
%            number is 1, 3 or 5.

% Refs     : [vvK07] van Ditmarsch et al. (2007), Dynamic Epistemic Logic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : MML008+1 [QMLTP]
%          : MML008_1.028_s4_constant_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   30 (   2 unt;  10 typ;   0 def)
%            Number of atoms       :  100 (   0 equ)
%            Maximal formula atoms :    4 (   5 avg)
%            Number of connectives :   57 (   8   ~;   5   |;   3   &)
%                                         (   0 <=>;  10  =>;   0  <=;   0 <~>)
%                                         (  31 {}@;  31 {#};   0 {.})
%            Maximal formula depth :    4 (   3 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   31 (  31 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    4 (   3   >;   1   *;   0   +;   0  <<)
%            Number of predicates  :    4 (   3 usr;   0 prp; 1-2 aty)
%            Number of functors    :   10 (   7 usr;  10 con; 0-0 aty)
%            Number of variables   :   12 (;  10   !;   2   ?;  12   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_constant_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $constant,
        $modalities == $modal_system_S4 ] ).

tff(n0_decl,type,
    n0: $i ).

tff(n1_decl,type,
    n1: $i ).

tff(n2_decl,type,
    n2: $i ).

tff(n3_decl,type,
    n3: $i ).

tff(n4_decl,type,
    n4: $i ).

tff(n5_decl,type,
    n5: $i ).

tff(n6_decl,type,
    n6: $i ).

tff(a_decl,type,
    a: $i > $o ).

tff(b_decl,type,
    b: $i > $o ).

tff(succ_decl,type,
    succ: ( $i * $i ) > $o ).

tff(axiom_1,axiom-local,
    {$box(#fool)} @ (succ(n0,n1)) ).

tff(axiom_2,axiom-local,
    {$box(#fool)} @ (succ(n1,n2)) ).

tff(axiom_3,axiom-local,
    {$box(#fool)} @ (succ(n2,n3)) ).

tff(axiom_4,axiom-local,
    {$box(#fool)} @ (succ(n3,n4)) ).

tff(axiom_5,axiom-local,
    {$box(#fool)} @ (succ(n4,n5)) ).

tff(axiom_6,axiom-local,
    {$box(#fool)} @ (succ(n5,n6)) ).

tff(axiom_7,axiom-local,
    ( {$box(#fool)}
    @ (? [X: $i,Y: $i] :
         ( a(X)
         & b(Y)
         & ( succ(X,Y)
           | succ(Y,X) ) )) ) ).

tff(axiom_8,axiom-local,
    ! [X: $i] :
      ( a(X)
     => ( {$box(#bill)} @ (a(X)) ) ) ).

tff(axiom_9,axiom-local,
    ! [X: $i] :
      ( b(X)
     => ( {$box(#bill)} @ (b(X)) ) ) ).

tff(axiom_i_for_fool_a_1,axiom-local,
    ! [X: $i] :
      ( ( {$box(#fool)} @ (a(X)) )
     => ( {$box(#anne)} @ (a(X)) ) ) ).

tff(axiom_i_for_fool_a_2,axiom-local,
    ! [X: $i] :
      ( ( {$box(#fool)} @ (~ a(X)) )
     => ( {$box(#anne)} @ (~ a(X)) ) ) ).

tff(axiom_i_for_fool_a_3,axiom-local,
    ! [X: $i] :
      ( ( {$box(#fool)} @ (b(X)) )
     => ( {$box(#anne)} @ (b(X)) ) ) ).

tff(axiom_i_for_fool_a_4,axiom-local,
    ! [X: $i] :
      ( ( {$box(#fool)} @ (~ b(X)) )
     => ( {$box(#anne)} @ (~ b(X)) ) ) ).

tff(axiom_i_for_fool_b_1,axiom-local,
    ! [X: $i] :
      ( ( {$box(#fool)} @ (a(X)) )
     => ( {$box(#bill)} @ (a(X)) ) ) ).

tff(axiom_i_for_fool_b_2,axiom-local,
    ! [X: $i] :
      ( ( {$box(#fool)} @ (~ a(X)) )
     => ( {$box(#bill)} @ (~ a(X)) ) ) ).

tff(axiom_i_for_fool_b_3,axiom-local,
    ! [X: $i] :
      ( ( {$box(#fool)} @ (b(X)) )
     => ( {$box(#bill)} @ (b(X)) ) ) ).

tff(axiom_i_for_fool_b_4,axiom-local,
    ! [X: $i] :
      ( ( {$box(#fool)} @ (~ b(X)) )
     => ( {$box(#bill)} @ (~ b(X)) ) ) ).

tff(axiom_a3,axiom-local,
    a(n3) ).

tff(axiom_b2,axiom-local,
    b(n2) ).

tff(con,conjecture,
    ( ( {$box(#anne)}
      @ (( {$box(#bill)}
         @ (( {$box(#anne)}
            @ (( b(n0)
               | b(n2)
               | b(n4) )) )) )) )
    & ( {$box(#bill)}
      @ (( {$box(#anne)}
         @ (( {$box(#bill)}
            @ (( a(n1)
               | a(n3)
               | a(n5) )) )) )) ) ) ).

%------------------------------------------------------------------------------
