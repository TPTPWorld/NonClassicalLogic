% semantics
thf(semantics,logic,$modal ==
[$constants == $rigid,
$quantification == $constant,
$modalities == $modal_system_S5]).  % modalities

% propositions

% individual constants
thf(ann_type,type,(ann : ($i))).
thf(mary_type,type,(mary : ($i))).
thf(bob_type,type,(bob : ($i))).
thf(john_type,type,(john : ($i))).
thf(paul_type,type,(paul : ($i))).
thf(jane_type,type,(jane : ($i))).

% predicates
thf(parent_type,type,(parent : ($i>$i>$o))).
thf(q2_type,type,(q2 : ($i>$o))).
thf(female_type,type,(female : ($i>$o))).
thf(male_type,type,(male : ($i>$o))).

% functions

% converted problem
%--------------------------------------------------------------------------
% File     : APM006+1 : QMLTP v1.1
% Domain   : Applications mixed
% Problem  : querying description logic knowledge bases
% Version  : Especial.
% English  :
% Refs     : [CDL+07] D. Calvanese, G. De Giacomo, D. Lembo, M. Lenzerini,
%            R. Rosati. EQL-Lite: Effective First-Order Query Processing in
%            Description Logics. In M. M. Veloso, Ed., IJCAI-2007,
%            pp. 274-279, 2007.
% Source   : [CDL+07]
% Names    :
% Status   :      varying      cumulative   constant
%             K   Unsolved     Unsolved     Unsolved      v1.1
%             D   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             T   Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S4  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
%             S5  Non-Theorem  Non-Theorem  Non-Theorem   v1.1
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
% Comments :
%--------------------------------------------------------------------------
thf(abox,axiom,( {$box} @ ( ( female @ mary ) & ( female @ ann ) & ( female @ jane ) & ( male @ bob ) & ( male @ john ) & ( male @ paul ) & ( parent @ bob @ mary ) & ( parent @ bob @ ann ) & ( parent @ john @ paul ) & ( parent @ mary @ jane ) ) ) ).
thf(tbox,axiom,( ! [ X :$i ] : ( ( {$box} @ ( ( male @ X ) ) ) => ( {$box} @ ( ~ ( ( female @ X ) ) ) ) ) ) ).
thf(query,axiom,( ! [ X :$i ] : ( ( q2 @ X ) <=> ( ( {$box} @ ( ( male @ X ) ) ) & ( ~ ( ( {$box} @ ( ? [ Y :$i ] : ( ( parent @ X @ Y ) & ( female @ Y ) ) ) ) ) ) ) ) ) ).
thf(con,conjecture,( ( q2 @ john ) & ( q2 @ paul ) ) ).
