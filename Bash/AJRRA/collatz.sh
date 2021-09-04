#!/bin/bash
arrVar="$1"
temp=$1

until [ $temp -le 1 ]
    do
    if  [ $(( temp % 2 )) -eq 1 ]
    then 
        (( temp=temp * 3 + 1 )) 
    else
        (( temp = temp / 2 ))
    fi
arrVar="${arrVar} $temp"
done

for value in "${arrVar}"
do
     echo $value
done 
