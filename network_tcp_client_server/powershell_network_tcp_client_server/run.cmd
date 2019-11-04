@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\network_tcp_client_server.ps1"
rem powershell.exe -noprofile network_tcp_client_server.ps1
rem powershell.exe –noexit network_tcp_client_server.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File network_tcp_client_server.ps1

pause
