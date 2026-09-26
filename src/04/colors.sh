#!/bin/bash

white="\e[97m" 
red="\e[91m" 
green="\e[92m" 
blue="\e[96m"
purple="\e[95m"
black="\e[30m"
whiteBG="\e[107m" 
redBG="\e[101m" 
greenBG="\e[42m" 
blueBG="\e[106m"
purpleBG="\e[105m"
blackBG="\e[40m"
reset="\e[0m"
fontcolor_name=${white}
fontcolor_value=${black}
bgcolor_name=${purpleBG}
bgcolor_value=${greenBG}

set_colors() {
        case "$bgname" in
                "1" )      bgcolor_name=${whiteBG};;
                "2" )     bgcolor_name=${redBG};;
                "3" )      bgcolor_name=${greenBG};;
                "4" )     bgcolor_name=${blueBG};;
                "5" )      bgcolor_name=${purpleBG};;
                "6" )     bgcolor_name=${blackBG};;
        esac
        case "$fontname" in
                "1" )      fontcolor_name=${white};;
                "2" )     fontcolor_name=${red};;
                "3" )      fontcolor_name=${green};;
                "4" )     fontcolor_name=${blue};;
                "5" )      fontcolor_name=${purple};;
                "6" )     fontcolor_name=${black};;
        esac
        case "$bgvalue" in
                "1" )      bgcolor_value=${whiteBG};;
                "2" )     bgcolor_value=${redBG};;
                "3" )      bgcolor_value=${greenBG};;
                "4" )     bgcolor_value=${blueBG};;
                "5" )      bgcolor_value=${purpleBG};;
                "6" )     bgcolor_value=${blackBG};;
        esac
        case "$fontvalue" in
                "1" )      fontcolor_value=${white};;
                "2" )     fontcolor_value=${red};;
                "3" )      fontcolor_value=${green};;
                "4" )     fontcolor_value=${blue};;
                "5" )      fontcolor_value=${purple};;
                "6" )     fontcolor_value=${black};;
        esac
}