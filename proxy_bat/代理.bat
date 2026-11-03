@echo off
fltmc >nul 2>nul || (gsudo "%~f0" && exit /b)
netsh interface ipv4 set address name="以太网" source=static address=192.168.1.219 mask=255.255.255.0 gateway=192.168.1.221 >nul
netsh interface ipv4 set dnsservers name="以太网" source=static address=192.168.1.221 >nul
