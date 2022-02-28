#Base64 encode a powershell script for usability with "Powershell.exe -encodedcommand" 

$command = get-content ./Documents/script.ps1;
$a = [Text.Encoding]::Unicode.GetBytes($command);
[Convert]::ToBase64String($a);
