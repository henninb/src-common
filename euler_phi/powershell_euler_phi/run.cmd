@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\euler_phi.ps1"
rem powershell.exe -noprofile euler_phi.ps1
rem powershell.exe –noexit euler_phi.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File euler_phi.ps1

pause
