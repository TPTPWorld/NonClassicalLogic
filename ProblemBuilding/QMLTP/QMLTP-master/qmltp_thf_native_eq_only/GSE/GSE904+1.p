% semantics

% modalities

% propositions

% individual constants

% predicates

thf(in_type,type,(in:($i>$i>$o))).
thf(subset_type,type,(subset:($i>$i>$o))).
thf(empty_type,type,(empty:($i>$o))).
% functions

thf(singleton_type,type,(singleton:($i>$i))).
thf(set_union2_type,type,(set_union2:($i>$i>$i))).
% converted problem

%--------------------------------------------------------------------------

% File     : GSE904+1 : QMLTP v1.1

% Domain   : GSE (Goedel translation of Set Theory)

% Problem  : Goedel translation of SET904+1 (from TPTP-v5.0.0)

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

%             K   0.50         0.50         0.50          v1.1

%             D   0.50         0.50         0.50          v1.1

%             T   0.50         0.50         0.50          v1.1

%             S4  0.50         0.67         0.67          v1.1

%             S5  0.50         0.60         0.60          v1.1

%

%  term conditions for all terms: designation: rigid, extension: local

%

%--------------------------------------------------------------------------

% removed axiom reflexivity
% removed axiom symmetry
% removed axiom transitivity
% removed axiom set_union2_substitution_1
% removed axiom set_union2_substitution_2
% removed axiom singleton_substitution_1
% removed axiom empty_substitution_1
% removed axiom in_substitution_1
% removed axiom in_substitution_2
% removed axiom subset_substitution_1
% removed axiom subset_substitution_2
thf(fc2_xboole_0,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(($box@(~(($box@((empty@A))))))=>($box@(~(($box@((empty@(set_union2@A@B)))))))))))))).
thf(fc3_xboole_0,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(($box@(~(($box@((empty@A))))))=>($box@(~(($box@((empty@(set_union2@B@A)))))))))))))).
thf(commutativity_k2_xboole_0,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(((set_union2@A@B)=(set_union2@B@A))))))))).
thf(idempotence_k2_xboole_0,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(((set_union2@A@A)=A)))))))).
thf(reflexivity_r1_tarski,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@((subset@A@A)))))))).
thf(antisymmetry_r2_hidden,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(($box@((in@A@B)))=>($box@(~(($box@((in@B@A))))))))))))).
thf(rc1_xboole_0,axiom,(?[A:$i]:($box@((empty@A))))).
thf(rc2_xboole_0,axiom,(?[A:$i]:($box@(~(($box@((empty@A)))))))).
thf(t45_zfmisc_1,conjecture,($box@(![A:$i]:($box@(![B:$i]:($box@(($box@((subset@(set_union2@(singleton@A)@B)@B)))=>($box@((in@A@B)))))))))).
thf(l21_zfmisc_1,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(($box@((subset@(set_union2@(singleton@A)@B)@B)))=>($box@((in@A@B)))))))))).