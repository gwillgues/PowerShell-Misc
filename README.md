# PowerShell-Misc
A collection of various powershell related tools/scripts that I've found useful over the years. 


# sendFile.ps1
Send a file to a Netcat Listener natively via powershell!
Usage: Modify the script for your environment, run the script <code>./sendFile.ps1</code> (or paste the modified script into a powershell window)


This script base64 encodes a file, then sends to a netcat listener. You will need to change the IP/port in the script. 
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
