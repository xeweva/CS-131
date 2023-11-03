#!/bin/bash

echo "Early Birds List:"

awk '{
  if (NF == 10) time=$7; 
  else time=$6;
  split(time, arr, ":"); 
  hour = arr[1] + 0;
  if (hour > 4 && hour <= 9) print $1;
}' data/lastf23.fake  | sort | uniq
echo "Early Birds are dope. Please ensure you get enough sleep though."
