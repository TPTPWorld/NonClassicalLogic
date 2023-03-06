%------------------------------------------------------------------------------
% File     : ZZZ999_XX : TPTP v9.0.0. Released v9.0.0.
% Domain   : Software Verification
% Problem  : Fact 1 of the Neumann-Stubblebine analysis
% Version  : [QMLTP] axioms.
% English  : Goedel encoding of the TPTP SWV010+1 problem

% Refs     : [Goe69] Goedel (1969), An Interpretation of the Intuitionistic
%          : [RO12]  Raths & Otten (2012), The QMLTP Problem Library for Fi
% Source   : [QMLTP]
% Names    : GSV010+1 [QMLTP]
%          : GSV010_1.039_d_cumulative_flexible.p [QMLTP/4_NX0_SEMs]

% Status   : Unknown
% Rating   : ? v9.0.0
% Syntax   : Number of formulae    :   37 (   0 unt;  23 typ;   0 def)
%            Number of atoms       :  119 (   0 equ)
%            Maximal formula atoms :    2 (   8 avg)
%            Number of connectives :   58 (   0   ~;   0   |;   7   &)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%                                         (  47 {}@;   0 {#};   0 {.})
%            Maximal formula depth :    2 (   2 avg)
%            Maximal term depth    :    6 (   2 avg)
%            Number of FOOLs       :   47 (  47 fml;   0 var)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   27 (  17   >;  10   *;   0   +;   0  <<)
%            Number of predicates  :    9 (   8 usr;   0 prp; 1-1 aty)
%            Number of functors    :   15 (  15 usr;   6 con; 0-4 aty)
%            Number of variables   :   18 (;  18   !;   0   ?;  18   :)
% SPC      : NX0_UNK_RFO_NEQ_NAR

% Comments :
%------------------------------------------------------------------------------
tff(d_cumulative_flexible,logic,
    $modal == 
      [ $constants == $flexible,
        $quantification == $cumulative,
        $modalities == $modal_system_D ] ).

tff(bt_decl,type,
    bt: $i ).

tff(an_a_nonce_decl,type,
    an_a_nonce: $i ).

tff(a_decl,type,
    a: $i ).

tff(b_decl,type,
    b: $i ).

tff(at_decl,type,
    at: $i ).

tff(t_decl,type,
    t: $i ).

tff(a_holds_decl,type,
    a_holds: $i > $o ).

tff(t_holds_decl,type,
    t_holds: $i > $o ).

tff(party_of_protocol_decl,type,
    party_of_protocol: $i > $o ).

tff(a_stored_decl,type,
    a_stored: $i > $o ).

tff(fresh_to_b_decl,type,
    fresh_to_b: $i > $o ).

tff(b_stored_decl,type,
    b_stored: $i > $o ).

tff(b_holds_decl,type,
    b_holds: $i > $o ).

tff(message_decl,type,
    message: $i > $o ).

tff(generate_b_nonce_decl,type,
    generate_b_nonce: $i > $i ).

tff(quadruple_decl,type,
    quadruple: ( $i * $i * $i * $i ) > $i ).

tff(triple_decl,type,
    triple: ( $i * $i * $i ) > $i ).

tff(encrypt_decl,type,
    encrypt: ( $i * $i ) > $i ).

tff(generate_key_decl,type,
    generate_key: $i > $i ).

tff(generate_expiration_time_decl,type,
    generate_expiration_time: $i > $i ).

tff(sent_decl,type,
    sent: ( $i * $i * $i ) > $i ).

tff(key_decl,type,
    key: ( $i * $i ) > $i ).

tff(pair_decl,type,
    pair: ( $i * $i ) > $i ).

tff(a_holds_key_at_for_t,axiom-local,
    {$box} @ (a_holds(key(at,t))) ).

tff(a_is_party_of_protocol,axiom-local,
    {$box} @ (party_of_protocol(a)) ).

tff(a_sent_message_i_to_b,axiom-local,
    {$box} @ (message(sent(a,b,pair(a,an_a_nonce)))) ).

tff(a_stored_message_i,axiom-local,
    {$box} @ (a_stored(pair(b,an_a_nonce))) ).

tff(a_forwards_secure,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (! [V: $i] :
              ( {$box}
              @ (! [W: $i] :
                   ( {$box}
                   @ (! [X: $i] :
                        ( {$box}
                        @ (! [Y: $i] :
                             ( {$box}
                             @ (! [Z: $i] :
                                  ( {$box}
                                  @ (( ( ( {$box} @ (message(sent(t,a,triple(encrypt(quadruple(Y,Z,W,V),at),X,U)))) )
                                       & ( {$box} @ (a_stored(pair(Y,Z))) ) )
                                    => ( ( {$box} @ (message(sent(a,Y,pair(X,encrypt(U,W))))) )
                                       & ( {$box} @ (a_holds(key(W,Y))) ) ) )) )) )) )) )) )) )) ) ).

tff(b_hold_key_bt_for_t,axiom-local,
    {$box} @ (b_holds(key(bt,t))) ).

tff(b_is_party_of_protocol,axiom-local,
    {$box} @ (party_of_protocol(b)) ).

tff(nonce_a_is_fresh_to_b,axiom-local,
    {$box} @ (fresh_to_b(an_a_nonce)) ).

tff(b_creates_freash_nonces_in_time,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (! [V: $i] :
              ( {$box}
              @ (( ( ( {$box} @ (message(sent(U,b,pair(U,V)))) )
                   & ( {$box} @ (fresh_to_b(V)) ) )
                => ( ( {$box} @ (message(sent(b,t,triple(b,generate_b_nonce(V),encrypt(triple(U,V,generate_expiration_time(V)),bt))))) )
                   & ( {$box} @ (b_stored(pair(U,V))) ) ) )) )) )) ) ).

tff(b_accepts_secure_session_key,axiom-local,
    ( {$box}
    @ (! [V: $i] :
         ( {$box}
         @ (! [X: $i] :
              ( {$box}
              @ (! [Y: $i] :
                   ( {$box}
                   @ (( ( ( {$box} @ (message(sent(X,b,pair(encrypt(triple(X,V,generate_expiration_time(Y)),bt),encrypt(generate_b_nonce(Y),V))))) )
                        & ( {$box} @ (b_stored(pair(X,Y))) ) )
                     => ( {$box} @ (b_holds(key(V,X))) ) )) )) )) )) ) ).

tff(t_holds_key_at_for_a,axiom-local,
    {$box} @ (t_holds(key(at,a))) ).

tff(t_holds_key_bt_for_b,axiom-local,
    {$box} @ (t_holds(key(bt,b))) ).

tff(t_is_party_of_protocol,axiom-local,
    {$box} @ (party_of_protocol(t)) ).

tff(server_t_generates_key,axiom-local,
    ( {$box}
    @ (! [U: $i] :
         ( {$box}
         @ (! [V: $i] :
              ( {$box}
              @ (! [W: $i] :
                   ( {$box}
                   @ (! [X: $i] :
                        ( {$box}
                        @ (! [Y: $i] :
                             ( {$box}
                             @ (! [Z: $i] :
                                  ( {$box}
                                  @ (! [X1: $i] :
                                       ( {$box}
                                       @ (( ( ( {$box} @ (message(sent(U,t,triple(U,V,encrypt(triple(W,X,Y),Z))))) )
                                            & ( {$box} @ (t_holds(key(Z,U))) )
                                            & ( {$box} @ (t_holds(key(X1,W))) ) )
                                         => ( {$box} @ (message(sent(t,W,triple(encrypt(quadruple(U,X,generate_key(X),Y),X1),encrypt(triple(W,generate_key(X),Y),Z),V)))) ) )) )) )) )) )) )) )) )) ) ).

%------------------------------------------------------------------------------
