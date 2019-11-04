@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\quadratic.ps1"
rem powershell.exe -noprofile quadratic.ps1
rem powershell.exe –noexit quadratic.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File quadratic.ps1

pause
