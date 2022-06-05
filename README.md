# PowerShell-Misc
A collection of various powershell related tools/scripts that I've found useful over the years. 


# sendFile.ps1

Send a file to a Netcat Listener natively via powershell!
Usage: run the script and run the function

<code>./sendFile.ps1</code>

<code>sendFile -ip 192.168.0.127 -port 3333 -filepath C:\windows\system32\cmd.exe</code>

This script accepts an ip, port, and file path via command line arguments <code>-ip</code>, <code>-port</code>, <code>-filepath</code>, then base64 encodes the specified file, then sends to a netcat listener over the specified IP and port.

To get the original file, run "base64 -d" in a linux terminal on the base64 encoded data. 

# credentialTester.ps1

Usage: 

<code>./credentialTester.ps1 ./file.txt</code>

Take a list of emails/passwords and test them against active directory. This assumes you are on a Windows machine that is currently authenticated in an AD environment. 

The format of the required credential list is: user@domain.com:password    (1 entry per line)



# Set-FirefoxMitigations.ps1
Recommended Windows Process Mitigations for Firefox.exe. May work for other browsers including chrome. 
Usage:

<code>./Set-FirefoxMitigations.ps1</code>


A list of powershell process mitigations for firefox browser. These are part of the Microsoft EMET toolkit. I manually tested each one and enabled everything I could while still running the browser for day to day tasks. You may need to modify to fit your needs, sorry there doesnt seem to be a lot of documentation or recommendations out there like there is for SELinux.

The ProcessMitigations module (also known as the Process Mitigation Management Tool) provides functionalities to allow users to configure and audit exploit mitigations for increased process security or for converting existing Enhanced Mitigation Experience Toolkit (EMET) policy settings.
Set-ProcessMitigation, Get-ProcessMitigation for Mozilla Firefox

# encode_script.ps1

Base64 encode a powershell script properly for usage in powershell encoded commands (powershell.exe -encodedcommand AAAA)

The file in the get-content command needs to be modified to suit which script you want to encode. The run the script as follows:

<code>./encode_script.ps1</code>
