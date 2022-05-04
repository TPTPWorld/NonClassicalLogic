%--------------------------------------------------------------------------
% File     : GSE027+3 : QMLTP v1.1
% Domain   : GSE (Goedel translation of Set Theory)                        
% Problem  : Goedel translation of SET027+3 (from TPTP-v5.0.0)      
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
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
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

qmf(subset_defn,axiom,
( #box : ( ! [B] : ( #box : ( ! [C] : (( #box : (( #box : (subset(B, C))) => ( #box : ( ! [D] : ( #box : (( #box : (member(D, B))) => ( #box : (member(D, C))) )))) )) & (#box : (( #box : ( ! [D] : ( #box : (( #box : (member(D, B))) => ( #box : (member(D, C))) )))) => ( #box : (subset(B, C))) )))))))).

qmf(reflexivity_of_subset,axiom,
( #box : ( ! [B] : ( #box : (subset(B, B)))))).

qmf(prove_transitivity_of_subset,conjecture,
( #box : ( ! [B] : ( #box : ( ! [C] : ( #box : ( ! [D] : ( #box : (( ( #box : (subset(B, C))) & ( #box : (subset(C, D))) ) => ( #box : (subset(B, D))) ))))))))).


%--------------------------------------------------------------------------
