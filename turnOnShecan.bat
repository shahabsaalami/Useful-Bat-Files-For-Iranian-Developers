netsh interface ip set dnsservers name="Ethernet" source=dhcp
netsh interface ip set dnsservers name="Wi-Fi" source=dhcp

netsh interface ipv4 add dnsservers "Ethernet" address=178.22.122.100 index=1
netsh interface ipv4 add dnsservers "Ethernet" address=185.51.200.2 index=2
netsh interface ipv4 add dnsservers "Wi-Fi" address=178.22.122.100 index=1
netsh interface ipv4 add dnsservers "Wi-Fi" address=185.51.200.2 index=2
ipconfig /flushdns

pause