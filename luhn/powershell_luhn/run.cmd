@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\luhn.ps1"
rem powershell.exe -noprofile luhn.ps1
rem powershell.exe –noexit luhn.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File luhn.ps1

pause
