#!/bin/bash

sed 's/false/$false/g' | \
sed 's/true/$true/g' | \
sed 's/->/=>/g' | \
sed 's/v/|/g' | \
sed -E 's/box\(/[.]\(/g' | \
sed -E 's/\(box ([a-z]+[0-9]+)\)/([.](\1))/g' | \
sed 's/\(box $false\)/([.]($false))/g' | \
sed 's/\(box $true\)/([.]($true))/g' | \
sed -E 's/dia\(/<.>\(/g' | \
sed -E 's/\(dia ([a-z]+[0-9]+)\)/(<.>(\1))/g' | \
sed -E "s/^([0-9]*):/tff('\1', conjecture,/" | \
sed 's/\(dia $false\)/(<.>($false))/g' | \
sed 's/\(dia $true\)/(<.>($true))/g' | \
sed 's/$/)./' | \
sed '1s;^;tff(simple_k,logic, $modal == [ $constants == $rigid, $quantification == $constant, $modalities == $modal_system_K ] ).\n\n;' 
