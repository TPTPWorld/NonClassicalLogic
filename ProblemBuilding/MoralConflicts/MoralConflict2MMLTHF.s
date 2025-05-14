%------------------------------------------------------------------------------
% File     : E---3.1
% Problem  : MoralConflict2MMLTHF : v?.?.?
% Transfm  : none
% Format   : tptp:raw
% Command  : run_E %s %d THM

% Computer : quokka.cs.miami.edu
% Model    : x86_64 x86_64
% CPU      : Intel(R) Xeon(R) CPU E5-2609 v2 @ 2.50GHz
% Memory   : 64222MB
% OS       : Linux 3.10.0-1160.36.2.el7.x86_64
% CPULimit : 30s
% WCLimit  : 0s
% DateTime : Wed Aug 30 09:53:59 EDT 2023

% Result   : Unsatisfiable 0.10s 0.13s
% Output   : CNFRefutation 0.10s
% Verified : 
% SZS Type : Refutation
%            Derivation depth      :    6
%            Number of leaves      :   18
% Syntax   : Number of formulae    :   31 (  18 unt;  10 typ;   0 def)
%            Number of atoms       :   50 (  12 equ;   0 cnn)
%            Maximal formula atoms :   10 (   2 avg)
%            Number of connectives :  121 (  12   ~;   6   |;  10   &;  89   @)
%                                         (   0 <=>;   4  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   14 (   4 avg)
%            Number of types       :    1 (   0 usr)
%            Number of type conns  :   55 (  55   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (  12 usr;   5 con; 0-3 aty)
%            Number of variables   :   60 (  30   ^;  26   !;   4   ?;  60   :)

% Comments : 
%------------------------------------------------------------------------------
thf(decl_22,type,
    mrel: mindex > mworld > mworld > $o ).

thf(decl_23,type,
    '#deontic': mindex ).

thf(decl_24,type,
    '#alethic': mindex ).

thf(decl_25,type,
    mglobal: ( mworld > $o ) > $o ).

thf(decl_26,type,
    mnot: ( mworld > $o ) > mworld > $o ).

thf(decl_27,type,
    mand: ( mworld > $o ) > ( mworld > $o ) > mworld > $o ).

thf(decl_31,type,
    mbox: mindex > ( mworld > $o ) > mworld > $o ).

thf(decl_32,type,
    mdia: mindex > ( mworld > $o ) > mworld > $o ).

thf(decl_33,type,
    mforall_fun_l__mworld_do__r_: ( ( mworld > $o ) > mworld > $o ) > mworld > $o ).

thf(decl_36,type,
    esk2_1: mworld > mworld ).

thf(mglobal_def,axiom,
    ( mglobal
    = ( ^ [X1: mworld > $o] :
        ! [X2: mworld] : ( X1 @ X2 ) ) ),
    file('/tmp/tmp.Baz7xgzGbW/E---3.1_8742',mglobal_def) ).

thf(mnot_def,axiom,
    ( mnot
    = ( ^ [X3: mworld > $o,X2: mworld] :
          ~ ( X3 @ X2 ) ) ),
    file('/tmp/tmp.Baz7xgzGbW/E---3.1_8742',mnot_def) ).

thf(mand_def,axiom,
    ( mand
    = ( ^ [X3: mworld > $o,X4: mworld > $o,X2: mworld] :
          ( ( X3 @ X2 )
          & ( X4 @ X2 ) ) ) ),
    file('/tmp/tmp.Baz7xgzGbW/E---3.1_8742',mand_def) ).

thf(mbox_def,axiom,
    ( mbox
    = ( ^ [X5: mindex,X1: mworld > $o,X2: mworld] :
        ! [X6: mworld] :
          ( ( mrel @ X5 @ X2 @ X6 )
         => ( X1 @ X6 ) ) ) ),
    file('/tmp/tmp.Baz7xgzGbW/E---3.1_8742',mbox_def) ).

thf(mdia_def,axiom,
    ( mdia
    = ( ^ [X5: mindex,X1: mworld > $o,X2: mworld] :
        ? [X6: mworld] :
          ( ( mrel @ X5 @ X2 @ X6 )
          & ( X1 @ X6 ) ) ) ),
    file('/tmp/tmp.Baz7xgzGbW/E---3.1_8742',mdia_def) ).

thf(mforall_fun_l__mworld_do__r__def,axiom,
    ( mforall_fun_l__mworld_do__r_
    = ( ^ [X7: ( mworld > $o ) > mworld > $o,X2: mworld] :
        ! [X8: mworld > $o] : ( X7 @ X8 @ X2 ) ) ),
    file('/tmp/tmp.Baz7xgzGbW/E---3.1_8742',mforall_fun_l__mworld_do__r__def) ).

thf(moral_conflict,axiom,
    ( mglobal
    @ ( mforall_fun_l__mworld_do__r_
      @ ^ [X3: mworld > $o] :
          ( mforall_fun_l__mworld_do__r_
          @ ^ [X4: mworld > $o] : ( mand @ ( mbox @ '#deontic' @ X3 ) @ ( mand @ ( mbox @ '#deontic' @ X4 ) @ ( mnot @ ( mdia @ '#alethic' @ ( mand @ X3 @ X4 ) ) ) ) ) ) ) ),
    file('/tmp/tmp.Baz7xgzGbW/E---3.1_8742',moral_conflict) ).

thf('mrel_#alethic_serial',axiom,
    ! [X2: mworld] :
    ? [X6: mworld] : ( mrel @ '#alethic' @ X2 @ X6 ),
    file('/tmp/tmp.Baz7xgzGbW/E---3.1_8742','mrel_#alethic_serial') ).

thf(c_0_8,plain,
    ( mglobal
    = ( ^ [Z0: mworld > $o] :
        ! [X2: mworld] : ( Z0 @ X2 ) ) ),
    inference(fof_simplification,[status(thm)],[mglobal_def]) ).

thf(c_0_9,plain,
    ( mnot
    = ( ^ [Z0: mworld > $o,Z1: mworld] :
          ~ ( Z0 @ Z1 ) ) ),
    inference(fof_simplification,[status(thm)],[mnot_def]) ).

thf(c_0_10,plain,
    ( mand
    = ( ^ [Z0: mworld > $o,Z1: mworld > $o,Z2: mworld] :
          ( ( Z0 @ Z2 )
          & ( Z1 @ Z2 ) ) ) ),
    inference(fof_simplification,[status(thm)],[mand_def]) ).

thf(c_0_11,plain,
    ( mbox
    = ( ^ [Z0: mindex,Z1: mworld > $o,Z2: mworld] :
        ! [X6: mworld] :
          ( ( mrel @ Z0 @ Z2 @ X6 )
         => ( Z1 @ X6 ) ) ) ),
    inference(fof_simplification,[status(thm)],[mbox_def]) ).

thf(c_0_12,plain,
    ( mdia
    = ( ^ [Z0: mindex,Z1: mworld > $o,Z2: mworld] :
        ? [X6: mworld] :
          ( ( mrel @ Z0 @ Z2 @ X6 )
          & ( Z1 @ X6 ) ) ) ),
    inference(fof_simplification,[status(thm)],[mdia_def]) ).

thf(c_0_13,plain,
    ( mforall_fun_l__mworld_do__r_
    = ( ^ [Z0: ( mworld > $o ) > mworld > $o,Z1: mworld] :
        ! [X8: mworld > $o] : ( Z0 @ X8 @ Z1 ) ) ),
    inference(fof_simplification,[status(thm)],[mforall_fun_l__mworld_do__r__def]) ).

thf(c_0_14,plain,
    ! [X19: mworld,X18: mworld > $o,X17: mworld > $o] :
      ( ! [X14: mworld] :
          ( ( mrel @ '#deontic' @ X19 @ X14 )
         => ( X18 @ X14 ) )
      & ! [X15: mworld] :
          ( ( mrel @ '#deontic' @ X19 @ X15 )
         => ( X17 @ X15 ) )
      & ~ ? [X16: mworld] :
            ( ( mrel @ '#alethic' @ X19 @ X16 )
            & ( X18 @ X16 )
            & ( X17 @ X16 ) ) ),
    inference(apply_def,[status(thm)],[inference(apply_def,[status(thm)],[inference(apply_def,[status(thm)],[inference(apply_def,[status(thm)],[inference(apply_def,[status(thm)],[inference(apply_def,[status(thm)],[inference(fof_simplification,[status(thm)],[moral_conflict]),c_0_8]),c_0_9]),c_0_10]),c_0_11]),c_0_12]),c_0_13]) ).

thf(c_0_15,plain,
    ! [X34: mworld,X35: mworld > $o,X36: mworld > $o,X37: mworld,X38: mworld,X39: mworld] :
      ( ( ~ ( mrel @ '#deontic' @ X34 @ X37 )
        | ( X35 @ X37 ) )
      & ( ~ ( mrel @ '#deontic' @ X34 @ X38 )
        | ( X36 @ X38 ) )
      & ( ~ ( mrel @ '#alethic' @ X34 @ X39 )
        | ~ ( X35 @ X39 )
        | ~ ( X36 @ X39 ) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_14])])]) ).

thf(c_0_16,plain,
    ! [X32: mworld] : ( mrel @ '#alethic' @ X32 @ ( esk2_1 @ X32 ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],['mrel_#alethic_serial'])]) ).

thf(c_0_17,plain,
    ! [X1: mworld > $o,X2: mworld,X3: mworld > $o,X6: mworld] :
      ( ~ ( mrel @ '#alethic' @ X2 @ X6 )
      | ~ ( X1 @ X6 )
      | ~ ( X3 @ X6 ) ),
    inference(split_conjunct,[status(thm)],[c_0_15]) ).

thf(c_0_18,plain,
    ! [X2: mworld] : ( mrel @ '#alethic' @ X2 @ ( esk2_1 @ X2 ) ),
    inference(split_conjunct,[status(thm)],[c_0_16]) ).

thf(c_0_19,plain,
    ! [X2: mworld,X6: mworld] :
      ~ ( mrel @ '#alethic' @ X2 @ X6 ),
    inference(condense,[status(thm)],[c_0_17]) ).

thf(c_0_20,plain,
    $false,
    inference(sr,[status(thm)],[c_0_18,c_0_19]),
    [proof] ).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% Running higher-order theorem proving
% Running: /exp/home/tptp/Systems/E---3.1/eprover-ho --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule=8 --cpu-limit=30 /tmp/tmp.Baz7xgzGbW/E---3.1_8742
% # Version: 3.1pre001-ho
% # partial match(1): HSMSSMSSMLMNHSN
% # Preprocessing class: HSMSSMSSMLMNHFN.
% # Scheduled 4 strats onto 8 cores with 30 seconds (240 total)
% # Starting ho_unfolding_3 with 150s (5) cores
% # Starting ehoh_best2_full_lfho with 30s (1) cores
% # Starting almost_fo_3_lam with 30s (1) cores
% # Starting post_as_ho1 with 30s (1) cores
% # ho_unfolding_3 with pid 8764 completed with status 0
% # Result found by ho_unfolding_3
% # partial match(1): HSMSSMSSMLMNHSN
% # Preprocessing class: HSMSSMSSMLMNHFN.
% # Scheduled 4 strats onto 8 cores with 30 seconds (240 total)
% # Starting ho_unfolding_3 with 150s (5) cores
% # No SInE strategy applied
% # Search class: HGHNS-FFSF32-SHFSMMBN
% # partial match(2): HGHSS-FFSF32-SHFMMMBN
% # Scheduled 6 strats onto 5 cores with 150 seconds (150 total)
% # Starting post_as_ho10 with 68s (1) cores
% # Starting ho_unfolding_3 with 16s (1) cores
% # Starting post_as_ho2 with 17s (1) cores
% # Starting new_ho_10_unif with 17s (1) cores
% # Starting lpo8_s with 17s (1) cores
% # ho_unfolding_3 with pid 8770 completed with status 0
% # Result found by ho_unfolding_3
% # partial match(1): HSMSSMSSMLMNHSN
% # Preprocessing class: HSMSSMSSMLMNHFN.
% # Scheduled 4 strats onto 8 cores with 30 seconds (240 total)
% # Starting ho_unfolding_3 with 150s (5) cores
% # No SInE strategy applied
% # Search class: HGHNS-FFSF32-SHFSMMBN
% # partial match(2): HGHSS-FFSF32-SHFMMMBN
% # Scheduled 6 strats onto 5 cores with 150 seconds (150 total)
% # Starting post_as_ho10 with 68s (1) cores
% # Starting ho_unfolding_3 with 16s (1) cores
% # Preprocessing time       : 0.002 s
% # Presaturation interreduction done
% 
% # Proof found!
% # SZS status Unsatisfiable
% # SZS output start CNFRefutation
% See solution above
% # Parsed axioms                        : 30
% # Removed by relevancy pruning/SinE    : 0
% # Initial clauses                      : 30
% # Removed in clause preprocessing      : 15
% # Initial clauses in saturation        : 15
% # Processed clauses                    : 5
% # ...of these trivial                  : 0
% # ...subsumed                          : 1
% # ...remaining for further processing  : 4
% # Other redundant clauses eliminated   : 0
% # Clauses deleted for lack of memory   : 0
% # Backward-subsumed                    : 0
% # Backward-rewritten                   : 0
% # Generated clauses                    : 1
% # ...of the previous two non-redundant : 0
% # ...aggressively subsumed             : 0
% # Contextual simplify-reflections      : 0
% # Paramodulations                      : 0
% # Factorizations                       : 0
% # NegExts                              : 0
% # Equation resolutions                 : 0
% # Total rewrite steps                  : 0
% # Propositional unsat checks           : 0
% #    Propositional check models        : 0
% #    Propositional check unsatisfiable : 0
% #    Propositional clauses             : 0
% #    Propositional clauses after purity: 0
% #    Propositional unsat core size     : 0
% #    Propositional preprocessing time  : 0.000
% #    Propositional encoding time       : 0.000
% #    Propositional solver time         : 0.000
% #    Success case prop preproc time    : 0.000
% #    Success case prop encoding time   : 0.000
% #    Success case prop solver time     : 0.000
% # Current number of processed clauses  : 3
% #    Positive orientable unit clauses  : 1
% #    Positive unorientable unit clauses: 0
% #    Negative unit clauses             : 1
% #    Non-unit-clauses                  : 1
% # Current number of unprocessed clauses: 10
% # ...number of literals in the above   : 32
% # Current number of archived formulas  : 0
% # Current number of archived clauses   : 1
% # Clause-clause subsumption calls (NU) : 2
% # Rec. Clause-clause subsumption calls : 2
% # Non-unit clause-clause subsumptions  : 2
% # Unit Clause-clause subsumption calls : 1
% # Rewrite failures with RHS unbound    : 0
% # BW rewrite match attempts            : 0
% # BW rewrite match successes           : 0
% # Condensation attempts                : 5
% # Condensation successes               : 1
% # Termbank termtop insertions          : 2214
% 
% # -------------------------------------------------
% # User time                : 0.007 s
% # System time              : 0.004 s
% # Total time               : 0.011 s
% # Maximum resident set size: 1960 pages
% 
% # -------------------------------------------------
% # User time                : 0.014 s
% # System time              : 0.013 s
% # Total time               : 0.027 s
% # Maximum resident set size: 1764 pages
% % E---3.1 exiting
% 
%------------------------------------------------------------------------------
% RESULT: MoralConflict2MMLTHF - E---3.1 says Unsatisfiable - CPU = 0.10 WC = 0.13 
% OUTPUT: MoralConflict2MMLTHF - E---3.1 says CNFRefutation - CPU = 0.10 WC = 0.13 
