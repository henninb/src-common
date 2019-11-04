@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\random_number.ps1"
rem powershell.exe -noprofile random_number.ps1
rem powershell.exe –noexit random_number.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File random_number.ps1

pause
