#!/bin/bash

# This script performs a Connect Scan (-sT Scan).
# The user can chose the IP range and the port number he is interested in.
#
# Notes on nmap command:
# -sT switch triggers a Connect Scan.
# -oG switch sends the std output to a file named network. Note: This output format is deprected.
#
# The file "network" is piped to a grep that filtes the content in search of "open".
# The result if stored in a file called network1.

# The file is cut at the second field (-f2) defined by the delimiter (-d) semicolon (":").
# Then a second cut command cuts the file at the first field (-f1) defined by the delimiter (-d) 
# paren ("("). The result is saved into a file named network2.

# NOTES: TO BE TESTED.

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
