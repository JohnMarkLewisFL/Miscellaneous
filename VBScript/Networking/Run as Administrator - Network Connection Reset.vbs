Set objShell = WScript.CreateObject("WScript.Shell")

' Release the current IP address
objShell.Run "ipconfig /release", 0, True

' Renew the IP address
objShell.Run "ipconfig /renew", 0, True

' Flush the DNS cache
objShell.Run "ipconfig /flushdns", 0, True

' Register DNS
objShell.Run "ipconfig /registerdns", 0, True

' Reset Winsock
objShell.Run "netsh winsock reset", 0, True

' Reset the TCP/IP stack
objShell.Run "netsh int ip reset", 0, True

WScript.Echo "Network settings have been reset."