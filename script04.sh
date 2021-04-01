#!/bin/bash


#regex to check if the input is int or not
integer='^[0-9]+$'

while true
do

        read -p "Enter first integer: " a
        read -p "Enter second integer: " b

#if input is non-integer type.Exit the process.
        if ! [[ $a =~ $integer && $b =~ $integer ]]; then
                echo "Enter number."
                exit 0
        else
                echo '  '
                echo 'Choose operation:'
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
                        5) echo 'succesfully Exited'; exit 0
                        ;;
                        *) echo "Invalid option $operation"; exit 1
                        ;;
                esac

                echo "Result: $res"
        fi

done


