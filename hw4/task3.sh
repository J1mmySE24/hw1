#!/bin/bash

# Step 1: Filter passengers from the Titanic dataset
gawk -F, 'NR > 1 && $3 == 2 && ($13 ~/S/)' titanic.csv
# Step 2: Replace gender labels in the dataset
echo "Updated gender labels in the dataset:"
sed 's/,male/,M/g; s/,female/,F/g' titanic.csv
# Step 3: Calculate the average age of filtered passengers
gawk -F, 'NR > 1 && $3 == "2" && ($13 ~ /S/) { if ($7 != "") { total_age += $7; count++ } } 
          END { 
              if (count > 0) 
                  printf "Average Age: %.2f\n", total_age / count; 
              else 
                  print "No passengers found." 
          }' titanic.csv

echo
read -p "Press any key to continue"



