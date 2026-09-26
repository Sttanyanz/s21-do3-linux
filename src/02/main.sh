#!/bin/bash
source ./functions.sh

print_vars stdout
echo ""
echo "Do you want to write in file? (y/n, default = n)"
read a
if [ $a == "y" ] || [ $a == "Y" ]; then
    print_vars file
fi
