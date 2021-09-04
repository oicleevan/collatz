#!/bin/bash
if [ $# -eq 1 ]
then
    echo "The results are in [`bash collatz.sh $1 `]"
else
    read -p "Please enter a number: " temp
    echo "The results are in [`bash collatz.sh $temp `]"
fi
