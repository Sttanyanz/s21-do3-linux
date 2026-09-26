#!/bin/bash

TIMEZONE="$(timedatectl | grep "Time zone" | awk '{print $3}') $(date +%z)"
USER="$USER"
OS="$OSTYPE"
DATE="$(date +%d) $(date +%b) $(date +%Y) $(date +%T)"
UPTIME="$(uptime -p)"
UPTIME_SEC="$(cat /proc/uptime | awk '{print $1}')"
IP="$(ip address | grep "eth0" | grep "inet" | awk '{print $2}')"
MASK=$(ip address | grep "eth0" | grep "inet" | awk '{print $2}'  | cut -d/ -f2)
GATEWAY=$(ip r | grep "default" | awk '{print $3}')
RAM_TOTAL=$(free | grep Mem | awk '{kbyte =$2 /1024/1024; printf("%.3f GB", kbyte)}')
RAM_USED=$(free | grep Mem | awk '{kbyte =$3 /1024/1024; printf("%.3f GB", kbyte)}')
RAM_FREE=$(free | grep Mem | awk '{kbyte =$4 /1024/1024; printf("%.3f GB", kbyte)}')
SPACE_ROOT=$(df -h /root | grep "/dev/" | awk '{mb=$2*1024; printf("%.2f MB", mb)}')
SPACE_ROOT_USED=$(df -h /root | grep "/dev/" | awk '{mb=$3*1024; printf("%.2f MB", mb)}')
SPACE_ROOT_FREE=$(df -h /root | grep "/dev/" | awk '{mb=$4*1024; printf("%.2f MB", mb)}')
