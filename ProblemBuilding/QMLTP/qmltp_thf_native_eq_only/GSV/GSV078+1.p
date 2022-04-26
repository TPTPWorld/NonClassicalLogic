% semantics

% modalities

% propositions

thf(true_type,type,(true:($o))).
% individual constants

thf(def_type,type,(def:($i))).
thf(tptp_minus_1_type,type,(tptp_minus_1:($i))).
thf(tptp_float_0_0_type,type,(tptp_float_0_0:($i))).
thf(pv70_type,type,(pv70:($i))).
thf(n0_type,type,(n0:($i))).
thf(n1_type,type,(n1:($i))).
thf(n2_type,type,(n2:($i))).
thf(n3_type,type,(n3:($i))).
thf(n4_type,type,(n4:($i))).
thf(use_type,type,(use:($i))).
thf(n5_type,type,(n5:($i))).
thf(pv31_type,type,(pv31:($i))).
% predicates

thf(geq_type,type,(geq:($i>$i>$o))).
thf(lt_type,type,(lt:($i>$i>$o))).
thf(leq_type,type,(leq:($i>$i>$o))).
thf(gt_type,type,(gt:($i>$i>$o))).
% functions

thf(minus_type,type,(minus:($i>$i>$i))).
thf(dim_type,type,(dim:($i>$i>$i))).
thf(sum_type,type,(sum:($i>$i>$i>$i))).
thf(plus_type,type,(plus:($i>$i>$i))).
thf(inv_type,type,(inv:($i>$i))).
thf(uniform_int_rnd_type,type,(uniform_int_rnd:($i>$i>$i))).
thf(succ_type,type,(succ:($i>$i))).
thf(pred_type,type,(pred:($i>$i))).
thf(tptp_update3_type,type,(tptp_update3:($i>$i>$i>$i>$i))).
thf(tptp_update2_type,type,(tptp_update2:($i>$i>$i>$i))).
thf(tptp_const_array1_type,type,(tptp_const_array1:($i>$i>$i))).
thf(tptp_mmul_type,type,(tptp_mmul:($i>$i>$i))).
thf(a_select3_type,type,(a_select3:($i>$i>$i>$i))).
thf(tptp_const_array2_type,type,(tptp_const_array2:($i>$i>$i>$i))).
thf(a_select2_type,type,(a_select2:($i>$i>$i))).
thf(tptp_madd_type,type,(tptp_madd:($i>$i>$i))).
thf(tptp_msub_type,type,(tptp_msub:($i>$i>$i))).
thf(trans_type,type,(trans:($i>$i))).
% converted problem

%--------------------------------------------------------------------------

% File     : GSV078+1 : QMLTP v1.1

% Domain   : GSV (Goedel translation of Software Verification)

% Problem  : Goedel translation of SWV078+1 (from TPTP-v5.0.0)

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

%             S4  Theorem      Theorem      Theorem       v1.1

%             S5  Theorem      Theorem      Theorem       v1.1

%

% Rating   :      varying      cumulative   constant

%             K   1.00         1.00         1.00          v1.1

%             D   0.75         0.83         0.83          v1.1

%             T   1.00         1.00         1.00          v1.1

%             S4  0.50         0.50         0.50          v1.1

%             S5  0.50         0.60         0.60          v1.1

%

%  term conditions for all terms: designation: rigid, extension: local

%

% Comments : equality axioms included

%--------------------------------------------------------------------------

% removed axiom reflexivity
% removed axiom symmetry
% removed axiom transitivity
% removed axiom a_select2_substitution_1
% removed axiom a_select2_substitution_2
% removed axiom a_select3_substitution_1
% removed axiom a_select3_substitution_2
% removed axiom a_select3_substitution_3
% removed axiom dim_substitution_1
% removed axiom dim_substitution_2
% removed axiom inv_substitution_1
% removed axiom minus_substitution_1
% removed axiom minus_substitution_2
% removed axiom plus_substitution_1
% removed axiom plus_substitution_2
% removed axiom pred_substitution_1
% removed axiom succ_substitution_1
% removed axiom sum_substitution_1
% removed axiom sum_substitution_2
% removed axiom sum_substitution_3
% removed axiom tptp_const_array1_substitution_1
% removed axiom tptp_const_array1_substitution_2
% removed axiom tptp_const_array2_substitution_1
% removed axiom tptp_const_array2_substitution_2
% removed axiom tptp_const_array2_substitution_3
% removed axiom tptp_madd_substitution_1
% removed axiom tptp_madd_substitution_2
% removed axiom tptp_mmul_substitution_1
% removed axiom tptp_mmul_substitution_2
% removed axiom tptp_msub_substitution_1
% removed axiom tptp_msub_substitution_2
% removed axiom tptp_update2_substitution_1
% removed axiom tptp_update2_substitution_2
% removed axiom tptp_update2_substitution_3
% removed axiom tptp_update3_substitution_1
% removed axiom tptp_update3_substitution_2
% removed axiom tptp_update3_substitution_3
% removed axiom tptp_update3_substitution_4
% removed axiom trans_substitution_1
% removed axiom uniform_int_rnd_substitution_1
% removed axiom uniform_int_rnd_substitution_2
% removed axiom geq_substitution_1
% removed axiom geq_substitution_2
% removed axiom gt_substitution_1
% removed axiom gt_substitution_2
% removed axiom leq_substitution_1
% removed axiom leq_substitution_2
% removed axiom lt_substitution_1
% removed axiom lt_substitution_2
thf(totality,axiom,($box@(![X:$i]:($box@(![Y:$i]:(($box@((gt@X@Y)))|(($box@((gt@Y@X)))|($box@((X=Y)))))))))).
thf(transitivity_gt,axiom,($box@(![X:$i]:($box@(![Y:$i]:($box@(![Z:$i]:($box@((($box@((gt@X@Y)))&($box@((gt@Y@Z))))=>($box@((gt@X@Z)))))))))))).
thf(irreflexivity_gt,axiom,($box@(![X:$i]:($box@(~(($box@((gt@X@X))))))))).
thf(reflexivity_leq,axiom,($box@(![X:$i]:($box@((leq@X@X)))))).
thf(transitivity_leq,axiom,($box@(![X:$i]:($box@(![Y:$i]:($box@(![Z:$i]:($box@((($box@((leq@X@Y)))&($box@((leq@Y@Z))))=>($box@((leq@X@Z)))))))))))).
thf(lt_gt,axiom,($box@(![X:$i]:($box@(![Y:$i]:(($box@(($box@((lt@X@Y)))=>($box@((gt@Y@X)))))&($box@(($box@((gt@Y@X)))=>($box@((lt@X@Y))))))))))).
thf(leq_geq,axiom,($box@(![X:$i]:($box@(![Y:$i]:(($box@(($box@((geq@X@Y)))=>($box@((leq@Y@X)))))&($box@(($box@((leq@Y@X)))=>($box@((geq@X@Y))))))))))).
thf(leq_gt1,axiom,($box@(![X:$i]:($box@(![Y:$i]:($box@(($box@((gt@Y@X)))=>($box@((leq@X@Y)))))))))).
thf(leq_gt2,axiom,($box@(![X:$i]:($box@(![Y:$i]:($box@((($box@((leq@X@Y)))&($box@(~(($box@((X=Y)))))))=>($box@((gt@Y@X)))))))))).
thf(leq_gt_pred,axiom,($box@(![X:$i]:($box@(![Y:$i]:(($box@(($box@((leq@X@(pred@Y))))=>($box@((gt@Y@X)))))&($box@(($box@((gt@Y@X)))=>($box@((leq@X@(pred@Y)))))))))))).
thf(gt_succ,axiom,($box@(![X:$i]:($box@((gt@(succ@X)@X)))))).
thf(leq_succ,axiom,($box@(![X:$i]:($box@(![Y:$i]:($box@(($box@((leq@X@Y)))=>($box@((leq@X@(succ@Y))))))))))).
thf(leq_succ_gt_equiv,axiom,($box@(![X:$i]:($box@(![Y:$i]:(($box@(($box@((leq@X@Y)))=>($box@((gt@(succ@Y)@X)))))&($box@(($box@((gt@(succ@Y)@X)))=>($box@((leq@X@Y))))))))))).
thf(uniform_int_rand_ranges_hi,axiom,($box@(![X:$i]:($box@(![C:$i]:($box@(($box@((leq@n0@X)))=>($box@((leq@(uniform_int_rnd@C@X)@X)))))))))).
thf(uniform_int_rand_ranges_lo,axiom,($box@(![X:$i]:($box@(![C:$i]:($box@(($box@((leq@n0@X)))=>($box@((leq@n0@(uniform_int_rnd@C@X))))))))))).
thf(const_array1_select,axiom,($box@(![I:$i]:($box@(![L:$i]:($box@(![U:$i]:($box@(![Val:$i]:($box@((($box@((leq@L@I)))&($box@((leq@I@U))))=>($box@(((a_select2@(tptp_const_array1@(dim@L@U)@Val)@I)=Val)))))))))))))).
thf(const_array2_select,axiom,($box@(![I:$i]:($box@(![L1:$i]:($box@(![U1:$i]:($box@(![J:$i]:($box@(![L2:$i]:($box@(![U2:$i]:($box@(![Val:$i]:($box@((($box@((leq@L1@I)))&(($box@((leq@I@U1)))&(($box@((leq@L2@J)))&($box@((leq@J@U2))))))=>($box@(((a_select3@(tptp_const_array2@(dim@L1@U1)@(dim@L2@U2)@Val)@I@J)=Val)))))))))))))))))))).
thf(matrix_symm_trans,axiom,($box@(![A:$i]:($box@(![N:$i]:($box@(($box@(![I:$i]:($box@(![J:$i]:($box@((($box@((leq@n0@I)))&(($box@((leq@I@N)))&(($box@((leq@n0@J)))&($box@((leq@J@N))))))=>($box@(((a_select3@A@I@J)=(a_select3@A@J@I))))))))))=>($box@(![I:$i]:($box@(![J:$i]:($box@((($box@((leq@n0@I)))&(($box@((leq@I@N)))&(($box@((leq@n0@J)))&($box@((leq@J@N))))))=>($box@(((a_select3@(trans@A)@I@J)=(a_select3@(trans@A)@J@I))))))))))))))))).
thf(matrix_symm_inv,axiom,($box@(![A:$i]:($box@(![N:$i]:($box@(($box@(![I:$i]:($box@(![J:$i]:($box@((($box@((leq@n0@I)))&(($box@((leq@I@N)))&(($box@((leq@n0@J)))&($box@((leq@J@N))))))=>($box@(((a_select3@A@I@J)=(a_select3@A@J@I))))))))))=>($box@(![I:$i]:($box@(![J:$i]:($box@((($box@((leq@n0@I)))&(($box@((leq@I@N)))&(($box@((leq@n0@J)))&($box@((leq@J@N))))))=>($box@(((a_select3@(inv@A)@I@J)=(a_select3@(inv@A)@J@I))))))))))))))))).
thf(matrix_symm_update_diagonal,axiom,($box@(![A:$i]:($box@(![N:$i]:($box@(($box@(![I:$i]:($box@(![J:$i]:($box@((($box@((leq@n0@I)))&(($box@((leq@I@N)))&(($box@((leq@n0@J)))&($box@((leq@J@N))))))=>($box@(((a_select3@A@I@J)=(a_select3@A@J@I))))))))))=>($box@(![I:$i]:($box@(![J:$i]:($box@(![K:$i]:($box@(![VAL:$i]:($box@((($box@((leq@n0@I)))&(($box@((leq@I@N)))&(($box@((leq@n0@J)))&(($box@((leq@J@N)))&(($box@((leq@n0@K)))&($box@((leq@K@N))))))))=>($box@(((a_select3@(tptp_update3@A@K@K@VAL)@I@J)=(a_select3@(tptp_update3@A@K@K@VAL)@J@I))))))))))))))))))))).
thf(matrix_symm_add,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(![N:$i]:($box@((($box@(![I:$i]:($box@(![J:$i]:($box@((($box@((leq@n0@I)))&(($box@((leq@I@N)))&(($box@((leq@n0@J)))&($box@((leq@J@N))))))=>($box@(((a_select3@A@I@J)=(a_select3@A@J@I))))))))))&($box@(![I:$i]:($box@(![J:$i]:($box@((($box@((leq@n0@I)))&(($box@((leq@I@N)))&(($box@((leq@n0@J)))&($box@((leq@J@N))))))=>($box@(((a_select3@B@I@J)=(a_select3@B@J@I)))))))))))=>($box@(![I:$i]:($box@(![J:$i]:($box@((($box@((leq@n0@I)))&(($box@((leq@I@N)))&(($box@((leq@n0@J)))&($box@((leq@J@N))))))=>($box@(((a_select3@(tptp_madd@A@B)@I@J)=(a_select3@(tptp_madd@A@B)@J@I))))))))))))))))))).
thf(matrix_symm_sub,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(![N:$i]:($box@((($box@(![I:$i]:($box@(![J:$i]:($box@((($box@((leq@n0@I)))&(($box@((leq@I@N)))&(($box@((leq@n0@J)))&($box@((leq@J@N))))))=>($box@(((a_select3@A@I@J)=(a_select3@A@J@I))))))))))&($box@(![I:$i]:($box@(![J:$i]:($box@((($box@((leq@n0@I)))&(($box@((leq@I@N)))&(($box@((leq@n0@J)))&($box@((leq@J@N))))))=>($box@(((a_select3@B@I@J)=(a_select3@B@J@I)))))))))))=>($box@(![I:$i]:($box@(![J:$i]:($box@((($box@((leq@n0@I)))&(($box@((leq@I@N)))&(($box@((leq@n0@J)))&($box@((leq@J@N))))))=>($box@(((a_select3@(tptp_msub@A@B)@I@J)=(a_select3@(tptp_msub@A@B)@J@I))))))))))))))))))).
thf(matrix_symm_aba1,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(![N:$i]:($box@(($box@(![I:$i]:($box@(![J:$i]:($box@((($box@((leq@n0@I)))&(($box@((leq@I@N)))&(($box@((leq@n0@J)))&($box@((leq@J@N))))))=>($box@(((a_select3@B@I@J)=(a_select3@B@J@I))))))))))=>($box@(![I:$i]:($box@(![J:$i]:($box@((($box@((leq@n0@I)))&(($box@((leq@I@N)))&(($box@((leq@n0@J)))&($box@((leq@J@N))))))=>($box@(((a_select3@(tptp_mmul@A@(tptp_mmul@B@(trans@A)))@I@J)=(a_select3@(tptp_mmul@A@(tptp_mmul@B@(trans@A)))@J@I))))))))))))))))))).
thf(matrix_symm_aba2,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(![N:$i]:($box@(![M:$i]:($box@(($box@(![I:$i]:($box@(![J:$i]:($box@((($box@((leq@n0@I)))&(($box@((leq@I@M)))&(($box@((leq@n0@J)))&($box@((leq@J@M))))))=>($box@(((a_select3@B@I@J)=(a_select3@B@J@I))))))))))=>($box@(![I:$i]:($box@(![J:$i]:($box@((($box@((leq@n0@I)))&(($box@((leq@I@N)))&(($box@((leq@n0@J)))&($box@((leq@J@N))))))=>($box@(((a_select3@(tptp_mmul@A@(tptp_mmul@B@(trans@A)))@I@J)=(a_select3@(tptp_mmul@A@(tptp_mmul@B@(trans@A)))@J@I))))))))))))))))))))).
thf(matrix_symm_joseph_update,axiom,($box@(![A:$i]:($box@(![B:$i]:($box@(![C:$i]:($box@(![D:$i]:($box@(![E:$i]:($box@(![F:$i]:($box@(![N:$i]:($box@(![M:$i]:($box@((($box@(![I:$i]:($box@(![J:$i]:($box@((($box@((leq@n0@I)))&(($box@((leq@I@M)))&(($box@((leq@n0@J)))&($box@((leq@J@M))))))=>($box@(((a_select3@D@I@J)=(a_select3@D@J@I))))))))))&(($box@(![I:$i]:($box@(![J:$i]:($box@((($box@((leq@n0@I)))&(($box@((leq@I@N)))&(($box@((leq@n0@J)))&($box@((leq@J@N))))))=>($box@(((a_select3@A@I@J)=(a_select3@A@J@I))))))))))&($box@(![I:$i]:($box@(![J:$i]:($box@((($box@((leq@n0@I)))&(($box@((leq@I@N)))&(($box@((leq@n0@J)))&($box@((leq@J@N))))))=>($box@(((a_select3@F@I@J)=(a_select3@F@J@I))))))))))))=>($box@(![I:$i]:($box@(![J:$i]:($box@((($box@((leq@n0@I)))&(($box@((leq@I@N)))&(($box@((leq@n0@J)))&($box@((leq@J@N))))))=>($box@(((a_select3@(tptp_madd@A@(tptp_mmul@B@(tptp_mmul@(tptp_madd@(tptp_mmul@C@(tptp_mmul@D@(trans@C)))@(tptp_mmul@E@(tptp_mmul@F@(trans@E))))@(trans@B))))@I@J)=(a_select3@(tptp_madd@A@(tptp_mmul@B@(tptp_mmul@(tptp_madd@(tptp_mmul@C@(tptp_mmul@D@(trans@C)))@(tptp_mmul@E@(tptp_mmul@F@(trans@E))))@(trans@B))))@J@I))))))))))))))))))))))))))))).
thf(sum_plus_base,axiom,($box@(![Body:$i]:($box@(((sum@n0@tptp_minus_1@Body)=n0)))))).
thf(sum_plus_base_float,axiom,($box@(![Body:$i]:($box@((tptp_float_0_0=(sum@n0@tptp_minus_1@Body))))))).
thf(succ_tptp_minus_1,axiom,($box@(((succ@tptp_minus_1)=n0)))).
thf(succ_plus_1_r,axiom,($box@(![X:$i]:($box@(((plus@X@n1)=(succ@X))))))).
thf(succ_plus_1_l,axiom,($box@(![X:$i]:($box@(((plus@n1@X)=(succ@X))))))).
thf(succ_plus_2_r,axiom,($box@(![X:$i]:($box@(((plus@X@n2)=(succ@(succ@X)))))))).
thf(succ_plus_2_l,axiom,($box@(![X:$i]:($box@(((plus@n2@X)=(succ@(succ@X)))))))).
thf(succ_plus_3_r,axiom,($box@(![X:$i]:($box@(((plus@X@n3)=(succ@(succ@(succ@X))))))))).
thf(succ_plus_3_l,axiom,($box@(![X:$i]:($box@(((plus@n3@X)=(succ@(succ@(succ@X))))))))).
thf(succ_plus_4_r,axiom,($box@(![X:$i]:($box@(((plus@X@n4)=(succ@(succ@(succ@(succ@X)))))))))).
thf(succ_plus_4_l,axiom,($box@(![X:$i]:($box@(((plus@n4@X)=(succ@(succ@(succ@(succ@X)))))))))).
thf(succ_plus_5_r,axiom,($box@(![X:$i]:($box@(((plus@X@n5)=(succ@(succ@(succ@(succ@(succ@X))))))))))).
thf(succ_plus_5_l,axiom,($box@(![X:$i]:($box@(((plus@n5@X)=(succ@(succ@(succ@(succ@(succ@X))))))))))).
thf(pred_minus_1,axiom,($box@(![X:$i]:($box@(((minus@X@n1)=(pred@X))))))).
thf(pred_succ,axiom,($box@(![X:$i]:($box@(((pred@(succ@X))=X)))))).
thf(succ_pred,axiom,($box@(![X:$i]:($box@(((succ@(pred@X))=X)))))).
thf(leq_succ_succ,axiom,($box@(![X:$i]:($box@(![Y:$i]:(($box@(($box@((leq@(succ@X)@(succ@Y))))=>($box@((leq@X@Y)))))&($box@(($box@((leq@X@Y)))=>($box@((leq@(succ@X)@(succ@Y)))))))))))).
thf(leq_succ_gt,axiom,($box@(![X:$i]:($box@(![Y:$i]:($box@(($box@((leq@(succ@X)@Y)))=>($box@((gt@Y@X)))))))))).
thf(leq_minus,axiom,($box@(![X:$i]:($box@(![Y:$i]:($box@(($box@((leq@(minus@X@Y)@X)))=>($box@((leq@n0@Y)))))))))).
thf(sel3_update_1,axiom,($box@(![X:$i]:($box@(![U:$i]:($box@(![V:$i]:($box@(![VAL:$i]:($box@(((a_select3@(tptp_update3@X@U@V@VAL)@U@V)=VAL)))))))))))).
thf(sel3_update_2,axiom,($box@(![I:$i]:($box@(![J:$i]:($box@(![U:$i]:($box@(![V:$i]:($box@(![X:$i]:($box@(![VAL:$i]:($box@(![VAL2:$i]:($box@((($box@(~(($box@((I=U))))))&(($box@((J=V)))&($box@(((a_select3@X@U@V)=VAL)))))=>($box@(((a_select3@(tptp_update3@X@I@J@VAL2)@U@V)=VAL)))))))))))))))))))).
thf(sel3_update_3,axiom,($box@(![I:$i]:($box@(![J:$i]:($box@(![U:$i]:($box@(![V:$i]:($box@(![X:$i]:($box@(![VAL:$i]:($box@((($box@(![I0:$i]:($box@(![J0:$i]:($box@((($box@((leq@n0@I0)))&(($box@((leq@n0@J0)))&(($box@((leq@I0@U)))&($box@((leq@J0@V))))))=>($box@(((a_select3@X@I0@J0)=VAL)))))))))&(($box@((leq@n0@I)))&(($box@((leq@I@U)))&(($box@((leq@n0@J)))&($box@((leq@J@V)))))))=>($box@(((a_select3@(tptp_update3@X@U@V@VAL)@I@J)=VAL)))))))))))))))))).
thf(sel2_update_1,axiom,($box@(![X:$i]:($box@(![U:$i]:($box@(![VAL:$i]:($box@(((a_select2@(tptp_update2@X@U@VAL)@U)=VAL)))))))))).
thf(sel2_update_2,axiom,($box@(![I:$i]:($box@(![U:$i]:($box@(![X:$i]:($box@(![VAL:$i]:($box@(![VAL2:$i]:($box@((($box@(~(($box@((I=U))))))&($box@(((a_select2@X@U)=VAL))))=>($box@(((a_select2@(tptp_update2@X@I@VAL2)@U)=VAL)))))))))))))))).
thf(sel2_update_3,axiom,($box@(![I:$i]:($box@(![U:$i]:($box@(![X:$i]:($box@(![VAL:$i]:($box@((($box@(![I0:$i]:($box@((($box@((leq@n0@I0)))&($box@((leq@I0@U))))=>($box@(((a_select2@X@I0)=VAL)))))))&(($box@((leq@n0@I)))&($box@((leq@I@U)))))=>($box@(((a_select2@(tptp_update2@X@U@VAL)@I)=VAL)))))))))))))).
thf(ttrue,axiom,($box@(true))).
thf(defuse,axiom,($box@(~(($box@((def=use))))))).
thf(cl5_nebula_array_0019,conjecture,($box@((($box@((leq@n0@pv31)))&($box@((leq@pv31@(minus@n5@n1)))))=>(($box@(($box@(~(($box@((n0=pv70))))))=>(($box@((leq@n0@pv31)))&($box@((leq@pv31@(minus@n5@n1)))))))&($box@(($box@((n0=pv70)))=>($box@(true)))))))).
thf(gt_5_4,axiom,($box@((gt@n5@n4)))).
thf(gt_4_tptp_minus_1,axiom,($box@((gt@n4@tptp_minus_1)))).
thf(gt_5_tptp_minus_1,axiom,($box@((gt@n5@tptp_minus_1)))).
thf(gt_0_tptp_minus_1,axiom,($box@((gt@n0@tptp_minus_1)))).
thf(gt_1_tptp_minus_1,axiom,($box@((gt@n1@tptp_minus_1)))).
thf(gt_2_tptp_minus_1,axiom,($box@((gt@n2@tptp_minus_1)))).
thf(gt_3_tptp_minus_1,axiom,($box@((gt@n3@tptp_minus_1)))).
thf(gt_4_0,axiom,($box@((gt@n4@n0)))).
thf(gt_5_0,axiom,($box@((gt@n5@n0)))).
thf(gt_1_0,axiom,($box@((gt@n1@n0)))).
thf(gt_2_0,axiom,($box@((gt@n2@n0)))).
thf(gt_3_0,axiom,($box@((gt@n3@n0)))).
thf(gt_4_1,axiom,($box@((gt@n4@n1)))).
thf(gt_5_1,axiom,($box@((gt@n5@n1)))).
thf(gt_2_1,axiom,($box@((gt@n2@n1)))).
thf(gt_3_1,axiom,($box@((gt@n3@n1)))).
thf(gt_4_2,axiom,($box@((gt@n4@n2)))).
thf(gt_5_2,axiom,($box@((gt@n5@n2)))).
thf(gt_3_2,axiom,($box@((gt@n3@n2)))).
thf(gt_4_3,axiom,($box@((gt@n4@n3)))).
thf(gt_5_3,axiom,($box@((gt@n5@n3)))).
thf(finite_domain_4,axiom,($box@(![X:$i]:($box@((($box@((leq@n0@X)))&($box@((leq@X@n4))))=>(($box@((X=n0)))|(($box@((X=n1)))|(($box@((X=n2)))|(($box@((X=n3)))|($box@((X=n4)))))))))))).
thf(finite_domain_5,axiom,($box@(![X:$i]:($box@((($box@((leq@n0@X)))&($box@((leq@X@n5))))=>(($box@((X=n0)))|(($box@((X=n1)))|(($box@((X=n2)))|(($box@((X=n3)))|(($box@((X=n4)))|($box@((X=n5))))))))))))).
thf(finite_domain_0,axiom,($box@(![X:$i]:($box@((($box@((leq@n0@X)))&($box@((leq@X@n0))))=>($box@((X=n0)))))))).
thf(finite_domain_1,axiom,($box@(![X:$i]:($box@((($box@((leq@n0@X)))&($box@((leq@X@n1))))=>(($box@((X=n0)))|($box@((X=n1))))))))).
thf(finite_domain_2,axiom,($box@(![X:$i]:($box@((($box@((leq@n0@X)))&($box@((leq@X@n2))))=>(($box@((X=n0)))|(($box@((X=n1)))|($box@((X=n2)))))))))).
thf(finite_domain_3,axiom,($box@(![X:$i]:($box@((($box@((leq@n0@X)))&($box@((leq@X@n3))))=>(($box@((X=n0)))|(($box@((X=n1)))|(($box@((X=n2)))|($box@((X=n3))))))))))).
thf(successor_4,axiom,($box@(((succ@(succ@(succ@(succ@n0))))=n4)))).
thf(successor_5,axiom,($box@(((succ@(succ@(succ@(succ@(succ@n0)))))=n5)))).
thf(successor_1,axiom,($box@(((succ@n0)=n1)))).
thf(successor_2,axiom,($box@(((succ@(succ@n0))=n2)))).
thf(successor_3,axiom,($box@(((succ@(succ@(succ@n0)))=n3)))).
%--------------------------------------------------------------------------