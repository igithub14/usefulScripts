#!/bin/bash
#
# Thi is a simple IP Scanner for the Bash.
#
# Perform a ping sweep with a clean output. 

# If the user runs the script without specifying any parameters, 
# then he gets an output made of two rows showing how to use it.

# If the user specifies a network IP (first three octets) as a parameter, 
# then a ping sweep from 1 to 254 starts. The -c switch causes the ping to 
# perform a single ping to each host. A grep pipe extracts just 
# a significant output row. The cut and the sed pipes simplify the output
# further.

# TO BE DONE: improve the code style, and make more consistent comment sections,
# according to the best practices. 

if [ "$1" == "" ]; then
   echo "Usage: ./pingScript.sh [network]"
   echo "example: ./pingScript.sh 192.168.20"
else
   for x in `seq 1 254`; do
      ping -c 1 $1.$x | grep "64 bytes" | cut -d" " -f4 | sed 's/.$//'
   done
fi

