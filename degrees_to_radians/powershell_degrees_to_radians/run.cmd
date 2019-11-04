@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\degrees_to_radians.ps1"
rem powershell.exe -noprofile degrees_to_radians.ps1
rem powershell.exe –noexit degrees_to_radians.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File degrees_to_radians.ps1

pause
