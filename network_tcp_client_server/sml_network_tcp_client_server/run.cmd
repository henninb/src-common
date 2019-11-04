@echo off

set PATH=C:\mosml\bin
set OS=Windows_NT

call build N
network_tcp_client_server.exe

pause
