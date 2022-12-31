#Base64 encode a powershell script for usability with "Powershell.exe -encodedcommand"

param (
          [Parameter(Mandatory=$true)]
          [ValidateNotNullOrEmpty()]
          [string]
          $file
          )


$command = get-content -raw $file;
$a = [Text.Encoding]::Unicode.GetBytes($command);
[Convert]::ToBase64String($a);
