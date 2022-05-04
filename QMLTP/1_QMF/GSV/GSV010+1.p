%--------------------------------------------------------------------------
% File     : GSV010+1 : QMLTP v1.1
% Domain   : GSV (Goedel translation of Software Verification)             
% Problem  : Goedel translation of SWV010+1 (from TPTP-v5.0.0)      
% Version  : Especial.
% English  :

% Refs     : [TPTP] G. Sutcliffe. TPTP library v2.7.0. http://www.tptp.org 
%            [SS98] G. Sutcliffe, C.B. Suttner. The TPTP Problem Library:  
%                   CNF Release v1.2.1. Journal of Automated Reasoning,    
%                   21(2):177--203, 1998.                                  
%            [Goe69] K. Goedel. An interpretation of the intuitionistic    
%                    sentential logic. In J. Hintikka, Ed., The Philosophy 
%                    of Mathematics, pp~128--129. Oxford University Press, 
%                    1969.                                                 
% Source   : [TPTP], [Goe69]
% Names    :

% Status   :      varying      cumulative   constant   
%             K   Unsolved     Unsolved     Unsolved      v1.1
%             D   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             T   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S4  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S5  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         1.00         1.00          v1.1
%             D   0.75         0.83         0.83          v1.1
%             T   0.75         0.83         0.83          v1.1
%             S4  0.75         0.83         0.83          v1.1
%             S5  0.75         0.80         0.80          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------

qmf(a_holds_key_at_for_t,axiom,
( #box : (a_holds(key(at, t))))).

qmf(a_is_party_of_protocol,axiom,
( #box : (party_of_protocol(a)))).

qmf(a_sent_message_i_to_b,axiom,
( #box : (message(sent(a, b, pair(a, an_a_nonce)))))).

qmf(a_stored_message_i,axiom,
( #box : (a_stored(pair(b, an_a_nonce))))).

qmf(a_forwards_secure,axiom,
( #box : ( ! [U] : ( #box : ( ! [V] : ( #box : ( ! [W] : ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : ( ! [Z] : ( #box : (( ( #box : (message(sent(t, a, triple(encrypt(quadruple(Y, Z, W, V), at), X, U))))) & ( #box : (a_stored(pair(Y, Z)))) ) => ( ( #box : (message(sent(a, Y, pair(X, encrypt(U, W)))))) & ( #box : (a_holds(key(W, Y)))) ) ))))))))))))))).

qmf(b_hold_key_bt_for_t,axiom,
( #box : (b_holds(key(bt, t))))).

qmf(b_is_party_of_protocol,axiom,
( #box : (party_of_protocol(b)))).

qmf(nonce_a_is_fresh_to_b,axiom,
( #box : (fresh_to_b(an_a_nonce)))).

qmf(b_creates_freash_nonces_in_time,axiom,
( #box : ( ! [U] : ( #box : ( ! [V] : ( #box : (( ( #box : (message(sent(U, b, pair(U, V))))) & ( #box : (fresh_to_b(V))) ) => ( ( #box : (message(sent(b, t, triple(b, generate_b_nonce(V), encrypt(triple(U, V, generate_expiration_time(V)), bt)))))) & ( #box : (b_stored(pair(U, V)))) ) ))))))).

qmf(b_accepts_secure_session_key,axiom,
( #box : ( ! [V] : ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : (( ( #box : (message(sent(X, b, pair(encrypt(triple(X, V, generate_expiration_time(Y)), bt), encrypt(generate_b_nonce(Y), V)))))) & ( #box : (b_stored(pair(X, Y)))) ) => ( #box : (b_holds(key(V, X)))) ))))))))).

qmf(t_holds_key_at_for_a,axiom,
( #box : (t_holds(key(at, a))))).

qmf(t_holds_key_bt_for_b,axiom,
( #box : (t_holds(key(bt, b))))).

qmf(t_is_party_of_protocol,axiom,
( #box : (party_of_protocol(t)))).

qmf(server_t_generates_key,axiom,
( #box : ( ! [U] : ( #box : ( ! [V] : ( #box : ( ! [W] : ( #box : ( ! [X] : ( #box : ( ! [Y] : ( #box : ( ! [Z] : ( #box : ( ! [X1] : ( #box : (( ( #box : (message(sent(U, t, triple(U, V, encrypt(triple(W, X, Y), Z)))))) & ( ( #box : (t_holds(key(Z, U)))) & ( #box : (t_holds(key(X1, W)))) ) ) => ( #box : (message(sent(t, W, triple(encrypt(quadruple(U, X, generate_key(X), Y), X1), encrypt(triple(W, generate_key(X), Y), Z), V))))) ))))))))))))))))).


%--------------------------------------------------------------------------
