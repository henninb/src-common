@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\combinations.ps1"
rem powershell.exe -noprofile combinations.ps1
rem powershell.exe –noexit combinations.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File combinations.ps1

pause
