#!bin/bash

# Calculate the mean using awk
awk -F, '
{
    sum[$1] += $2; 
    count[$1]++
} 
END {
    for (category in sum) {
        printf "%s: %.2f\n", category, sum[category] / count[category]
    }
}' "$filename":x
