# PowerShell-Misc
A collection of various powershell related tools/scripts that I've found useful over the years. 


# sendFile.ps1

Send a file to a Netcat Listener natively via powershell!
Usage: run the script and run the function



<code>./sendFile.ps1 -ip 192.168.0.127 -port 3333 -filepath C:\windows\system32\cmd.exe</code>

This script accepts an ip, port, and file path via command line arguments <code>-ip</code>, <code>-port</code>, <code>-filepath</code>, then base64 encodes the specified file, then sends to a netcat listener over the specified IP and port.

To get the original file, run "base64 -d" in a linux terminal on the base64 encoded data. 

# credentialTester.ps1

Usage: 

<code>./credentialTester.ps1 ./file.txt</code>

Take a list of emails/passwords and test them against active directory. This assumes you are on a Windows machine that is currently authenticated in an AD environment. 

The format of the required credential list is: user@domain.com:password    (1 entry per line)



# encode_script.ps1

Base64 encode a powershell script properly for usage in powershell encoded commands (powershell.exe -encodedcommand AAAA)

Usage:

<code>./encode-script.ps1 -file C:\path\to\script.ps1</code>

The base64 encoded script will be output. You can then copy the base64 encoded data, and run it via "powershell.exe -encodedcommand AAAAA"
