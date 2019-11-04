@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\json_write.ps1"
rem powershell.exe -noprofile json_write.ps1
rem powershell.exe –noexit json_write.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File json_write.ps1

pause
