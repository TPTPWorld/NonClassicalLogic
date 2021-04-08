% SZS output start CNFRefutation for src/test/resources/problems/modalth1.p
thf(pigs_might_fly_type, type, pigs_might_fly: $o).
thf(boxP_type, type, boxP: !>[TA: $tType]: (TA > ($o > $o))).
thf(boxI_type, type, boxI: ($int > ($o > $o))).
thf($$int(27)_type, type, $$int(27): $int).
thf(4, axiom, (((boxI) = (((boxP) @ $int)))),file('src/test/resources/problems/modalth1.p',boxI_boxP)).
thf(10, plain, (((boxI) = (((boxP) @ $int)))),inference(defexp_and_simp_and_etaexpand,[status(thm)],[4])).
thf(11, plain, (((boxI) = (((boxP) @ $int)))),inference(lifteq,[status(thm)],[10])).
thf(12, plain, ((! [A:$o,B:$int]: ((((((boxI) @ (B)) @ (A))) = (((((boxP) @ $int) @ (B)) @ (A))))))),inference(func_ext,[status(esa)],[11])).
thf(1, conjecture, ((~ (((((boxI) @ ($$int(27))) @ (pigs_might_fly)))))),file('src/test/resources/problems/modalth1.p',int_agent_27_says_no_flying_pigs)).
thf(2, negated_conjecture, (((((boxI) @ ($$int(27))) @ (pigs_might_fly)))),inference(neg_conjecture,[status(cth)],[1])).
thf(6, plain, (((((boxI) @ ($$int(27))) @ (pigs_might_fly)))),inference(defexp_and_simp_and_etaexpand,[status(thm)],[2])).
thf(7, plain, (((((boxI) @ ($$int(27))) @ (pigs_might_fly)))),inference(negation_normal,[status(thm)],[6])).
thf(19, plain, ((! [A:$o,B:$int]: (((((((boxP) @ $int) @ (B)) @ (A))) | (~ ((((((boxI) @ ($$int(27))) @ (pigs_might_fly))) = ((((boxI) @ (B)) @ (A)))))))))),inference(paramod_ordered,[status(thm)],[12,7])).
thf(21, plain, ((((((boxP) @ $int) @ ($$int(27))) @ (pigs_might_fly)))),inference(pre_uni,[status(esa)],[19:[bind(1, $thf($$int(27) ⋅ (⊥))),bind(2, $thf(pigs_might_fly ⋅ (⊥)))]])).
thf(22, plain, ((((((boxP) @ $int) @ ($$int(27))) @ (pigs_might_fly)))),inference(simp,[status(thm)],[21])).
thf(5, axiom, ((^ [TA: $tType]: (! [A:TA]: ((~ ((((((boxP) @ TA) @ (A)) @ (pigs_might_fly))))))))),file('src/test/resources/problems/modalth1.p',no_flying_pigs)).
thf(13, plain, ((^ [TA: $tType]: (! [A:TA]: ((~ ((((((boxP) @ TA) @ (A)) @ (pigs_might_fly))))))))),inference(defexp_and_simp_and_etaexpand,[status(thm)],[5])).
thf(14, plain, ((! [A:TA]: ((~ ((((((boxP) @ TA) @ (A)) @ (pigs_might_fly)))))))),inference(cnf,[status(thm)],[13])).
thf(23, plain, ((! [A:TA]: ((~ (((((((boxP) @ $int) @ ($$int(27))) @ (pigs_might_fly))) = (((((boxP) @ TA) @ (A)) @ (pigs_might_fly))))))))),inference(paramod_ordered,[status(thm)],[22,14])).
thf(24, plain, (($false)),inference(pre_uni,[status(esa)],[23:[bind(1, $thf($$int(27) ⋅ (⊥)))]])).
thf(25, plain, (($false)),inference(simp,[status(thm)],[24])).
% SZS output end CNFRefutation for src/test/resources/problems/modalth1.p
