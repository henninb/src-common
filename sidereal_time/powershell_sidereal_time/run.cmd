@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\sidereal_time.ps1"
rem powershell.exe -noprofile sidereal_time.ps1
rem powershell.exe –noexit sidereal_time.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File sidereal_time.ps1

pause
