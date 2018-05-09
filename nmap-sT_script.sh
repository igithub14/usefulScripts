#!/bin/bash

echo "Enter the first IP Address :"
read firstIP

echo "Enter the last IP Address :"
read lastIP

echo "Enter the Port Number you're interested in :"
read port

nmap -sT $firstIP-$lastIP -p $port -oG network

cat network | grep open > networkopen

cat networkopen | cut -f2 -d ":" | cut -f1 -d "(" > networkvuln

cat networkvuln
