%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : TBA
% Problem  : TBA
% Version  : [QMLTP] axioms.
% English  :

% Refs     : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : MML019+1 [QMLTP]
%          : MML019_1.002_t_constant_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   51 (   0 unt;  12 typ;   0 def)
%            Number of atoms       :  280 (   0 equ)
%            Maximal formula atoms :    4 (   7 avg)
%            Number of connectives :  152 (   0   ~;   0   |;  21   &)
%                                         (   0 <=>;  42  =>;   0  <=;   0 <~>)
%                                         (  89 {}@;  89 {#};   0 {.})
%            Maximal formula depth :    5 (   4 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :   89 (  89 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   14 (   9   >;   5   *;   0   +;   0  <<)
%            Number of predicates  :   10 (   9 usr;   0 prp; 1-2 aty)
%            Number of functors    :    9 (   3 usr;   9 con; 0-0 aty)
%            Number of variables   :   59 (;  47   !;  12   ?;  59   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(t_constant_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $constant,
        $modalities == $modal_system_M ] ).

tff(fortytwo_decl,type,
    fortytwo: $i ).

tff(p_decl,type,
    p: $i ).

tff(t_decl,type,
    t: $i ).

tff(number_decl,type,
    number: ( $i * $i ) > $o ).

tff(code_decl,type,
    code: $i > $o ).

tff(balance_decl,type,
    balance: ( $i * $i ) > $o ).

tff(belongs_decl,type,
    belongs: ( $i * $i ) > $o ).

tff(identifiable_decl,type,
    identifiable: $i > $o ).

tff(uttered_decl,type,
    uttered: ( $i * $i ) > $o ).

tff(value_decl,type,
    value: ( $i * $i ) > $o ).

tff(hasanswer_decl,type,
    hasanswer: $i > $o ).

tff(account_decl,type,
    account: $i > $o ).

tff(axiom_4,axiom-local,
    ( {$box(#cr)}
    @ (! [A: $i] :
       ? [U: $i] :
         ( {$box(#cr)}
         @ (( ( ( {$box(#ip)} @ (belongs(A,p)) )
              & ( {$box(#cr)}
                @ (( account(A)
                   & number(A,fortytwo)
                   & identifiable(A) )) )
              & uttered(p,U) )
           => ( {$box(#cr)} @ (belongs(A,p)) ) )) )) ) ).

tff(axiom_5,axiom-local,
    ( {$box(#cr)}
    @ (! [A: $i,B: $i] :
       ? [U: $i] :
         ( ( {$box(#cr)}
           @ (( ( {$box(#ip)}
                @ (? [V: $i] : ( {$box(#p)} @ (value(B,V)) )) )
             => hasanswer(p) )) )
         & ( ( ( {$box(#cr)}
               @ (( account(A)
                  & belongs(A,p)
                  & balance(A,B)
                  & identifiable(B) )) )
             & uttered(p,U) )
          => ( ( {$box(#cr)}
               @ (? [V: $i] : ( {$box(#p)} @ (value(B,V)) )) )
            => hasanswer(p) ) ) )) ) ).

tff(axiom_6,axiom-local,
    ( {$box(#cr)}
    @ (! [A: $i,B: $i,V: $i] :
       ? [U: $i] :
         ( ( {$box(#cr)}
           @ (( ( {$box(#it)} @ (value(B,V)) )
              & ( {$box(#cr)}
                @ (( account(A)
                   & belongs(A,p)
                   & balance(A,B)
                   & identifiable(B) )) )
              & uttered(t,U) )) )
        => ( {$box(#cr)} @ (value(B,V)) ) )) ) ).

tff(axiom_7,axiom-local,
    {$box(#bank)} @ (code(fortytwo)) ).

tff(axiom_8,axiom-local,
    ( {$box(#bank)}
    @ (! [C: $i] :
         ( code(C)
        => ? [A: $i] :
             ( {$box(#bank)}
             @ (( account(A)
                & number(A,C)
                & identifiable(A) )) ) )) ) ).

tff(axiom_9,axiom-local,
    ( {$box(#bank)}
    @ (! [A: $i] :
       ? [B: $i] :
         ( {$box(#bank)}
         @ (( account(A)
           => balance(A,B) )) )) ) ).

tff(axiom_10,axiom-local,
    ( {$box(#bank)}
    @ (! [A: $i,B: $i] :
         ( ( balance(A,B)
           & identifiable(A) )
        => identifiable(B) )) ) ).

tff(axiom_11,axiom-local,
    ( {$box(#bank)}
    @ (! [A: $i,B: $i] :
         ( balance(A,B)
        => ? [V: $i] : ( {$box(#t)} @ (value(B,V)) ) )) ) ).

tff(axiom_12,axiom-local,
    ( {$box(#ip)}
    @ (! [A: $i] :
         ( ( account(A)
           & number(A,fortytwo) )
        => belongs(A,p) )) ) ).

tff(axiom_13,axiom-local,
    ( {$box(#ip)}
    @ (! [A: $i,B: $i] :
         ( account(A)
         & number(A,fortytwo)
         & balance(A,B)
         & ( ? [C: $i] : ( {$box(#p)} @ (value(B,C)) )
          => hasanswer(p) ) )) ) ).

tff(axiom_1,axiom-local,
    ( ( {$box(#cr)} @ (hasanswer(p)) )
   => ( {$box(#p)} @ (hasanswer(p)) ) ) ).

tff(axiom_1_0,axiom-local,
    ( ( {$box(#cr)} @ (hasanswer(p)) )
   => ( {$box(#t)} @ (hasanswer(p)) ) ) ).

tff(axiom_1_1,axiom-local,
    ( ( {$box(#bank)} @ (hasanswer(p)) )
   => ( {$box(#cr)} @ (hasanswer(p)) ) ) ).

tff(axiom_1_2,axiom-local,
    ( ( {$box(#t)} @ (code(fortytwo)) )
   => ( {$box(#it)} @ (code(fortytwo)) ) ) ).

tff(axiom_1_3,axiom-local,
    ( ( {$box(#cr)} @ (code(fortytwo)) )
   => ( {$box(#p)} @ (code(fortytwo)) ) ) ).

tff(axiom_1_4,axiom-local,
    ( ( {$box(#cr)} @ (code(fortytwo)) )
   => ( {$box(#t)} @ (code(fortytwo)) ) ) ).

tff(axiom_1_5,axiom-local,
    ( ( {$box(#bank)} @ (code(fortytwo)) )
   => ( {$box(#cr)} @ (code(fortytwo)) ) ) ).

tff(axiom_1_6,axiom-local,
    ( ( {$box(#t)} @ (code(fortytwo)) )
   => ( {$box(#it)} @ (code(fortytwo)) ) ) ).

tff(axiom_1_7,axiom-local,
    ! [X: $i] :
      ( ( {$box(#cr)} @ (identifiable(X)) )
     => ( {$box(#p)} @ (identifiable(X)) ) ) ).

tff(axiom_1_8,axiom-local,
    ! [X: $i] :
      ( ( {$box(#cr)} @ (identifiable(X)) )
     => ( {$box(#t)} @ (identifiable(X)) ) ) ).

tff(axiom_1_9,axiom-local,
    ! [X: $i] :
      ( ( {$box(#bank)} @ (identifiable(X)) )
     => ( {$box(#cr)} @ (identifiable(X)) ) ) ).

tff(axiom_1_10,axiom-local,
    ! [X: $i] :
      ( ( {$box(#t)} @ (identifiable(X)) )
     => ( {$box(#it)} @ (identifiable(X)) ) ) ).

tff(axiom_1_11,axiom-local,
    ! [X: $i,Y: $i] :
      ( ( {$box(#cr)} @ (number(X,Y)) )
     => ( {$box(#p)} @ (number(X,Y)) ) ) ).

tff(axiom_1_12,axiom-local,
    ! [X: $i,Y: $i] :
      ( ( {$box(#cr)} @ (number(X,Y)) )
     => ( {$box(#t)} @ (number(X,Y)) ) ) ).

tff(axiom_1_13,axiom-local,
    ! [X: $i,Y: $i] :
      ( ( {$box(#bank)} @ (number(X,Y)) )
     => ( {$box(#cr)} @ (number(X,Y)) ) ) ).

tff(axiom_1_14,axiom-local,
    ! [X: $i,Y: $i] :
      ( ( {$box(#t)} @ (number(X,Y)) )
     => ( {$box(#it)} @ (number(X,Y)) ) ) ).

tff(axiom_1_15,axiom-local,
    ! [X: $i] :
      ( ( {$box(#cr)} @ (account(X)) )
     => ( {$box(#p)} @ (account(X)) ) ) ).

tff(axiom_1_16,axiom-local,
    ! [X: $i] :
      ( ( {$box(#cr)} @ (account(X)) )
     => ( {$box(#t)} @ (account(X)) ) ) ).

tff(axiom_1_17,axiom-local,
    ! [X: $i] :
      ( ( {$box(#bank)} @ (account(X)) )
     => ( {$box(#cr)} @ (account(X)) ) ) ).

tff(axiom_1_18,axiom-local,
    ! [X: $i] :
      ( ( {$box(#t)} @ (account(X)) )
     => ( {$box(#it)} @ (account(X)) ) ) ).

tff(axiom_1_19,axiom-local,
    ! [X: $i,Y: $i] :
      ( ( {$box(#cr)} @ (balance(X,Y)) )
     => ( {$box(#p)} @ (balance(X,Y)) ) ) ).

tff(axiom_1_20,axiom-local,
    ! [X: $i,Y: $i] :
      ( ( {$box(#cr)} @ (balance(X,Y)) )
     => ( {$box(#t)} @ (balance(X,Y)) ) ) ).

tff(axiom_1_21,axiom-local,
    ! [X: $i,Y: $i] :
      ( ( {$box(#bank)} @ (balance(X,Y)) )
     => ( {$box(#cr)} @ (balance(X,Y)) ) ) ).

tff(axiom_1_22,axiom-local,
    ! [X: $i,Y: $i] :
      ( ( {$box(#t)} @ (balance(X,Y)) )
     => ( {$box(#it)} @ (balance(X,Y)) ) ) ).

tff(axiom_1_23,axiom-local,
    ! [X: $i,Y: $i] :
      ( ( {$box(#cr)} @ (value(X,Y)) )
     => ( {$box(#p)} @ (value(X,Y)) ) ) ).

tff(axiom_1_24,axiom-local,
    ! [X: $i,Y: $i] :
      ( ( {$box(#cr)} @ (value(X,Y)) )
     => ( {$box(#t)} @ (value(X,Y)) ) ) ).

tff(axiom_1_25,axiom-local,
    ! [X: $i,Y: $i] :
      ( ( {$box(#bank)} @ (value(X,Y)) )
     => ( {$box(#cr)} @ (value(X,Y)) ) ) ).

tff(axiom_1_26,axiom-local,
    ! [X: $i,Y: $i] :
      ( ( {$box(#t)} @ (value(X,Y)) )
     => ( {$box(#it)} @ (value(X,Y)) ) ) ).

tff(con,conjecture,
    ? [U: $i] :
      ( {$box(#p)}
      @ (( uttered(p,U)
        => ? [U1: $i] :
             ( {$box(#p)}
             @ (( uttered(p,U1)
               => ( {$box(#cr)}
                  @ (? [U2: $i] :
                       ( ( {$box(#t)} @ (uttered(t,U2)) )
                      => ( {$box(#cr)} @ (hasanswer(p)) ) )) ) )) ) )) ) ).

%------------------------------------------------------------------------------
