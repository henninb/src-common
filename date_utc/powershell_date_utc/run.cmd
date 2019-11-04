@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\date_utc.ps1"
rem powershell.exe -noprofile date_utc.ps1
rem powershell.exe –noexit date_utc.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File date_utc.ps1

pause
