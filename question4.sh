

#!/bin/bash


integer='^[0-9]+$'

while true
do

        read -p "Enter first number: " a
        read -p "Enter second number: " b

        if ! [[ $a =~ $integer && $b =~ $integer ]]; 
		then
                echo "Enter number:"
                exit 0
        else
                echo '  '
                echo 'select your choice:'
                echo '  '
                echo '1) Addition'
                echo '2) Subtraction'
                echo '3) Multiply'
                echo '4) Division'
                echo '5) Exit'
                echo '  '

                read operation

                case $operation in
                        1) res="$(expr $a + $b)"
                        ;;
                        2) res="$(expr $a - $b)"
                        ;;
                        3) res="$(expr $a \* $b)"
                        ;;
                        4) res="$(expr $a / $b)"
                        ;;
                        5) echo 'return'; exit 0
                        ;;
                        *) echo "Invalid choice"; exit 1
                        ;;
                esac

                echo "Result: $res"
        fi

done


