% semantics

% modalities

% propositions

% individual constants

thf(unit_type,type,(unit:($i))).
thf(e0_type,type,(e0:($i))).
thf(e1_type,type,(e1:($i))).
thf(e2_type,type,(e2:($i))).
thf(e3_type,type,(e3:($i))).
% predicates

% functions

thf(inv_type,type,(inv:($i>$i))).
thf(op_type,type,(op:($i>$i>$i))).
% converted problem

%--------------------------------------------------------------------------

% File     : GAL014+1 : QMLTP v1.1

% Domain   : GAL (Goedel translation of Algebra)

% Problem  : Goedel translation of ALG014+1 (from TPTP-v5.0.0)

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

%             S5  Theorem      Theorem      Theorem       v1.1

%

% Rating   :      varying      cumulative   constant

%             K   1.00         1.00         1.00          v1.1

%             D   0.75         0.83         0.83          v1.1

%             T   1.00         1.00         1.00          v1.1

%             S4  1.00         1.00         1.00          v1.1

%             S5  0.25         0.40         0.40          v1.1

%

%  term conditions for all terms: designation: rigid, extension: local

%

%--------------------------------------------------------------------------

% removed axiom reflexivity
% removed axiom symmetry
% removed axiom transitivity
% removed axiom inv_substitution_1
% removed axiom op_substitution_1
% removed axiom op_substitution_2
thf(ax1,axiom,((($box@(((op@e0@e0)=e0)))|(($box@(((op@e0@e0)=e1)))|(($box@(((op@e0@e0)=e2)))|($box@(((op@e0@e0)=e3))))))&((($box@(((op@e0@e1)=e0)))|(($box@(((op@e0@e1)=e1)))|(($box@(((op@e0@e1)=e2)))|($box@(((op@e0@e1)=e3))))))&((($box@(((op@e0@e2)=e0)))|(($box@(((op@e0@e2)=e1)))|(($box@(((op@e0@e2)=e2)))|($box@(((op@e0@e2)=e3))))))&((($box@(((op@e0@e3)=e0)))|(($box@(((op@e0@e3)=e1)))|(($box@(((op@e0@e3)=e2)))|($box@(((op@e0@e3)=e3))))))&((($box@(((op@e1@e0)=e0)))|(($box@(((op@e1@e0)=e1)))|(($box@(((op@e1@e0)=e2)))|($box@(((op@e1@e0)=e3))))))&((($box@(((op@e1@e1)=e0)))|(($box@(((op@e1@e1)=e1)))|(($box@(((op@e1@e1)=e2)))|($box@(((op@e1@e1)=e3))))))&((($box@(((op@e1@e2)=e0)))|(($box@(((op@e1@e2)=e1)))|(($box@(((op@e1@e2)=e2)))|($box@(((op@e1@e2)=e3))))))&((($box@(((op@e1@e3)=e0)))|(($box@(((op@e1@e3)=e1)))|(($box@(((op@e1@e3)=e2)))|($box@(((op@e1@e3)=e3))))))&((($box@(((op@e2@e0)=e0)))|(($box@(((op@e2@e0)=e1)))|(($box@(((op@e2@e0)=e2)))|($box@(((op@e2@e0)=e3))))))&((($box@(((op@e2@e1)=e0)))|(($box@(((op@e2@e1)=e1)))|(($box@(((op@e2@e1)=e2)))|($box@(((op@e2@e1)=e3))))))&((($box@(((op@e2@e2)=e0)))|(($box@(((op@e2@e2)=e1)))|(($box@(((op@e2@e2)=e2)))|($box@(((op@e2@e2)=e3))))))&((($box@(((op@e2@e3)=e0)))|(($box@(((op@e2@e3)=e1)))|(($box@(((op@e2@e3)=e2)))|($box@(((op@e2@e3)=e3))))))&((($box@(((op@e3@e0)=e0)))|(($box@(((op@e3@e0)=e1)))|(($box@(((op@e3@e0)=e2)))|($box@(((op@e3@e0)=e3))))))&((($box@(((op@e3@e1)=e0)))|(($box@(((op@e3@e1)=e1)))|(($box@(((op@e3@e1)=e2)))|($box@(((op@e3@e1)=e3))))))&((($box@(((op@e3@e2)=e0)))|(($box@(((op@e3@e2)=e1)))|(($box@(((op@e3@e2)=e2)))|($box@(((op@e3@e2)=e3))))))&(($box@(((op@e3@e3)=e0)))|(($box@(((op@e3@e3)=e1)))|(($box@(((op@e3@e3)=e2)))|($box@(((op@e3@e3)=e3)))))))))))))))))))))).
thf(ax2,axiom,(($box@(((op@(op@e0@e0)@e0)=(op@e0@(op@e0@e0)))))&(($box@(((op@(op@e0@e0)@e1)=(op@e0@(op@e0@e1)))))&(($box@(((op@(op@e0@e0)@e2)=(op@e0@(op@e0@e2)))))&(($box@(((op@(op@e0@e0)@e3)=(op@e0@(op@e0@e3)))))&(($box@(((op@(op@e0@e1)@e0)=(op@e0@(op@e1@e0)))))&(($box@(((op@(op@e0@e1)@e1)=(op@e0@(op@e1@e1)))))&(($box@(((op@(op@e0@e1)@e2)=(op@e0@(op@e1@e2)))))&(($box@(((op@(op@e0@e1)@e3)=(op@e0@(op@e1@e3)))))&(($box@(((op@(op@e0@e2)@e0)=(op@e0@(op@e2@e0)))))&(($box@(((op@(op@e0@e2)@e1)=(op@e0@(op@e2@e1)))))&(($box@(((op@(op@e0@e2)@e2)=(op@e0@(op@e2@e2)))))&(($box@(((op@(op@e0@e2)@e3)=(op@e0@(op@e2@e3)))))&(($box@(((op@(op@e0@e3)@e0)=(op@e0@(op@e3@e0)))))&(($box@(((op@(op@e0@e3)@e1)=(op@e0@(op@e3@e1)))))&(($box@(((op@(op@e0@e3)@e2)=(op@e0@(op@e3@e2)))))&(($box@(((op@(op@e0@e3)@e3)=(op@e0@(op@e3@e3)))))&(($box@(((op@(op@e1@e0)@e0)=(op@e1@(op@e0@e0)))))&(($box@(((op@(op@e1@e0)@e1)=(op@e1@(op@e0@e1)))))&(($box@(((op@(op@e1@e0)@e2)=(op@e1@(op@e0@e2)))))&(($box@(((op@(op@e1@e0)@e3)=(op@e1@(op@e0@e3)))))&(($box@(((op@(op@e1@e1)@e0)=(op@e1@(op@e1@e0)))))&(($box@(((op@(op@e1@e1)@e1)=(op@e1@(op@e1@e1)))))&(($box@(((op@(op@e1@e1)@e2)=(op@e1@(op@e1@e2)))))&(($box@(((op@(op@e1@e1)@e3)=(op@e1@(op@e1@e3)))))&(($box@(((op@(op@e1@e2)@e0)=(op@e1@(op@e2@e0)))))&(($box@(((op@(op@e1@e2)@e1)=(op@e1@(op@e2@e1)))))&(($box@(((op@(op@e1@e2)@e2)=(op@e1@(op@e2@e2)))))&(($box@(((op@(op@e1@e2)@e3)=(op@e1@(op@e2@e3)))))&(($box@(((op@(op@e1@e3)@e0)=(op@e1@(op@e3@e0)))))&(($box@(((op@(op@e1@e3)@e1)=(op@e1@(op@e3@e1)))))&(($box@(((op@(op@e1@e3)@e2)=(op@e1@(op@e3@e2)))))&(($box@(((op@(op@e1@e3)@e3)=(op@e1@(op@e3@e3)))))&(($box@(((op@(op@e2@e0)@e0)=(op@e2@(op@e0@e0)))))&(($box@(((op@(op@e2@e0)@e1)=(op@e2@(op@e0@e1)))))&(($box@(((op@(op@e2@e0)@e2)=(op@e2@(op@e0@e2)))))&(($box@(((op@(op@e2@e0)@e3)=(op@e2@(op@e0@e3)))))&(($box@(((op@(op@e2@e1)@e0)=(op@e2@(op@e1@e0)))))&(($box@(((op@(op@e2@e1)@e1)=(op@e2@(op@e1@e1)))))&(($box@(((op@(op@e2@e1)@e2)=(op@e2@(op@e1@e2)))))&(($box@(((op@(op@e2@e1)@e3)=(op@e2@(op@e1@e3)))))&(($box@(((op@(op@e2@e2)@e0)=(op@e2@(op@e2@e0)))))&(($box@(((op@(op@e2@e2)@e1)=(op@e2@(op@e2@e1)))))&(($box@(((op@(op@e2@e2)@e2)=(op@e2@(op@e2@e2)))))&(($box@(((op@(op@e2@e2)@e3)=(op@e2@(op@e2@e3)))))&(($box@(((op@(op@e2@e3)@e0)=(op@e2@(op@e3@e0)))))&(($box@(((op@(op@e2@e3)@e1)=(op@e2@(op@e3@e1)))))&(($box@(((op@(op@e2@e3)@e2)=(op@e2@(op@e3@e2)))))&(($box@(((op@(op@e2@e3)@e3)=(op@e2@(op@e3@e3)))))&(($box@(((op@(op@e3@e0)@e0)=(op@e3@(op@e0@e0)))))&(($box@(((op@(op@e3@e0)@e1)=(op@e3@(op@e0@e1)))))&(($box@(((op@(op@e3@e0)@e2)=(op@e3@(op@e0@e2)))))&(($box@(((op@(op@e3@e0)@e3)=(op@e3@(op@e0@e3)))))&(($box@(((op@(op@e3@e1)@e0)=(op@e3@(op@e1@e0)))))&(($box@(((op@(op@e3@e1)@e1)=(op@e3@(op@e1@e1)))))&(($box@(((op@(op@e3@e1)@e2)=(op@e3@(op@e1@e2)))))&(($box@(((op@(op@e3@e1)@e3)=(op@e3@(op@e1@e3)))))&(($box@(((op@(op@e3@e2)@e0)=(op@e3@(op@e2@e0)))))&(($box@(((op@(op@e3@e2)@e1)=(op@e3@(op@e2@e1)))))&(($box@(((op@(op@e3@e2)@e2)=(op@e3@(op@e2@e2)))))&(($box@(((op@(op@e3@e2)@e3)=(op@e3@(op@e2@e3)))))&(($box@(((op@(op@e3@e3)@e0)=(op@e3@(op@e3@e0)))))&(($box@(((op@(op@e3@e3)@e1)=(op@e3@(op@e3@e1)))))&(($box@(((op@(op@e3@e3)@e2)=(op@e3@(op@e3@e2)))))&($box@(((op@(op@e3@e3)@e3)=(op@e3@(op@e3@e3))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))).
thf(ax3,axiom,(($box@(((op@unit@e0)=e0)))&(($box@(((op@e0@unit)=e0)))&(($box@(((op@unit@e1)=e1)))&(($box@(((op@e1@unit)=e1)))&(($box@(((op@unit@e2)=e2)))&(($box@(((op@e2@unit)=e2)))&(($box@(((op@unit@e3)=e3)))&(($box@(((op@e3@unit)=e3)))&(($box@((unit=e0)))|(($box@((unit=e1)))|(($box@((unit=e2)))|($box@((unit=e3))))))))))))))).
thf(ax4,axiom,(($box@(((op@e0@(inv@e0))=unit)))&(($box@(((op@(inv@e0)@e0)=unit)))&(($box@(((op@e1@(inv@e1))=unit)))&(($box@(((op@(inv@e1)@e1)=unit)))&(($box@(((op@e2@(inv@e2))=unit)))&(($box@(((op@(inv@e2)@e2)=unit)))&(($box@(((op@e3@(inv@e3))=unit)))&(($box@(((op@(inv@e3)@e3)=unit)))&((($box@(((inv@e0)=e0)))|(($box@(((inv@e0)=e1)))|(($box@(((inv@e0)=e2)))|($box@(((inv@e0)=e3))))))&((($box@(((inv@e1)=e0)))|(($box@(((inv@e1)=e1)))|(($box@(((inv@e1)=e2)))|($box@(((inv@e1)=e3))))))&((($box@(((inv@e2)=e0)))|(($box@(((inv@e2)=e1)))|(($box@(((inv@e2)=e2)))|($box@(((inv@e2)=e3))))))&(($box@(((inv@e3)=e0)))|(($box@(((inv@e3)=e1)))|(($box@(((inv@e3)=e2)))|($box@(((inv@e3)=e3)))))))))))))))))).
thf(ax5,axiom,($box@((unit=e0)))).
thf(ax6,axiom,($box@(((inv@unit)=unit)))).
thf(ax7,axiom,(($box@(((inv@(inv@e0))=e0)))&(($box@(((inv@(inv@e1))=e1)))&(($box@(((inv@(inv@e2))=e2)))&($box@(((inv@(inv@e3))=e3))))))).
thf(ax8,axiom,(($box@(($box@(((inv@e0)=e0)))=>($box@(((inv@e0)=e0)))))&(($box@(($box@(((inv@e0)=e1)))=>($box@(((inv@e1)=e0)))))&(($box@(($box@(((inv@e0)=e2)))=>($box@(((inv@e2)=e0)))))&(($box@(($box@(((inv@e0)=e3)))=>($box@(((inv@e3)=e0)))))&(($box@(($box@(((inv@e1)=e0)))=>($box@(((inv@e0)=e1)))))&(($box@(($box@(((inv@e1)=e1)))=>($box@(((inv@e1)=e1)))))&(($box@(($box@(((inv@e1)=e2)))=>($box@(((inv@e2)=e1)))))&(($box@(($box@(((inv@e1)=e3)))=>($box@(((inv@e3)=e1)))))&(($box@(($box@(((inv@e2)=e0)))=>($box@(((inv@e0)=e2)))))&(($box@(($box@(((inv@e2)=e1)))=>($box@(((inv@e1)=e2)))))&(($box@(($box@(((inv@e2)=e2)))=>($box@(((inv@e2)=e2)))))&(($box@(($box@(((inv@e2)=e3)))=>($box@(((inv@e3)=e2)))))&(($box@(($box@(((inv@e3)=e0)))=>($box@(((inv@e0)=e3)))))&(($box@(($box@(((inv@e3)=e1)))=>($box@(((inv@e1)=e3)))))&(($box@(($box@(((inv@e3)=e2)))=>($box@(((inv@e2)=e3)))))&($box@(($box@(((inv@e3)=e3)))=>($box@(((inv@e3)=e3))))))))))))))))))))).
thf(ax9,axiom,(($box@(~(($box@(((inv@e0)=(inv@e1)))))))&(($box@(~(($box@(((inv@e0)=(inv@e2)))))))&(($box@(~(($box@(((inv@e0)=(inv@e3)))))))&(($box@(~(($box@(((inv@e1)=(inv@e2)))))))&(($box@(~(($box@(((inv@e1)=(inv@e3)))))))&($box@(~(($box@(((inv@e2)=(inv@e3))))))))))))).
thf(ax10,axiom,(($box@(~(($box@(((op@e0@e0)=(op@e1@e0)))))))&(($box@(~(($box@(((op@e0@e0)=(op@e2@e0)))))))&(($box@(~(($box@(((op@e0@e0)=(op@e3@e0)))))))&(($box@(~(($box@(((op@e1@e0)=(op@e2@e0)))))))&(($box@(~(($box@(((op@e1@e0)=(op@e3@e0)))))))&(($box@(~(($box@(((op@e2@e0)=(op@e3@e0)))))))&(($box@(~(($box@(((op@e0@e1)=(op@e1@e1)))))))&(($box@(~(($box@(((op@e0@e1)=(op@e2@e1)))))))&(($box@(~(($box@(((op@e0@e1)=(op@e3@e1)))))))&(($box@(~(($box@(((op@e1@e1)=(op@e2@e1)))))))&(($box@(~(($box@(((op@e1@e1)=(op@e3@e1)))))))&(($box@(~(($box@(((op@e2@e1)=(op@e3@e1)))))))&(($box@(~(($box@(((op@e0@e2)=(op@e1@e2)))))))&(($box@(~(($box@(((op@e0@e2)=(op@e2@e2)))))))&(($box@(~(($box@(((op@e0@e2)=(op@e3@e2)))))))&(($box@(~(($box@(((op@e1@e2)=(op@e2@e2)))))))&(($box@(~(($box@(((op@e1@e2)=(op@e3@e2)))))))&(($box@(~(($box@(((op@e2@e2)=(op@e3@e2)))))))&(($box@(~(($box@(((op@e0@e3)=(op@e1@e3)))))))&(($box@(~(($box@(((op@e0@e3)=(op@e2@e3)))))))&(($box@(~(($box@(((op@e0@e3)=(op@e3@e3)))))))&(($box@(~(($box@(((op@e1@e3)=(op@e2@e3)))))))&(($box@(~(($box@(((op@e1@e3)=(op@e3@e3)))))))&(($box@(~(($box@(((op@e2@e3)=(op@e3@e3)))))))&(($box@(~(($box@(((op@e0@e0)=(op@e0@e1)))))))&(($box@(~(($box@(((op@e0@e0)=(op@e0@e2)))))))&(($box@(~(($box@(((op@e0@e0)=(op@e0@e3)))))))&(($box@(~(($box@(((op@e0@e1)=(op@e0@e2)))))))&(($box@(~(($box@(((op@e0@e1)=(op@e0@e3)))))))&(($box@(~(($box@(((op@e0@e2)=(op@e0@e3)))))))&(($box@(~(($box@(((op@e1@e0)=(op@e1@e1)))))))&(($box@(~(($box@(((op@e1@e0)=(op@e1@e2)))))))&(($box@(~(($box@(((op@e1@e0)=(op@e1@e3)))))))&(($box@(~(($box@(((op@e1@e1)=(op@e1@e2)))))))&(($box@(~(($box@(((op@e1@e1)=(op@e1@e3)))))))&(($box@(~(($box@(((op@e1@e2)=(op@e1@e3)))))))&(($box@(~(($box@(((op@e2@e0)=(op@e2@e1)))))))&(($box@(~(($box@(((op@e2@e0)=(op@e2@e2)))))))&(($box@(~(($box@(((op@e2@e0)=(op@e2@e3)))))))&(($box@(~(($box@(((op@e2@e1)=(op@e2@e2)))))))&(($box@(~(($box@(((op@e2@e1)=(op@e2@e3)))))))&(($box@(~(($box@(((op@e2@e2)=(op@e2@e3)))))))&(($box@(~(($box@(((op@e3@e0)=(op@e3@e1)))))))&(($box@(~(($box@(((op@e3@e0)=(op@e3@e2)))))))&(($box@(~(($box@(((op@e3@e0)=(op@e3@e3)))))))&(($box@(~(($box@(((op@e3@e1)=(op@e3@e2)))))))&(($box@(~(($box@(((op@e3@e1)=(op@e3@e3)))))))&($box@(~(($box@(((op@e3@e2)=(op@e3@e3))))))))))))))))))))))))))))))))))))))))))))))))))))))).
thf(ax11,axiom,(($box@(~(($box@((e0=e1))))))&(($box@(~(($box@((e0=e2))))))&(($box@(~(($box@((e0=e3))))))&(($box@(~(($box@((e1=e2))))))&(($box@(~(($box@((e1=e3))))))&($box@(~(($box@((e2=e3)))))))))))).
thf(co1,conjecture,((($box@(((op@e0@e0)=e0)))&(($box@(((op@e1@e1)=e0)))&(($box@(((op@e2@e2)=e0)))&($box@(((op@e3@e3)=e0))))))|((($box@(((op@e0@e0)=e1)))&(($box@(((op@e1@e1)=e1)))&(($box@(((op@e2@e2)=e1)))&($box@(((op@e3@e3)=e1))))))|((($box@(((op@e0@e0)=e2)))&(($box@(((op@e1@e1)=e2)))&(($box@(((op@e2@e2)=e2)))&($box@(((op@e3@e3)=e2))))))|((($box@(((op@e0@e0)=e3)))&(($box@(((op@e1@e1)=e3)))&(($box@(((op@e2@e2)=e3)))&($box@(((op@e3@e3)=e3))))))|($box@(~(((($box@(((op@e0@e0)=e0)))&(($box@(((op@e1@e1)=e0)))&(($box@(((op@e2@e2)=e0)))&($box@(((op@e3@e3)=e0))))))|((($box@(((op@e0@e0)=e1)))&(($box@(((op@e1@e1)=e1)))&(($box@(((op@e2@e2)=e1)))&($box@(((op@e3@e3)=e1))))))|((($box@(((op@e0@e0)=e2)))&(($box@(((op@e1@e1)=e2)))&(($box@(((op@e2@e2)=e2)))&($box@(((op@e3@e3)=e2))))))|(($box@(((op@e0@e0)=e3)))&(($box@(((op@e1@e1)=e3)))&(($box@(((op@e2@e2)=e3)))&($box@(((op@e3@e3)=e3))))))))))))))))).