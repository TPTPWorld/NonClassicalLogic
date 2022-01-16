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
%            Semantics parameters: Four dimensions as follows ...
%            - $constants      - Whether constants are (a) rigid or
%                                (b) flexible (world dependent).
%            - $consequence    - Whether formulae are assumed true in (a) the
%                                current local world or (b) all global worlds.
%            - $quantification - Whether quantification domains are
%                                (a) varying, (b) cumulative, (c) decreasing,
%                                or (d) constant.
%            - $modalities     - The properties of the box operators, expressed
%                                via modal axiom schemes.
%------------------------------------------------------------------------------
tff(parameters,definition,
    ( $parameters
   == [$constants, $consequence, $quantification, $modalities] ) ).

%----Constants
tff(constants_values,definition,
    ( $constants
   == [$flexible, $rigid] ) ).

tff(rigid_constants,definition,
    ( $rigid
   == (I(W,c) = I(V,c)) ).

%----No restriction for flexible constants.
tff(flexible_constants,definition,$true).

%- Quantification
tff(quantification_values,definition,
    ( $quantification
   == [$varying, $cumulative, $decreasing, $constant] ) ).
% ... TBA

%----Consequence
tff(consequence_values,definition,
    ( $consequence
   == [$local, $global] ) ).
% ... TBA

%------------------------------------------------------------------------------
