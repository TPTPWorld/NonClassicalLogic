%------------------------------------------------------------------------------
include('PCHilbert.sys').
%------------------------------------------------------------------------------
%----Prove PCLuka
fof(luka_op_or,axiom,op_or).

fof(luka_op_implies,axiom,op_implies).

fof(prove_luka_modus_ponens,conjecture,modus_ponens).

fof(prove_luka_cn1,conjecture,cn1).

fof(prove_luka_cn2,conjecture,cn2).

fof(prove_luka_cn3,conjecture,cn3 ).

%----Prove PCPrincipia
fof(principia_op_implies_or,axiom,op_implies_or).

fof(principia_op_and,axiom,op_and).

fof(principia_op_equiv,axiom,op_equiv).

fof(prove_principia_modus_ponens,conjecture,modus_ponens).

fof(prove_principia_r1,conjecture,r1).

fof(prove_principia_r2,conjecture,r2).

fof(prove_principia_r3,conjecture,r3).

fof(prove_principia_r4,conjecture,r4).

fof(prove_principia_r5,conjecture,r5).

%----Prove PCRosser
fof(rosser_op_or,axiom,op_or).

fof(rosser_op_implies,axiom,op_implies_and).

fof(rosser_op_equiv,axiom,op_equiv).

fof(prove_rosser_modus_ponens,conjecture,modus_ponens).

fof(prove_rosser_kn1,conjecture,kn1 ).

fof(prove_rosser_kn2,conjecture,kn2 ).

fof(prove_rosser_kn3,conjecture,kn3 ).

%------------------------------------------------------------------------------
