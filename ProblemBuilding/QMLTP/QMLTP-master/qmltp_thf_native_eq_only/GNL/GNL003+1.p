% semantics

% modalities

% propositions

% individual constants

% predicates

thf(chevy_type,type,(chevy:($i>$o))).
thf(hollywood_type,type,(hollywood:($i>$o))).
thf(woman_type,type,(woman:($i>$o))).
thf(city_type,type,(city:($i>$o))).
thf(down_type,type,(down:($i>$i>$o))).
thf(vehicle_type,type,(vehicle:($i>$o))).
thf(artifact_type,type,(artifact:($i>$o))).
thf(white_type,type,(white:($i>$o))).
thf(car_type,type,(car:($i>$o))).
thf(street_type,type,(street:($i>$o))).
thf(of_type,type,(of:($i>$i>$o))).
thf(proposition_type,type,(proposition:($i>$o))).
thf(have_type,type,(have:($i>$i>$i>$o))).
thf(man_type,type,(man:($i>$o))).
thf(event_type,type,(event:($i>$o))).
thf(female_type,type,(female:($i>$o))).
thf(lonely_type,type,(lonely:($i>$o))).
thf(human_type,type,(human:($i>$o))).
thf(dirty_type,type,(dirty:($i>$o))).
thf(owner_type,type,(owner:($i>$o))).
thf(barrel_type,type,(barrel:($i>$i>$o))).
thf(new_type,type,(new:($i>$o))).
thf(partof_type,type,(partof:($i>$i>$o))).
thf(drs_type,type,(drs:($i>$o))).
thf(in_type,type,(in:($i>$i>$o))).
thf(old_type,type,(old:($i>$o))).
thf(abstraction_type,type,(abstraction:($i>$o))).
thf(transport_type,type,(transport:($i>$o))).
thf(instrumentality_type,type,(instrumentality:($i>$o))).
thf(way_type,type,(way:($i>$o))).
thf(eventuality_type,type,(eventuality:($i>$o))).
thf(location_type,type,(location:($i>$o))).
thf(nonhuman_type,type,(nonhuman:($i>$o))).
thf(entity_type,type,(entity:($i>$o))).
thf(male_type,type,(male:($i>$o))).
thf(object_type,type,(object:($i>$o))).
% functions

% converted problem

%--------------------------------------------------------------------------

% File     : GNL003+1 : QMLTP v1.1

% Domain   : GNL (Goedel translation of Natural Language Processing)

% Problem  : Goedel translation of NLP003+1 (from TPTP-v5.0.0)

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

%             D   Unsolved     Unsolved     Unsolved      v1.1

%             T   Unsolved     Unsolved     Unsolved      v1.1

%             S4  Unsolved     Unsolved     Unsolved      v1.1

%             S5  Unsolved     Unsolved     Unsolved      v1.1

%

% Rating   :      varying      cumulative   constant

%             K   1.00         1.00         1.00          v1.1

%             D   1.00         1.00         1.00          v1.1

%             T   1.00         1.00         1.00          v1.1

%             S4  1.00         1.00         1.00          v1.1

%             S5  1.00         1.00         1.00          v1.1

%

%  term conditions for all terms: designation: rigid, extension: local

%

%--------------------------------------------------------------------------

% removed axiom reflexivity
% removed axiom symmetry
% removed axiom transitivity
% removed axiom abstraction_substitution_1
% removed axiom artifact_substitution_1
% removed axiom barrel_substitution_1
% removed axiom barrel_substitution_2
% removed axiom car_substitution_1
% removed axiom chevy_substitution_1
% removed axiom city_substitution_1
% removed axiom dirty_substitution_1
% removed axiom down_substitution_1
% removed axiom down_substitution_2
% removed axiom drs_substitution_1
% removed axiom entity_substitution_1
% removed axiom event_substitution_1
% removed axiom eventuality_substitution_1
% removed axiom female_substitution_1
% removed axiom have_substitution_1
% removed axiom have_substitution_2
% removed axiom have_substitution_3
% removed axiom hollywood_substitution_1
% removed axiom human_substitution_1
% removed axiom in_substitution_1
% removed axiom in_substitution_2
% removed axiom instrumentality_substitution_1
% removed axiom location_substitution_1
% removed axiom lonely_substitution_1
% removed axiom male_substitution_1
% removed axiom man_substitution_1
% removed axiom new_substitution_1
% removed axiom nonhuman_substitution_1
% removed axiom object_substitution_1
% removed axiom of_substitution_1
% removed axiom of_substitution_2
% removed axiom old_substitution_1
% removed axiom owner_substitution_1
% removed axiom partof_substitution_1
% removed axiom partof_substitution_2
% removed axiom proposition_substitution_1
% removed axiom street_substitution_1
% removed axiom transport_substitution_1
% removed axiom vehicle_substitution_1
% removed axiom way_substitution_1
% removed axiom white_substitution_1
% removed axiom woman_substitution_1
thf(ax1,axiom,($box@(![U:$i]:($box@(($box@((chevy@U)))=>($box@((car@U)))))))).
thf(ax2,axiom,($box@(![U:$i]:($box@(($box@((car@U)))=>($box@((vehicle@U)))))))).
thf(ax3,axiom,($box@(![U:$i]:($box@(($box@((vehicle@U)))=>($box@((transport@U)))))))).
thf(ax4,axiom,($box@(![U:$i]:($box@(($box@((transport@U)))=>($box@((instrumentality@U)))))))).
thf(ax5,axiom,($box@(![U:$i]:($box@(($box@((instrumentality@U)))=>($box@((artifact@U)))))))).
thf(ax6,axiom,($box@(![U:$i]:($box@(($box@((instrumentality@U)))=>($box@(~(($box@((way@U))))))))))).
thf(ax7,axiom,($box@(![U:$i]:($box@(($box@((street@U)))=>($box@((way@U)))))))).
thf(ax8,axiom,($box@(![U:$i]:($box@(($box@((way@U)))=>($box@((artifact@U)))))))).
thf(ax9,axiom,($box@(![U:$i]:($box@(($box@((artifact@U)))=>($box@((object@U)))))))).
thf(ax10,axiom,($box@(![U:$i]:($box@(($box@((artifact@U)))=>($box@(~(($box@((location@U))))))))))).
thf(ax11,axiom,($box@(![U:$i]:($box@(($box@((event@U)))=>($box@((eventuality@U)))))))).
thf(ax12,axiom,($box@(![U:$i]:($box@(($box@((hollywood@U)))=>($box@((city@U)))))))).
thf(ax13,axiom,($box@(![U:$i]:($box@(($box@((city@U)))=>($box@((location@U)))))))).
thf(ax14,axiom,($box@(![U:$i]:($box@(($box@((location@U)))=>($box@((object@U)))))))).
thf(ax15,axiom,($box@(![U:$i]:($box@(($box@((object@U)))=>($box@((entity@U)))))))).
thf(ax16,axiom,($box@(![U:$i]:($box@(($box@((old@U)))=>($box@(~(($box@((new@U))))))))))).
thf(ax17,axiom,($box@(![U:$i]:($box@(($box@((eventuality@U)))=>($box@(~(($box@((entity@U))))))))))).
thf(ax18,axiom,($box@(![U:$i]:($box@(($box@((abstraction@U)))=>($box@(~(($box@((entity@U))))))))))).
thf(ax19,axiom,($box@(![U:$i]:($box@(($box@((abstraction@U)))=>($box@(~(($box@((eventuality@U))))))))))).
thf(ax20,axiom,($box@(![U:$i]:($box@(($box@((male@U)))=>($box@(~(($box@((female@U))))))))))).
thf(ax21,axiom,($box@(![U:$i]:($box@(($box@((man@U)))=>($box@(~(($box@((woman@U))))))))))).
thf(ax22,axiom,($box@(![U:$i]:($box@(($box@((man@U)))=>($box@((male@U)))))))).
thf(ax23,axiom,($box@(![U:$i]:($box@(($box@((male@U)))=>($box@((human@U)))))))).
thf(ax24,axiom,($box@(![U:$i]:($box@(($box@((female@U)))=>($box@((human@U)))))))).
thf(ax25,axiom,($box@(![U:$i]:($box@(($box@((woman@U)))=>($box@((female@U)))))))).
thf(ax26,axiom,($box@(![U:$i]:(($box@(($box@((drs@U)))=>($box@((proposition@U)))))&($box@(($box@((proposition@U)))=>($box@((drs@U))))))))).
thf(ax27,axiom,($box@(![U:$i]:($box@(($box@((nonhuman@U)))=>($box@((entity@U)))))))).
thf(ax28,axiom,($box@(![U:$i]:($box@(($box@((human@U)))=>($box@(~(($box@((nonhuman@U))))))))))).
thf(ax29,axiom,($box@(![U:$i]:($box@(![V:$i]:($box@(![W:$i]:(($box@((($box@((have@U@V@W)))&($box@((human@V))))=>(($box@((owner@V)))&($box@((of@V@W))))))&($box@((($box@((owner@V)))&($box@((of@V@W))))=>(($box@((have@U@V@W)))&($box@((human@V)))))))))))))).
thf(ax30,axiom,($box@(![U:$i]:($box@(![V:$i]:($box@(![W:$i]:($box@((($box@((have@U@V@W)))&(($box@((nonhuman@V)))&($box@((nonhuman@W)))))=>($box@((partof@W@V)))))))))))).
thf(ax31,axiom,($box@(![U:$i]:($box@(![V:$i]:($box@(![W:$i]:($box@((($box@((event@U)))&($box@((have@U@V@W))))=>($box@((of@V@W)))))))))))).
thf(ax32,axiom,($box@(![U:$i]:($box@(![V:$i]:($box@(($box@((of@V@U)))=>(?[W:$i]:(($box@((event@W)))&($box@((have@W@U@V)))))))))))).
thf(ax33,axiom,($box@(![U:$i]:($box@(![V:$i]:($box@(![W:$i]:($box@((($box@((partof@U@V)))&($box@((partof@U@W))))=>($box@((V=W)))))))))))).
thf(co1,conjecture,($box@(~((?[U:$i,V:$i,W:$i,X:$i]:(($box@((hollywood@U)))&(($box@((city@U)))&(($box@((event@V)))&(($box@((chevy@W)))&(($box@((car@W)))&(($box@((white@W)))&(($box@((dirty@W)))&(($box@((old@W)))&(($box@((street@X)))&(($box@((way@X)))&(($box@((lonely@X)))&(($box@((barrel@V@W)))&(($box@((down@V@X)))&($box@((in@V@U))))))))))))))))))))).