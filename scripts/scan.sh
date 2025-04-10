#!/bin/bash 

# Defenir o site:
echo "Qual site deseja testar?"
read site 
# Pingar o site:
ping -c 1 $site > log.txt

# Pegar IP
ip=`cat log.txt | grep "icmp_seq" | cut -d"(" -f2 |cut -d")" -f1`

echo "O indereço do IP do site é :"$ip
