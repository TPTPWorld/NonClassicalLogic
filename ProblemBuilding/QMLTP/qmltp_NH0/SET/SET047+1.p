% semantics
thf(semantics,logic,$modal ==
[$constants == $rigid,
$quantification == $constant,
$modalities == $modal_system_S5]).
% modalities

% propositions

% individual constants

% predicates
thf(set_equal_type,type,(set_equal : ($i>$i>$o))).
thf(element_type,type,(element : ($i>$i>$o))).

% functions

% converted problem
%------------------------------------------------------------------------------
% File     : SET047+1 : QMLTP v1.1
% Domain   : Set Theory
% Problem  : Set equality is symmetric
% Version  : Especial.
% English  : Define set equality as having exactly the same members. Prove
%            set equality is symmetric.
% Refs     : [DeC79] DeChampeaux (1979), Sub-problem Finder and Instance Ch
%          : [KM64]  Kalish & Montegue (1964), Logic: Techniques of Formal
%          : [Pel86] Pelletier (1986), Seventy-five Problems for Testing Au
%          : [Hah94] Haehnle (1994), Email to G. Sutcliffe
% Source   : [Pel86]
% Names    : Pelletier 43 [Pel86]
% Status   :      varying      cumulative   constant
%             K   Theorem      Theorem      Theorem       v1.1
%             D   Theorem      Theorem      Theorem       v1.1
%             T   Theorem      Theorem      Theorem       v1.1
%             S4  Theorem      Theorem      Theorem       v1.1
%             S5  Theorem      Theorem      Theorem       v1.1
%
% Rating   :      varying      cumulative   constant
%             K   0.00         0.25         0.50          v1.1
%             D   0.25         0.33         0.50          v1.1
%             T   0.25         0.33         0.50          v1.1
%             S4  0.25         0.33         0.50          v1.1
%             S5  0.25         0.20         0.40          v1.1
%
%  term conditions for all terms: designation: rigid, extension: local
%  Comments :
%
%--------------------------------------------------------------------------
%  term conditions for all terms: designation: rigid, extension: local
%
% Comments : equality axioms included
%--------------------------------------------------------------------------
thf(pel43_1,axiom,( ! [ X :$i,Y :$i ] : ( ( set_equal @ X @ Y ) <=> ! [ Z :$i ] : ( ( element @ Z @ X ) <=> ( element @ Z @ Y ) ) ) ) ).
thf(pel43,conjecture,( ! [ X :$i,Y :$i ] : ( ( set_equal @ X @ Y ) <=> ( set_equal @ Y @ X ) ) ) ).
%------------------------------------------------------------------------------
