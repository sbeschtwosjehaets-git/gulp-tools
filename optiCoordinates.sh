#/bin/bash/
a="$( grep 'Number of irreducible' Ti5O10_jopti.out | awk '{print $6}')"
echo $a > $1.xyz
echo "force field optimisation from gulp" >> $1.xyz
b=$(($a+5))
#echo $b
grep -A $b "Final cartesian" $1.out  | tail -$a | awk '{print $2" "$4" "$5" "$6}' >> $1.xyz
