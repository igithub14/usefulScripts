// This script connects to a remote port on a system to see if it's listening.
// At the end of the exec, the user gets a message telling him if the port is open or colsed.

// Attention: please take care to chmod the script before trying to run it.

// Point to the Python interpreter.
#!/usr/bin/python

// Import socket library, which is useful to perform networking tasks.
import socket 
 
// Gets the IP address, and assigns it to the var ip.
ip = raw_input("Enter the ip: ")

// Gets the socket number as an integer, and assigns it to the var port.
port = input("Enter the port: ")

// Creates a network socket and assigns it to variable s.
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

// Invokes the function connect_ex to connect to the remote host.
// If the connection succeeds the function returns the value 0.
// The value 0 is evaluated by the if statement as false. 
// Otherwise, if the returned value is true, or a poitive number,
// that will mean that the port is closed.
if s.connect_ex((ip, port)):
   print "Port", port, "is closed" 
else: 
   print "Port", port, "is open"

// An execution sample below, testing Port 80:
// root@kali:~/# ./pythonscript.py
// Enter the ip: 192.168.100.10
// Enter the port: 80
// Port 80 is open

