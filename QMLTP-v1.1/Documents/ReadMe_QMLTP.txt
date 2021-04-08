QMLTP-Library  ReadMe
*********************

The Quantified Modal Logic Theorem Proving (QMLTP) library provides a
platform for testing and benchmarking automated theorem proving (ATP)
systems for first-order modal logic. It includes a comprehensive set
of problems for various first-order modal logics in an extended
TPTP-syntax and tools for converting the problems into some of the
existing modal theorem prover formats. It also includes information
about ATP-systems for first-order modal logic and their perfomance
results on the benchmark problems. 
Please see also http://www.iltp.de/qmltp.

Installation
------------

Unpack and untar QMLTP-v1.1.tar.gz
> tar -xzf QMLTP-v1.1.tar.gz
This will create the directory QMLTP-v1.1
 
Contents
--------

* Problems    - benchmark problems in a standardised syntax
* Axioms      - axioms supplying the embedding of quantified
                modal logic into simple type theory (STT): needed for
                the higher-order ATP systems (Leo-II, Satallax)       
* TPTP2X      - tools for converting the problem into some of the existing 
                modal ATP system format
* Documents   - performance results on the benchark problems for 
                ATP systems in quantified modal logics, statistics,
                example sessions, 
                ReadMe.qmltp - this file

tptp2X
------

This tool that translates problems into the syntax of the respective ATP
system. It stems from the TPTP-Library [2] and is adapted to the
QMLTP-library: 
- it includes format-files for some modal ATP systems
  and for generation of problems by applying geodel's empbedding on
  classical first-order problems
- it is extended by modal operators (box, dia)
- adding equality axioms is adapted to modal logic (for adding
  equality axioms in classical or intuitionistic logic, use
  > cp transform.equality.orig transform.equality
- it is adapted to the directory structure of the QMLTP-Library

You will need some Prolog Interpreter. For full details see the
technical maunal at http://www.cs.miami.edu/~tptp. 
 
a) Configure tptp2X tool:
> cd QMLTP-v0.2/TPTP2X
> ./tptp2X_install

This script will ask for required information:
path of the ILTP directory, Prolog dialect (ECLiPSe, SWI, SISCtus,
YAP), absolute  path name of the executable Prolog Interpreter, the
ATP system you want to translate the problems to (simply type 'a' for 'all').

b) Use TPTP2X tool to translate problems:
> ./tptp2X -f <format> [-t <transformations>] ../Problems/<domain>/'*.p'

This will write the translated problems into the directory <ATP system>.
The parameters are:

<format>: one of mleantap   (for MleanTAP, MleanSeP),
                 gqmlprover (for GQML-Prover), 
                 thf        (for TPTP THF-format of higher-order logic
                             theorem prover like LEO-II, Satallax)


<domain>: one of APM, GAL, GLC, GNL, GSE, GSV, GSY, SYM, NLP, SET
                 
<transformations>: 
   add_equality: - adds equality axioms 
                 - necessary, if the prover has no special method for handling equality
                 - not stable under SWI-Prolog.   
   do not use shorten, beacause it would generate faulty transformed problems
   logic:<logic> - only if <format> is thf
                   <logic>: k, d, t, s4, s5 for the respective modal logic

Benchmark Problems
------------------

QMLTP-v1.1:

600 problems:
580 uni-modal (330 non-propositional, 170 propositional)
20 multi-modal (13 non-propositional, 7 propoisitional)
sources: applications, textbooks, TANCS-2000, TPTP-v5.0.0,
         Goedel translation
- each problem is associated with useful header information
- modal status and rating
  wrt. particular first-order modal logic and domain condition
  in v1.1: uni-modal first-order logics K, D, T, S4, S5,
           varying, cumulative constant domain

           multi-modal logics with intended logics for each
           modality operator, cumulative domain
  term condition: rigid, local terms
  Theorem    : problem was proven by some modal ATP system
  Non-Theorem: problem was refuted by some modal ATP system
  Unsolved   : status could not be determined by any modal
               ATP system under the test conditions
              
  difficulty rating: 0.0 .. 1.0
  ratio of the current modal state-of-the-art ATP systems
  which fail to prove or refute the problem (0.0: easy, ... 1.0: hard)

  state-of-the-art ATP system: ATP system whose set of solved problems are
  not subsumed by another ATP system

- description, source, references


Test conditions
---------------

time limit: 600 sec.
Xeon 3.4 GHz, 4 GB RAM, Linux 2.6.24-24.x86_64 
Mandrake 10.2

ATP system : GQML-Prover MleanTAP      MleanCoP       MleanSeP       f2p+MSPASS      Leo-II       Satallax
version    : 1.2         1.3           1.2            1.2            1.1/3.0         1.2.6        2.2
programming
language   : OCaml      Prolog         Prolog         Prolog         Prolog          OCaml        Lisp
compiler   : OCaml 3.10 ECLiPSe v5.10  ECLiPSe v5.10  ECLiPSe v5.10  ECLiPSe v5.10/
                                                                     gcc v. 4.6.1    Ocaml 3.10   Steel Bank Common Lisp

Contact
-------

Please contact us, if you have any questions, suggestions, or if you
have developed an ATP system or benchmark problems for first-order
modal logic. We would like to include your ATP system and your
benchmark problems in the QMLTP-library.


Thomas Raths: traths@cs.uni-potsdam.de

Jens Otten

http://www.iltp.de/qmltp

Theoretical Computer Science
Institute of Computer Science
University of Potsdam
Postfach 90 03 27
D-14439 Potsdam
Germany

Tel. +49 331 977-3041
Fax: +49 331 977-3042
