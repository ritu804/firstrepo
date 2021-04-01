


#!/bin/bash
echo "Enter a string :"
read string
echo "   "

string1=`echo $string | rev`
if [ "$string" == "$string1" ]
then
echo "*$string is palindrome*"
else
echo "*$string is not a palindrome*"
fi



