@echo off

PATH=c:\lua
set OS=Windows_NT

call build N
lua network_tcp_client_server.lua

pause
