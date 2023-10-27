#!/bin/bash

mapfile -t lines < Global\ YouTube\ Statistics.csv

for line in "${lines[@]}"; do
  country=$(echo "$line" | awk -F',' '{print $8}')
  category=$(echo "$line" | awk -F',' '{print $5}')
  #echo "$country, $category"
  if [ "$country" == "United States" ]; then
    echo "$line" >> "United States/$category.txt"
  fi
done


for file in "United States"/*.txt; do
        #echo "Processing: $file"
        lines=$(wc -l "$file" | awk '{print $1}')
        echo "$file has $lines entries." >> counts.txt
done
