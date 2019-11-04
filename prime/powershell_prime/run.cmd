@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\prime.ps1"
rem powershell.exe -noprofile prime.ps1
rem powershell.exe –noexit prime.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File prime.ps1

pause
