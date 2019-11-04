@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\factors.ps1"
rem powershell.exe -noprofile factors.ps1
rem powershell.exe –noexit factors.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File factors.ps1

pause
