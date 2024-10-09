#!/bin/bash

#Moving to directory dataset1
cd dataset1

#Printing header in terminal
echo "CSC510_Count, FileSize, FileName" && \

#Task a) Listing files with "sample" and atleast 3 occurances of "CSC510" without gawk
grep -l "sample" file* | xargs -I {} sh -c 'count=$(grep -o "CSC510" "{}" | wc -l); \
if [ $count -ge 3 ]; then echo "$count, $(stat -c%s "{}"), {}"; fi' | uniq | \

#Task b) Sorting the files based on occurances of "CSC510", and file-size in case of ties 
gawk -F, '{
        count = $1; 
        size = $2; 
        name = $3;
        print count, size, name
}' | sort -k1,1nr -k2,2nr | \

#Task c) Substituting “file_” with “filtered_”
sed -E 's/file_/filtered_/; s/(.*), (.*), (.*)/\1, \2, \3/'

read -p "Press any key to continue..."
