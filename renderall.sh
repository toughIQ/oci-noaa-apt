#!/bin/bash

echo `ls -rt --quoting-style=shell-escape /dumps/*.wav`

for i in `ls -rt --quoting-style=shell-escape /dumps/*.wav`; do
  echo $i  
  /noaa-apt/noaa-apt -F "$i" -o $i.png
done

