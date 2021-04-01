







#!/bin/bash

echo "Enter number a: "
read a
echo "Enter number b: "
read b
echo "Enter number c: "
read c

if [ $a -gt $b ] && [ $a -gt $c ]
then
    echo "The greatest number is: $a"
elif [ $b -gt $a ] && [ $b -gt $c ]
then
    echo "The greatest Number is: $b"
else
    echo "The greatest Number is: $c"
fi



