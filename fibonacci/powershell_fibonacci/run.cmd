@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\fibonacci.ps1"
rem powershell.exe -noprofile fibonacci.ps1
rem powershell.exe –noexit fibonacci.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File fibonacci.ps1

pause
