@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\roman.ps1"
rem powershell.exe -noprofile roman.ps1
rem powershell.exe –noexit roman.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File roman.ps1

pause
