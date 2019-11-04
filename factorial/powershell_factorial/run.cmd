@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\factorial.ps1"
rem powershell.exe -noprofile factorial.ps1
rem powershell.exe –noexit factorial.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File factorial.ps1

pause
