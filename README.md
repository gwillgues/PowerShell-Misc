# PowerShell-Misc
A collection of various powershell related tools/scripts that I've found useful over the years. 


# sendFile.ps1
Send a file to a netcat via powershell!

This script base64 encodes a file, then sends to a netcat listener. You will need to change the IP/port in the script. 
To get the original file, run "base64 -d" in a linux terminal on the base64 encoded data. 

# credentialTester.ps1

Usage: ./credentialTester.ps1 ./file.txt

Take a list of emails/passwords and test them against active directory. This assumes you are on a Windows machine that is currently authenticated in an AD environment. 

The format of the required credential list is: user@domain.com:password    (1 entry per line)


