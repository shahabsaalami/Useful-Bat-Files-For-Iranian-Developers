netsh interface ip set dnsservers name="Ethernet" source=dhcp
netsh interface ip set dnsservers name="Wi-Fi" source=dhcp
netsh interface ipv4 add dnsservers "Ethernet" address=10.202.10.202 index=1
netsh interface ipv4 add dnsservers "Ethernet" address=10.202.10.102 index=2
netsh interface ipv4 add dnsservers "Wi-Fi" address=10.202.10.202 index=1
netsh interface ipv4 add dnsservers "Wi-Fi" address=10.202.10.102 index=2

ipconfig /flushdns

pause