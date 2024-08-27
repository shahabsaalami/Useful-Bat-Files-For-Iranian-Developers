@echo off

REM Define DNS addresses
set primaryDNS=10.202.10.102
set secondaryDNS=10.202.10.202

echo.
echo  ----------------------------------------------------
echo  -  DNS has been altered to 403.online!  			 -
echo  -  primaryDNS:	%primaryDNS%  					 -
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