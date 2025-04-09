#!/bin/bash 

# Defenir o site:
echo "Qual site deseja testar?"
read site 
# Pingar o site:
ping -c 2 $site
