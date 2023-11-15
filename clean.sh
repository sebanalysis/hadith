#!/bin/bash
# Clean the html files

# Copy the original HTML file to a txt file for processing

name="test"
tr '\n' ' ' < $name.html > $name.txt
# cat $name.txt

# Loop through each line in replace.txt
while read var0 var1; do
    echo "'$var0'" "'$var1'"
    
    # Replace all occurrences of var0 with var1 in the file
    perl -pe 's|$var0|$var1|g' $name.txt >  $name.txt

    # Print the file
    cat $name.txt
    
done <replace.txt
