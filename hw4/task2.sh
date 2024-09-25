#!/bin/bash

# Find files that contain "sample" and at least 3 occurrences of "CSC510"

echo "CSC510_Count, FileSize, FileName"
for file in dataset1/*; do
    if grep -q "sample" "$file"; then
        # Count occurrences of "CSC510"
        count=$(grep -o "CSC510" "$file" | wc -l)
        
        if [ "$count" -ge 3 ]; then
            # Output the filename, count of CSC510, and file size
            echo "$file $count $(stat -c%s "$file")"
        fi
    fi
done | gawk '
# Use gawk to process the output, extract columns, and sort
{
    # Assign variables for filename, CSC510 count, and file size
    filename=$1
    csc510_count=$2
    size=$3

    # Print the sorted data: CSC510 count first, then size, then filename
    print csc510_count, size, filename
}
'| sort -k1,1nr -k2,2nr | gawk '
# In the final sorted output, replace "file_" with "filtered_" in the filename
{
    # Substitute "file_"
    gsub(/file_/, "filtered_", $3)
    
    # Print the updated filename
    print $1,$2,$3
}
'
echo
echo
echo
read -p "Press any key to continue..."
