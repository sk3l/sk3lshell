#!/bin/sh

if [[ -r $1 || -z $1 ]]; then
    printf "\nUsage: proxify.sh <host>\n\n";
    exit 1;
fi

echo "Forwarding to $1"

echo 'Starting ssh...'

ssh -C -N -f -D:8080 $1 > /dev/null 2>&1

echo 'Starting browser...'

chromium --incognito --proxy-server=socks://localhost:8080 > /dev/null 2>&1 &
