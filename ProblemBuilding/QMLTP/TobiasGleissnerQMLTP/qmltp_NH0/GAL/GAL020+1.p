% propositions

% individual constants
thf(e11_type,type,(e11 : ($i))).
thf(e10_type,type,(e10 : ($i))).
thf(e13_type,type,(e13 : ($i))).
thf(e12_type,type,(e12 : ($i))).
thf(e20_type,type,(e20 : ($i))).
thf(e22_type,type,(e22 : ($i))).
thf(e21_type,type,(e21 : ($i))).
thf(e23_type,type,(e23 : ($i))).

% predicates
thf(qmltpeq_type,type,(qmltpeq : ($i>$i>$o))).

% functions
thf(op2_type,type,(op2 : ($i>$i>$i))).
thf(op1_type,type,(op1 : ($i>$i>$i))).
thf(h_type,type,(h : ($i>$i))).
thf(j_type,type,(j : ($i>$i))).

% converted problem
%--------------------------------------------------------------------------
% File     : GAL020+1 : QMLTP v1.1
% Domain   : GAL (Goedel translation of Algebra)
% Problem  : Goedel translation of ALG020+1 (from TPTP-v5.0.0)
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
%             T   Unsolved     Unsolved     Unsolved      v1.1
%             S4  Unsolved     Unsolved     Unsolved      v1.1
%             S5  Unsolved     Unsolved     Unsolved      v1.1
%
% Rating   :      varying      cumulative   constant
%             K   1.00         1.00         1.00          v1.1
%             D   0.75         0.83         0.83          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  1.00         1.00         1.00          v1.1
%             S5  1.00         1.00         1.00          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
%--------------------------------------------------------------------------
thf(reflexivity,axiom,( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ( qmltpeq @ X @ X ) ) ) ) ) ).
thf(symmetry,axiom,( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ X @ Y ) ) ) => ( {$box} @ ( ( qmltpeq @ Y @ X ) ) ) ) ) ) ) ) ) ).
thf(transitivity,axiom,( {$box} @ ( ! [ X :$i ] : ( {$box} @ ( ! [ Y :$i ] : ( {$box} @ ( ! [ Z :$i ] : ( {$box} @ ( ( ( {$box} @ ( ( qmltpeq @ X @ Y ) ) ) & ( {$box} @ ( ( qmltpeq @ Y @ Z ) ) ) ) => ( {$box} @ ( ( qmltpeq @ X @ Z ) ) ) ) ) ) ) ) ) ) ) ).
thf(h_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) => ( {$box} @ ( ( qmltpeq @ ( h @ A ) @ ( h @ B ) ) ) ) ) ) ) ) ) ) ).
thf(j_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) => ( {$box} @ ( ( qmltpeq @ ( j @ A ) @ ( j @ B ) ) ) ) ) ) ) ) ) ) ).
thf(op1_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) => ( {$box} @ ( ( qmltpeq @ ( op1 @ A @ C ) @ ( op1 @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(op1_substitution_2,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) => ( {$box} @ ( ( qmltpeq @ ( op1 @ C @ A ) @ ( op1 @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(op2_substitution_1,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) => ( {$box} @ ( ( qmltpeq @ ( op2 @ A @ C ) @ ( op2 @ B @ C ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(op2_substitution_2,axiom,( {$box} @ ( ! [ A :$i ] : ( {$box} @ ( ! [ B :$i ] : ( {$box} @ ( ! [ C :$i ] : ( {$box} @ ( ( {$box} @ ( ( qmltpeq @ A @ B ) ) ) => ( {$box} @ ( ( qmltpeq @ ( op2 @ C @ A ) @ ( op2 @ C @ B ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(ax1,axiom,( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e10 @ e11 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e10 @ e12 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e10 @ e13 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e11 @ e12 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e11 @ e13 ) ) ) ) ) ) & ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e12 @ e13 ) ) ) ) ) ) ) ) ) ) ) ).
thf(ax2,axiom,( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e20 @ e21 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e20 @ e22 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e20 @ e23 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e21 @ e22 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e21 @ e23 ) ) ) ) ) ) & ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e22 @ e23 ) ) ) ) ) ) ) ) ) ) ) ).
thf(ax3,axiom,( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e10 @ e20 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e10 @ e21 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e10 @ e22 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e10 @ e23 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e11 @ e20 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e11 @ e21 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e11 @ e22 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e11 @ e23 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e12 @ e20 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e12 @ e21 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e12 @ e22 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e12 @ e23 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e13 @ e20 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e13 @ e21 ) ) ) ) ) ) & ( ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e13 @ e22 ) ) ) ) ) ) & ( {$box} @ ( ~ ( ( {$box} @ ( ( qmltpeq @ e13 @ e23 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(ax4,axiom,( ( {$box} @ ( ( qmltpeq @ ( op1 @ e10 @ e10 ) @ e10 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op1 @ e10 @ e11 ) @ e11 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op1 @ e10 @ e12 ) @ e12 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op1 @ e10 @ e13 ) @ e13 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op1 @ e11 @ e10 ) @ e11 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op1 @ e11 @ e11 ) @ e10 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op1 @ e11 @ e12 ) @ e13 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op1 @ e11 @ e13 ) @ e12 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op1 @ e12 @ e10 ) @ e12 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op1 @ e12 @ e11 ) @ e13 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op1 @ e12 @ e12 ) @ e10 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op1 @ e12 @ e13 ) @ e11 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op1 @ e13 @ e10 ) @ e13 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op1 @ e13 @ e11 ) @ e12 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op1 @ e13 @ e12 ) @ e11 ) ) ) & ( {$box} @ ( ( qmltpeq @ ( op1 @ e13 @ e13 ) @ e10 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(ax5,axiom,( ( {$box} @ ( ( qmltpeq @ ( op2 @ e20 @ e20 ) @ e20 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op2 @ e20 @ e21 ) @ e21 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op2 @ e20 @ e22 ) @ e22 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op2 @ e20 @ e23 ) @ e23 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op2 @ e21 @ e20 ) @ e21 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op2 @ e21 @ e21 ) @ e23 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op2 @ e21 @ e22 ) @ e20 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op2 @ e21 @ e23 ) @ e22 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op2 @ e22 @ e20 ) @ e22 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op2 @ e22 @ e21 ) @ e20 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op2 @ e22 @ e22 ) @ e23 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op2 @ e22 @ e23 ) @ e21 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op2 @ e23 @ e20 ) @ e23 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op2 @ e23 @ e21 ) @ e22 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( op2 @ e23 @ e22 ) @ e21 ) ) ) & ( {$box} @ ( ( qmltpeq @ ( op2 @ e23 @ e23 ) @ e20 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
thf(co1,conjecture,( {$box} @ ( ( ( ( {$box} @ ( ( qmltpeq @ ( h @ e10 ) @ e20 ) ) ) | ( ( {$box} @ ( ( qmltpeq @ ( h @ e10 ) @ e21 ) ) ) | ( ( {$box} @ ( ( qmltpeq @ ( h @ e10 ) @ e22 ) ) ) | ( {$box} @ ( ( qmltpeq @ ( h @ e10 ) @ e23 ) ) ) ) ) ) & ( ( ( {$box} @ ( ( qmltpeq @ ( h @ e11 ) @ e20 ) ) ) | ( ( {$box} @ ( ( qmltpeq @ ( h @ e11 ) @ e21 ) ) ) | ( ( {$box} @ ( ( qmltpeq @ ( h @ e11 ) @ e22 ) ) ) | ( {$box} @ ( ( qmltpeq @ ( h @ e11 ) @ e23 ) ) ) ) ) ) & ( ( ( {$box} @ ( ( qmltpeq @ ( h @ e12 ) @ e20 ) ) ) | ( ( {$box} @ ( ( qmltpeq @ ( h @ e12 ) @ e21 ) ) ) | ( ( {$box} @ ( ( qmltpeq @ ( h @ e12 ) @ e22 ) ) ) | ( {$box} @ ( ( qmltpeq @ ( h @ e12 ) @ e23 ) ) ) ) ) ) & ( ( ( {$box} @ ( ( qmltpeq @ ( h @ e13 ) @ e20 ) ) ) | ( ( {$box} @ ( ( qmltpeq @ ( h @ e13 ) @ e21 ) ) ) | ( ( {$box} @ ( ( qmltpeq @ ( h @ e13 ) @ e22 ) ) ) | ( {$box} @ ( ( qmltpeq @ ( h @ e13 ) @ e23 ) ) ) ) ) ) & ( ( ( {$box} @ ( ( qmltpeq @ ( j @ e20 ) @ e10 ) ) ) | ( ( {$box} @ ( ( qmltpeq @ ( j @ e20 ) @ e11 ) ) ) | ( ( {$box} @ ( ( qmltpeq @ ( j @ e20 ) @ e12 ) ) ) | ( {$box} @ ( ( qmltpeq @ ( j @ e20 ) @ e13 ) ) ) ) ) ) & ( ( ( {$box} @ ( ( qmltpeq @ ( j @ e21 ) @ e10 ) ) ) | ( ( {$box} @ ( ( qmltpeq @ ( j @ e21 ) @ e11 ) ) ) | ( ( {$box} @ ( ( qmltpeq @ ( j @ e21 ) @ e12 ) ) ) | ( {$box} @ ( ( qmltpeq @ ( j @ e21 ) @ e13 ) ) ) ) ) ) & ( ( ( {$box} @ ( ( qmltpeq @ ( j @ e22 ) @ e10 ) ) ) | ( ( {$box} @ ( ( qmltpeq @ ( j @ e22 ) @ e11 ) ) ) | ( ( {$box} @ ( ( qmltpeq @ ( j @ e22 ) @ e12 ) ) ) | ( {$box} @ ( ( qmltpeq @ ( j @ e22 ) @ e13 ) ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( j @ e23 ) @ e10 ) ) ) | ( ( {$box} @ ( ( qmltpeq @ ( j @ e23 ) @ e11 ) ) ) | ( ( {$box} @ ( ( qmltpeq @ ( j @ e23 ) @ e12 ) ) ) | ( {$box} @ ( ( qmltpeq @ ( j @ e23 ) @ e13 ) ) ) ) ) ) ) ) ) ) ) ) ) => ( {$box} @ ( ~ ( ( ( {$box} @ ( ( qmltpeq @ ( h @ ( op1 @ e10 @ e10 ) ) @ ( op2 @ ( h @ e10 ) @ ( h @ e10 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( h @ ( op1 @ e10 @ e11 ) ) @ ( op2 @ ( h @ e10 ) @ ( h @ e11 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( h @ ( op1 @ e10 @ e12 ) ) @ ( op2 @ ( h @ e10 ) @ ( h @ e12 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( h @ ( op1 @ e10 @ e13 ) ) @ ( op2 @ ( h @ e10 ) @ ( h @ e13 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( h @ ( op1 @ e11 @ e10 ) ) @ ( op2 @ ( h @ e11 ) @ ( h @ e10 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( h @ ( op1 @ e11 @ e11 ) ) @ ( op2 @ ( h @ e11 ) @ ( h @ e11 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( h @ ( op1 @ e11 @ e12 ) ) @ ( op2 @ ( h @ e11 ) @ ( h @ e12 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( h @ ( op1 @ e11 @ e13 ) ) @ ( op2 @ ( h @ e11 ) @ ( h @ e13 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( h @ ( op1 @ e12 @ e10 ) ) @ ( op2 @ ( h @ e12 ) @ ( h @ e10 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( h @ ( op1 @ e12 @ e11 ) ) @ ( op2 @ ( h @ e12 ) @ ( h @ e11 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( h @ ( op1 @ e12 @ e12 ) ) @ ( op2 @ ( h @ e12 ) @ ( h @ e12 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( h @ ( op1 @ e12 @ e13 ) ) @ ( op2 @ ( h @ e12 ) @ ( h @ e13 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( h @ ( op1 @ e13 @ e10 ) ) @ ( op2 @ ( h @ e13 ) @ ( h @ e10 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( h @ ( op1 @ e13 @ e11 ) ) @ ( op2 @ ( h @ e13 ) @ ( h @ e11 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( h @ ( op1 @ e13 @ e12 ) ) @ ( op2 @ ( h @ e13 ) @ ( h @ e12 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( h @ ( op1 @ e13 @ e13 ) ) @ ( op2 @ ( h @ e13 ) @ ( h @ e13 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( j @ ( op2 @ e20 @ e20 ) ) @ ( op1 @ ( j @ e20 ) @ ( j @ e20 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( j @ ( op2 @ e20 @ e21 ) ) @ ( op1 @ ( j @ e20 ) @ ( j @ e21 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( j @ ( op2 @ e20 @ e22 ) ) @ ( op1 @ ( j @ e20 ) @ ( j @ e22 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( j @ ( op2 @ e20 @ e23 ) ) @ ( op1 @ ( j @ e20 ) @ ( j @ e23 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( j @ ( op2 @ e21 @ e20 ) ) @ ( op1 @ ( j @ e21 ) @ ( j @ e20 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( j @ ( op2 @ e21 @ e21 ) ) @ ( op1 @ ( j @ e21 ) @ ( j @ e21 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( j @ ( op2 @ e21 @ e22 ) ) @ ( op1 @ ( j @ e21 ) @ ( j @ e22 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( j @ ( op2 @ e21 @ e23 ) ) @ ( op1 @ ( j @ e21 ) @ ( j @ e23 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( j @ ( op2 @ e22 @ e20 ) ) @ ( op1 @ ( j @ e22 ) @ ( j @ e20 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( j @ ( op2 @ e22 @ e21 ) ) @ ( op1 @ ( j @ e22 ) @ ( j @ e21 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( j @ ( op2 @ e22 @ e22 ) ) @ ( op1 @ ( j @ e22 ) @ ( j @ e22 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( j @ ( op2 @ e22 @ e23 ) ) @ ( op1 @ ( j @ e22 ) @ ( j @ e23 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( j @ ( op2 @ e23 @ e20 ) ) @ ( op1 @ ( j @ e23 ) @ ( j @ e20 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( j @ ( op2 @ e23 @ e21 ) ) @ ( op1 @ ( j @ e23 ) @ ( j @ e21 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( j @ ( op2 @ e23 @ e22 ) ) @ ( op1 @ ( j @ e23 ) @ ( j @ e22 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( j @ ( op2 @ e23 @ e23 ) ) @ ( op1 @ ( j @ e23 ) @ ( j @ e23 ) ) ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( h @ ( j @ e20 ) ) @ e20 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( h @ ( j @ e21 ) ) @ e21 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( h @ ( j @ e22 ) ) @ e22 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( h @ ( j @ e23 ) ) @ e23 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( j @ ( h @ e10 ) ) @ e10 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( j @ ( h @ e11 ) ) @ e11 ) ) ) & ( ( {$box} @ ( ( qmltpeq @ ( j @ ( h @ e12 ) ) @ e12 ) ) ) & ( {$box} @ ( ( qmltpeq @ ( j @ ( h @ e13 ) ) @ e13 ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) ).
