% semantics
thf(semantics,logic,$modal ==
[$constants == $rigid,
$quantification == $constant,
$modalities == $modal_system_S5]).
% modalities

% propositions

% individual constants
thf(bt_type,type,(bt : ($i))).
thf(an_a_nonce_type,type,(an_a_nonce : ($i))).
thf(a_type,type,(a : ($i))).
thf(b_type,type,(b : ($i))).
thf(at_type,type,(at : ($i))).
thf(t_type,type,(t : ($i))).

% predicates
thf(a_holds_type,type,(a_holds : ($i>$o))).
thf(t_holds_type,type,(t_holds : ($i>$o))).
thf(party_of_protocol_type,type,(party_of_protocol : ($i>$o))).
thf(a_stored_type,type,(a_stored : ($i>$o))).
thf(fresh_to_b_type,type,(fresh_to_b : ($i>$o))).
thf(b_stored_type,type,(b_stored : ($i>$o))).
thf(b_holds_type,type,(b_holds : ($i>$o))).
thf(message_type,type,(message : ($i>$o))).

% functions
thf(generate_b_nonce_type,type,(generate_b_nonce : ($i>$i))).
thf(quadruple_type,type,(quadruple : ($i>$i>$i>$i>$i))).
thf(triple_type,type,(triple : ($i>$i>$i>$i))).
thf(encrypt_type,type,(encrypt : ($i>$i>$i))).
thf(generate_key_type,type,(generate_key : ($i>$i))).
thf(generate_expiration_time_type,type,(generate_expiration_time : ($i>$i))).
thf(sent_type,type,(sent : ($i>$i>$i>$i))).
thf(key_type,type,(key : ($i>$i>$i))).
thf(pair_type,type,(pair : ($i>$i>$i))).

% converted problem
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
thf(a_holds_key_at_for_t,axiom,( {$box} @ ( ( a_holds @ ( key @ at @ t ) ) ) ) ).
thf(a_is_party_of_protocol,axiom,( {$box} @ ( ( party_of_protocol @ a ) ) ) ).
thf(a_sent_message_i_to_b,axiom,( {$box} @ ( ( message @ ( sent @ a @ b @ ( pair @ a @ an_a_nonce ) ) ) ) ) ).
thf(a_stored_message_i,axiom,( {$box} @ ( ( a_stored @ ( pair @ b @ an_a_nonce ) ) ) ) ).
thf(a_forwards_secure,axiom,( {$box} @ ( ! [ U :$i ] : ( {$box} @ ( ! [ V :$i ] : ( {$box} @ ( ! [ W :$i ] : ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ! [ Z :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( message @ ( sent @ t @ a @ ( triple @ ( encrypt @ ( quadruple @ Y @ Z @ W @ V ) @ at ) @ X @ U ) ) ) ) ) & ( {$box} @ ( ( a_stored @ ( pair @ Y @ Z ) ) ) ) ) => ( ( {$box} @ ( ( message @ ( sent @ a @ Y @ ( pair @ X @ ( encrypt @ U @ W ) ) ) ) ) ) & ( {$box} @ ( ( a_holds @ ( key @ W @ Y ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(b_hold_key_bt_for_t,axiom,( {$box} @ ( ( b_holds @ ( key @ bt @ t ) ) ) ) ).
thf(b_is_party_of_protocol,axiom,( {$box} @ ( ( party_of_protocol @ b ) ) ) ).
thf(nonce_a_is_fresh_to_b,axiom,( {$box} @ ( ( fresh_to_b @ an_a_nonce ) ) ) ).
thf(b_creates_freash_nonces_in_time,axiom,( {$box} @ ( ! [ U :$i ] : ( {$box} @ ( ! [ V :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( message @ ( sent @ U @ b @ ( pair @ U @ V ) ) ) ) ) & ( {$box} @ ( ( fresh_to_b @ V ) ) ) ) => ( ( {$box} @ ( ( message @ ( sent @ b @ t @ ( triple @ b @ ( generate_b_nonce @ V ) @ ( encrypt @ ( triple @ U @ V @ ( generate_expiration_time @ V ) ) @ bt ) ) ) ) ) ) & ( {$box} @ ( ( b_stored @ ( pair @ U @ V ) ) ) ) ) ) ) ) ) ) ) ).
thf(b_accepts_secure_session_key,axiom,( {$box} @ ( ! [ V :$i ] : ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( message @ ( sent @ X @ b @ ( pair @ ( encrypt @ ( triple @ X @ V @ ( generate_expiration_time @ Y ) ) @ bt ) @ ( encrypt @ ( generate_b_nonce @ Y ) @ V ) ) ) ) ) ) & ( {$box} @ ( ( b_stored @ ( pair @ X @ Y ) ) ) ) ) => ( {$box} @ ( ( b_holds @ ( key @ V @ X ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(t_holds_key_at_for_a,axiom,( {$box} @ ( ( t_holds @ ( key @ at @ a ) ) ) ) ).
thf(t_holds_key_bt_for_b,axiom,( {$box} @ ( ( t_holds @ ( key @ bt @ b ) ) ) ) ).
thf(t_is_party_of_protocol,axiom,( {$box} @ ( ( party_of_protocol @ t ) ) ) ).
thf(server_t_generates_key,axiom,( {$box} @ ( ! [ U :$i ] : ( {$box} @ ( ! [ V :$i ] : ( {$box} @ ( ! [ W :$i ] : ( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ! [ Z :$i ] : ( {$box} @ ( ! [ X1 :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( message @ ( sent @ U @ t @ ( triple @ U @ V @ ( encrypt @ ( triple @ W @ X @ Y ) @ Z ) ) ) ) ) ) & ( ( {$box} @ ( ( t_holds @ ( key @ Z @ U ) ) ) ) & ( {$box} @ ( ( t_holds @ ( key @ X1 @ W ) ) ) ) ) ) => ( {$box} @ ( ( message @ ( sent @ t @ W @ ( triple @ ( encrypt @ ( quadruple @ U @ X @ ( generate_key @ X ) @ Y ) @ X1 ) @ ( encrypt @ ( triple @ W @ ( generate_key @ X ) @ Y ) @ Z ) @ V ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
%--------------------------------------------------------------------------
