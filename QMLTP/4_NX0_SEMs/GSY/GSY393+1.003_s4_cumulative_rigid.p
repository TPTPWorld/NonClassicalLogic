tff(s4_cumulative_rigid,logic, ( $modal ==
    [$constants == $rigid,
     $quantification == $cumulative,
     $modalities == $modal_system_S4
    ] )).
%%% This output was generated by tptputils, version 1.2.
%%% Generated on Wed Apr 27 15:35:08 CEST 2022 using command 'downgrade(tff)'.
tff(p1_decl, type, p1: $o).
tff(p2_decl, type, p2: $o).
tff(p3_decl, type, p3: $o).
tff(pel12, conjecture, ({$box}((({$box}((({$box}(({$box}(p1) => {$box}(p2))) & {$box}(({$box}(p2) => {$box}(p1)))) => {$box}(p3))) & {$box}(({$box}(p3) => ({$box}(({$box}(p1) => {$box}(p2))) & {$box}(({$box}(p2) => {$box}(p1))))))) => ({$box}(({$box}(p1) => ({$box}(({$box}(p2) => {$box}(p3))) & {$box}(({$box}(p3) => {$box}(p2)))))) & {$box}((({$box}(({$box}(p2) => {$box}(p3))) & {$box}(({$box}(p3) => {$box}(p2)))) => {$box}(p1)))))) & {$box}((({$box}(({$box}(p1) => ({$box}(({$box}(p2) => {$box}(p3))) & {$box}(({$box}(p3) => {$box}(p2)))))) & {$box}((({$box}(({$box}(p2) => {$box}(p3))) & {$box}(({$box}(p3) => {$box}(p2)))) => {$box}(p1)))) => ({$box}((({$box}(({$box}(p1) => {$box}(p2))) & {$box}(({$box}(p2) => {$box}(p1)))) => {$box}(p3))) & {$box}(({$box}(p3) => ({$box}(({$box}(p1) => {$box}(p2))) & {$box}(({$box}(p2) => {$box}(p1))))))))))).