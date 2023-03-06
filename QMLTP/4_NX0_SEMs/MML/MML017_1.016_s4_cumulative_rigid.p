%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : Natural Language Processing
% Problem  : Bank example
% Version  : [QMLTP] axioms.
% English  : Speaker S wishes to find out from a bank teller A the balance of
%            S's account, number 42.

% Refs     : [Sto97] Stone (1997), Applying Theories of Communicative Actio
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : MML017+1 [QMLTP]
%          : MML017_1.016_s4_cumulative_rigid.p [QMLTP/4_NX0_SEMs]

% Status   : Theorem
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   28 (   0 unt;  14 typ;   0 def)
%            Number of atoms       :  242 (   0 equ)
%            Maximal formula atoms :    4 (  17 avg)
%            Number of connectives :  154 (   0   ~;   0   |;  58   &)
%                                         (   0 <=>;  22  =>;   0  <=;   0 <~>)
%                                         (  74 {}@;  74 {#};   0 {.})
%            Maximal formula depth :    4 (   2 avg)
%            Maximal term depth    :    2 (   1 avg)
%            Number of FOOLs       :   74 (  74 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   17 (  11   >;   6   *;   0   +;   0  <<)
%            Number of predicates  :   11 (  10 usr;   1 prp; 0-2 aty)
%            Number of functors    :    7 (   4 usr;   5 con; 0-2 aty)
%            Number of variables   :   30 (;  18   !;  12   ?;  30   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s4_cumulative_rigid,logic,
    $modal == 
      [ $constants == $rigid,
        $quantification == $cumulative,
        $modalities == $modal_system_S4 ] ).

tff(answerable_decl,type,
    answerable: $o ).

tff(fortytwo_decl,type,
    fortytwo: $i ).

tff(s_decl,type,
    s: $i ).

tff(number_decl,type,
    number: ( $i * $i ) > $o ).

tff(code_decl,type,
    code: $i > $o ).

tff(belong_decl,type,
    belong: ( $i * $i ) > $o ).

tff(balance_decl,type,
    balance: ( $i * $i ) > $o ).

tff(belongs_decl,type,
    belongs: ( $i * $i ) > $o ).

tff(identifiable_decl,type,
    identifiable: $i > $o ).

tff(value_decl,type,
    value: ( $i * $i ) > $o ).

tff(done_decl,type,
    done: $i > $o ).

tff(account_decl,type,
    account: $i > $o ).

tff(u0_decl,type,
    u0: $i > $i ).

tff(u1_decl,type,
    u1: ( $i * $i ) > $i ).

tff(axiom_1,axiom-local,
    ( {$box(#bank)}
    @ (! [C: $i] :
         ( code(C)
        => ? [A: $i] :
             ( {$box(#bank)}
             @ (( account(A)
                & number(A,C)
                & identifiable(A) )) ) )) ) ).

tff(axiom_2,axiom-local,
    {$box(#bank)} @ (code(fortytwo)) ).

tff(axiom_3,axiom-local,
    ( {$box(#bank)}
    @ (! [A: $i] :
       ? [B: $i] :
         ( {$box(#bank)}
         @ (( account(A)
           => balance(A,B) )) )) ) ).

tff(axiom_4,axiom-local,
    ( {$box(#bank)}
    @ (! [A: $i,B: $i] :
         ( ( balance(A,B)
           & identifiable(A) )
        => identifiable(B) )) ) ).

tff(axiom_5,axiom-local,
    ( {$box(#bank)}
    @ (! [A: $i,B: $i] :
         ( balance(A,B)
        => ? [V: $i] : ( {$box(#a)} @ (value(B,V)) ) )) ) ).

tff(axiom_phi0_aa,axiom-local,
    ( {$box(#a)}
    @ (! [A: $i] :
         ( ( ( {$box(#a)}
             @ (( account(A)
                & number(A,fortytwo)
                & identifiable(A) )) )
           & done(u0(A)) )
        => ( ( {$box(#a)} @ (belongs(A,s)) )
           & ( {$box(#s)} @ (belong(A,s)) ) ) )) ) ).

tff(axiom_phi0_as,axiom-local,
    ( {$box(#a)}
    @ (! [A: $i] :
         ( ( ( {$box(#s)}
             @ (( account(A)
                & number(A,fortytwo)
                & identifiable(A) )) )
           & done(u0(A)) )
        => ( ( {$box(#a)} @ (belongs(A,s)) )
           & ( {$box(#s)} @ (belong(A,s)) ) ) )) ) ).

tff(axiom_phi0_sa,axiom-local,
    ( {$box(#s)}
    @ (! [A: $i] :
         ( ( ( {$box(#a)}
             @ (( account(A)
                & number(A,fortytwo)
                & identifiable(A) )) )
           & done(u0(A)) )
        => ( ( {$box(#a)} @ (belongs(A,s)) )
           & ( {$box(#s)} @ (belong(A,s)) ) ) )) ) ).

tff(axiom_phi0_ss,axiom-local,
    ( {$box(#s)}
    @ (! [A: $i] :
         ( ( ( {$box(#a)}
             @ (( account(A)
                & number(A,fortytwo)
                & identifiable(A) )) )
           & done(u0(A)) )
        => ( ( {$box(#a)} @ (belongs(A,s)) )
           & ( {$box(#s)} @ (belong(A,s)) ) ) )) ) ).

tff(axiom_phi1_aa,axiom-local,
    ( {$box(#a)}
    @ (! [A: $i,B: $i] :
         ( ( {$box(#a)}
           @ (( account(A)
              & belongs(A,s)
              & balance(A,B)
              & identifiable(B)
              & ? [V: $i] : ( {$box(#a)} @ (value(B,V)) )
              & done(u1(A,B)) )) )
        => ( ( {$box(#a)} @ (answerable) )
           & ( {$box(#s)} @ (answerable) ) ) )) ) ).

tff(axiom_phi1_as,axiom-local,
    ( {$box(#a)}
    @ (! [A: $i,B: $i] :
         ( ( {$box(#s)}
           @ (( account(A)
              & belongs(A,s)
              & balance(A,B)
              & identifiable(B)
              & ? [V: $i] : ( {$box(#a)} @ (value(B,V)) )
              & done(u1(A,B)) )) )
        => ( ( {$box(#a)} @ (answerable) )
           & ( {$box(#s)} @ (answerable) ) ) )) ) ).

tff(axiom_phi1_sa,axiom-local,
    ( {$box(#s)}
    @ (! [A: $i,B: $i] :
         ( ( {$box(#a)}
           @ (( account(A)
              & belongs(A,s)
              & balance(A,B)
              & identifiable(B)
              & ? [V: $i] : ( {$box(#a)} @ (value(B,V)) )
              & done(u1(A,B)) )) )
        => ( ( {$box(#a)} @ (answerable) )
           & ( {$box(#s)} @ (answerable) ) ) )) ) ).

tff(axiom_phi1_ss,axiom-local,
    ( {$box(#s)}
    @ (! [A: $i,B: $i] :
         ( ( {$box(#s)}
           @ (( account(A)
              & belongs(A,s)
              & balance(A,B)
              & identifiable(B)
              & ? [V: $i] : ( {$box(#a)} @ (value(B,V)) )
              & done(u1(A,B)) )) )
        => ( ( {$box(#a)} @ (answerable) )
           & ( {$box(#s)} @ (answerable) ) ) )) ) ).

tff(con,conjecture,
    ? [U0: $i] :
      ( ( {$box(#a)}
        @ (( done(U0)
          => ( ( {$box(#a)}
               @ (? [U1: $i] :
                    ( ( {$box(#a)}
                      @ (( done(U1)
                        => ( ( {$box(#a)} @ (answerable) )
                           & ( {$box(#s)} @ (answerable) ) ) )) )
                    & ( {$box(#s)}
                      @ (( done(U1)
                        => ( ( {$box(#a)} @ (answerable) )
                           & ( {$box(#s)} @ (answerable) ) ) )) ) )) )
             & ( {$box(#s)}
               @ (? [U1: $i] :
                    ( ( {$box(#a)}
                      @ (( done(U1)
                        => ( ( {$box(#a)} @ (answerable) )
                           & ( {$box(#s)} @ (answerable) ) ) )) )
                    & ( {$box(#s)}
                      @ (( done(U1)
                        => ( ( {$box(#a)} @ (answerable) )
                           & ( {$box(#s)} @ (answerable) ) ) )) ) )) ) ) )) )
      & ( {$box(#s)}
        @ (( done(U0)
          => ( ( {$box(#a)}
               @ (? [U1: $i] :
                    ( ( {$box(#a)}
                      @ (( done(U1)
                        => ( ( {$box(#a)} @ (answerable) )
                           & ( {$box(#s)} @ (answerable) ) ) )) )
                    & ( {$box(#s)}
                      @ (( done(U1)
                        => ( ( {$box(#a)} @ (answerable) )
                           & ( {$box(#s)} @ (answerable) ) ) )) ) )) )
             & ( {$box(#s)}
               @ (? [U1: $i] :
                    ( ( {$box(#a)}
                      @ (( done(U1)
                        => ( ( {$box(#a)} @ (answerable) )
                           & ( {$box(#s)} @ (answerable) ) ) )) )
                    & ( {$box(#s)}
                      @ (( done(U1)
                        => ( ( {$box(#a)} @ (answerable) )
                           & ( {$box(#s)} @ (answerable) ) ) )) ) )) ) ) )) ) ) ).

%------------------------------------------------------------------------------
