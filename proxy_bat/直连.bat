@echo off
fltmc >nul 2>nul || (gsudo "%~f0" && exit /b)
netsh interface ipv4 set address name="以太网" source=dhcp >nul
netsh interface ipv4 set dnsservers name="以太网" source=dhcp >nul
