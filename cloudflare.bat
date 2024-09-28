@echo off

REM Define DNS addresses
set primaryDNS=1.1.1.1	
set secondaryDNS=1.0.0.1
title Begzar

echo.
echo  ----------------------------------------------------
echo  -  DNS has been altered to Begzar.online!  			 -
echo  -  primaryDNS:    %primaryDNS%  					 -
echo  -  secondaryDNS:	%secondaryDNS%  				 -
echo  -  Proceed with caution, for magic awaits.  		 -
echo  ----------------------------------------------------
echo.

REM Change DNS for all network interfaces

REM For Wi-Fi
netsh interface ip set dns name="Wi-Fi" static %primaryDNS%
netsh interface ip add dns name="Wi-Fi" %secondaryDNS% index=2

REM For LAN (Ethernet)
netsh interface ip set dns name="Ethernet" static %primaryDNS%
netsh interface ip add dns name="Ethernet" %secondaryDNS% index=2

REM Flush DNS cache
ipconfig /flushdns

echo DNS servers set to %primaryDNS% and %secondaryDNS% for Wi-Fi and Ethernet.
echo DNS cache flushed.

pause