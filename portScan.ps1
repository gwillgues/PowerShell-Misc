for ($i=8050;$i -lt 8090;$i++){
 $tcpclient = New-Object System.Net.Sockets.TcpClient;
 $portOpened = $tcpClient.ConnectAsync('192.168.1.1', $i).Wait(200);if($portOpened){write-host "[*] Port open at $i "};
 }
