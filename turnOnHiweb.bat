netsh interface ip set dnsservers name="Ethernet" source=dhcp
netsh interface ip set dnsservers name="Wi-Fi" source=dhcp
netsh interface ipv4 add dnsservers "Ethernet" address=46.224.1.220 index=1
netsh interface ipv4 add dnsservers "Ethernet" address=8.8.8.8 index=2
netsh interface ipv4 add dnsservers "Wi-Fi" address=46.224.1.220 index=1
netsh interface ipv4 add dnsservers "Wi-Fi" address=8.8.8.8 index=2
ipconfig /flushdns

pause