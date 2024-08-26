netsh interface ip set dnsservers name="Ethernet" source=dhcp
netsh interface ip set dnsservers name="Wi-Fi" source=dhcp

ipconfig /flushdns
pause