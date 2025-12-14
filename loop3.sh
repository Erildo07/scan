#!/bin/bash

network="192.168.0"

for i in {1..254}; do
    status=$(ping -c2 $network.$i)

    resp=$(echo "$status" | grep received | cut -d"," -f2 | cut -d" " -f2)

    if (( resp > 0 )); then
        echo "O host está ativo:" $network.$i
    else
        echo "O host está inativo:" $network.$i
    fi
done
