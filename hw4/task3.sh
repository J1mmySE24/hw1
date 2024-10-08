#1
gawk -F, 'NR > 1 && $3 == 2 && ($13 ~/S/)' titanic.csv
#2
sed 's/,male/,M/g; s/,female/,F/g' titanic.csv
#3
gawk -F, 'NR > 1 && $3 == "2" && ($13 ~ /S/) { if ($7 != "") { total_age += $7; count++ } } END { if (count > 0) print total_age / count; else print "No passengers found." }' titanic.csv







