#!/bin/bash

lines=$(sed -nE '/^([0-9]+):/p' $1)

i=0
while IFS= read -r line; do
    i=$((i+1))
    echo "$line" | "./toTPTP.sh" > "$2"/"$i.p"
done <<< "$lines"
