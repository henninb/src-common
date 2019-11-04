@echo off

set PATH=C:\Program Files^ (x86)\scala\bin
set OS=Windows_NT

call build N
call scala network_tcp_client_server

pause