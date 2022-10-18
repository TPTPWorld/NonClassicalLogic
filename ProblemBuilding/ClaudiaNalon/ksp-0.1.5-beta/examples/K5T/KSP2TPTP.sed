/sos(formulas)/i\tff(simple_spec,logic,\
    $modal == [\
      $constants == $rigid,\
      $quantification == $constant,\
      $modalities == $modal_system_S5 ] ).
s/sos(formulas)./tff(prove,conjecture,/
s/\.$//
s/end_of_list/).\n/
s#// *#% #

s/^\~//
s/\[]\([a-z][a-z0-9]*\)/({$box} @ (\1))/g
s/<>\([a-z][a-z0-9]*\)/({$dia} @ (\1))/g
s/\[]\(({[^}]*} @ ([^)]*))\)/({$box} @ \1)/g
s/<>\(({[^}]*} @ ([^)]*))\)/({$dia} @ \1)/g

s/and/&/g
# s/v/|/g
s/or/|/g
s/->/=>/g
s/imp/=>/g
s/<->/<=>/g
s/iff/<=>/g

