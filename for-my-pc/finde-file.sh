#!/bin/bash

selectedObjFull=$(ls -Al | egrep -v '^d' | gum filter --placeholder "Pick file...")

# echo $selectedObjFull | awk  '{sub(/.* /,""); print }'

selectedObjShort=$(echo $selectedObjFull | awk  '{sub(/.* /,""); print }')

# echo $selectedObjShort

$EDITOR $selectedObjShort
