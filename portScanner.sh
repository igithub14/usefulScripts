#!/bin/bash
#
# Thi is a simple IP and Port Scanner for the Bash.
#
# Performs 

#

# If the user specifies a network IP (first three octets) as a parameter, 
# 

# TO BE DONE:



network="192.168.1."
port=53
for host in {1..254}; do
	ping -c 1 $network$host &> /dev/null 
	[ $? -eq 1 ] && continue 
	(echo > /dev/tcp/$network$host/$port) &>/dev/null
	[ $? -eq 0 ] && [ $port -eq 53 ] && echo "$network$host DNS Server"	
done
