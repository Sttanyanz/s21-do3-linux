#!/bin/bash

source ./vars.sh
source ./colors.sh

VAR_ORDER=("HOSTNAME" "TIMEZONE" "USER" "OS" "DATE" "UPTIME" "UPTIME_SEC"
"IP" "MASK" "GATEWAY" "RAM_TOTAL" "RAM_USED" "RAM_FREE" "SPACE_ROOT"
"SPACE_ROOT_USED" "SPACE_ROOT_FREE")

declare -A VARS=(
    ["HOSTNAME"]="$HOSTNAME"
    ["TIMEZONE"]="$TIMEZONE"
    ["USER"]="$USER"
    ["OS"]="$OS"
    ["DATE"]="$DATE"
    ["UPTIME"]="$UPTIME"
    ["UPTIME_SEC"]="$UPTIME_SEC"
    ["IP"]="$IP"
    ["MASK"]="$MASK"
    ["GATEWAY"]="$GATEWAY"
    ["RAM_TOTAL"]="$RAM_TOTAL"
    ["RAM_USED"]="$RAM_USED"
    ["RAM_FREE"]="$RAM_FREE"
    ["SPACE_ROOT"]="$SPACE_ROOT"
    ["SPACE_ROOT_USED"]="$SPACE_ROOT_USED"
    ["SPACE_ROOT_FREE"]="$SPACE_ROOT_FREE"
)

print_vars() {
    local output="$1"
    local file=$(date "+%d_%m_%y_%H_%M_%S").status
    
    for ((i=0; i<${#VAR_ORDER[@]}; i++)); do
        local var_name="${VAR_ORDER[i]}"
        local var_value="${VARS[$var_name]}"

        echo -e "${bgcolor_name}${fontcolor_name}$var_name${reset} = ${bgcolor_value}${fontcolor_value}$var_value${reset}"
    done
}