#!/bin/bash

echo "Night Owls List:"

awk '{
  if (NF == 10) time=$7; 
  else time=$6;
  split(time, arr, ":"); 
  hour = arr[1] + 0;
  if (hour >= 23 || hour <= 4 ) print $1;
}' data/lastf23.fake  | sort | uniq

echo "Night Owls are dope. Please ensure you get enough sleep though."
