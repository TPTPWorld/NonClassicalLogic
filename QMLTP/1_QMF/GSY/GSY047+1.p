%--------------------------------------------------------------------------
% File     : GSY047+1 : QMLTP v1.1
% Domain   : GSY (Goedel translation of Syntactic)                         
% Problem  : Goedel translation of SYN047+1 (from TPTP-v5.0.0)      
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
%             K   Unsolved     Non-Theorem  Non-Theorem   v1.1
%             D   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             T   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S4  Unsolved     Unsolved     Unsolved      v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         0.75         0.75          v1.1
%             D   0.75         0.67         0.67          v1.1
%             T   0.75         0.67         0.67          v1.1
%             S4  1.00         1.00         1.00          v1.1
%             S5  0.50         0.60         0.60          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------

qmf(pel17,conjecture,
(( #box : (( #box : (( ( #box : (p)) & ( #box : (( #box : (q)) => ( #box : (r)) )) ) => ( #box : (s)) )) => ( ( ( #box : (~ ( #box : (p)) )) | ( ( #box : (q)) | ( #box : (s)) ) ) & ( ( #box : (~ ( #box : (p)) )) | ( ( #box : (~ ( #box : (r)) )) | ( #box : (s)) ) ) ) )) & (#box : (( ( ( #box : (~ ( #box : (p)) )) | ( ( #box : (q)) | ( #box : (s)) ) ) & ( ( #box : (~ ( #box : (p)) )) | ( ( #box : (~ ( #box : (r)) )) | ( #box : (s)) ) ) ) => ( #box : (( ( #box : (p)) & ( #box : (( #box : (q)) => ( #box : (r)) )) ) => ( #box : (s)) )) )))).


%--------------------------------------------------------------------------
