%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Example 2: Quantification semantics
%
% see also QMLTP SYM001+1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%--- logic specification
thf(spec, logic, ($modal = [
   $constants = $rigid,
   $quantification = $decreasing,
   $consequence = $global,
   $modalities = $modal_system_K ] ) ).

%--- Specify an uninterpreted predicate symbol f
thf(f_type, type, f: ($i > $o)).

%--- Does BF: (∀x.□f(x)) → □∀x.f(x) hold?
thf(barcan_formula, conjecture, (
          (![X:$i]: ( [.] @ (f @ X) ))
            => ([.] @ ( ![X: $i]: ( f @ X ) )) ) ).
