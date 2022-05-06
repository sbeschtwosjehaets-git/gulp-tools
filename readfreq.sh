#/bin/bash/
grep "Frequency  " $1.out | awk '{print $2" "$3" "$4" "$5" "$6" "$7}' > freqs.txt
grep "IR Intensity  " $1.out | awk '{print $3" "$4" "$5" "$6" "$7" "$8}' > intens.txt
awk '{ for (i=1; i<=NF; i++) print $i }' freqs.txt > f
awk '{ for (i=1; i<=NF; i++) print $i }' intens.txt > int
paste f int | tail -n+6 > $1.freq
rm freqs.txt
rm intens.txt
rm f
rm int
