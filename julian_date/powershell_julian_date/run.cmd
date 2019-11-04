@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\julian_date.ps1"
rem powershell.exe -noprofile julian_date.ps1
rem powershell.exe –noexit julian_date.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File julian_date.ps1

pause
