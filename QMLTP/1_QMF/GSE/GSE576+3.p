%--------------------------------------------------------------------------
% File     : GSE576+3 : QMLTP v1.1
% Domain   : GSE (Goedel translation of Set Theory)                        
% Problem  : Goedel translation of SET576+3 (from TPTP-v5.0.0)      
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
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant   
%             K   1.00         1.00         1.00          v1.1
%             D   1.00         1.00         1.00          v1.1
%             T   1.00         1.00         1.00          v1.1
%             S4  0.75         0.83         0.67          v1.1
%             S5  0.50         0.60         0.60          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------

qmf(intersect_defn,axiom,
( #box : ( ! [B] : ( #box : ( ! [C] : (( #box : (( #box : (intersect(B, C))) => ( ? [D] : ( ( #box : (member(D, B))) & ( #box : (member(D, C))) )) )) & (#box : (( ? [D] : ( ( #box : (member(D, B))) & ( #box : (member(D, C))) )) => ( #box : (intersect(B, C))) )))))))).

qmf(disjoint_defn,axiom,
( #box : ( ! [B] : ( #box : ( ! [C] : (( #box : (( #box : (disjoint(B, C))) => ( #box : (~ ( #box : (intersect(B, C))) )) )) & (#box : (( #box : (~ ( #box : (intersect(B, C))) )) => ( #box : (disjoint(B, C))) )))))))).

qmf(symmetry_of_intersect,axiom,
( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : (intersect(B, C))) => ( #box : (intersect(C, B))) ))))))).

qmf(prove_th17,conjecture,
( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : (( #box : ( ! [D] : ( #box : (( #box : (member(D, B))) => ( #box : (~ ( #box : (member(D, C))) )) )))) => ( #box : (disjoint(B, C))) ))))))).


%--------------------------------------------------------------------------
