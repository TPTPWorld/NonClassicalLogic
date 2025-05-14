% semantics
% modalities

% propositions

% individual constants

% predicates
thf(f_type,type,(f : ($i>$o))).
thf(g_type,type,(g : ($i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : SYM013+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  :
% Version  : Especial.
% English  :
% Refs     : [Gir00] R. Girle. Modal Logics and Philosophy. Acumen Publ.,
%            2000.
% Source   : [Gir00]
% Names    :
% Status   :      varying      cumulative   constant
%             K   Non-Theorem  Non-Theorem  Theorem       v1.1
%             D   Non-Theorem  Non-Theorem  Theorem       v1.1
%             T   Non-Theorem  Non-Theorem  Theorem       v1.1
%             S4  Non-Theorem  Non-Theorem  Theorem       v1.1
%             S5  Non-Theorem  Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   0.50         0.75         0.25          v1.1
%             D   0.75         0.83         0.17          v1.1
%             T   0.50         0.67         0.17          v1.1
%             S4  0.50         0.67         0.17          v1.1
%             S5  0.50         0.20         0.20          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments :
%--------------------------------------------------------------------------
thf ( con , conjecture , ( ( ! [ X :$i ] : ( ( f @ X ) => ( $box @ ( ( g @ X ) ) ) ) ) => ( ( ! [ X :$i ] : ( f @ X ) ) => ( $box @ ( ! [ X :$i ] : ( g @ X ) ) ) ) ) ) .