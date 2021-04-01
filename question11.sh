

#!/bin/bash
#echo "Enter a string: "
#read string
#echo "   "
word="$(cat newfile | wc -w)"
character="$(cat newfile | wc -m)"
space="$(cat newfile | tr -cd '[:blank:]' | wc -c)"
specialcharacter="$(cat newfile | tr -cd '[:punct:]' | wc -c)"

echo " Number of words : $word"
echo " Number of characters : $character"
echo " Number of spaces : $space"
echo " Number of specialcharacter : $specialcharacter"



