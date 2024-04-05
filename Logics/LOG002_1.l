%------------------------------------------------------------------------------
% File     : LOG002_1 : TPTP v9.0.0. Released v9.0.0.
% Domain   : Modal logics
% Defines  : Semantic specifications for modal logics
% Version  : Especial.
% English  :

% Refs     : [BBW06] Blackburn  et al. (2006), Handbook of Modal Logic
% Source   : [TPTP]
% Names    :

% Syntax   : TBA

% Comments : The semantics describe the model structure M = (W,R,D,V) with
%            index set I, where ...
%            - W: set of worlds,
%            - R(i), i in I, is a binary relation on W,
%            - D(w), w in W, is a set of denotations available in world w
%            - V(w), w in W, is a valuation function assigning a denotation to
%              each constant from the signature.
%            - I(w,t), w in W, t a term or formula, is the interpretation of
%              t in w.
%
%            Semantics parameters: Three dimensions as follows ...
%            - $designation - Whether designation are rigid or flexible (world
%                             dependent).
%            - $domains     - Whether domains are varying, cumulative,
%                             decreasing, or constant.
%            - terms        - Whether terms are local or global
%            - $modalities  - The properties of the box operators, expressed
%                             via modal axiom schemes.
%------------------------------------------------------------------------------
tff(parameters,definition,
    ( $parameters
   == [$designation, $domains, $modalities] ) ).

%----Designation
tff(designation_values,definition,
    ( $designation
   == [$flexible, $rigid] ) ).

tff(rigid_designation,definition,
    ( $rigid
   == (I(W,c) = I(V,c)) ).

%----No restriction for flexible designation.
tff(flexible_designation,definition,$true).

%----Domains
tff(domains_values,definition,
    ( $domains
   == [$varying, $cumulative, $decreasing, $constant] ) ).
% ... TBA

% ... TBA

%------------------------------------------------------------------------------
