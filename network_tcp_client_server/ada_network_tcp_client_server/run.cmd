@echo off

set OS=Windows_NT

call build N
network_tcp_client_server.exe

pause
