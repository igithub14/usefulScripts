#!/bin/bash

echo "Enter the first IP Address :"
read firstIP

echo "Enter the last IP Address :"
read lastIP

echo "Enter the Port Number you're interested in :"
read port

nmap -sT $firstIP-$lastIP -p $port -oG network

cat network | grep open > network1

cat network1 | cut -f2 -d ":" | cut -f1 -d "(" > network2

cat network2
