#!/bin/bash
#
# Thi is a simple IP and Port Scanner for the Bash.
#
# Performs a ping sweep over each Host o a Subnet (1..254). 

# If a Host is on, then the Port TCP 53 (DNS) is checked.

# TO BE DONE: add other interesting Ports (80, 8080, 69, 20, 21, 22...)

# ---------------------------- NOTES:----------------------------
# $? identifies the exit status of the last executed command 
# "0" stands for tue
# "1" stands for false
 
network="192.168.1."
port=53
for host in {1..254}; do
	ping -c 1 $network$host &> /dev/null 
	[ $? -eq 1 ] && continue 
	(echo > /dev/tcp/$network$host/$port) &>/dev/null
	[ $? -eq 0 ] && [ $port -eq 53 ] && echo "$network$host DNS Server"	
done
