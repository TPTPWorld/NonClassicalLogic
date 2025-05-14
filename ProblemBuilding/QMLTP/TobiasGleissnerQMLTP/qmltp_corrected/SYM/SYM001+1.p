%--------------------------------------------------------------------------
% File     : SYM001+1 : QMLTP v1.1
% Domain   : Syntactic (modal)
% Problem  : Barcan scheme instance. (Ted Sider's qml wwf 1)
% Version  : Especial.
% English  : if for all x necessarily f(x), then it is necessary that for
%            all x f(x)
%

% Refs     : [Sid09] T. Sider. Logic for Philosophy. Oxford, 2009.
%          : [Brc46] [1] R. C. Barcan. A functional calculus of first
%            order based on strict implication. Journal of Symbolic Logic
%            11:1-16, 1946.

% Source   : [Sid09]
% Names    : instance of the Barcan formula

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

%  term conditions for all terms:  designation: rigid,  extension: local    
%
% Comments : 
%--------------------------------------------------------------------------

qmf(con,conjecture,
(( ! [X] : (#box : ( f(X) ) ) ) => (#box : ( ! [X] : ( f(X) ) )))).
