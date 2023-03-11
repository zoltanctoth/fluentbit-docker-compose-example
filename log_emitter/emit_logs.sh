#!/usr/bin/env bash

trap "exit" INT TERM
trap "exit" EXIT

set -e

while true
do
    echo "{\"timestamp\": \"$(date -u +'%Y-%m-%dT%H:%M:%SZ.%3N%Z')\", \"message\": \"$(cat /dev/urandom | LC_CTYPE=C tr -dc "[:alpha:]" | head -c 32)\", \"type\": \"production\"}"
    echo "{\"timestamp\": \"$(date -u +'%Y-%m-%dT%H:%M:%SZ.%3N%Z')\", \"message\": \"$(cat /dev/urandom | LC_CTYPE=C tr -dc "[:alpha:]" | head -c 32)\", \"type\": \"test\"}"
    sleep 1
done