@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\exception_handler.ps1"
rem powershell.exe -noprofile exception_handler.ps1
rem powershell.exe –noexit exception_handler.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File exception_handler.ps1

pause
