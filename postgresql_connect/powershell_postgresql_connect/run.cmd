@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\postgresql_connect.ps1"
rem powershell.exe -noprofile postgresql_connect.ps1
rem powershell.exe –noexit postgresql_connect.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File postgresql_connect.ps1

pause
