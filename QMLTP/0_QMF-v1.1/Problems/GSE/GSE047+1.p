%--------------------------------------------------------------------------
% File     : GSE047+1 : QMLTP v1.1
% Domain   : GSE (Goedel translation of Set Theory)                        
% Problem  : Goedel translation of SET047+1 (from TPTP-v5.0.0)      
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
%             D   Unsolved     Unsolved     Theorem       v1.1
%             T   Unsolved     Unsolved     Theorem       v1.1
%             S4  Unsolved     Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         1.00         1.00          v1.1
%             D   1.00         1.00         0.83          v1.1
%             T   1.00         1.00         0.83          v1.1
%             S4  1.00         0.83         0.83          v1.1
%             S5  0.75         0.80         0.80          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------

qmf(pel43_1,axiom,
( #box : ( ! [X] : ( #box : ( ! [Y] : (( #box : (( #box : (set_equal(X, Y))) => ( #box : ( ! [Z] : (( #box : (( #box : (element(Z, X))) => ( #box : (element(Z, Y))) )) & (#box : (( #box : (element(Z, Y))) => ( #box : (element(Z, X))) ))))) )) & (#box : (( #box : ( ! [Z] : (( #box : (( #box : (element(Z, X))) => ( #box : (element(Z, Y))) )) & (#box : (( #box : (element(Z, Y))) => ( #box : (element(Z, X))) ))))) => ( #box : (set_equal(X, Y))) )))))))).

qmf(pel43,conjecture,
( #box : ( ! [X] : ( #box : ( ! [Y] : (( #box : (( #box : (set_equal(X, Y))) => ( #box : (set_equal(Y, X))) )) & (#box : (( #box : (set_equal(Y, X))) => ( #box : (set_equal(X, Y))) )))))))).


%--------------------------------------------------------------------------
