#!/bin/bash

network="192.168.1"

for i in {1..254}; do
 
	ping -c2 $network.$i

done 
