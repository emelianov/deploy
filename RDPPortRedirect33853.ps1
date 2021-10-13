$RDPPort = "33853"
$exp = "netsh interface portproxy add v4tov4 listenport=$RDPPort connectport=3389 connectaddress=127.0.0.1"
Invoke-Expression $exp

New-NetFirewallRule -DisplayName "RDP $RDPPort" -Direction Inbound –LocalPort $RDPPort -Protocol TCP -Action Allow
