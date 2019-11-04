@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\leap_year.ps1"
rem powershell.exe -noprofile leap_year.ps1
rem powershell.exe –noexit leap_year.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File leap_year.ps1

pause
