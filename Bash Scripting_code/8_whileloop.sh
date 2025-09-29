#!/bin/bash

counter=2
limit=1000000

while [ $counter -le $limit ]

do
        echo "Looping..."
        echo "Value of counter is $counter"
        counter=$(( $counter * 232 ))
        sleep 1

done

echo "Out of the loop "
                