@echo off

rem set PATH=%SystemRoot%\system32\WindowsPowerShell\v1.0;%PATH%

rem powershell "%~dp0%\recursive_addition.ps1"
rem powershell.exe -noprofile recursive_addition.ps1
rem powershell.exe –noexit recursive_addition.ps1
set OS=Windows_NT

powershell  -executionpolicy bypass -File recursive_addition.ps1

pause
