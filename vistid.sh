#!/bin/bash
sum=0
cat $1 > out
echo Hva er hendelsen
read -r par1
grep $par1 out > tekst.txt
cut -d$'\t' -f 2 tekst.txt > dane
count=$(awk '{ sum += $1; } END { print"Kjøre tid er lik: "  sum; }' dane)
echo "$count"




