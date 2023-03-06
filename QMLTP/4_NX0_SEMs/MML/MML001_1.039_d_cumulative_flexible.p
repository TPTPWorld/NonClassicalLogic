%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : Puzzles
% Problem  : Wise men puzzle
% Version  : [QMLTP] axioms : Reduced.
% English  : Once upon a time, a king wanted to find the wisest out of his
%            three wisest men. He arranged them in a circle and told them that
%            he would put a white or a black spot on their foreheads and that
%            one of the three spots would certainly be white. The three wise
%            men could see and hear each other but, of course, they could not
%            see their faces reflected anywhere. The king, then, asked to each
%            of them to find out the colour of his own spot. After a while, the
%            wisest correctly answered that his spot was white.

% Refs     : [Gol92] Goldblatt (1992), Logics of Time and Computation
%          : [Bal98] Baldoni (1998), Normal Multimodal Logics: Automatic De
% Source   : [QMLTP]
% Names    : MML001+1 [QMLTP]
%          : MML001_1.039_d_cumulative_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   50 (   0 unt;   4 typ;   0 def)
%            Number of atoms       :  314 (   0 equ)
%            Maximal formula atoms :    4 (   6 avg)
%            Number of connectives :  224 (  68   ~;   2   |;   0   &)
%                                         (   0 <=>;  42  =>;   0  <=;   0 <~>)
%                                         ( 112 {}@; 112 {#};   0 {.})
%            Maximal formula depth :    5 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :  112 ( 112 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of predicates  :    2 (   1 usr;   0 prp; 1-1 aty)
%            Number of functors    :    7 (   3 usr;   7 con; 0-0 aty)
%            Number of variables   :   30 (;  30   !;   0   ?;  30   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_cumulative_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $cumulative,
        $modalities == $modal_system_D ] ).

tff(a_decl,type,
    a: $i ).

tff(b_decl,type,
    b: $i ).

tff(c_decl,type,
    c: $i ).

tff(ws_decl,type,
    ws: $i > $o ).

tff(axiom_1,axiom-local,
    ( {$box(#fool)}
    @ (( ws(a)
       | ws(b)
       | ws(c) )) ) ).

tff(axiom_2,axiom-local,
    ( {$box(#fool)}
    @ (( ws(a)
      => ( {$box(#b)} @ (ws(a)) ) )) ) ).

tff(axiom_3,axiom-local,
    ( {$box(#fool)}
    @ (( ws(a)
      => ( {$box(#c)} @ (ws(a)) ) )) ) ).

tff(axiom_4,axiom-local,
    ( {$box(#fool)}
    @ (( ws(b)
      => ( {$box(#a)} @ (ws(b)) ) )) ) ).

tff(axiom_5,axiom-local,
    ( {$box(#fool)}
    @ (( ws(b)
      => ( {$box(#c)} @ (ws(b)) ) )) ) ).

tff(axiom_6,axiom-local,
    ( {$box(#fool)}
    @ (( ws(c)
      => ( {$box(#a)} @ (ws(c)) ) )) ) ).

tff(axiom_7,axiom-local,
    ( {$box(#fool)}
    @ (( ws(c)
      => ( {$box(#b)} @ (ws(c)) ) )) ) ).

tff(axiom_8,axiom-local,
    ( {$box(#fool)}
    @ (( ~ ws(a)
      => ( {$box(#b)} @ (~ ws(a)) ) )) ) ).

tff(axiom_9,axiom-local,
    ( {$box(#fool)}
    @ (( ~ ws(a)
      => ( {$box(#c)} @ (~ ws(a)) ) )) ) ).

tff(axiom_10,axiom-local,
    ( {$box(#fool)}
    @ (( ~ ws(b)
      => ( {$box(#a)} @ (~ ws(b)) ) )) ) ).

tff(axiom_11,axiom-local,
    ( {$box(#fool)}
    @ (( ~ ws(b)
      => ( {$box(#c)} @ (~ ws(b)) ) )) ) ).

tff(axiom_12,axiom-local,
    ( {$box(#fool)}
    @ (( ~ ws(c)
      => ( {$box(#a)} @ (~ ws(c)) ) )) ) ).

tff(axiom_13,axiom-local,
    ( {$box(#fool)}
    @ (( ~ ws(c)
      => ( {$box(#b)} @ (~ ws(c)) ) )) ) ).

tff(axiom_i_for_fool_a_1,axiom-local,
    ! [X: $i] :
      ( ( {$box(#fool)} @ (ws(X)) )
     => ( {$box(#a)} @ (ws(X)) ) ) ).

tff(axiom_i_for_fool_a_2,axiom-local,
    ! [X: $i] :
      ( ( {$box(#fool)} @ (~ ws(X)) )
     => ( {$box(#a)} @ (~ ws(X)) ) ) ).

tff(axiom_i_for_fool_b_1,axiom-local,
    ! [X: $i] :
      ( ( {$box(#fool)} @ (ws(X)) )
     => ( {$box(#b)} @ (ws(X)) ) ) ).

tff(axiom_i_for_fool_b_2,axiom-local,
    ! [X: $i] :
      ( ( {$box(#fool)} @ (~ ws(X)) )
     => ( {$box(#b)} @ (~ ws(X)) ) ) ).

tff(axiom_i_for_fool_c_1,axiom-local,
    ! [X: $i] :
      ( ( {$box(#fool)} @ (ws(X)) )
     => ( {$box(#c)} @ (ws(X)) ) ) ).

tff(axiom_i_for_fool_c_2,axiom-local,
    ! [X: $i] :
      ( ( {$box(#fool)} @ (~ ws(X)) )
     => ( {$box(#c)} @ (~ ws(X)) ) ) ).

tff(axiom_a7_for_fool_ab_1,axiom-local,
    ! [X: $i] :
      ( ( {$box(#a)} @ (ws(X)) )
     => ( {$box(#b)}
        @ ({$box(#a)} @ (ws(X))) ) ) ).

tff(axiom_a7_for_fool_ab_2,axiom-local,
    ! [X: $i] :
      ( ( {$box(#a)} @ (~ ws(X)) )
     => ( {$box(#b)}
        @ ({$box(#a)} @ (~ ws(X))) ) ) ).

tff(axiom_a7_for_fool_ac_1,axiom-local,
    ! [X: $i] :
      ( ( {$box(#a)} @ (ws(X)) )
     => ( {$box(#c)}
        @ ({$box(#a)} @ (ws(X))) ) ) ).

tff(axiom_a7_for_fool_ac_2,axiom-local,
    ! [X: $i] :
      ( ( {$box(#a)} @ (~ ws(X)) )
     => ( {$box(#c)}
        @ ({$box(#a)} @ (~ ws(X))) ) ) ).

tff(axiom_a7_for_fool_ba_1,axiom-local,
    ! [X: $i] :
      ( ( {$box(#b)} @ (ws(X)) )
     => ( {$box(#a)}
        @ ({$box(#b)} @ (ws(X))) ) ) ).

tff(axiom_a7_for_fool_ba_2,axiom-local,
    ! [X: $i] :
      ( ( {$box(#b)} @ (~ ws(X)) )
     => ( {$box(#a)}
        @ ({$box(#b)} @ (~ ws(X))) ) ) ).

tff(axiom_a7_for_fool_bc_1,axiom-local,
    ! [X: $i] :
      ( ( {$box(#b)} @ (ws(X)) )
     => ( {$box(#c)}
        @ ({$box(#b)} @ (ws(X))) ) ) ).

tff(axiom_a7_for_fool_bc_2,axiom-local,
    ! [X: $i] :
      ( ( {$box(#b)} @ (~ ws(X)) )
     => ( {$box(#c)}
        @ ({$box(#b)} @ (~ ws(X))) ) ) ).

tff(axiom_a7_for_fool_ca_1,axiom-local,
    ! [X: $i] :
      ( ( {$box(#c)} @ (ws(X)) )
     => ( {$box(#a)}
        @ ({$box(#c)} @ (ws(X))) ) ) ).

tff(axiom_a7_for_fool_ca_2,axiom-local,
    ! [X: $i] :
      ( ( {$box(#c)} @ (~ ws(X)) )
     => ( {$box(#a)}
        @ ({$box(#c)} @ (~ ws(X))) ) ) ).

tff(axiom_a7_for_fool_cb_1,axiom-local,
    ! [X: $i] :
      ( ( {$box(#c)} @ (ws(X)) )
     => ( {$box(#b)}
        @ ({$box(#c)} @ (ws(X))) ) ) ).

tff(axiom_a7_for_fool_cb_2,axiom-local,
    ! [X: $i] :
      ( ( {$box(#c)} @ (~ ws(X)) )
     => ( {$box(#b)}
        @ ({$box(#c)} @ (~ ws(X))) ) ) ).

tff(axiom_a6_for_fool_ab_1,axiom-local,
    ! [X: $i] :
      ( ~ ( {$box(#a)} @ (ws(X)) )
     => ( {$box(#b)}
        @ (~ ( {$box(#a)} @ (ws(X)) )) ) ) ).

tff(axiom_a6_for_fool_ab_2,axiom-local,
    ! [X: $i] :
      ( ~ ( {$box(#a)} @ (~ ws(X)) )
     => ( {$box(#b)}
        @ (~ ( {$box(#a)} @ (~ ws(X)) )) ) ) ).

tff(axiom_a6_for_fool_ac_1,axiom-local,
    ! [X: $i] :
      ( ~ ( {$box(#a)} @ (ws(X)) )
     => ( {$box(#c)}
        @ (~ ( {$box(#a)} @ (ws(X)) )) ) ) ).

tff(axiom_a6_for_fool_ac_2,axiom-local,
    ! [X: $i] :
      ( ~ ( {$box(#a)} @ (~ ws(X)) )
     => ( {$box(#c)}
        @ (~ ( {$box(#a)} @ (~ ws(X)) )) ) ) ).

tff(axiom_a6_for_fool_ba_1,axiom-local,
    ! [X: $i] :
      ( ~ ( {$box(#b)} @ (ws(X)) )
     => ( {$box(#a)}
        @ (~ ( {$box(#b)} @ (ws(X)) )) ) ) ).

tff(axiom_a6_for_fool_ba_2,axiom-local,
    ! [X: $i] :
      ( ~ ( {$box(#b)} @ (~ ws(X)) )
     => ( {$box(#a)}
        @ (~ ( {$box(#b)} @ (~ ws(X)) )) ) ) ).

tff(axiom_a6_for_fool_bc_1,axiom-local,
    ! [X: $i] :
      ( ~ ( {$box(#b)} @ (ws(X)) )
     => ( {$box(#c)}
        @ (~ ( {$box(#b)} @ (ws(X)) )) ) ) ).

tff(axiom_a6_for_fool_bc_2,axiom-local,
    ! [X: $i] :
      ( ~ ( {$box(#b)} @ (~ ws(X)) )
     => ( {$box(#c)}
        @ (~ ( {$box(#b)} @ (~ ws(X)) )) ) ) ).

tff(axiom_a6_for_fool_ca_1,axiom-local,
    ! [X: $i] :
      ( ~ ( {$box(#c)} @ (ws(X)) )
     => ( {$box(#a)}
        @ (~ ( {$box(#c)} @ (ws(X)) )) ) ) ).

tff(axiom_a6_for_fool_ca_2,axiom-local,
    ! [X: $i] :
      ( ~ ( {$box(#c)} @ (~ ws(X)) )
     => ( {$box(#a)}
        @ (~ ( {$box(#c)} @ (~ ws(X)) )) ) ) ).

tff(axiom_a6_for_fool_cb_1,axiom-local,
    ! [X: $i] :
      ( ~ ( {$box(#c)} @ (ws(X)) )
     => ( {$box(#b)}
        @ (~ ( {$box(#c)} @ (ws(X)) )) ) ) ).

tff(axiom_a6_for_fool_cb_2,axiom-local,
    ! [X: $i] :
      ( ~ ( {$box(#c)} @ (~ ws(X)) )
     => ( {$box(#b)}
        @ (~ ( {$box(#c)} @ (~ ws(X)) )) ) ) ).

tff(axiom_14,axiom-local,
    ~ ( {$box(#a)} @ (ws(a)) ) ).

tff(axiom_14_0,axiom-local,
    ~ ( {$box(#b)} @ (ws(b)) ) ).

tff(con,conjecture,
    {$box(#c)} @ (ws(c)) ).

%------------------------------------------------------------------------------
