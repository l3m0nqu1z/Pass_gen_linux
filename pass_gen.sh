#!/bin/bash
gen_passwd() {
    local length=$1
    local charset="$2"
    local password=$(echo $(head -c 100 /dev/urandom | LC_ALL=C tr -dc "$charset") | fold -w "$length" | head -n 1)
    echo "$password"
}
SHUF=$(shuf -i 12-16 -n 1)
PASS=$(gen_passwd "$SHUF" "a-zA-Z0-9@#*=")
echo $PASS