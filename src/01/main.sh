#!/bin/bash
if [ "$#" != 1 ] ; then
    echo "Invalid number of arguments"
    exit 1
elif [[ $1  =~ ^[+-]?[0-9]*[.,]?[0-9]+$ ]] ; then
    echo "Invalid input"
    exit 1
fi

echo "$1"
