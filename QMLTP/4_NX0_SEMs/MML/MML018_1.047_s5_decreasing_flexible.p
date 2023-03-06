%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : Natural Language Processing
% Problem  : Bank example (variant 2)
% Version  : [QMLTP] axioms.
% English  : Patron p wishes to find out from a bank teller t the balance of
%            p's account, number 42.

% Refs     : [Sto99] Stone (1999), Indefinite Information in Modal Logic Pr
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : MML018+1 [QMLTP]
%          : MML018_1.047_s5_decreasing_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :    7 (   0 unt;   4 typ;   0 def)
%            Number of atoms       :   14 (   0 equ)
%            Maximal formula atoms :    2 (   4 avg)
%            Number of connectives :    6 (   0   ~;   0   |;   0   &)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   5 {}@;   5 {#};   0 {.})
%            Maximal formula depth :    3 (   2 avg)
%            Maximal term depth    :    1 (   1 avg)
%            Number of FOOLs       :    5 (   5 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :    4 (   2   >;   2   *;   0   +;   0  <<)
%            Number of predicates  :    3 (   2 usr;   0 prp; 1-2 aty)
%            Number of functors    :    5 (   2 usr;   5 con; 0-0 aty)
%            Number of variables   :    3 (;   1   !;   2   ?;   3   :)
% SPC      : TH0_CSA_EQU_NAR

% Comments :
%------------------------------------------------------------------------------
tff(s5_decreasing_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $decreasing,
        $modalities == $modal_system_S5 ] ).

tff(p_decl,type,
    p: $i ).

tff(fortytwo_decl,type,
    fortytwo: $i ).

tff(balance_decl,type,
    balance: ( $i * $i ) > $o ).

tff(account_decl,type,
    account: ( $i * $i ) > $o ).

tff(axiom_1,axiom-local,
    ( {$box(#bank)}
    @ (! [X: $i] :
         ( {$box(#cr)}
         @ (( account(p,X)
           => ? [B: $i] : ( {$box(#t)} @ (balance(p,B)) ) )) )) ) ).

tff(axiom_1_0,axiom-local,
    {$box(#cr)} @ (account(p,fortytwo)) ).

tff(con,conjecture,
    ? [B: $i] : ( {$box(#t)} @ (balance(p,B)) ) ).

%------------------------------------------------------------------------------
