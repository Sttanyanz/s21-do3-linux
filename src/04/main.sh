#!/bin/bash

source config.conf
source functions.sh

function print () {
    export fontname=$column1_font_color
    export fontvalue=$column2_font_color
    export bgname=$column1_background
    export bgvalue=$column2_background
    set_colors
    print_vars
    print_colors
}
function invalid_config () {
    echo "Invalid configuration: variables in config.conf should be values from 1 to 6:"
    echo "1 - white"
    echo "2 - red"
    echo "3 - green"
    echo "4 - blue"
    echo "5 - purple"
    echo "6 - black"
}
function match_colors () {
    echo "Invalid configuration: font color and background color shouldn't match. Please edit the configuration and run the script again"
}

if [[ -z $column1_background ]] ; then
    column1_background=7
fi


if [[ -z $column1_font_color ]] ; then
    column1_font_color=8
fi

if [[ -z $column2_background ]] ; then
    column2_background=9
fi

if [[ -z $column2_font_color ]] ; then
    column2_font_color=10
fi


if [[ "$column1_background" = [1-9] ]] &&
[[ "$column1_font_color" = [1-9] ]] && 
[[ "$column2_background" = [1-9] ]] && 
[[ "$column2_font_color" =~ ^([1-9]|10)$ ]]; then
    if [ $column1_background = $column1_font_color ] || [ $column2_background = $column2_font_color ] ; then
        echo "параметры не должны совпадать, вызовите скрипт повторно"
        exit
    fi
    print
else
    invalid_config
    exit
fi