#!/bin/bash

path=$1;

if [ "$#" == 1 ]  ; then
    if [ -d $path ] ; then
        if  [ "${path: ${#path} - 1}" == "/" ] ; then
            START=$(date +%s.%N)
            bash ./info.sh $path
            END=$(date +%s.%N)
            EXECUTION_TIME=$(echo "$END - $START" | bc -l)
            printf "Script execution time (in seconds) = %.1f\n" $EXECUTION_TIME
        else
            echo "Invalid input"
        fi
    else
        echo "Invalid directory path"
    fi
else
    echo "Invalid number of arguments"
fi
