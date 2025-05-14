%--------------------------------------------------------------------------
% File     : GLC354+1 : QMLTP v1.1
% Domain   : GLC (Goedel translation of Logic Calculi)                     
% Problem  : Goedel translation of LCL354+1 (from TPTP-v5.0.0)      
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
%             D   Unsolved     Unsolved     Unsolved      v1.1
%             T   Unsolved     Unsolved     Unsolved      v1.1
%             S4  Unsolved     Unsolved     Unsolved      v1.1
%             S5  Unsolved     Unsolved     Unsolved      v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         1.00         1.00          v1.1
%             D   1.00         1.00         1.00          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  1.00         1.00         1.00          v1.1
%             S5  1.00         1.00         1.00          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------

qmf(m1,axiom,
( #box : ( ! [P] : ( #box : ( ! [Q] : ( #box : ( ! [R] : ( #box : ( ! [S] : ( #box : (( ( #box : (meets(P, Q))) & ( ( #box : (meets(P, S))) & ( #box : (meets(R, Q))) ) ) => ( #box : (meets(R, S))) ))))))))))).

qmf(m2,axiom,
( #box : ( ! [P] : ( #box : ( ! [Q] : ( #box : ( ! [R] : ( #box : ( ! [S] : ( #box : (( ( #box : (meets(P, Q))) & ( #box : (meets(R, S))) ) => ( #box : (~ (( #box : (( #box : (~ (( #box : (( #box : (meets(P, S))) => ( ? [T] : ( ( #box : (meets(P, T))) & ( #box : (meets(T, S))) )) )) & (#box : (( ? [T] : ( ( #box : (meets(P, T))) & ( #box : (meets(T, S))) )) => ( #box : (meets(P, S))) ))) )) => ( ? [T] : ( ( #box : (meets(R, T))) & ( #box : (meets(T, Q))) )) )) & (#box : (( ? [T] : ( ( #box : (meets(R, T))) & ( #box : (meets(T, Q))) )) => ( #box : (~ (( #box : (( #box : (meets(P, S))) => ( ? [T] : ( ( #box : (meets(P, T))) & ( #box : (meets(T, S))) )) )) & (#box : (( ? [T] : ( ( #box : (meets(P, T))) & ( #box : (meets(T, S))) )) => ( #box : (meets(P, S))) ))) )) ))) )) ))))))))))).

qmf(m3,axiom,
( #box : ( ! [P] : ( ? [Q, R] : ( ( #box : (meets(Q, P))) & ( #box : (meets(P, R))) ))))).

qmf(not_m5,axiom,
( #box : (~ ( #box : ( ! [P] : ( #box : ( ! [Q] : ( #box : (( #box : (meets(P, Q))) => ( ? [R, S, T] : ( ( #box : (meets(R, P))) & ( ( #box : (meets(Q, S))) & ( ( #box : (meets(R, T))) & ( #box : (meets(T, S))) ) ) )) )))))) ))).


%--------------------------------------------------------------------------
