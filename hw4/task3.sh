#!/bin/bash

# Step 1: Filter passengers from the Titanic dataset
# Step 2: Replace gender labels in the dataset
# Step 3: Calculate the average age of filtered passengers
gawk -F, 'NR > 1 && $3 == 2 && $13 ~ /S/ \
 { print | "sed -e \"s/male/M/; s/female/F/\" >> filtered_passengers.csv"; if ($7 != "") { total_age += $7; count++ } } END { if (count > 0) \
 printf "Average Age: %.2f\n", total_age / count; else print "No passengers found." }' titanic.csv

read -p "Press any key to continue"