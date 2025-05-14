% semantics
% modalities

% propositions

% individual constants
thf(an_a_nonce_type,type,(an_a_nonce : ($i))).
thf(at_type,type,(at : ($i))).
thf(bt_type,type,(bt : ($i))).
thf(a_type,type,(a : ($i))).
thf(b_type,type,(b : ($i))).
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
thf(generate_key_type,type,(generate_key : ($i>$i))).
thf(encrypt_type,type,(encrypt : ($i>$i>$i))).
thf(generate_expiration_time_type,type,(generate_expiration_time : ($i>$i))).
thf(sent_type,type,(sent : ($i>$i>$i>$i))).
thf(key_type,type,(key : ($i>$i>$i))).
thf(pair_type,type,(pair : ($i>$i>$i))).

% converted problem
%--------------------------------------------------------------------------
% File     : GSV011+1 : QMLTP v1.1
% Domain   : GSV (Goedel translation of Software Verification)
% Problem  : Goedel translation of SWV011+1 (from TPTP-v5.0.0)
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
%             K   Theorem      Theorem      Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         0.50         0.25          v1.1
%             D   0.50         0.33         0.17          v1.1
%             T   0.50         0.33         0.17          v1.1
%             S4  0.50         0.50         0.33          v1.1
%             S5  0.50         0.60         0.40          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf ( a_holds_key_at_for_t , axiom , ( $box @ ( ( a_holds @ ( key @ at @ t ) ) ) ) ) .
thf ( a_is_party_of_protocol , axiom , ( $box @ ( ( party_of_protocol @ a ) ) ) ) .
thf ( a_sent_message_i_to_b , axiom , ( $box @ ( ( message @ ( sent @ a @ b @ ( pair @ a @ an_a_nonce ) ) ) ) ) ) .
thf ( a_stored_message_i , axiom , ( $box @ ( ( a_stored @ ( pair @ b @ an_a_nonce ) ) ) ) ) .
thf ( b_hold_key_bt_for_t , axiom , ( $box @ ( ( b_holds @ ( key @ bt @ t ) ) ) ) ) .
thf ( b_is_party_of_protocol , axiom , ( $box @ ( ( party_of_protocol @ b ) ) ) ) .
thf ( nonce_a_is_fresh_to_b , axiom , ( $box @ ( ( fresh_to_b @ an_a_nonce ) ) ) ) .
thf ( t_holds_key_at_for_a , axiom , ( $box @ ( ( t_holds @ ( key @ at @ a ) ) ) ) ) .
thf ( t_holds_key_bt_for_b , axiom , ( $box @ ( ( t_holds @ ( key @ bt @ b ) ) ) ) ) .
thf ( t_is_party_of_protocol , axiom , ( $box @ ( ( party_of_protocol @ t ) ) ) ) .
thf ( ax1 , axiom , ( $box @ ( ( b_holds @ ( key @ ( generate_key @ an_a_nonce ) @ a ) ) ) ) ) .
thf ( ax2 , axiom , ( $box @ ( ( message @ ( sent @ a @ b @ ( pair @ ( encrypt @ ( triple @ a @ ( generate_key @ an_a_nonce ) @ ( generate_expiration_time @ an_a_nonce ) ) @ bt ) @ ( encrypt @ ( generate_b_nonce @ an_a_nonce ) @ ( generate_key @ an_a_nonce ) ) ) ) ) ) ) ) .
thf ( ax3 , axiom , ( $box @ ( ( a_holds @ ( key @ ( generate_key @ an_a_nonce ) @ b ) ) ) ) ) .
thf ( ax4 , axiom , ( $box @ ( ( message @ ( sent @ t @ a @ ( triple @ ( encrypt @ ( quadruple @ b @ an_a_nonce @ ( generate_key @ an_a_nonce ) @ ( generate_expiration_time @ an_a_nonce ) ) @ at ) @ ( encrypt @ ( triple @ a @ ( generate_key @ an_a_nonce ) @ ( generate_expiration_time @ an_a_nonce ) ) @ bt ) @ ( generate_b_nonce @ an_a_nonce ) ) ) ) ) ) ) .
thf ( ax5 , axiom , ( $box @ ( ( message @ ( sent @ b @ t @ ( triple @ b @ ( generate_b_nonce @ an_a_nonce ) @ ( encrypt @ ( triple @ a @ an_a_nonce @ ( generate_expiration_time @ an_a_nonce ) ) @ bt ) ) ) ) ) ) ) .
thf ( ax6 , axiom , ( $box @ ( ( b_stored @ ( pair @ a @ an_a_nonce ) ) ) ) ) .
thf ( co1 , conjecture , ( ? [ U :$i ] : ( ( $box @ ( ( a_holds @ ( key @ U @ b ) ) ) ) & ( $box @ ( ( b_holds @ ( key @ U @ a ) ) ) ) ) ) ) .
%--------------------------------------------------------------------------