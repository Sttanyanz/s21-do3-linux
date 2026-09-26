#!/bin/bash
source ./functions.sh

if [ "$#" != 4 ] ; then 
    echo "Invalid number of arguments" 
    exit
fi

if [ $1 = $2 ] || [ $3 = $4 ] ; then
    echo "Invalid input: font color and background color shouldn't match. Please run the script with different colors"
    exit
fi

if [[ "$1" = [1-6] ]] &&
        [[ "$2" = [1-6] ]] && 
        [[ "$3" = [1-6] ]] && 
        [[ "$4" = [1-6] ]]; then
    print_vars
else
    echo "Invalid input: please enter 4 values from 1 to 6:"
    echo "1 - white"
    echo "2 - red"
    echo "3 - green"
    echo "4 - blue"
    echo "5 - purple"
    echo "6 - black"
    exit
fi