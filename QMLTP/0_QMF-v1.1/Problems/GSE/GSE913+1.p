%--------------------------------------------------------------------------
% File     : GSE913+1 : QMLTP v1.1
% Domain   : GSE (Goedel translation of Set Theory)                        
% Problem  : Goedel translation of SET913+1 (from TPTP-v5.0.0)      
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
%             K   0.00         0.25         0.25          v1.1
%             D   0.00         0.17         0.17          v1.1
%             T   0.00         0.17         0.17          v1.1
%             S4  0.00         0.17         0.50          v1.1
%             S5  0.25         0.20         0.40          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------

qmf(symmetry_r1_xboole_0,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (disjoint(A, B))) => ( #box : (disjoint(B, A))) ))))))).

qmf(antisymmetry_r2_hidden,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (( #box : (in(A, B))) => ( #box : (~ ( #box : (in(B, A))) )) ))))))).

qmf(rc1_xboole_0,axiom,
( ? [A] : ( #box : (empty(A))))).

qmf(rc2_xboole_0,axiom,
( ? [A] : ( #box : (~ ( #box : (empty(A))) )))).

qmf(t54_zfmisc_1,conjecture,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (~ ( ( #box : (disjoint(singleton(A), B))) & ( #box : (in(A, B))) ) ))))))).

qmf(l25_zfmisc_1,axiom,
( #box : ( ! [A] : ( #box : ( ! [B] : ( #box : (~ ( ( #box : (disjoint(singleton(A), B))) & ( #box : (in(A, B))) ) ))))))).


%--------------------------------------------------------------------------
