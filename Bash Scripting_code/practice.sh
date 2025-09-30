#!/bin/bash

echo "Even-Odd Checker"

# Asking user for a number
echo -n "Enter a number: "
read num

# Check even or odd using modulo (%)
if (( num % 2 == 0 ))
then
    echo "$num is Even"
else
    echo "$num is Odd"
fi

