REM This batch file will reset a network connection's settings
@echo off
echo Resetting network settings...
ipconfig /release
ipconfig /renew
arp -d *
nbtstat -R
nbtstat -RR
ipconfig /flushdns
ipconfig /registerdns
echo The network connection's settings have been reset
pause