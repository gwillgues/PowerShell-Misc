# PowerShell-Misc
A collection of various powershell related tools/scripts that I've found useful over the years. 


# sendFile.ps1
Send a file to a netcat via powershell!

This script base64 encodes a file, then sends to a netcat listener. You will need to change the IP/port in the script. 
To get the original file, run "base64 -d" in a linux terminal on the base64 encoded data. 
