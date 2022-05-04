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

qmf(a_holds_key_at_for_t,axiom,
( #box : (a_holds(key(at, t))))).

qmf(a_is_party_of_protocol,axiom,
( #box : (party_of_protocol(a)))).

qmf(a_sent_message_i_to_b,axiom,
( #box : (message(sent(a, b, pair(a, an_a_nonce)))))).

qmf(a_stored_message_i,axiom,
( #box : (a_stored(pair(b, an_a_nonce))))).

qmf(b_hold_key_bt_for_t,axiom,
( #box : (b_holds(key(bt, t))))).

qmf(b_is_party_of_protocol,axiom,
( #box : (party_of_protocol(b)))).

qmf(nonce_a_is_fresh_to_b,axiom,
( #box : (fresh_to_b(an_a_nonce)))).

qmf(t_holds_key_at_for_a,axiom,
( #box : (t_holds(key(at, a))))).

qmf(t_holds_key_bt_for_b,axiom,
( #box : (t_holds(key(bt, b))))).

qmf(t_is_party_of_protocol,axiom,
( #box : (party_of_protocol(t)))).

qmf(ax1,axiom,
( #box : (b_holds(key(generate_key(an_a_nonce), a))))).

qmf(ax2,axiom,
( #box : (message(sent(a, b, pair(encrypt(triple(a, generate_key(an_a_nonce), generate_expiration_time(an_a_nonce)), bt), encrypt(generate_b_nonce(an_a_nonce), generate_key(an_a_nonce)))))))).

qmf(ax3,axiom,
( #box : (a_holds(key(generate_key(an_a_nonce), b))))).

qmf(ax4,axiom,
( #box : (message(sent(t, a, triple(encrypt(quadruple(b, an_a_nonce, generate_key(an_a_nonce), generate_expiration_time(an_a_nonce)), at), encrypt(triple(a, generate_key(an_a_nonce), generate_expiration_time(an_a_nonce)), bt), generate_b_nonce(an_a_nonce))))))).

qmf(ax5,axiom,
( #box : (message(sent(b, t, triple(b, generate_b_nonce(an_a_nonce), encrypt(triple(a, an_a_nonce, generate_expiration_time(an_a_nonce)), bt))))))).

qmf(ax6,axiom,
( #box : (b_stored(pair(a, an_a_nonce))))).

qmf(co1,conjecture,
( ? [U] : ( ( #box : (a_holds(key(U, b)))) & ( #box : (b_holds(key(U, a)))) ))).


%--------------------------------------------------------------------------
