#!/usr/bin/pyhton

//Remember to chmod the script before trying to execute it.

import socket

ip = raw_input("Enter the IP address: ") //ask for the target IP
port = input("Enter the Port number: ") //ask for the taget Port

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

if sock.connect_ex((ip.port)): //if I get a true value
  print "Port", port, "is closed"
else:
  print "Port", port, "is open"
