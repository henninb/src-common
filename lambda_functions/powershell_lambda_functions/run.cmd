@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\lambda_functions.ps1"
rem powershell.exe -noprofile lambda_functions.ps1
rem powershell.exe –noexit lambda_functions.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File lambda_functions.ps1

pause
