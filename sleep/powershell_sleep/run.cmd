@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\sleep.ps1"
rem powershell.exe -noprofile sleep.ps1
rem powershell.exe –noexit sleep.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File sleep.ps1

pause
