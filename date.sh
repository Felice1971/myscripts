

#!/bin/bash

#Descr: Scrip for printing date and time in different format Script.

date0=$(date)
date1=$(date +%d/%m/%Y)
hour=$(date +%r)

echo "We are  $date0"
echo "Today is $date1"
echo "It is $hour"

