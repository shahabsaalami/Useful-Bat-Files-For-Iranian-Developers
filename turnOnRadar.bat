netsh interface ip set dnsservers name="Ethernet" source=dhcp
netsh interface ip set dnsservers name="Wi-Fi" source=dhcp
netsh interface ipv4 add dnsservers "Ethernet" address=10.202.10.10 index=1
netsh interface ipv4 add dnsservers "Ethernet" address=10.202.10.11 index=2
netsh interface ipv4 add dnsservers "Wi-Fi" address=10.202.10.10 index=1
netsh interface ipv4 add dnsservers "Wi-Fi" address=10.202.10.11 index=2

ipconfig /flushdns

pause