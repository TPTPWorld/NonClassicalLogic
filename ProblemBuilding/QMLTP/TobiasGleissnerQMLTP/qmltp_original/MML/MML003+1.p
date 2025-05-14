%------------------------------------------------------------------------------
% File     : MML003+1 : QMLTP v1.1
% Domain   : Multi-modal logic (Epistemic Logic Puzzles)
% Problem  : The muddy forehead puzzle
% Version  : [Ben08] axioms.
% English  : Three children are playing together outside. After playing they
%            come inside, and their mother says to them, at least one of you 
%            has mud on your head. Each child can see the mud on others but 
%            cannot see his or her own forehead. She then asks the following 
%            question over and over: can you tell for sure whether or not you 
%            have mud on your head? Assuming that all of the children are
%            intelligent, honest, and answer simultaneously, what will happen?

% Refs     : [Fit07] Fitting (2007), Modal Proof Theory
%          : [Ben08] Benzmueller (2008), Email to G. Sutcliffe
% Source   : [Ben08]
% Names    : Fitting-HB-Knowledge-2b [Ben08]

% Status   : Unsolved
% Rating   : 1.00 v1.1

%            domain condition for all modalities: cumulative
%            term conditions  for all terms: 
%            designation: rigid,  extension: local    
%
% Comments: 

%------------------------------------------------------------------------------

tpi(3,set_logic,modal([cumulative,rigid,local],
                      [(a,s5),(b,s5),(c,s5)])).

qmf(what_a_knows_about_b,axiom,
  (#box(a) : ((#box(a) : (mfb)) | (#box(a) : (~ mfb))))).

qmf(what_a_knows_about_c,axiom,
  (#box(a) : ((#box(a) : (mfc)) | (#box(a) : (~ mfc))))).

qmf(what_b_knows_about_a,axiom,
  (#box(a) : ((#box(b) : (mfa)) | (#box(b) : (~ mfa))))).

qmf(what_b_knows_about_c,axiom,
  (#box(a) : ((#box(b) : (mfc)) | (#box(b) : (~ mfc))))).

qmf(what_c_knows_about_a,axiom,
  (#box(a) : ((#box(c) : (mfa)) | (#box(c) : (~ mfa))))).

qmf(what_c_knows_about_b,axiom,
  (#box(a) : ((#box(c) : (mfa)) | (#box(c) : (~ mfa))))).

qmf(what_a_knows_about_b,axiom,
  (#box(b) : ((#box(a) : (mfb)) | (#box(a) : (~ mfb))))).

qmf(what_a_knows_about_c,axiom,
  (#box(b) : ((#box(a) : (mfc)) | (#box(a) : (~ mfc))))).

qmf(what_b_knows_about_a,axiom,
  (#box(b) : ((#box(b) : (mfa)) | (#box(b) : (~ mfa))))).

qmf(what_b_knows_about_c,axiom,
  (#box(b) : ((#box(b) : (mfc)) | (#box(b) : (~ mfc))))).

qmf(what_c_knows_about_a,axiom,
  (#box(b) : ((#box(c) : (mfa)) | (#box(c) : (~ mfa))))).

qmf(what_c_knows_about_b,axiom,
  (#box(b) : ((#box(c) : (mfa)) | (#box(c) : (~ mfa))))).

qmf(what_a_knows_about_b,axiom,
  (#box(c) : ((#box(a) : (mfb)) | (#box(a) : (~ mfb))))).

qmf(what_a_knows_about_c,axiom,
  (#box(c) : ((#box(a) : (mfc)) | (#box(a) : (~ mfc))))).

qmf(what_b_knows_about_a,axiom,
  (#box(c) : ((#box(b) : (mfa)) | (#box(b) : (~ mfa))))).

qmf(what_b_knows_about_c,axiom,
  (#box(c) : ((#box(b) : (mfc)) | (#box(b) : (~ mfc))))).

qmf(what_c_knows_about_a,axiom,
  (#box(c) : ((#box(c) : (mfa)) | (#box(c) : (~ mfa))))).

qmf(what_c_knows_about_b,axiom,
  (#box(c) : ((#box(c) : (mfa)) | (#box(c) : (~ mfa))))).

qmf(someone_knows_its_forhead,axiom,
  (s <=> (#box(a) : (mfa | (~ mfa))) | (#box(b) : (mfb | (~ mfb))) | (#box(c) : (mfc | (~ mfc))))).

qmf(con,conjecture,
( (~ ( ( #box(a) : (~ ((#box(a) : (mfa | mfb | mfc)) => s) ) ) => s)) & 
  (~ ( ( #box(a) : (~ ((#box(b) : (mfa | mfb | mfc)) => s) ) ) => s)) & 
  (~ ( ( #box(a) : (~ ((#box(c) : (mfa | mfb | mfc)) => s) ) ) => s)) & 
  (~ ( ( #box(b) : (~ ((#box(a) : (mfa | mfb | mfc)) => s) ) ) => s)) & 
  (~ ( ( #box(b) : (~ ((#box(b) : (mfa | mfb | mfc)) => s) ) ) => s)) & 
  (~ ( ( #box(b) : (~ ((#box(c) : (mfa | mfb | mfc)) => s) ) ) => s)) & 
  (~ ( ( #box(c) : (~ ((#box(a) : (mfa | mfb | mfc)) => s) ) ) => s)) & 
  (~ ( ( #box(c) : (~ ((#box(b) : (mfa | mfb | mfc)) => s) ) ) => s)) & 
  (~ ( ( #box(c) : (~ ((#box(c) : (mfa | mfb | mfc)) => s) ) ) => s)))).
