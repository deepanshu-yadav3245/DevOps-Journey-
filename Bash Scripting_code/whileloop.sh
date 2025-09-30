#!/bin/bash

echo "Sum of numbers from 1 to 100 using while loop:"

sum=0
i=1

while [ $i -le 100 ]
do
    sum=$((sum + i))
    i=$((i + 1))
done

echo "Total Sum = $sum"
